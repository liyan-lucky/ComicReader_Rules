#!/usr/bin/env python3
"""Validate all domains in aggregator_sites.json and produce audit report."""
import json, sys, re, time
from pathlib import Path
from urllib.parse import urlparse

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

# Load config
manga_kw = json.loads((ROOT / "config" / "manga_indicator_keywords.json").read_text(encoding="utf-8"))
blocked = json.loads((ROOT / "config" / "blocked_domains.json").read_text(encoding="utf-8"))
agg = json.loads((ROOT / "config" / "aggregator_sites.json").read_text(encoding="utf-8"))

zh_cfg = manga_kw.get("zh-Hans", {})
validate_kws = set(kw.lower() for kw in zh_cfg.get("validate", []))
secondary_kws = set(kw.lower() for kw in zh_cfg.get("secondary", []))
domain_label_kws = set(kw.lower() for kw in zh_cfg.get("domain_label", []))
anti_kws = set(kw.lower() for kw in zh_cfg.get("anti_patterns", []))
blocked_content_kws = blocked.get("discover_domains", [])
excluded_domains = set(blocked.get("excluded_domains", []))

HOSTING_SUFFIXES = {
    ".github.io", ".vercel.app", ".netlify.app", ".pages.dev",
    ".gitlab.io", ".gitee.io", ".cloudfront.net", ".herokuapp.com",
    ".render.com", ".railway.app", ".fly.dev", ".supabase.co",
    ".firebaseapp.com", ".web.app", ".glitch.me", ".replit.com",
    ".onrender.com", ".surge.sh", ".itch.io",
}

def registered_domain(domain):
    dl = domain.lower()
    for suffix in HOSTING_SUFFIXES:
        if dl.endswith(suffix):
            parts = dl.split(".")
            if len(parts) >= 3:
                return parts[-3] + "." + parts[-2] + "." + parts[-1]
    parts = dl.split(".")
    if len(parts) >= 2:
        return parts[-2] + "." + parts[-1]
    return domain

def domain_label(domain):
    dl = domain.lower()
    for suffix in HOSTING_SUFFIXES:
        if dl.endswith(suffix):
            parts = dl.split(".")
            if len(parts) >= 3:
                return parts[-3]
    parts = dl.split(".")
    if len(parts) >= 2:
        return parts[-2]
    return domain

def check_homepage(dm):
    try:
        url = f"https://{dm}"
        headers = {"User-Agent": DEFAULT_UA, "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8"}
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=8, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=8, allow_redirects=True)
        if r.status_code >= 400:
            dl = dm.lower()
            label = domain_label(dm)
            for kw in domain_label_kws:
                if kw in dl or kw in label:
                    return {"result": "domain_label_match", "kw": kw, "http": r.status_code}
            return {"result": f"http_{r.status_code}", "kw": "", "http": r.status_code}
    except Exception as e:
        dl = dm.lower()
        label = domain_label(dm)
        for kw in domain_label_kws:
            if kw in dl or kw in label:
                return {"result": "domain_label_match", "kw": kw, "http": 0}
        return {"result": f"fetch_failed", "kw": "", "http": 0, "error": str(e)[:80]}

    text = r.text.lower()[:80000]
    title = ""
    m = re.search(r"<title[^>]*>(.*?)</title>", text, re.DOTALL | re.IGNORECASE)
    if m:
        title = m.group(1).strip()

    # Anti patterns
    for ap in anti_kws:
        if re.search(r'[\u4e00-\u9fff]', ap):
            if ap in text:
                return {"result": "anti_pattern", "kw": ap}
        else:
            if re.search(r'\b' + re.escape(ap) + r'\b', text, re.IGNORECASE):
                return {"result": "anti_pattern", "kw": ap}

    # Content blocked (title only)
    for bk in blocked_content_kws:
        if re.search(r'[\u4e00-\u9fff]', bk):
            if bk in title:
                return {"result": "content_blocked", "kw": bk}
        else:
            if re.search(r'\b' + re.escape(bk) + r'\b', title, re.IGNORECASE):
                return {"result": "content_blocked", "kw": bk}

    # Validate
    for kw in validate_kws:
        if kw in text or kw in title:
            loc = "title" if kw in title else "body"
            return {"result": "primary_match", "kw": kw, "loc": loc}

    # Domain label
    dl = dm.lower()
    label = domain_label(dm)
    for kw in domain_label_kws:
        if kw in dl or kw in label:
            return {"result": "domain_label_match", "kw": kw}

    # Secondary
    secondary_hits = sum(1 for kw in secondary_kws if kw in text)
    if secondary_hits >= 2:
        return {"result": "secondary_2+", "kw": ""}

    # Domain label fallback
    for kw in domain_label_kws:
        if kw in dl or kw in label:
            return {"result": "domain_label_fallback", "kw": kw}

    return {"result": "no_indicators", "kw": ""}

