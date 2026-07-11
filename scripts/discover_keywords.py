#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""热门漫画关键词发现脚本：搜索当前热门漫画排行，输出到 config/rule_keywords.json。

用法：
    python scripts/discover_keywords.py --language zh-Hans --top 20
    python scripts/discover_keywords.py --language en --top 30
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path
from typing import Any, Dict, List
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

_HEADERS_CFG = json.loads((ROOT / "config" / "headers.json").read_text(encoding="utf-8")) if (ROOT / "config" / "headers.json").exists() else {}
DEFAULT_UA = _HEADERS_CFG.get("default_ua", DEFAULT_UA)
_ACCEPT_LANG = _HEADERS_CFG.get("accept_language", "zh-CN,zh;q=0.9,en;q=0.8")

_SEARCH_CFG = json.loads((ROOT / "config" / "search_endpoints.json").read_text(encoding="utf-8")) if (ROOT / "config" / "search_endpoints.json").exists() else {}
_SEARXNG_CFG = _SEARCH_CFG.get("searxng", {})
_SEARXNG_MAX_PAGES = _SEARXNG_CFG.get("max_pages", 0)
_SEARXNG_LANGUAGE = _SEARXNG_CFG.get("language", "all")

RANKING_QUERIES: Dict[str, List[str]] = {
    "zh-Hans": [
        "2025热门漫画排行榜", "2025国漫排行榜", "2025日漫排行榜",
        "2025韩漫排行榜", "2025漫画推荐", "2025必看漫画",
        "漫画热度排行", "最火漫画排行", "漫画人气榜",
    ],
    "zh-Hant": [
        "2025熱門漫畫排行榜", "2025漫畫推薦", "2025必看漫畫",
        "漫畫人氣榜", "最火漫畫排行",
    ],
    "en": [
        "top manga 2025", "popular manga 2025", "best manga 2025",
        "trending manga 2025", "most read manga 2025",
        "top manhwa 2025", "popular webtoons 2025",
    ],
    "ja": [
        "2025年人気漫画ランキング", "2025年おすすめ漫画",
        "漫画売上ランキング", "話題の漫画2025",
    ],
    "ko": [
        "2025 인기 웹툰 순위", "2025 인기 만화 추천",
        "인기 웹툰 랭킹", "화제의 웹툰 2025",
    ],
}

GENERIC_TERMS: set = {
    "漫画", "漫畫", "manga", "manhua", "manhwa", "webtoon", "comic",
    "在线", "免费", "阅读", "推荐", "更新", "网站", "连载", "大全",
    "排行", "排行榜", "人气", "热度", "排名", "榜单",
    "線上", "免費", "閱讀", "推薦", "更新", "網站", "連載",
    "read", "online", "free", "site", "list", "top", "best", "popular",
    "trending", "new", "recommendation", "ranking",
    "人気", "おすすめ", "ランキング", "売上", "話題",
    "인기", "추천", "순위", "랭킹", "화제",
    "2024", "2025", "2026",
}


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


def search_searxng(query: str, limit: int = 0) -> List[dict]:
    base_url = _searxng_url()
    if not base_url:
        return []
    results = []
    max_pages = _SEARXNG_MAX_PAGES if _SEARXNG_MAX_PAGES > 0 else 3
    for page in range(1, max_pages + 1):
        if limit > 0 and len(results) >= limit:
            break
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": query, "format": "json", "pageno": page, "language": _SEARXNG_LANGUAGE})
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=20)
            r.raise_for_status()
            data = r.json()
            for item in data.get("results", []):
                if len(results) >= (limit or 999):
                    break
                results.append({"title": item.get("title", ""), "url": item.get("url", ""), "snippet": item.get("content", "")})
            if not data.get("results"):
                break
        except Exception:
            break
    return results


