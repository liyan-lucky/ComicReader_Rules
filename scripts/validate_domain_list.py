#!/usr/bin/env python3
"""验证域名列表：并发抓取首页，检查是否包含该语种的漫画关键词。
用法：
    python scripts/validate_domain_list.py --language zh-Hans
    python scripts/validate_domain_list.py --language en --dry-run
    python scripts/validate_domain_list.py --language zh-Hans --workers 10
"""
from __future__ import annotations

import argparse
import json
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

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

_HEADERS_CFG = json.loads((ROOT / "config" / "headers.json").read_text(encoding="utf-8")) if (ROOT / "config" / "headers.json").exists() else {}
DEFAULT_UA = _HEADERS_CFG.get("default_ua", "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36")
ACCEPT_LANG = _HEADERS_CFG.get("accept_language", "zh-CN,zh;q=0.9,en;q=0.8")

_MANGA_KW_CFG = json.loads((ROOT / "config" / "manga_indicator_keywords.json").read_text(encoding="utf-8"))

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


def check_domain(domain: str, primary: set, secondary: set, anti: set) -> tuple:
    try:
        url = f"https://{domain}"
        headers = {"User-Agent": DEFAULT_UA, "Accept-Language": ACCEPT_LANG}
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=8, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=8, allow_redirects=True)
        if r.status_code >= 400:
            return domain, f"http_{r.status_code}", ""
    except Exception:
        return domain, "fetch_failed", ""

    text = r.text.lower()[:80000]
    final_url = r.url.lower()

    primary_hit = None
    for kw in primary:
        if kw in text:
            primary_hit = kw
            break

    url_pattern_hit = None
    for pat in _MANGA_URL_PATTERNS:
        if pat in final_url or pat in text:
            url_pattern_hit = pat
            break

    secondary_hits = [kw for kw in secondary if kw in text]

    for ap in anti:
        if ap in text:
            return domain, "anti_pattern", ap

    if primary_hit:
        matched_kw = primary_hit
        for orig_kw in primary:
            if orig_kw.lower() == primary_hit and orig_kw in r.text[:80000]:
                matched_kw = orig_kw
                break
        return domain, "primary_match", matched_kw

    if url_pattern_hit:
        return domain, "url_pattern_match", url_pattern_hit

    if len(secondary_hits) >= 3:
        return domain, "secondary_3+", ",".join(secondary_hits[:5])

    return domain, "no_indicators", ""


def load_domains(filepath: Path):
    domains = []
    for line in filepath.read_text(encoding="utf-8").splitlines():
        stripped = line.strip()
        if not stripped or stripped.startswith("#"):
            continue
        domain = stripped.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "").lower()
        domains.append(domain)
    return domains


def main() -> int:
    parser = argparse.ArgumentParser(description="验证域名列表")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en"])
    parser.add_argument("--dry-run", action="store_true", help="只输出结果不写文件")
    parser.add_argument("--workers", type=int, default=8, help="并发数")
    args = parser.parse_args()

    filepath = ROOT / "config" / "domains" / f"{args.language}.txt"
    domains = load_domains(filepath)
    primary, secondary, anti = _get_kw_sets(args.language)

    print(f"Validating {len(domains)} domains for {args.language} (workers={args.workers})...")
    print(f"  Primary keywords ({len(primary)}): {', '.join(list(primary)[:8])}...")
    print(f"  Secondary keywords ({len(secondary)}): {', '.join(list(secondary)[:6])}...")
    print(f"  Anti-patterns ({len(anti)}): {', '.join(list(anti)[:6])}...")
    print()

    results = {}
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(check_domain, d, primary, secondary, anti): d for d in domains}
        for f in as_completed(futures):
            domain, result, detail = f.result()
            results[domain] = (result, detail)

    kept = []
    removed = []
    reasons = {}

    for domain in sorted(results.keys()):
        result, detail = results[domain]
        reasons[result] = reasons.get(result, 0) + 1

        if result in ("primary_match", "url_pattern_match", "secondary_3+"):
            kept.append(domain)
            detail_str = f" [{detail}]" if detail else ""
            print(f"  ✓ {domain} ({result}{detail_str})")
        elif result.startswith("fetch_failed") or result.startswith("http_4") or result.startswith("http_5"):
            kept.append(domain)
            print(f"  ? {domain} ({result}, kept)")
        else:
            removed.append(domain)
            print(f"  ✗ {domain} ({result})")

    print(f"\n{'='*60}")
    print(f"Results: {len(kept)} kept, {len(removed)} removed")
    print(f"Reason breakdown:")
    for k, v in sorted(reasons.items()):
        print(f"  {k}: {v}")

    if removed:
        print(f"\nRemoved domains ({len(removed)}):")
        for d in removed:
            print(f"  - {d} ({results[d][0]})")

    if not args.dry_run and removed:
        lines = [f"# {args.language} domain list\n"]
        lines.append(f"# Validated: {len(kept)} kept, {len(removed)} removed\n")
        lines.append(f"# Removed: {', '.join(removed)}\n\n")
        for d in sorted(kept):
            lines.append(f"{d}\n")
        filepath.write_text("".join(lines), encoding="utf-8")
        print(f"\nUpdated {filepath.name}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
