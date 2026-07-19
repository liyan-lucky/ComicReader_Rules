#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""域名发现脚本：按语种搜索漫画/漫画网站域名，更新到 config/aggregator_sites.json。

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
from typing import Any, Dict, List, Set
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

def _load_config(name: str, default: Any = None) -> Any:
    p = ROOT / "config" / name
    if p.exists():
        try:
            return json.loads(p.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default

_HEADERS_CFG = _load_config("headers.json", {})
DEFAULT_UA = _HEADERS_CFG.get("default_ua", DEFAULT_UA)
_ACCEPT_LANG = _HEADERS_CFG.get("accept_language", "zh-CN,zh;q=0.9,en;q=0.8")

AGGREGATOR_SITES: Dict[str, List[str]] = _load_config("aggregator_sites.json", {})

_CRAWL_SKIP = _load_config("crawl_skip_keywords.json", {})
_CRAWL_SKIP_KW = _CRAWL_SKIP.get("crawl_skip_keywords", ["javascript:", "mailto:", "twitter.com", "facebook.com", "discord", "patreon", "paypal"])
_DDG_SKIP_KW = _CRAWL_SKIP.get("ddg_skip_keywords", ["duckduckgo", "ddg", "javascript:", "mailto:"])

_SEARCH_CFG = _load_config("search.json", {}).get("searxng", {})
_SEARXNG_MAX_PAGES = _SEARCH_CFG.get("max_pages", 0)
_SEARXNG_LANGUAGE = _SEARCH_CFG.get("language", "all")

_MANGA_KW_CFG = _load_config("manga_indicator_keywords.json", {})

def load_queries(language: str) -> List[str]:
    cfg = _MANGA_KW_CFG.get(language, {})
    search_text = cfg.get("search_text", [])
    search_subdomain = cfg.get("search_subdomain", [])
    queries = list(search_text)
    for st in search_text:
        for sd in search_subdomain:
            queries.append(f"{st} site:{sd}")
    if queries:
        return queries
    queries_path = ROOT / "config" / "queries" / f"{language}.txt"
    if queries_path.exists():
        file_queries = []
        for line in queries_path.read_text(encoding="utf-8").splitlines():
            line = line.strip()
            if line and not line.startswith("#"):
                file_queries.append(line)
        if file_queries:
            return file_queries
    return []


def crawl_aggregator_sites(language: str, limit: int = 0) -> List[str]:
    sites = AGGREGATOR_SITES.get(language, [])
    if not sites:
        return []
    all_urls: List[str] = []
    max_total = limit * len(sites) if limit > 0 else 0
    for site_url in sites:
        if max_total > 0 and len(all_urls) >= max_total:
            break
        print(f"  Crawling: {site_url}")
        try:
            headers = {"User-Agent": DEFAULT_UA, "Accept-Language": _ACCEPT_LANG}
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
                skip = any(s in u.lower() for s in _CRAWL_SKIP_KW)
                if not skip and u.startswith("http") and (max_total == 0 or len(all_urls) < max_total):
                    all_urls.append(u)
                    found += 1
            for m in re.finditer(r'src=["\']?(https?://[^"\'\s>]+)["\']?', r.text):
                u = m.group(1)
                skip = any(s in u.lower() for s in _CRAWL_SKIP_KW)
                if not skip and u.startswith("http") and (max_total == 0 or len(all_urls) < max_total):
                    all_urls.append(u)
                    found += 1
            print(f"    Found {found} links (HTTP {r.status_code})")
        except Exception as e:
            print(f"    Failed: {e}", file=sys.stderr)
    return all_urls


_BLOCKED_CFG = _load_config("blocked_domains.json", {})
BLOCKED_DOMAIN_KEYWORDS: List[str] = _BLOCKED_CFG.get("discover_domains", [])
EXCLUDED_DOMAINS: set = set(_BLOCKED_CFG.get("excluded_domains", []))

_DK_CFG = _load_config("domain_knowledge.json", {})
_NON_MANGA_TLDS = set(_DK_CFG.get("non_manga_tlds", [".gov", ".mil", ".edu"]))

_NON_MANGA_DOMAIN_KW = _DK_CFG.get("non_manga_domain_kw", [
    "novel", "xiaoshuo", "fiction", "books", "bookstore",
    "lyrics", "news", "newspaper", "magazine", "journal",
    "government", "agency", "research", "academic", "library",
    "movie", "film", "video", "music", "song", "podcast",
    "shopping", "store", "shop", "market", "deal", "coupon",
    "travel", "hotel", "flight", "recipe", "food", "cooking",
    "weather", "sports", "fitness", "health", "medical", "doctor",
    "dating", "social", "forum", "community", "wiki",
])

_NON_MANGA_TITLE_PATTERNS = _DK_CFG.get("non_manga_title_patterns", [
    r'\bnews\b', r'\bnewspaper\b', r'\bjournal\b', r'\bmagazine\b',
    r'\bgovernment\b', r'\bagency\b', r'\bdepartment\b', r'\bministry\b',
    r'\blyrics?\b', r'\bsong\b', r'\bmusic\b', r'\bartist\b',
    r'\bnovel\b', r'\bfiction\b', r'\bbook(?:store)?\b', r'\blibrary\b',
    r'\brecipe\b', r'\bcooking\b', r'\bfood\b', r'\bfitness\b',
    r'\bmovie\b', r'\bfilm\b', r'\btravel\b', r'\bhotel\b',
    r'\bshopping\b', r'\bstore\b', r'\bshop\b', r'\bdeal\b',
    r'\bweather\b', r'\bsports?\b', r'\bhealth\b', r'\bmedical\b',
    r'小说', r'阅读网', r'书库', r'书城', r'文学', r'中文网$',
    r'新闻网', r'新闻', r'政府', r'部门', r' ministry',
])
_NON_MANGA_TITLE_RE = re.compile('|'.join(_NON_MANGA_TITLE_PATTERNS), re.IGNORECASE)


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


def search_searxng(query: str, limit: int = 0, suppress_zero: bool = False) -> List[str]:
    base_url = _searxng_url()
    if not base_url:
        return []
    all_urls: List[str] = []
    max_pages = _SEARXNG_MAX_PAGES if _SEARXNG_MAX_PAGES > 0 else 999
    for page in range(1, max_pages + 1):
        if limit > 0 and len(all_urls) >= limit:
            break
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": query, "format": "json", "pageno": page, "language": _SEARXNG_LANGUAGE})
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=20)
            r.raise_for_status()
            data = r.json()
            results = data.get("results", [])
            if not results:
                break
            for item in results:
                u = item.get("url", "")
                if u and (limit == 0 or len(all_urls) < limit):
                    all_urls.append(u)
        except Exception as e:
            if not suppress_zero:
                print(f"  [warn] SearXNG page {page} failed for '{query}': {e}", file=sys.stderr)
            break
    if not all_urls and not suppress_zero:
        print(f"  [warn] SearXNG returned 0 results for '{query}'", file=sys.stderr)
    return all_urls