def search_duckduckgo(query: str, limit: int = 0) -> List[dict]:
    try:
        url = "https://html.duckduckgo.com/html/?" + urlencode({"q": query})
        headers = {"User-Agent": DEFAULT_UA}
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=20, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=20, allow_redirects=True)
        if r.status_code >= 400:
            return []
        results = []
        for m in re.finditer(r'class="result__a"[^>]*href="([^"]+)"[^>]*>(.*?)</a>', r.text, re.DOTALL):
            u = m.group(1)
            t = re.sub(r"<[^>]+>", "", m.group(2)).strip()
            if u and not any(skip in u.lower() for skip in ["duckduckgo", "ddg"]):
                results.append({"title": t, "url": u, "snippet": ""})
                if limit > 0 and len(results) >= limit:
                    break
        return results
    except Exception:
        return []


def _extract_titles_from_snippet(text: str) -> List[str]:
    if not text:
        return []
    titles = []
    for m in re.finditer(r'[\u3001\u3002\uff0c\uff0e\u2022\u00b7\-,;，、；\n]\s*([^\u3001\u3002\uff0c\uff0e\u2022\u00b7\-,;，、；\n]{2,30}?)(?:[\u3001\u3002\uff0c\uff0e\u2022\u00b7\-,;，、；\n]|$)', text):
        t = m.group(1).strip()
        if t and len(t) >= 2:
            titles.append(t)
    return titles


def _is_valid_keyword(kw: str) -> bool:
    kw = kw.strip()
    if not kw or len(kw) < 2:
        return False
    if kw.lower() in GENERIC_TERMS:
        return False
    if re.match(r'^[\d\s\-_./]+$', kw):
        return False
    if any(c in kw for c in '<>{}[]|\\`~!@#$%^&*()=+'):
        return False
    return True


def discover_keywords(language: str, top: int = 20) -> List[str]:
    queries = RANKING_QUERIES.get(language, [])
    if not queries:
        print(f"No ranking queries defined for {language}", file=sys.stderr)
        return []

    all_titles: Dict[str, int] = {}

    for q in queries:
        print(f"  Searching: {q}")
        results = search_searxng(q, limit=15)
        if len(results) < 3:
            results += search_duckduckgo(q, limit=10)
        print(f"    Found {len(results)} results")

        for item in results:
            title = item.get("title", "")
            snippet = item.get("snippet", "")
            for text in [title, snippet]:
                for t in _extract_titles_from_snippet(text):
                    t = t.strip()
                    if _is_valid_keyword(t):
                        all_titles[t] = all_titles.get(t, 0) + 1

            if title:
                clean = re.sub(r'\s*[-–—|:：]\s*(排行榜|排名|榜单|推荐|榜单|ranking|top\d*|best|popular).*$', '', title, flags=re.I).strip()
                if _is_valid_keyword(clean) and len(clean) >= 2:
                    all_titles[clean] = all_titles.get(clean, 0) + 2

    ranked = sorted(all_titles.items(), key=lambda x: (-x[1], x[0]))
    keywords = [kw for kw, _ in ranked if _is_valid_keyword(kw)][:top]
    return keywords


def main() -> int:
    parser = argparse.ArgumentParser(description="搜索当前热门漫画关键词，输出到 rule_keywords.json")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en", "ja", "ko"])
    parser.add_argument("--top", type=int, default=20, help="每种语种取前N个热门关键词，默认20")
    parser.add_argument("--report", default="", help="JSON报告输出路径")
    args = parser.parse_args()

    print(f"=== Discovering top {args.top} keywords for {args.language} ===")
    keywords = discover_keywords(args.language, args.top)
    print(f"\nDiscovered {len(keywords)} keywords:")
    for i, kw in enumerate(keywords, 1):
        print(f"  {i}. {kw}")

    agg_path = ROOT / "config" / "rule_keywords.json"
    agg_data: Dict[str, Any] = {}
    if agg_path.exists():
        try:
            agg_data = json.loads(agg_path.read_text(encoding="utf-8"))
        except Exception:
            agg_data = {}

    agg_data[args.language] = keywords
    agg_path.write_text(json.dumps(agg_data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"\nUpdated {agg_path} ({args.language}: {len(keywords)} keywords)")

    if args.report:
        report = {
            "language": args.language,
            "top": args.top,
            "keywords": keywords,
            "keywordCount": len(keywords),
        }
        report_path = Path(args.report)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Report saved to {args.report}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
