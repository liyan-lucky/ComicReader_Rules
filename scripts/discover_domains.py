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

try:
    import cloudscraper
    _SCRAPER = cloudscraper.create_scraper(browser={"browser": "chrome", "platform": "android", "desktop": False})
except Exception:
    _SCRAPER = None

DEFAULT_UA = "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36"

AGGREGATOR_SITES: Dict[str, List[str]] = {
    "zh-Hans": [
        "https://www.manhuagui.com/list/",
        "https://www.kaixinman.com/category",
        "https://manhuaplus.com/manga/",
        "https://manhuaplus.top/manga/",
        "https://www.manhuadb.com/manhua-list",
        "https://www.manhuacat.com/category",
        "https://manhuafast.com/manga/",
        "https://manhuaus.com/manga/",
        "https://www.happymh.com/category",
        "https://readmanhua.net/manga/",
        "https://topmanhua.com/manga/",
        "https://manhuascan.io/manga/",
        "https://www.pufei8.com/manhua-list/",
        "https://www.wuxiaworld.co/",
        "https://www.mangabz.com/manga-list",
        "https://www.gufengmh.com/manhua/",
        "https://www.36mh.com/manga-list/",
        "https://www.1kkk.com/manhua-list/",
        "https://www.tohomh.com/wap/list/",
        "https://www.kuaikanmanhua.com/web/topic/",
        "https://ac.qq.com/Comic/all",
        "https://www.bilibili.com/anime/",
    ],
    "zh-Hant": [
        "https://comick.io/list?sort=update&lang=zh-hant",
        "https://mangadex.org/titles?lang=zh-hant",
        "https://bato.to/browse?lang=zh_tw",
        "https://mangapark.net/browse?lang=zh-hant",
        "https://mangafire.to/filter?lang=zh-hant",
        "https://manhuaplus.com/manga/",
    ],
    "en": [
        "https://mangahere.cc/mangalist/",
        "https://mangahub.io/browse",
        "https://asuracomic.net/comics",
        "https://mangatown.com/manga/",
        "https://comick.io/list?sort=update&lang=en",
        "https://mangadex.org/titles?lang=en",
        "https://bato.to/browse",
        "https://mangapark.net/browse",
        "https://mangafire.to/filter",
        "https://mangabuddy.com/genre/",
        "https://mangasee123.com/manga-list/",
        "https://mangalife.us/directory/",
        "https://mangakakalot.com/manga_list/",
        "https://manganato.com/manga-list/",
        "https://readm.org/manga-list",
        "https://mangareader.tv/manga-list",
        "https://mangaclash.com/manga/",
        "https://mangakomi.io/manga/",
        "https://manhuascan.io/manga/",
        "https://mangaus.com/manga/",
        "https://manganelo.com/manga/",
        "https://mangabat.com/manga/",
        "https://mangairo.com/manga/",
        "https://toonily.com/manga/",
        "https://webtoon.xyz/manga/",
        "https://manhwascan.net/manga/",
        "https://flamescans.org/manga/",
        "https://luminousscans.com/manga/",
        "https://mangatx.com/manga/",
        "https://mangaeffect.com/manga/",
        "https://readkomik.com/manga/",
        "https://kunmanga.com/manga/",
        "https://mangasthrill.com/manga/",
        "https://chapmanganato.to/manga-list/",
        "https://comicextra.com/comic-list",
        "https://readcomicsonline.ru/comic-list",
        "https://soullandmanga.com/",
        "https://mangaread.org/manga/",
        "https://mangadna.com/manga/",
        "https://webtoons.com/en/dailySchedule",
        "https://tapas.io/comics",
    ],
}
def load_queries(language: str) -> List[str]:
    queries_path = ROOT / "config" / "queries" / f"{language}.txt"
    if queries_path.exists():
        queries = []
        for line in queries_path.read_text(encoding="utf-8").splitlines():
            line = line.strip()
            if line and not line.startswith("#"):
                queries.append(line)
        if queries:
            return queries
    return []


