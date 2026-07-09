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

_SEARCH_CFG = _load_config("search_endpoints.json", {}).get("searxng", {})
_SEARXNG_MAX_PAGES = _SEARCH_CFG.get("max_pages", 0)
_SEARXNG_LANGUAGE = _SEARCH_CFG.get("language", "all")
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
                if u.startswith("http") and (max_total == 0 or len(all_urls) < max_total):
                    all_urls.append(u)
                    found += 1
            print(f"    Found {found} links (HTTP {r.status_code})")
        except Exception as e:
            print(f"    Failed: {e}", file=sys.stderr)
    return all_urls


_BLOCKED_CFG = _load_config("blocked_domains.json", {})
BLOCKED_DOMAIN_KEYWORDS: List[str] = _BLOCKED_CFG.get("discover_domains", [])


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


def is_blocked_domain(domain: str) -> bool:
    d = domain.lower()
    for kw in BLOCKED_DOMAIN_KEYWORDS:
        if kw in d:
            return True
    return False


_MANGA_KW_CFG = _load_config("manga_indicator_keywords.json", {})
_MANGA_URL_PATTERNS = [
    "/manga/", "/manhua/", "/manhwa/", "/comic/", "/webtoon/",
    "/chapter-", "/chapter/", "/read-", "/viewer/", "/title/",
    "/genre-", "/genre/", "/manga-list",
]


def _get_kw_sets(language: str):
    cfg = _MANGA_KW_CFG.get(language, {})
    if isinstance(cfg, list):
        return set(kw.lower() for kw in cfg), set(), set()
    primary = set(kw.lower() for kw in cfg.get("primary", []))
    secondary = set(kw.lower() for kw in cfg.get("secondary", []))
    anti = set(kw.lower() for kw in cfg.get("anti_patterns", []))
    return primary, secondary, anti


def _check_homepage(domain: str, language: str, primary: set, secondary: set, anti: set) -> str:
    try:
        url = f"https://{domain}"
        headers = {"User-Agent": DEFAULT_UA, "Accept-Language": _ACCEPT_LANG}
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=10, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=10, allow_redirects=True)
        if r.status_code >= 400:
            return f"http_{r.status_code}"
    except Exception as e:
        return f"fetch_failed:{e}"

    text = r.text.lower()[:80000]
    final_url = r.url.lower()

    for ap in anti:
        if ap in text:
            return "anti_pattern"

    for kw in primary:
        if kw in text:
            return "primary_match"

    for pat in _MANGA_URL_PATTERNS:
        if pat in final_url or pat in text:
            return "url_pattern_match"

    secondary_hits = sum(1 for kw in secondary if kw in text)
    if secondary_hits >= 3:
        return "secondary_3+"

    return "no_indicators"


def validate_domains(domains: List[str], existing: Set[str], language: str) -> tuple:
    primary, secondary, anti = _get_kw_sets(language)
    validated = []
    skipped = 0
    reasons = {"existing": 0, "primary_match": 0, "url_pattern_match": 0, "secondary_3+": 0}
    reject_reasons = {"http_error": 0, "anti_pattern": 0, "no_indicators": 0, "network_issue": 0}
    removed_details = []

    for d in domains:
        if d in existing:
            validated.append(d)
            reasons["existing"] += 1
            continue

        result = _check_homepage(d, language, primary, secondary, anti)

        if result in ("primary_match", "url_pattern_match", "secondary_3+"):
            validated.append(d)
            reasons[result] += 1
            print(f"  ✓ {d} ({result})")
        elif result.startswith("fetch_failed") or result.startswith("http_4") or result.startswith("http_5"):
            skipped += 1
            reject_reasons["network_issue"] += 1
            removed_details.append({"domain": d, "reason": "network_issue", "detail": result})
            print(f"  ✗ {d} ({result}, skipped - cannot verify)")
        else:
            skipped += 1
            if result.startswith("http_"):
                reject_reasons["http_error"] += 1
            elif result == "anti_pattern":
                reject_reasons["anti_pattern"] += 1
            else:
                reject_reasons["no_indicators"] += 1
            removed_details.append({"domain": d, "reason": result, "detail": ""})
            print(f"  ✗ {d} ({result})")

    print(f"  Validation: {len(validated)} kept, {skipped} removed")
    print(f"    Kept reasons: {reasons}")
    print(f"    Reject reasons: {reject_reasons}")
    return validated, removed_details


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
    parser.add_argument("--limit", type=int, default=0, help="每个搜索查询取多少条结果，0=不限制")
    parser.add_argument("--report", default="", help="JSON报告输出路径")
    parser.add_argument("--suppress-zero-results", action="store_true", help="零结果搜索不输出警告")
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
            urls = search_searxng(q, args.limit, suppress_zero=args.suppress_zero_results)
            if len(urls) < 3:
                urls += search_duckduckgo(q, args.limit, suppress_zero=args.suppress_zero_results)
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

    print(f"\n=== Phase 3: Domain reasonableness validation ===")
    validated, removed_details = validate_domains(clean, existing, args.language)
    print(f"Validated manga domains: {len(validated)} (removed {len(clean) - len(validated)} non-manga)")

    if removed_details:
        print(f"\n--- Phase 3 removed domains ({len(removed_details)}) ---")
        by_reason = {}
        for item in removed_details:
            by_reason.setdefault(item["reason"], []).append(item)
        for reason in sorted(by_reason.keys()):
            items = by_reason[reason]
            print(f"  [{reason}] ({len(items)}):")
            for item in items:
                detail_str = f' ({item["detail"]})' if item["detail"] else ""
                print(f'    - {item["domain"]}{detail_str}')

    added = save_domains(filepath, existing, validated)
    print(f"\nNew domains added to {filepath.name}: {len(added)}")

    if added:
        print("Added domains:")
        for d in sorted(added):
            print(f"  + {d}")

    if args.report:
        blocked_details = []
        for d in blocked:
            matched_kw = ""
            for kw in BLOCKED_DOMAIN_KEYWORDS:
                if kw in d.lower():
                    matched_kw = kw
                    break
            blocked_details.append({"domain": d, "matchedKeyword": matched_kw})

        report = {
            "language": args.language,
            "timestamp": __import__("datetime").datetime.now(__import__("datetime").timezone.utc).isoformat(),
            "aggregatorSites": len(AGGREGATOR_SITES.get(args.language, [])),
            "queryCount": len(queries),
            "totalUrls": len(all_urls),
            "uniqueDomains": len(domains),
            "blockedCount": len(blocked),
            "validatedCount": len(validated),
            "validationRemovedCount": len(clean) - len(validated),
            "newDomains": sorted(added),
            "existingDomainCount": len(existing),
            "blockedDomains": sorted(blocked),
            "blockedDetails": blocked_details,
            "allDiscoveredDomains": sorted(clean),
            "removedDomains": removed_details,
        }
        report_path = Path(args.report)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Report saved to {args.report}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