def search_duckduckgo(query: str, limit: int = 0, suppress_zero: bool = False) -> List[str]:
    try:
        url = "https://html.duckduckgo.com/html/?" + urlencode({"q": query})
        headers = {"User-Agent": DEFAULT_UA}
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=20, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=20, allow_redirects=True)
        if r.status_code >= 400:
            if not suppress_zero:
                print(f"  [warn] DDG HTTP {r.status_code} for '{query}'", file=sys.stderr)
            return []
        urls = []
        for m in re.finditer(r'href="(https?://[^"]+)"', r.text):
            u = m.group(1)
            if any(skip in u.lower() for skip in _DDG_SKIP_KW):
                continue
            if u.startswith("http") and (limit == 0 or len(urls) < limit):
                urls.append(u)
        if not urls and not suppress_zero:
            print(f"  [warn] DDG returned 0 results for '{query}'", file=sys.stderr)
        return urls
    except Exception as e:
        if not suppress_zero:
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


def is_blocked_domain(domain: str) -> tuple:
    d = domain.lower()
    for kw in BLOCKED_DOMAIN_KEYWORDS:
        if kw in d:
            return True, kw
    return False, ""


_HOSTING_PLATFORMS = set(_DK_CFG.get("hosting_platforms", [
    ".github.io", ".vercel.app", ".netlify.app", ".pages.dev",
    ".gitlab.io", ".gitee.io", ".cloudfront.net", ".herokuapp.com",
    ".render.com", ".railway.app", ".fly.dev", ".supabase.co",
    ".firebaseapp.com", ".web.app", ".glitch.me", ".replit.com",
    ".onrender.com", ".surge.sh", ".itch.io",
]))
for _lang_cfg in _MANGA_KW_CFG.values():
    if isinstance(_lang_cfg, dict):
        for _sd in _lang_cfg.get("search_subdomain", []):
            _HOSTING_PLATFORMS.add("." + _sd.lower())