# Main
urls = agg.get("zh-Hans", [])
domains = []
seen = set()
for u in urls:
    d = urlparse(u).netloc.lower().replace("www.", "")
    if d:
        rd = registered_domain(d)
        if rd not in seen:
            seen.add(rd)
            domains.append(rd)

print(f"=== Phase 2: Domain Validation Audit ===")
print(f"Total domains in aggregator_sites.json: {len(domains)}")
print(f"validate keywords: {sorted(validate_kws)}")
print(f"domain_label keywords: {sorted(domain_label_kws)}")
print(f"anti_patterns: {sorted(anti_kws)}")
print()

results = {"pass": [], "fail": [], "hosting": [], "excluded": []}
for d in sorted(domains):
    # Check hosting platform
    is_hosting = any(d.endswith(s) for s in HOSTING_SUFFIXES)
    if is_hosting:
        results["hosting"].append({"domain": d, "result": "hosting_platform"})
        print(f"  SKIP {d} (hosting platform)")
        continue
    if d in excluded_domains:
        results["excluded"].append({"domain": d, "result": "excluded"})
        print(f"  SKIP {d} (excluded)")
        continue

    info = check_homepage(d)
    info["domain"] = d
    ok = info["result"] in ("primary_match", "domain_label_match", "secondary_2+", "domain_label_fallback")
    if ok:
        results["pass"].append(info)
        print(f"  OK   {d} ({info['result']}: {info.get('kw','')})")
    else:
        results["fail"].append(info)
        print(f"  FAIL {d} ({info['result']}: {info.get('kw','')})")

print(f"\n=== Audit Summary ===")
print(f"PASS: {len(results['pass'])}")
print(f"FAIL: {len(results['fail'])}")
print(f"HOSTING (skipped): {len(results['hosting'])}")
print(f"EXCLUDED (skipped): {len(results['excluded'])}")

# Detail pass
print(f"\n--- PASS Details ---")
by_result = {}
for r in results["pass"]:
    by_result.setdefault(r["result"], []).append(r)
for k in sorted(by_result.keys()):
    items = by_result[k]
    print(f"  [{k}] ({len(items)}):")
    for item in items:
        kw_str = f" kw={item.get('kw','')}" if item.get('kw') else ""
        loc_str = f" loc={item.get('loc','')}" if item.get('loc') else ""
        print(f"    {item['domain']}{kw_str}{loc_str}")

# Detail fail
print(f"\n--- FAIL Details ---")
by_result = {}
for r in results["fail"]:
    by_result.setdefault(r["result"], []).append(r)
for k in sorted(by_result.keys()):
    items = by_result[k]
    print(f"  [{k}] ({len(items)}):")
    for item in items:
        kw_str = f" kw={item.get('kw','')}" if item.get('kw') else ""
        err_str = f" err={item.get('error','')}" if item.get('error') else ""
        print(f"    {item['domain']}{kw_str}{err_str}")

# Save report
report = {
    "timestamp": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
    "totalDomains": len(domains),
    "passCount": len(results["pass"]),
    "failCount": len(results["fail"]),
    "hostingCount": len(results["hosting"]),
    "excludedCount": len(results["excluded"]),
    "passDetails": results["pass"],
    "failDetails": results["fail"],
    "validateKeywords": sorted(validate_kws),
    "domainLabelKeywords": sorted(domain_label_kws),
    "antiPatterns": sorted(anti_kws),
}
report_path = ROOT / "generated" / "domain_validation_audit.json"
report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
print(f"\nReport saved to {report_path}")