def crawl_aggregator_sites(language: str, limit: int = 30) -> List[str]:
    sites = AGGREGATOR_SITES.get(language, [])
    if not sites:
        return []
    all_urls: List[str] = []
    max_total = limit * len(sites)
    for site_url in sites:
        if len(all_urls) >= max_total:
            break
        print(f"  Crawling: {site_url}")
        try:
            headers = {"User-Agent": DEFAULT_UA, "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8"}
            if _SCRAPER is not None:
                r = _SCRAPER.get(site_url, headers=headers, timeout=20, allow_redirects=True)
            else:
                r = requests.get(site_url, headers=headers, timeout=20, allow_redirects=True)
            if r.status_code >= 400:
                print(f"    HTTP {r.status_code}", file=sys.stderr)
                continue
            found = 0
            for m in re.finditer(r'href=["\']?(https?://[^"\'\s>]+)["\']?', r.text):
                u = m.group(1)
                skip = any(s in u.lower() for s in ["javascript:", "mailto:", "twitter.com", "facebook.com", "discord", "patreon", "paypal"])
                if not skip and u.startswith("http") and len(all_urls) < max_total:
                    all_urls.append(u)
                    found += 1
            for m in re.finditer(r'src=["\']?(https?://[^"\'\s>]+)["\']?', r.text):
                u = m.group(1)
                if u.startswith("http") and len(all_urls) < max_total:
                    all_urls.append(u)
                    found += 1
            print(f"    Found {found} links (HTTP {r.status_code})")
        except Exception as e:
            print(f"    Failed: {e}", file=sys.stderr)
    return all_urls


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
    "outlook.com", "office.com", "live.com", "signup.live",
    "x.com", "xbox.com",
    "10086.cn", "sina.cn", "sohu.com", "163.com", "qq.com",
    "iqiyi.com", "youku.com", "tudou.com",
    "etsy.com", "jared.com", "amazonaws.com",
    "goodreads.com", "librarything.com",
    "nypl.org", "britishmuseum.org", "vam.ac.uk",
    "substack.com",
    "gmpg.org", "browsehappy.com", "skenzo.com",
    "reverso.net", "yourdictionary.com",
    "hsdlb.com", "cdn-go.cn", "cdndm5.com",
    "guancha.cn", "huxiu.com", "bjnews.com.cn", "cyzone.cn",
    "17173.com", "jiemian.com", "news.cn",
    "line.me", "zendesk.com",
    "mcdonalds", "sothebys", "luxurytravelmagazine",
    "greenlakejewelry", "gardeniajewel", "kellyrosie",
    "tracyminifigs", "thecaratcut", "laceanddagger",
    "rachelsandell", "thebookwyrmsden",
    "clip-studio.com", "shirakawa.lg.jp",
    "ldplayer.net", "uptodown.com",
    "qurrex.com", "cytekbio.com",
    "pishu.com.cn", "hanspub.org",
    "friday.tw", "myvideo.net.tw",
    "eslite.com", "books.com.tw",
    "pixiv.net", "anilist.co",
    "shueisha.co.jp", "kodansha.co.jp",
    "viz.com", "shonenjump.com",
    "marvel.com", "dc.com",
    "peanuts.com", "xkcd.com",
    "phdcomics.com", "theoatmeal.com",
    "comic-con.org", "comic-relief",
    "webtoon.zendesk", "about.webtoon",
    "hoyoverse.com", "genshin",
    "tongji.", "aegis.cdn",
    "platform.pubadx",
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
    all_urls: List[str] = []
    max_pages = 3
    for page in range(1, max_pages + 1):
        if len(all_urls) >= limit:
            break
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": query, "format": "json", "pageno": page, "language": "all"})
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=20)
            r.raise_for_status()
            data = r.json()
            results = data.get("results", [])
            if not results:
                break
            for item in results:
                u = item.get("url", "")
                if u and len(all_urls) < limit:
                    all_urls.append(u)
        except Exception as e:
            print(f"  [warn] SearXNG page {page} failed for '{query}': {e}", file=sys.stderr)
            break
    if not all_urls:
        print(f"  [warn] SearXNG returned 0 results for '{query}'", file=sys.stderr)
    return all_urls


def search_duckduckgo(query: str, limit: int = 20) -> List[str]:
    try:
        url = "https://html.duckduckgo.com/html/?" + urlencode({"q": query})
        headers = {"User-Agent": DEFAULT_UA}
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=20, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=20, allow_redirects=True)
        if r.status_code >= 400:
            print(f"  [warn] DDG HTTP {r.status_code} for '{query}'", file=sys.stderr)
            return []
        urls = []
        for m in re.finditer(r'href="(https?://[^"]+)"', r.text):
            u = m.group(1)
            if any(skip in u.lower() for skip in ["duckduckgo", "ddg", "javascript:", "mailto:"]):
                continue
            if u.startswith("http") and len(urls) < limit:
                urls.append(u)
        if not urls:
            print(f"  [warn] DDG returned 0 results for '{query}'", file=sys.stderr)
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

    queries = load_queries(args.language)
    if not queries:
        print(f"No queries defined for {args.language}", file=sys.stderr)
        return 1

    filepath = ROOT / "config" / "domains" / f"{args.language}.txt"
    existing = load_existing_domains(filepath)
    print(f"Existing domains in {filepath.name}: {len(existing)}")

    all_urls: List[str] = []

    print(f"\n=== Phase 1: Crawl aggregator sites ===")
    agg_urls = crawl_aggregator_sites(args.language, args.limit)
    all_urls.extend(agg_urls)
    print(f"Aggregator URLs: {len(agg_urls)}")

    queries = load_queries(args.language)
    if queries:
        print(f"\n=== Phase 2: Search engines ({len(queries)} queries) ===")
        for q in queries:
            print(f"  Searching: {q}")
            urls = search_searxng(q, args.limit)
            if len(urls) < 3:
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
            "aggregatorSites": len(AGGREGATOR_SITES.get(args.language, [])),
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
