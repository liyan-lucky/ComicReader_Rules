#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""域名发现脚本：按语种搜索漫画/漫画网站域名，更新到 config/domains/ 文件。

用法：
    python scripts/discover_domains.py --language zh-Hans
    python scripts/discover_domains.py --language en --limit 50
    python scripts/discover_domains.py --language zh-Hans --report generated/domain_discovery_report.json
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path
from typing import Dict, List, Set
from urllib.parse import urlparse, urlencode

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools" / "rule_discovery"))

try:
    import requests
except ImportError:
    print("requests not installed", file=sys.stderr)
    sys.exit(1)

DEFAULT_UA = "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36"

LANGUAGE_QUERIES: Dict[str, List[str]] = {
    "zh-Hans": [
        "漫画网站",
        "免费漫画",
        "在线漫画",
        "国漫网站",
        "漫画阅读",
        "漫画大全",
        "看漫画",
        "漫画连载",
        "日漫在线",
        "韩漫在线",
        "漫画更新",
        "热门漫画",
        "漫画app推荐",
        "webtoon中文",
        "漫画网站推荐",
        "manhua website",
        "chinese manga read",
        "read manhua online",
        "manhua site",
        "漫画网站大全",
        "漫画源",
        "免费看漫画网站",
        "漫画在线阅读网站",
        "国漫在线",
        "修仙漫画",
        "玄幻漫画",
        "热血漫画",
        "恋爱漫画",
        "搞笑漫画",
        "恐怖漫画",
    ],
    "zh-Hant": [
        "漫畫網站",
        "免費漫畫",
        "線上漫畫",
        "看漫畫",
        "漫畫連載",
        "熱門漫畫",
        "漫畫app",
        "webtoon繁體",
        "漫畫網站推薦",
        "manga website traditional chinese",
        "看漫畫網站",
        "漫畫線上看",
        "港漫網站",
        "台灣漫畫網站",
    ],
    "en": [
        "manga sites",
        "read manga online",
        "free manga websites",
        "manga reader",
        "manga website list",
        "best manga sites",
        "manga online free",
        "manhwa sites",
        "read manhwa online",
        "webtoon sites",
        "manhua sites",
        "read manhua english",
        "manga aggregator",
        "manga scanlation sites",
        "new manga sites",
        "manga reader app",
        "manga list website",
        "popular manga sites",
        "manga reading sites",
        "free manhwa reading",
        "light novel manga sites",
        "manga recommendation sites",
        "manga tracker sites",
        "webtoon reading sites",
        "korean manhwa sites",
        "chinese manhua english",
        "manga database sites",
    ],
}

BLOCKED_DOMAIN_KEYWORDS = [
    "google", "bing", "yahoo", "baidu", "sogou", "duckduckgo", "yandex", "searx",
    "youtube", "tiktok", "douyin", "bilibili", "weibo", "twitter", "facebook",
    "instagram", "reddit", "pinterest", "tumblr", "snapchat", "whatsapp",
    "telegram", "discord", "slack", "linkedin", "github", "gitlab",
    "amazon", "ebay", "taobao", "jd.com", "pinduoduo", "aliexpress",
    "wikipedia", "zhihu", "quora", "stackoverflow", "stackexchange",
    "apple", "microsoft", "samsung", "huawei", "xiaomi",
    "netflix", "hulu", "disney", "crunchyroll", "funimation",
    "spotify", "soundcloud", "deezer",
    "porn", "xxx", "adult", "hentai", "doujin",
    "gov", "edu", "mil",
    "cloudflare", "wordpress.com", "blogspot", "medium",
    "play.google", "apps.apple", "microsoft.com/store",
    "patreon", "ko-fi", "buymeacoffee", "paypal",
    "fandom", "wikia",
]


def _searxng_url() -> str:
    url = os.getenv("SEARXNG_URL", "").strip()
    if url:
        return url
    cfg_path = ROOT / "config" / "search.json"
    if cfg_path.exists():
        try:
            cfg = json.loads(cfg_path.read_text(encoding="utf-8"))
            url = (cfg.get("searxng") or {}).get("url", "").strip()
            if url:
                return url
        except Exception:
            pass
    return ""


