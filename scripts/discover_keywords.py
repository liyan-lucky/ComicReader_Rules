#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""热门漫画关键词发现脚本：爬取知名漫画站排行榜，横向对比按频次排序，输出到 rule_keywords.json。

策略：从4-6个知名漫画站提取排行榜Top50，按漫画名在多站出现的频次排序。
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

RANKING_SITES: Dict[str, List[dict]] = {
    "zh-Hans": [
        {
            "name": "腾讯动漫-TOP榜",
            "url": "https://ac.qq.com/Rank/comicRank/type/top",
            "type": "text_ranking",
        },
        {
            "name": "腾讯动漫-全部",
            "url": "https://ac.qq.com/Comic/all",
            "selector": ".ret-works-title a",
            "attr": "title",
        },
        {
            "name": "快看漫画-排行榜",
            "url": "https://www.kuaikanmanhua.com/ranking/",
            "type": "text_ranking",
        },
        {
            "name": "漫画柜-人气榜",
            "url": "https://www.manhuagui.com/list/",
            "selector": "a.title",
            "attr": "title",
        },
        {
            "name": "知音漫客-排行榜",
            "url": "https://www.mkzhan.com/rank/",
            "selector": ".rank-list a.book-name",
            "attr": "title",
        },
        {
            "name": "咚漫漫画-排行榜",
            "url": "https://www.dongmanmanhua.cn/ranking",
            "selector": "a.title",
            "attr": "title",
        },
    ],
    "zh-Hant": [
        {
            "name": "漫画柜",
            "url": "https://www.manhuagui.com/list/",
            "selector": "a.title",
            "attr": "title",
        },
    ],
    "en": [
        {
            "name": "MangaHub",
            "url": "https://mangahub.io/browse",
            "selector": "a._1ZpYx",
            "attr": "title",
        },
        {
            "name": "MangaKakalot",
            "url": "https://mangakakalot.com/manga_list",
            "selector": "a.list-title",
            "attr": "title",
        },
    ],
    "ja": [],
    "ko": [],
}

NOISE_PATTERNS = re.compile(
    r'^(登录|注册|首页|排行|分类|更新|推荐|搜索|更多|全部|标签|筛选|'
    r'第[一二三四五六七八九十百千零〇两\d]+[话章回]|'
    r'chapter\s*\d+|vol\.?\s*\d+|'
    r'http|www\.|\.com|\.net|\.org|'
    r'\d{4}[-年]\d{1,2}[-月]\d{1,2}|'
    r'[\d.]+分|[\d.]+星|[\d,]+人|[\d,]+阅|[\d,]+赞|[\d,]+评|'
    r'更新至|更新到|连载|完结|免费|付费|签约|独家)',
    re.I,
)

GENERIC_TERMS: Set[str] = {
    "漫画", "漫畫", "manga", "manhua", "manhwa", "webtoon", "comic",
    "在线", "免费", "阅读", "推荐", "更新", "网站", "连载", "大全",
    "排行", "排行榜", "人气", "热度", "排名", "榜单", "分类", "全部",
    "月票", "飙升", "畅销", "新作", "男生", "女生", "韩漫", "日漫", "恋爱", "剧情",
    "read", "online", "free", "site", "list", "top", "best", "popular",
    "trending", "new", "recommendation", "ranking", "chapter", "latest",
}


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


def _extract_from_selector(html_text: str, selector: str, attr: str) -> List[str]:
    if not html_text:
        return []
    try:
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        soup = BeautifulSoup(html_text, "html.parser")
    titles = []
    for el in soup.select(selector):
        if attr == "text":
            t = el.get_text(strip=True)
        else:
            t = el.get(attr, "").strip()
            if not t:
                t = el.get_text(strip=True)
        if t and 2 <= len(t) <= 60:
            titles.append(t)
    return titles


def _extract_from_text_ranking(html_text: str) -> List[str]:
    if not html_text:
        return []
    try:
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        soup = BeautifulSoup(html_text, "html.parser")
    text = soup.get_text(separator="\n", strip=True)
    titles = []
    for line in text.split("\n"):
        line = line.strip()
        if not line or len(line) < 2 or len(line) > 60:
            continue
        if NOISE_PATTERNS.match(line):
            continue
        if re.match(r'^\d+$', line):
            continue
        if re.match(r'^[\d,]+\s*(张|人|亿|万|分|星|阅|赞|评)', line):
            continue
        if line.lower() in {g.lower() for g in GENERIC_TERMS}:
            continue
        titles.append(line)
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


def _scrape_site(site_cfg: dict) -> List[str]:
    url = site_cfg["url"]
    name = site_cfg.get("name", url)
    site_type = site_cfg.get("type", "selector")
    selector = site_cfg.get("selector", "")
    attr = site_cfg.get("attr", "title")

    print(f"    Fetching: {name} ({url})")
    html_text = _fetch_page(url)
    if not html_text:
        print(f"      Failed to fetch")
        return []

    if site_type == "text_ranking":
        raw = _extract_from_text_ranking(html_text)
    elif selector:
        raw = _extract_from_selector(html_text, selector, attr)
    else:
        raw = _extract_from_text_ranking(html_text)

    valid = [t for t in raw if _is_valid_keyword(t)]
    print(f"      Extracted {len(valid)} titles")
    return valid


def discover_keywords(language: str, top: int = 20) -> List[str]:
    sites = RANKING_SITES.get(language, [])
    if not sites:
        print(f"No ranking sites defined for {language}", file=sys.stderr)
        return []

    title_site_count: Dict[str, int] = {}
    title_position: Dict[str, List[int]] = {}

    print(f"  Scraping {len(sites)} ranking sites")
    for site_cfg in sites:
        titles = _scrape_site(site_cfg)
        seen_in_site: Set[str] = set()
        for pos, t in enumerate(titles[:50], 1):
            if t not in seen_in_site:
                seen_in_site.add(t)
                title_site_count[t] = title_site_count.get(t, 0) + 1
                title_position.setdefault(t, []).append(pos)

    ranked = sorted(
        title_site_count.items(),
        key=lambda x: (-x[1], sum(title_position.get(x[0], [999])) / max(len(title_position.get(x[0], [999])), 1)),
    )
    keywords = [kw for kw, _ in ranked if _is_valid_keyword(kw)][:top]
    return keywords


def main() -> int:
    parser = argparse.ArgumentParser(description="爬取知名漫画站排行榜，横向对比输出热门关键词")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en", "ja", "ko"])
    parser.add_argument("--top", type=int, default=20, help="取前N个热门关键词，默认20")
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
