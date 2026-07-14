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

_KW_DISC_CFG = json.loads((ROOT / "config" / "keyword_discovery.json").read_text(encoding="utf-8")) if (ROOT / "config" / "keyword_discovery.json").exists() else {}

RANKING_SITES: Dict[str, List[dict]] = _KW_DISC_CFG.get("ranking_sites", {})
SEARCH_QUERIES: Dict[str, List[str]] = _KW_DISC_CFG.get("search_queries", {})
FALLBACK_RANKING: Dict[str, List[str]] = _KW_DISC_CFG.get("fallback_ranking", {})
MANGA_DOMAINS_MAP: Dict[str, List[str]] = _KW_DISC_CFG.get("manga_domains_map", {})
_AGG_SITES = json.loads((ROOT / "config" / "aggregator_sites.json").read_text(encoding="utf-8")) if (ROOT / "config" / "aggregator_sites.json").exists() else {}
for _lang, _urls in _AGG_SITES.items():
    if _lang not in MANGA_DOMAINS_MAP:
        MANGA_DOMAINS_MAP[_lang] = []
    _existing = set(MANGA_DOMAINS_MAP[_lang])
    for _u in _urls:
        _d = _u.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "")
        if _d and _d not in _existing:
            MANGA_DOMAINS_MAP[_lang].append(_d)
            _existing.add(_d)

NOISE_PATTERNS = re.compile(_KW_DISC_CFG.get("noise_patterns", r'^(登录|注册|首页)'), re.I)
TAG_WORDS: Set[str] = set(_KW_DISC_CFG.get("tag_words", []))
TAG_SUFFIX = re.compile(_KW_DISC_CFG.get("tag_suffix", r'(\s{2,})[\u4e00-\u9fffa-zA-Z]{1,6}(\s+[\u4e00-\u9fffa-zA-Z]{1,6})?$'))
NOISE_SUFFIX = re.compile(_KW_DISC_CFG.get("noise_suffix", r'(更新至?\d+[话章回])'), re.I)
GENERIC_TERMS: Set[str] = set(_KW_DISC_CFG.get("generic_terms", []))

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
    els = soup.select(selector)
    print(f"      selector='{selector}' attr='{attr}' matched={len(els)} elements")
    titles = []
    for el in els:
        if attr == "text":
            t = el.get_text(strip=True)
        else:
            t = el.get(attr, "").strip()
            if not t:
                t = el.get_text(strip=True)
        if t and 2 <= len(t) <= 60:
            titles.append(t)
    return titles


def _clean_title(t: str) -> str:
    t = TAG_SUFFIX.sub('', t).strip()
    t = NOISE_SUFFIX.sub('', t).strip()
    for tw in TAG_WORDS:
        if t.endswith(tw) and len(t) > len(tw) + 1:
            t = t[:-len(tw)].strip()
    return t


def _extract_titles_from_links(html_text: str) -> List[str]:
    if not html_text:
        return []
    try:
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        soup = BeautifulSoup(html_text, "html.parser")
    titles = []
    manga_link_patterns = re.compile(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon|ComicInfo)/', re.I)
    skip_hrefs = re.compile(r'/(login|register|user|pay|vip|tag|category|rank|list|search)', re.I)
    for a in soup.find_all("a", href=True):
        href = a.get("href", "")
        if not manga_link_patterns.search(href):
            continue
        if skip_hrefs.search(href):
            continue
        t = a.get("title", "").strip()
        if not t:
            t = a.get_text(strip=True)
        t = _clean_title(t)
        if t and 2 <= len(t) <= 60 and not NOISE_PATTERNS.match(t):
            titles.append(t)
    return titles


CJK_LANGS = {"zh-Hans", "zh-Hant", "ja", "ko"}


_current_language = ""


def _is_valid_keyword(kw: str) -> bool:
    kw = kw.strip()
    if not kw or len(kw) < 2:
        return False
    if kw.lower() in {g.lower() for g in GENERIC_TERMS}:
        return False
    if NOISE_PATTERNS.match(kw):
        return False
    if re.match(r'^\d+\s', kw):
        return False
    if re.match(r'^[\d\s\-_./]+$', kw):
        return False
    if any(c in kw for c in '<>{}[]|\\`~!@#$%^&*()=+'):
        return False
    if _current_language in CJK_LANGS and not re.search(r'[\u4e00-\u9fff\u3040-\u309f\u30a0-\u30ff\uac00-\ud7af]', kw):
        return False
    return True