def search_searxng(query: str, limit: int = 30) -> List[str]:
    base_url = _searxng_url()
    if not base_url:
        return []
    try:
        url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": query, "format": "json", "pageno": 1})
        r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=15)
        r.raise_for_status()
        data = r.json()
        urls = []
        for item in data.get("results", [])[:limit]:
            u = item.get("url", "")
            if u:
                urls.append(u)
        return urls
    except Exception as e:
        print(f"  [warn] SearXNG failed for '{query}': {e}", file=sys.stderr)
        return []


def search_duckduckgo(query: str, limit: int = 20) -> List[str]:
    try:
        url = "https://html.duckduckgo.com/html/?" + urlencode({"q": query})
        r = requests.get(url, headers={"User-Agent": DEFAULT_UA}, timeout=15, allow_redirects=True)
        if r.status_code >= 400:
            return []
        urls = []
        for m in re.finditer(r'class="result__a"[^>]*href="([^"]+)"', r.text):
            u = m.group(1)
            if u.startswith("http") and len(urls) < limit:
                urls.append(u)
        return urls
    except Exception as e:
        print(f"  [warn] DDG failed for '{query}': {e}", file=sys.stderr)
        return []


def extract_domain(url: str) -> str:
    try:
        host = urlparse(url).netloc.lower()
    except Exception:
        return ""
    host = host.replace("www.", "")
    if not host or "." not in host:
        return ""
    return host


def is_blocked_domain(domain: str) -> bool:
    d = domain.lower()
    for kw in BLOCKED_DOMAIN_KEYWORDS:
        if kw in d:
            return True
    return False


def load_existing_domains(filepath: Path) -> Set[str]:
    domains = set()
    if not filepath.exists():
        return domains
    for line in filepath.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        d = line.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "").lower()
        if d:
            domains.add(d)
    return domains


def save_domains(filepath: Path, existing: Set[str], new_domains: List[str]) -> List[str]:
    added = []
    for d in new_domains:
        if d not in existing and not is_blocked_domain(d):
            existing.add(d)
            added.append(d)

    if not added:
        return added

    header = ""
    if filepath.exists():
        header = filepath.read_text(encoding="utf-8")
        if not header.endswith("\n"):
            header += "\n"
    else:
        header = f"# {filepath.stem} domain list\n\n"

    section = "# === Auto-discovered ===\n"
    for d in sorted(added):
        section += d + "\n"

    filepath.write_text(header + section, encoding="utf-8")
    return added


def main() -> int:
    parser = argparse.ArgumentParser(description="按语种搜索漫画网站域名")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en"])
    parser.add_argument("--limit", type=int, default=30, help="每个搜索查询取多少条结果")
    parser.add_argument("--report", default="", help="JSON报告输出路径")
    args = parser.parse_args()

    queries = LANGUAGE_QUERIES.get(args.language, [])
    if not queries:
        print(f"No queries defined for {args.language}", file=sys.stderr)
        return 1

    filepath = ROOT / "config" / "domains" / f"{args.language}.txt"
    existing = load_existing_domains(filepath)
    print(f"Existing domains in {filepath.name}: {len(existing)}")

    all_urls: List[str] = []
    for q in queries:
        print(f"  Searching: {q}")
        urls = search_searxng(q, args.limit)
        if len(urls) < 5:
            urls += search_duckduckgo(q, args.limit)
        all_urls.extend(urls)
        print(f"    Found {len(urls)} URLs")

    print(f"\nTotal URLs collected: {len(all_urls)}")

    domains: List[str] = []
    seen: Set[str] = set()
    for u in all_urls:
        d = extract_domain(u)
        if d and d not in seen:
            seen.add(d)
            domains.append(d)

    print(f"Unique domains extracted: {len(domains)}")

    blocked = [d for d in domains if is_blocked_domain(d)]
    clean = [d for d in domains if not is_blocked_domain(d)]
    print(f"Blocked domains removed: {len(blocked)}")
    print(f"Clean domains: {len(clean)}")

    added = save_domains(filepath, existing, clean)
    print(f"\nNew domains added to {filepath.name}: {len(added)}")

    if added:
        print("Added domains:")
        for d in sorted(added):
            print(f"  + {d}")

    if args.report:
        report = {
            "language": args.language,
            "queryCount": len(queries),
            "totalUrls": len(all_urls),
            "uniqueDomains": len(domains),
            "blockedCount": len(blocked),
            "newDomains": sorted(added),
            "existingDomainCount": len(existing),
            "blockedDomains": sorted(blocked),
            "allDiscoveredDomains": sorted(clean),
        }
        report_path = Path(args.report)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Report saved to {args.report}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
