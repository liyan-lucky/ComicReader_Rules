#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""热门漫画关键词发现脚本：爬取漫画排行榜页面，提取漫画名，输出到 config/rule_keywords.json。

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
from typing import Any, Dict, List, Set
from urllib.parse import urljoin, urlparse, urlencode

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools" / "rule_discovery"))

try:
    import requests
except ImportError:
    print("requests not installed", file=sys.stderr)
    sys.exit(1)

try:
    from bs4 import BeautifulSoup
except ImportError:
    print("beautifulsoup4 not installed", file=sys.stderr)
    sys.exit(1)

try:
    import cloudscraper
    _SCRAPER = cloudscraper.create_scraper(browser={"browser": "chrome", "platform": "android", "desktop": False})
except Exception:
    _SCRAPER = None

_HEADERS_CFG = json.loads((ROOT / "config" / "headers.json").read_text(encoding="utf-8")) if (ROOT / "config" / "headers.json").exists() else {}
DEFAULT_UA = _HEADERS_CFG.get("default_ua", "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36")
_ACCEPT_LANG = _HEADERS_CFG.get("accept_language", "zh-CN,zh;q=0.9,en;q=0.8")

_SEARCH_CFG = json.loads((ROOT / "config" / "search_endpoints.json").read_text(encoding="utf-8")) if (ROOT / "config" / "search_endpoints.json").exists() else {}
_SEARXNG_CFG = _SEARCH_CFG.get("searxng", {})
_SEARXNG_MAX_PAGES = _SEARXNG_CFG.get("max_pages", 0)
_SEARXNG_LANGUAGE = _SEARXNG_CFG.get("language", "all")

RANKING_URLS: Dict[str, List[dict]] = {
    "zh-Hans": [
        {"url": "https://www.manhuagui.com/list/", "selector": "a.title", "attr": "title"},
        {"url": "https://www.36mh.com/rank/", "selector": "a.book-name", "attr": "title"},
        {"url": "https://www.mkzhan.com/rank/", "selector": "a.book-name", "attr": "title"},
        {"url": "https://manhuaren.com/", "selector": "a.book-name", "attr": "title"},
        {"url": "https://www.gufengmh.com/rank/", "selector": "a.book-name", "attr": "title"},
        {"url": "https://www.kuaikanmanhua.com/web/topic/", "selector": "a.title", "attr": "title"},
        {"url": "https://ac.qq.com/Comic/all", "selector": "a.work-title", "attr": "title"},
        {"url": "https://manga.bilibili.com/", "selector": "a.manga-title", "attr": "title"},
    ],
    "zh-Hant": [
        {"url": "https://www.manhuagui.com/list/", "selector": "a.title", "attr": "title"},
    ],
    "en": [
        {"url": "https://mangahub.io/browse", "selector": "a._1ZpYx", "attr": "title"},
        {"url": "https://mangakakalot.com/manga_list", "selector": "a.list-title", "attr": "title"},
        {"url": "https://manganato.com/manga-list", "selector": "a.a-h", "attr": "title"},
    ],
    "ja": [
        {"url": "https://manga-mee.jp/", "selector": "a.title", "attr": "title"},
    ],
    "ko": [
        {"url": "https://comic.naver.com/webtoon/weekday", "selector": "a.title", "attr": "title"},
    ],
}

SEARCH_RANKING_QUERIES: Dict[str, List[str]] = {
    "zh-Hans": [
        "漫画排行榜 2025", "国漫排行榜", "日漫排行榜",
        "韩漫排行榜", "漫画推荐排行",
    ],
    "zh-Hant": [
        "漫畫排行榜 2025", "漫畫推薦排行",
    ],
    "en": [
        "top manga 2025 ranking", "popular manga 2025 list",
        "best manga 2025", "top manhwa 2025",
    ],
    "ja": [
        "漫画ランキング 2025", "人気漫画ランキング",
    ],
    "ko": [
        "웹툰 순위 2025", "인기 만화 추천",
    ],
}

GENERIC_TERMS: Set[str] = {
    "漫画", "漫畫", "manga", "manhua", "manhwa", "webtoon", "comic",
    "在线", "免费", "阅读", "推荐", "更新", "网站", "连载", "大全",
    "排行", "排行榜", "人气", "热度", "排名", "榜单", "分类", "全部",
    "線上", "免費", "閱讀", "推薦", "更新", "網站", "連載",
    "read", "online", "free", "site", "list", "top", "best", "popular",
    "trending", "new", "recommendation", "ranking", "chapter", "latest",
    "人気", "おすすめ", "ランキング", "売上", "話題",
    "인기", "추천", "순위", "랭킹", "화제",
    "2024", "2025", "2026", "更多", "查看", "详情",
}