def _registered_domain(domain: str) -> str:
    dl = domain.lower()
    for suffix in _HOSTING_PLATFORMS:
        if dl.endswith(suffix):
            parts = dl.split(".")
            if len(parts) >= 3:
                return parts[-3] + "." + parts[-2] + "." + parts[-1]
    parts = dl.split(".")
    if len(parts) >= 2:
        return parts[-2] + "." + parts[-1]
    return domain


def _domain_label(domain: str) -> str:
    dl = domain.lower()
    for suffix in _HOSTING_PLATFORMS:
        if dl.endswith(suffix):
            parts = dl.split(".")
            if len(parts) >= 3:
                return parts[-3]
    parts = dl.split(".")
    if len(parts) >= 2:
        return parts[-2]
    return domain


def _get_kw_sets(language: str):
    cfg = _MANGA_KW_CFG.get(language, {})
    if isinstance(cfg, list):
        return set(kw.lower() for kw in cfg), set(), set(), set()
    validate = set(kw.lower() for kw in cfg.get("validate", []))
    secondary = set(kw.lower() for kw in cfg.get("secondary", []))
    anti = set(kw.lower() for kw in cfg.get("anti_patterns", []))
    title_match = set(kw.lower() for kw in cfg.get("title_match", []))
    title_match.update(kw.lower() for kw in BLOCKED_DOMAIN_KEYWORDS)
    return validate, secondary, anti, title_match


def _extract_meta_content(text: str, name: str) -> str:
    for pat in [
        rf'<meta\s+name=["\']?{re.escape(name)}["\']?\s+content=["\']?([^"\'>]+)',
        rf'<meta\s+content=["\']?([^"\'>]+)["\']?\s+name=["\']?{re.escape(name)}["\']?',
    ]:
        m = re.search(pat, text, re.IGNORECASE)
        if m:
            return m.group(1).strip()
    return ""