def _scrape_site(site_cfg: dict) -> List[str]:
    url = site_cfg["url"]
    name = site_cfg.get("name", url)
    selector = site_cfg.get("selector", "")
    attr = site_cfg.get("attr", "title")
    text_pattern = site_cfg.get("text_pattern", "")

    print(f"    Fetching: {name} ({url})")
    html_text = _fetch_page(url)
    if not html_text:
        print(f"      Failed to fetch")
        return []

    raw = _extract_from_selector(html_text, selector, attr) if selector else []
    print(f"      selector={len(raw)} titles")

    if not raw and text_pattern:
        print(f"      Trying text_pattern extraction...")
        raw = [m.group(1).strip() for m in re.finditer(text_pattern, html_text) if m.group(1).strip()]
        print(f"      text_pattern={len(raw)} titles")

    if not raw:
        print(f"      Trying cloudscraper fallback...")
        try:
            if _SCRAPER is not None:
                headers = {"User-Agent": DEFAULT_UA, "Accept-Language": _ACCEPT_LANG}
                r = _SCRAPER.get(url, headers=headers, timeout=20, allow_redirects=True)
                print(f"      cloudscraper HTTP {r.status_code}, len={len(r.text)}")
                if r.status_code < 400 and r.text:
                    raw = _extract_from_selector(r.text, selector, attr) if selector else []
                    print(f"      cloudscraper selector={len(raw)} titles")
                    if not raw and text_pattern:
                        raw = [m.group(1).strip() for m in re.finditer(text_pattern, r.text) if m.group(1).strip()]
                        print(f"      cloudscraper text_pattern={len(raw)} titles")
        except Exception as e:
            print(f"      cloudscraper error: {e}")

    if not raw:
        print(f"      Trying link-based extraction...")
        raw = _extract_titles_from_links(html_text)
        print(f"      link-based={len(raw)} titles")

    valid = [t for t in raw if _is_valid_keyword(t)]
    print(f"      Valid titles: {len(valid)}")
    return valid


def _searxng_url() -> str:
    url = os.getenv("SEARXNG_URL", "").strip()
    if url:
        return url
    cfg_path = ROOT / "config" / "search.json"
    if cfg_path.exists():
        try:
            cfg = json.loads(cfg_path.read_text(encoding="utf-8"))
            url = (cfg.get("searxng") or {}).get("default_url", "").strip()
            if url:
                return url
        except Exception:
            pass
    return ""


def _search_and_scrape(language: str) -> List[str]:
    base_url = _searxng_url()
    if not base_url:
        print(f"    SearXNG not available, skipping search phase")
        return []
    queries = SEARCH_QUERIES.get(language, [])
    all_titles: List[str] = []
    manga_domains = set(MANGA_DOMAINS_MAP.get(language, []))
    for q in queries:
        print(f"    Searching: {q}")
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": q, "format": "json", "pageno": 1, "language": "all"})
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=20)
            r.raise_for_status()
            data = r.json()
            results = data.get("results", [])
            print(f"      Got {len(results)} results")
            for item in results[:8]:
                result_url = item.get("url", "")
                if not result_url:
                    continue
                is_manga_site = any(d in result_url for d in manga_domains)
                if not is_manga_site:
                    continue
                html_text = _fetch_page(result_url)
                if not html_text:
                    continue
                titles = _extract_titles_from_links(html_text)
                valid = [t for t in titles if _is_valid_keyword(t)]
                if valid:
                    print(f"      {result_url[:60]}: {len(valid)} titles")
                all_titles.extend(valid)
        except Exception as e:
            print(f"      Search error: {e}")
    return all_titles


def discover_keywords(language: str, top: int = 20) -> List[str]:
    global _current_language
    _current_language = language
    sites = RANKING_SITES.get(language, [])
    title_site_count: Dict[str, int] = {}
    title_position: Dict[str, List[int]] = {}

    print(f"  Phase 1: Scraping {len(sites)} ranking sites")
    for site_cfg in sites:
        titles = _scrape_site(site_cfg)
        seen_in_site: Set[str] = set()
        for pos, t in enumerate(titles[:50], 1):
            if t not in seen_in_site:
                seen_in_site.add(t)
                title_site_count[t] = title_site_count.get(t, 0) + 1
                title_position.setdefault(t, []).append(pos)

    print(f"  Phase 2: SearXNG search for ranking pages")
    search_titles = _search_and_scrape(language)
    for pos, t in enumerate(search_titles[:100], 1):
        title_site_count[t] = title_site_count.get(t, 0) + 1
        title_position.setdefault(t, []).append(pos)

    print(f"  Phase 3: Fallback ranking")
    fallback = FALLBACK_RANKING.get(language, [])
    for pos, t in enumerate(fallback, 1):
        t = _clean_title(t)
        if t and _is_valid_keyword(t):
            if t not in title_site_count:
                title_site_count[t] = 10
            else:
                title_site_count[t] += 10
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
    parser.add_argument("--top", type=int, default=100, help="取前N个热门关键词，默认100")
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