NOISE_PATTERNS = re.compile(
    r'^(登录|注册|首页|排行|分类|更新|推荐|搜索|更多|全部|标签|筛选|'
    r'第[一二三四五六七八九十百千零〇两\d]+[话章回]|'
    r'chapter\s*\d+|vol\.?\s*\d+|'
    r'http|www\.|\.com|\.net|\.org|'
    r'\d{4}[-年]\d{1,2}[-月]\d{1,2}|'
    r'[\d.]+分|[\d.]+星|[\d,]+人|[\d,]+阅|[\d,]+赞|[\d,]+评)',
    re.I,
)


def _fetch_page(url: str, timeout: int = 15) -> str:
    headers = {"User-Agent": DEFAULT_UA, "Accept-Language": _ACCEPT_LANG, "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
    try:
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=timeout, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=timeout, allow_redirects=True)
        if r.status_code >= 400:
            return ""
        if not r.encoding or r.encoding.lower() == "iso-8859-1":
            r.encoding = r.apparent_encoding or "utf-8"
        return r.text
    except Exception:
        return ""


def _extract_titles_from_html(html_text: str, selector: str, attr: str) -> List[str]:
    if not html_text:
        return []
    titles = []
    try:
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        soup = BeautifulSoup(html_text, "html.parser")
    for el in soup.select(selector):
        if attr == "text":
            t = el.get_text(strip=True)
        else:
            t = el.get(attr, "").strip()
            if not t:
                t = el.get_text(strip=True)
        if t and len(t) >= 2 and len(t) <= 60:
            titles.append(t)
    return titles


def _extract_titles_from_ranking_page(html_text: str, base_url: str) -> List[str]:
    if not html_text:
        return []
    titles = []
    try:
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        soup = BeautifulSoup(html_text, "html.parser")

    manga_link_patterns = re.compile(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon)/', re.I)

    for a in soup.find_all("a", href=True):
        href = a.get("href", "")
        if not manga_link_patterns.search(href):
            continue
        if any(skip in href.lower() for skip in ["/login", "/register", "/user", "/pay", "/vip", "/tag/", "/category/", "/rank", "/list"]):
            continue
        t = a.get("title", "").strip()
        if not t:
            t = a.get_text(strip=True)
        if not t or len(t) < 2 or len(t) > 60:
            continue
        if NOISE_PATTERNS.match(t):
            continue
        titles.append(t)

    if not titles:
        for el in soup.select("[class*='title'], [class*='name'], [class*='comic'], [class*='manga']"):
            t = el.get_text(strip=True)
            if t and 2 <= len(t) <= 30 and not NOISE_PATTERNS.match(t):
                titles.append(t)

    return titles


def _is_valid_keyword(kw: str) -> bool:
    kw = kw.strip()
    if not kw or len(kw) < 2:
        return False
    if kw.lower() in {g.lower() for g in GENERIC_TERMS}:
        return False
    if NOISE_PATTERNS.match(kw):
        return False
    if re.match(r'^[\d\s\-_./]+$', kw):
        return False
    if any(c in kw for c in '<>{}[]|\\`~!@#$%^&*()=+'):
        return False
    return True


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


def _search_ranking_urls(language: str) -> List[str]:
    base_url = _searxng_url()
    if not base_url:
        return []
    queries = SEARCH_RANKING_QUERIES.get(language, [])
    urls = []
    seen = set()
    for q in queries[:3]:
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": q, "format": "json", "pageno": 1, "language": _SEARXNG_LANGUAGE})
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=20)
            data = r.json()
            for item in data.get("results", [])[:5]:
                u = item.get("url", "")
                if u and u not in seen and u.startswith("http"):
                    seen.add(u)
                    urls.append(u)
        except Exception:
            continue
    return urls


def discover_keywords(language: str, top: int = 20) -> List[str]:
    all_titles: Dict[str, int] = {}

    ranking_configs = RANKING_URLS.get(language, [])
    print(f"  Phase 1: Crawl {len(ranking_configs)} ranking pages")
    for cfg in ranking_configs:
        url = cfg["url"]
        selector = cfg.get("selector", "")
        attr = cfg.get("attr", "title")
        print(f"    Fetching: {url}")
        html_text = _fetch_page(url)
        if not html_text:
            print(f"      Failed to fetch")
            continue

        if selector:
            titles = _extract_titles_from_html(html_text, selector, attr)
        else:
            titles = _extract_titles_from_ranking_page(html_text, url)

        valid = [t for t in titles if _is_valid_keyword(t)]
        print(f"      Extracted {len(valid)} titles")
        for t in valid:
            all_titles[t] = all_titles.get(t, 0) + 2

    print(f"  Phase 2: Search for ranking pages")
    search_urls = _search_ranking_urls(language)
    print(f"    Found {len(search_urls)} ranking page URLs from search")
    for url in search_urls:
        print(f"    Fetching: {url[:80]}...")
        html_text = _fetch_page(url)
        if not html_text:
            continue
        titles = _extract_titles_from_ranking_page(html_text, url)
        valid = [t for t in titles if _is_valid_keyword(t)]
        print(f"      Extracted {len(valid)} titles")
        for t in valid:
            all_titles[t] = all_titles.get(t, 0) + 1

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