def _check_homepage(domain: str, language: str, validate: set, secondary: set, anti: set, title_match: set) -> dict:
    dl = domain.lower()

    for tld in _NON_MANGA_TLDS:
        if dl.endswith(tld):
            return {"result": "non_manga_tld", "matched_kw": tld, "match_type": "domain_tld"}

    for kw in _NON_MANGA_DOMAIN_KW:
        if kw in dl:
            return {"result": "non_manga_domain_kw", "matched_kw": kw, "match_type": "domain_kw"}

    try:
        url = f"https://{domain}"
        headers = {"User-Agent": DEFAULT_UA, "Accept-Language": _ACCEPT_LANG}
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=5, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=5, allow_redirects=True)
        if r.status_code >= 400:
            return {"result": f"http_{r.status_code}", "matched_kw": "", "match_type": ""}
    except Exception as e:
        return {"result": f"fetch_failed:{e}", "matched_kw": "", "match_type": ""}

    text = r.text.lower()[:80000]
    title = ""
    m = re.search(r"<title[^>]*>(.*?)</title>", text, re.DOTALL | re.IGNORECASE)
    if m:
        title = m.group(1).strip()
    meta_desc = _extract_meta_content(text, "description")
    meta_kw = _extract_meta_content(text, "keywords")
    head_area = ""
    head_m = re.search(r"<head[^>]*>(.*?)</head>", text, re.DOTALL | re.IGNORECASE)
    if head_m:
        head_area = head_m.group(1)

    # 1. anti_patterns: 屏蔽成人站（检查页面内容）
    for ap in anti:
        if re.search(r'[\u4e00-\u9fff]', ap):
            if ap.lower() in text:
                return {"result": "anti_pattern", "matched_kw": ap, "match_type": "anti"}
        else:
            if re.search(r'\b' + re.escape(ap) + r'\b', text, re.IGNORECASE):
                return {"result": "anti_pattern", "matched_kw": ap, "match_type": "anti"}

    # 2. title_match: 清理非漫画站（只检查标题）
    for tm in title_match:
        if re.search(r'[\u4e00-\u9fff]', tm):
            if tm in title:
                return {"result": "title_blocked", "matched_kw": tm, "match_type": "title_blocked"}
        else:
            if re.search(r'\b' + re.escape(tm) + r'\b', title, re.IGNORECASE):
                return {"result": "title_blocked", "matched_kw": tm, "match_type": "title_blocked"}

    # 2.5. non-manga title patterns: 排除新闻/小说/歌词等非漫画站
    if _NON_MANGA_TITLE_RE.search(title):
        m = _NON_MANGA_TITLE_RE.search(title)
        return {"result": "non_manga_title", "matched_kw": m.group(0), "match_type": "non_manga_title"}

    # 3. validate: 必须在关键位置（title/meta description/meta keywords/<head>）命中
    for kw in validate:
        if kw in title:
            return {"result": "primary_match", "matched_kw": kw, "match_type": "primary_title"}
        if kw in meta_desc:
            return {"result": "primary_match", "matched_kw": kw, "match_type": "primary_meta_desc"}
        if kw in meta_kw:
            return {"result": "primary_match", "matched_kw": kw, "match_type": "primary_meta_kw"}
        if kw in head_area:
            return {"result": "primary_match", "matched_kw": kw, "match_type": "primary_head"}

    # 4. domain_label: 域名含validate词则通过
    dl = domain.lower()
    label = _domain_label(domain)
    for kw in validate:
        if kw in dl or kw in label:
            return {"result": "domain_label_match", "matched_kw": kw, "match_type": "domain_label"}

    return {"result": "no_indicators", "matched_kw": "", "match_type": ""}


def validate_domains(domains: List[str], existing: Set[str], language: str, show_blocked: bool = False, show_cleaned: bool = True, revalidate: bool = False) -> tuple:
    validate, secondary, anti, title_match = _get_kw_sets(language)
    validated = []
    skipped = 0
    reasons = {"existing": 0, "primary_match": 0, "domain_label_match": 0, "secondary_2+": 0}
    reject_reasons = {"http_error": 0, "anti_pattern": 0, "title_blocked": 0, "no_indicators": 0, "network_issue": 0}
    removed_details = []
    kw_matched = {}
    kw_blocked = {}
    kw_cleaned = {}
    domain_kw_map = {}

    for d in domains:
        rd = _registered_domain(d)
        if rd in EXCLUDED_DOMAINS or d in EXCLUDED_DOMAINS:
            skipped += 1
            reject_reasons.setdefault("excluded_domain", 0)
            reject_reasons["excluded_domain"] += 1
            removed_details.append({"domain": d, "reason": "excluded_domain", "detail": "in blocked_domains.json excluded_domains", "matched_kw": ""})
            print(f"  ✗ {d} (excluded_domain)")
            continue
        if not revalidate and (rd in existing or d in existing):
            validated.append(rd)
            reasons["existing"] += 1
            continue

        info = _check_homepage(d, language, validate, secondary, anti, title_match)
        result = info["result"]
        matched_kw = info["matched_kw"]

        if result in ("primary_match", "domain_label_match", "secondary_2+"):
            validated.append(rd)
            reasons[result] += 1
            kw_matched.setdefault(matched_kw, []).append(rd)
            domain_kw_map[rd] = matched_kw
            print(f"  ✓ {d} ({result}: {matched_kw})")
        elif result.startswith("fetch_failed") or result.startswith("http_4") or result.startswith("http_5"):
            skipped += 1
            reject_reasons["network_issue"] += 1
            removed_details.append({"domain": d, "reason": "network_issue", "detail": result, "matched_kw": ""})
            print(f"  ✗ {d} ({result}, skipped - cannot verify)")
        else:
            skipped += 1
            if result.startswith("http_"):
                reject_reasons["http_error"] += 1
            elif result == "anti_pattern":
                reject_reasons["anti_pattern"] += 1
                kw_blocked.setdefault(matched_kw, []).append(d)
            elif result == "title_blocked":
                reject_reasons["title_blocked"] += 1
                kw_cleaned.setdefault(matched_kw, []).append(d)
            else:
                reject_reasons["no_indicators"] += 1
            removed_details.append({"domain": d, "reason": result, "detail": "", "matched_kw": matched_kw})
            print(f"  ✗ {d} ({result}: {matched_kw})")

    print(f"  Validation: {len(validated)} kept, {skipped} removed")
    print(f"    Kept reasons: {reasons}")
    print(f"    Reject reasons: {reject_reasons}")
    print(f"\n  === 按命中词统计（验证通过） ===")
    for kw in sorted(kw_matched.keys()):
        domains_list = kw_matched[kw]
        print(f"    [{kw}] 命中 {len(domains_list)} 个域名:")
        for dm in sorted(domains_list):
            print(f"      - {dm}")
    if show_cleaned and kw_cleaned:
        print(f"\n  === 按命中词统计（被清理） ===")
        for kw in sorted(kw_cleaned.keys()):
            domains_list = kw_cleaned[kw]
            print(f"    [{kw}] 清理 {len(domains_list)} 个域名:")
            for dm in sorted(domains_list):
                print(f"      - {dm}")
    if show_blocked:
        print(f"\n  === 按命中词统计（被屏蔽） ===")
        for kw in sorted(kw_blocked.keys()):
            domains_list = kw_blocked[kw]
            print(f"    [{kw}] 屏蔽 {len(domains_list)} 个域名:")
            for dm in sorted(domains_list):
                print(f"      - {dm}")
    return validated, removed_details, kw_matched, kw_blocked, kw_cleaned, domain_kw_map


def load_existing_domains(filepath: Path, language: str = "") -> Set[str]:
    domains = set()
    if language:
        agg_urls = AGGREGATOR_SITES.get(language, [])
        for u in agg_urls:
            d = extract_domain(u)
            if d:
                rd = _registered_domain(d)
                domains.add(rd)
    return domains


def _save_cleaned_log(filepath: Path, cleaned_domains: List[str]) -> None:
    if not cleaned_domains:
        return
    filepath.parent.mkdir(parents=True, exist_ok=True)
    existing_cleaned: Set[str] = set()
    if filepath.exists():
        for line in filepath.read_text(encoding="utf-8").splitlines():
            line = line.strip()
            if line and not line.startswith("#"):
                existing_cleaned.add(line.lower())
    new_cleaned = sorted(d for d in cleaned_domains if d.lower() not in existing_cleaned)
    if not new_cleaned:
        return
    with filepath.open("a", encoding="utf-8") as f:
        if not filepath.exists() or filepath.stat().st_size == 0:
            f.write(f"# {filepath.stem} - cleaned/blocked domains (skip re-verification)\n")
        for d in new_cleaned:
            f.write(d + "\n")


def _remove_domains_from_aggregator(language: str, domains_to_remove: List[str]) -> int:
    agg_path = ROOT / "config" / "aggregator_sites.json"
    agg_data: Dict[str, List[str]] = {}
    if agg_path.exists():
        try:
            agg_data = json.loads(agg_path.read_text(encoding="utf-8"))
        except Exception:
            agg_data = {}

    existing_urls = agg_data.get(language, [])
    remove_set = set(d.lower().replace("www.", "") for d in domains_to_remove)
    new_urls = []
    removed = 0
    for u in existing_urls:
        d = extract_domain(u)
        rd = _registered_domain(d) if d else ""
        if rd in remove_set or d in remove_set:
            removed += 1
        else:
            new_urls.append(u)

    if removed > 0:
        agg_data[language] = new_urls
        agg_path.write_text(json.dumps(agg_data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return removed


def save_domains_to_aggregator(language: str, new_domains: List[str], domain_kw_map: dict = None) -> List[str]:
    if domain_kw_map is None:
        domain_kw_map = {}
    agg_path = ROOT / "config" / "aggregator_sites.json"
    agg_data: Dict[str, List[str]] = {}
    if agg_path.exists():
        try:
            agg_data = json.loads(agg_path.read_text(encoding="utf-8"))
        except Exception:
            agg_data = {}

    existing_urls = set(agg_data.get(language, []))
    existing_domains: Set[str] = set()
    for u in existing_urls:
        d = extract_domain(u)
        if d:
            existing_domains.add(_registered_domain(d))

    added = []
    new_urls = list(agg_data.get(language, []))
    for d in sorted(new_domains):
        if d in existing_domains:
            continue
        if d in EXCLUDED_DOMAINS:
            continue
        url = f"https://{d}/"
        if url not in existing_urls:
            new_urls.append(url)
            existing_urls.add(url)
            existing_domains.add(d)
            added.append(d)

    if not added:
        return added

    agg_data[language] = new_urls
    agg_path.write_text(json.dumps(agg_data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return added


def main() -> int:
    parser = argparse.ArgumentParser(description="按语种搜索漫画网站域名")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en", "ja", "ko"])
    parser.add_argument("--limit", type=int, default=0, help="每个搜索查询取多少条结果，0=不限制")
    parser.add_argument("--report", default="", help="JSON报告输出路径")
    parser.add_argument("--suppress-zero-results", action="store_true", help="零结果搜索不输出警告")
    parser.add_argument("--show-blocked", action="store_true", help="输出屏蔽(anti_patterns)统计，默认关闭")
    parser.add_argument("--show-cleaned", action="store_true", help="输出清理(title_blocked)统计，默认开启")
    parser.add_argument("--revalidate", action="store_true", help="重新验证已有域名（全量清理模式）")
    args = parser.parse_args()

    queries = load_queries(args.language)
    if not queries:
        print(f"No queries defined for {args.language}", file=sys.stderr)
        return 1

    filepath = ROOT / "config" / "aggregator_sites.json"
    existing = load_existing_domains(filepath, args.language)
    print(f"Existing domains in aggregator_sites.json ({args.language}): {len(existing)}")

    cleaned_path = ROOT / "config" / "cleaned_domains" / f"{args.language}.txt"
    cleaned_set: Set[str] = set()
    if cleaned_path.exists():
        for line in cleaned_path.read_text(encoding="utf-8").splitlines():
            line = line.strip()
            if line and not line.startswith("#"):
                cleaned_set.add(line.lower().replace("www.", ""))

    all_urls: List[str] = []

    print(f"\n=== Phase 1: Crawl aggregator sites ({len(AGGREGATOR_SITES.get(args.language, []))} sites) ===")
    agg_urls = crawl_aggregator_sites(args.language, limit=0)
    all_urls.extend(agg_urls)
    print(f"Aggregator URLs collected: {len(agg_urls)}")

    queries = load_queries(args.language)
    if queries:
        print(f"\n=== Phase 2: Search engines ({len(queries)} queries) ===")
        for q in queries:
            print(f"  Searching: {q}")
            urls = search_searxng(q, args.limit, suppress_zero=args.suppress_zero_results)
            if len(urls) < 3:
                urls += search_duckduckgo(q, args.limit, suppress_zero=args.suppress_zero_results)
            all_urls.extend(urls)
            print(f"    Found {len(urls)} URLs")

    print(f"\nTotal URLs collected: {len(all_urls)}")

    domains: List[str] = []
    seen: Set[str] = set()
    cleaned_skipped = 0
    for u in all_urls:
        d = extract_domain(u)
        if d:
            rd = _registered_domain(d)
            if rd in cleaned_set:
                cleaned_skipped += 1
                continue
            if rd not in seen:
                seen.add(rd)
                domains.append(rd)

    print(f"Unique domains extracted: {len(domains)} (skipped {cleaned_skipped} previously cleaned)")

    if args.revalidate:
        print(f"\n=== Revalidate: adding {len(existing)} existing domains for re-verification ===")
        for d in sorted(existing):
            rd = _registered_domain(d)
            if rd not in seen and rd not in cleaned_set:
                seen.add(rd)
                domains.append(rd)

    print(f"\n=== Phase 3: Domain reasonableness validation ({'revalidate' if args.revalidate else 'new-only'}) ===")
    validated, removed_details, kw_matched, kw_blocked, kw_cleaned, domain_kw_map = validate_domains(domains, existing, args.language, show_blocked=args.show_blocked, show_cleaned=args.show_cleaned, revalidate=args.revalidate)
    print(f"Validated manga domains: {len(validated)} (removed {len(domains) - len(validated)} non-manga)")

    if removed_details:
        print(f"\n--- Phase 3 removed domains ({len(removed_details)}) ---")
        by_reason = {}
        for item in removed_details:
            by_reason.setdefault(item["reason"], []).append(item)
        for reason in sorted(by_reason.keys()):
            if not args.show_blocked and reason == "anti_pattern":
                continue
            if not args.show_cleaned and reason == "title_blocked":
                continue
            items = by_reason[reason]
            print(f"  [{reason}] ({len(items)}):")
            for item in items:
                detail_str = f' ({item["detail"]})' if item["detail"] else ""
                kw_str = f' [kw: {item["matched_kw"]}]' if item["matched_kw"] else ""
                print(f'    - {item["domain"]}{detail_str}{kw_str}')

    added = save_domains_to_aggregator(args.language, validated, domain_kw_map)
    print(f"\nNew domains added to aggregator_sites.json ({args.language}): {len(added)}")

    if args.revalidate:
        validated_set = set(_registered_domain(d) for d in validated)
        agg_path = ROOT / "config" / "aggregator_sites.json"
        agg_data = {}
        if agg_path.exists():
            try:
                agg_data = json.loads(agg_path.read_text(encoding="utf-8"))
            except Exception:
                agg_data = {}
        old_urls = agg_data.get(args.language, [])
        new_urls = []
        removed = 0
        for u in old_urls:
            d = extract_domain(u)
            rd = _registered_domain(d) if d else ""
            if rd in EXCLUDED_DOMAINS or d in EXCLUDED_DOMAINS:
                removed += 1
                print(f"  ✗ {u} (rd={rd}, in excluded_domains)")
            elif rd in validated_set or d in validated_set:
                new_urls.append(u)
            else:
                removed += 1
                print(f"  ✗ {u} (rd={rd}, not in validated_set)")
        if removed > 0:
            agg_data[args.language] = new_urls
            agg_path.write_text(json.dumps(agg_data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
            print(f"\nRevalidation removed {removed} URLs from aggregator_sites.json")

    cleaned_domains = [item["domain"] for item in removed_details if item["reason"] in ("title_blocked", "anti_pattern", "no_indicators", "non_manga_tld", "non_manga_domain_kw", "non_manga_title")]
    if cleaned_domains:
        cleaned_path = ROOT / "config" / "cleaned_domains" / f"{args.language}.txt"
        _save_cleaned_log(cleaned_path, cleaned_domains)
        print(f"Cleaned/blocked domains logged to {cleaned_path.name}: {len(cleaned_domains)}")

    if added:
        print("Added domains:")
        for d in sorted(added):
            print(f"  + {d}")

    if args.report:
        kw_matched_summary = {}
        for kw, dlist in kw_matched.items():
            kw_matched_summary[kw] = sorted(dlist)

        kw_blocked_summary = {}
        for kw, dlist in kw_blocked.items():
            kw_blocked_summary[kw] = sorted(dlist)

        kw_cleaned_summary = {}
        for kw, dlist in kw_cleaned.items():
            kw_cleaned_summary[kw] = sorted(dlist)

        new_domains_detail = []
        for d in sorted(added):
            new_domains_detail.append({"domain": d, "matchedKeyword": domain_kw_map.get(d, "")})

        report = {
            "language": args.language,
            "timestamp": __import__("datetime").datetime.now(__import__("datetime").timezone.utc).isoformat(),
            "aggregatorSites": len(AGGREGATOR_SITES.get(args.language, [])),
            "queryCount": len(queries),
            "totalUrls": len(all_urls),
            "uniqueDomains": len(domains),
            "validatedCount": len(validated),
            "validationRemovedCount": len(domains) - len(validated),
            "newDomains": sorted(added),
            "newDomainsDetail": new_domains_detail,
            "existingDomainCount": len(existing),
            "antiPatternByKeyword": kw_blocked_summary,
            "cleanedByKeyword": kw_cleaned_summary,
            "allDiscoveredDomains": sorted(domains),
            "removedDomains": removed_details,
            "matchedByKeyword": kw_matched_summary,
        }
        report_path = Path(args.report)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Report saved to {args.report}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
