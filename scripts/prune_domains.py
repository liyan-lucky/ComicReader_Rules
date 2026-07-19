#!/usr/bin/env python3
"""域名修剪脚本：从审计报告中提取无效域名，从aggregator_sites.json中移除。

修剪条件：
  1. 种子页全部抓取失败（域名不可达）
  2. 有候选生成但无一条通过审计（域名无公开漫画内容）
  3. 域名只有excluded规则（全部需登录/付费）
  4. 域名在aggregator_sites中但不在审计报告中（从未被搜索到）

用法：
    python scripts/prune_domains.py --language zh-Hans --report generated/rulebot_report.zh-Hans.json
    python scripts/prune_domains.py --language zh-Hans --report generated/rulebot_report.zh-Hans.json --dry-run
    python scripts/prune_domains.py --language zh-Hans --report generated/rulebot_report.zh-Hans.json --cleanup-report generated/domain_cleanup_report.zh-Hans.json
"""
from __future__ import annotations

import argparse
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Dict, List, Set, Tuple
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parents[1]


def _safe_load_json(path: Path) -> dict:
    if not path.exists():
        return {}
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception:
        return {}


def _atomic_write_json(path: Path, data: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_suffix(".tmp")
    tmp.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    tmp.replace(path)


def load_report(path: Path) -> dict:
    return _safe_load_json(path)


def extract_domain_stats(report: dict) -> Dict[str, Dict]:
    domain_stats: Dict[str, Dict] = {}
    for rule in report.get("generated", []):
        domain = rule.get("domain", "")
        if not domain:
            continue
        if domain not in domain_stats:
            domain_stats[domain] = {"generated": 0, "ok": 0, "failed": 0, "excluded": 0}
        domain_stats[domain]["generated"] += 1
        status = rule.get("status", "")
        if "ok" in status or "fallback" in status:
            domain_stats[domain]["ok"] += 1
        else:
            domain_stats[domain]["failed"] += 1

    for rule in report.get("excluded", []):
        domain = rule.get("domain", "")
        if not domain:
            continue
        if domain not in domain_stats:
            domain_stats[domain] = {"generated": 0, "ok": 0, "failed": 0, "excluded": 0}
        domain_stats[domain]["excluded"] += 1

    seed_pages = []
    seed_data = (report.get("stats") or {}).get("seedDiscovery", {})
    if isinstance(seed_data, dict):
        seed_pages = seed_data.get("seedPageStats", [])
    for seed in seed_pages:
        domain = seed.get("targetDomain", "")
        if not domain:
            url = seed.get("seedUrl") or ""
            if "://" in url:
                domain = url.split("://")[1].split("/")[0].replace("www.", "")
        if not domain:
            continue
        if domain not in domain_stats:
            domain_stats[domain] = {"generated": 0, "ok": 0, "failed": 0, "excluded": 0, "seeds_total": 0, "seeds_failed": 0}
        domain_stats[domain]["seeds_total"] = domain_stats[domain].get("seeds_total", 0) + 1
        if seed.get("status") == "fetch_failed":
            domain_stats[domain]["seeds_failed"] = domain_stats[domain].get("seeds_failed", 0) + 1

    return domain_stats


def identify_dead_domains(
    domain_stats: Dict[str, Dict],
    domains_in_file: Set[str],
    min_seed_fail_ratio: float = 1.0,
) -> Tuple[Set[str], List[Dict]]:
    dead = set()
    details = []

    for domain, stats in domain_stats.items():
        generated = stats.get("generated", 0)
        ok = stats.get("ok", 0)
        excluded = stats.get("excluded", 0)
        seeds_total = stats.get("seeds_total", 0)
        seeds_failed = stats.get("seeds_failed", 0)

        reason = ""
        if generated == 0 and seeds_total > 0:
            fail_ratio = seeds_failed / seeds_total if seeds_total > 0 else 0
            if fail_ratio >= min_seed_fail_ratio:
                dead.add(domain)
                reason = f"all_seeds_failed ({seeds_failed}/{seeds_total})"
        elif generated > 0 and ok == 0 and excluded == 0:
            dead.add(domain)
            reason = f"generated_none_ok (generated:{generated}, ok:0)"
        elif generated == 0 and excluded > 0 and ok == 0:
            dead.add(domain)
            reason = f"all_excluded_login_pay (excluded:{excluded})"

        if reason:
            details.append({
                "domain": domain,
                "reason": reason,
                "generated": generated,
                "ok": ok,
                "excluded": excluded,
                "seedsTotal": seeds_total,
                "seedsFailed": seeds_failed,
            })

    audited_domains = set(domain_stats.keys())
    for d in domains_in_file:
        if d not in audited_domains:
            dead.add(d)
            details.append({
                "domain": d,
                "reason": "not_in_audit_report (never_searched)",
                "generated": 0,
                "ok": 0,
                "excluded": 0,
                "seedsTotal": 0,
                "seedsFailed": 0,
            })

    return dead, details


def load_domains_from_aggregator(language: str) -> Tuple[Set[str], Dict[str, str]]:
    sites_path = ROOT / "config" / "aggregator_sites.json"
    domains = set()
    url_to_domain = {}
    data = _safe_load_json(sites_path)
    if not data:
        return domains, url_to_domain
    for url in data.get(language, []):
        url = url.strip()
        if not url:
            continue
        parsed = urlparse(url if "://" in url else "https://" + url)
        domain = (parsed.netloc or parsed.path).lower().replace("www.", "").strip("/")
        if domain:
            domains.add(domain)
            url_to_domain[domain] = url
    return domains, url_to_domain


def prune_aggregator_sites(language: str, dead_domains: Set[str], dry_run: bool = False) -> Tuple[int, List[Dict]]:
    sites_path = ROOT / "config" / "aggregator_sites.json"
    data = _safe_load_json(sites_path)
    if not data:
        return 0, []
    urls = data.get(language, [])
    new_urls = []
    removed = 0
    removed_details = []
    for url in urls:
        stripped = url.strip()
        if not stripped:
            continue
        parsed = urlparse(stripped if "://" in stripped else "https://" + stripped)
        domain = (parsed.netloc or parsed.path).lower().replace("www.", "").strip("/")
        if domain in dead_domains:
            removed += 1
            removed_details.append({"domain": domain, "url": stripped})
        else:
            new_urls.append(stripped)

    if removed > 0 and not dry_run:
        data[language] = new_urls
        _atomic_write_json(sites_path, data)
        _add_dead_domains_to_blocked(dead_domains)

    return removed, removed_details


def _add_dead_domains_to_blocked(dead_domains: Set[str]) -> None:
    blocked_path = ROOT / "config" / "blocked_domains.json"
    data = _safe_load_json(blocked_path)
    if not data:
        return
    excluded = data.get("excluded_domains", [])
    existing = set(excluded)
    added = 0
    for d in dead_domains:
        if d and d not in existing:
            excluded.append(d)
            existing.add(d)
            added += 1
    if added > 0:
        data["excluded_domains"] = excluded
        _atomic_write_json(blocked_path, data)
        print(f"  已将 {added} 个死亡域名添加到 blocked_domains.json/excluded_domains")


def add_new_domains_to_aggregator(language: str, report: dict, dry_run: bool = False) -> int:
    blocked_path = ROOT / "config" / "blocked_domains.json"
    excluded_domains = set()
    if blocked_path.exists():
        try:
            excluded_domains = set(json.loads(blocked_path.read_text(encoding="utf-8")).get("excluded_domains", []))
        except Exception:
            pass

    sites_path = ROOT / "config" / "aggregator_sites.json"
    data = _safe_load_json(sites_path)
    existing_urls = set(u.strip().lower() for u in data.get(language, []))
    existing_domains = set()
    for url in existing_urls:
        parsed = urlparse(url if "://" in url else "https://" + url)
        d = (parsed.netloc or parsed.path).lower().replace("www.", "").strip("/")
        if d:
            existing_domains.add(d)

    new_urls = []
    for rule in report.get("generated", []):
        domain = (rule.get("domain") or "").lower().replace("www.", "").strip()
        if not domain:
            continue
        if domain in existing_domains:
            continue
        if domain in excluded_domains:
            continue
        base_url = rule.get("base_url") or f"https://{domain}"
        base_url = base_url.strip()
        if base_url.lower() not in existing_urls:
            new_urls.append(base_url)
            existing_domains.add(domain)
            existing_urls.add(base_url.lower())

    if new_urls and not dry_run:
        if language not in data:
            data[language] = []
        data[language].extend(new_urls)
        _atomic_write_json(sites_path, data)
        print(f"  已将 {len(new_urls)} 个新域名添加到 aggregator_sites.json ({language})")

    return len(new_urls)


def main() -> int:
    parser = argparse.ArgumentParser(description="从审计报告中修剪无效域名")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en", "ja", "ko"])
    parser.add_argument("--report", default="generated/rulebot_report.{lang}.json")
    parser.add_argument("--dry-run", action="store_true", help="只预览，不修改文件")
    parser.add_argument("--min-seed-fail-ratio", type=float, default=1.0, help="种子失败比例阈值(默认1.0=全部失败)")
    parser.add_argument("--cleanup-report", default="", help="JSON清理报告输出路径")
    args = parser.parse_args()

    report_path = ROOT / args.report.format(lang=args.language)
    report = load_report(report_path)
    if not report:
        print(f"报告文件不存在或为空: {report_path}", file=sys.stderr)
        return 1

    domains_in_file, url_to_domain = load_domains_from_aggregator(args.language)

    domain_stats = extract_domain_stats(report)
    dead_domains, dead_details = identify_dead_domains(domain_stats, domains_in_file, args.min_seed_fail_ratio)

    print(f"域名修剪统计：")
    print(f"  aggregator_sites中的域名数：{len(domains_in_file)}")
    print(f"  审计报告中的域名数：{len(domain_stats)}")
    print(f"  判定为死亡的域名数：{len(dead_domains)}")

    if dead_details:
        print(f"\n--- 删除域名列表 ({len(dead_details)}) ---")
        by_reason = {}
        for item in dead_details:
            r = item["reason"].split(" ")[0]
            by_reason.setdefault(r, []).append(item)
        for reason in sorted(by_reason.keys()):
            items = by_reason[reason]
            print(f"\n  [{reason}] ({len(items)} domains):")
            for item in sorted(items, key=lambda x: x["domain"]):
                detail_parts = []
                if item.get("generated"):
                    detail_parts.append(f"gen:{item['generated']}")
                if item.get("ok"):
                    detail_parts.append(f"ok:{item['ok']}")
                if item.get("excluded"):
                    detail_parts.append(f"excl:{item['excluded']}")
                if item.get("seedsTotal"):
                    detail_parts.append(f"seeds:{item['seedsFailed']}/{item['seedsTotal']}")
                detail_str = f" ({', '.join(detail_parts)})" if detail_parts else ""
                print(f"    ✗ {item['domain']}{detail_str}")

    removed, removed_details = prune_aggregator_sites(args.language, dead_domains, dry_run=args.dry_run)

    new_count = add_new_domains_to_aggregator(args.language, report, dry_run=args.dry_run)

    if args.dry_run:
        print(f"\n[DRY RUN] 将从 aggregator_sites.json ({args.language}) 移除 {removed} 个域名")
        print(f"[DRY RUN] 将向 aggregator_sites.json ({args.language}) 添加 {new_count} 个新域名")
    else:
        print(f"\n从 aggregator_sites.json ({args.language}) 移除了 {removed} 个死亡域名")
        print(f"向 aggregator_sites.json ({args.language}) 添加了 {new_count} 个新域名")

    domains_after, _ = load_domains_from_aggregator(args.language) if not args.dry_run else (domains_in_file - dead_domains, {})

    if args.cleanup_report:
        cleanup_data = {
            "language": args.language,
            "timestamp": datetime.now(timezone.utc).isoformat(),
            "sourceReport": str(report_path),
            "domainsBeforeCount": len(domains_in_file),
            "domainsAfterCount": len(domains_after),
            "prunedCount": removed,
            "removedDomains": dead_details,
            "removedUrls": removed_details,
        }
        cleanup_path = Path(args.cleanup_report)
        cleanup_path.parent.mkdir(parents=True, exist_ok=True)
        cleanup_path.write_text(json.dumps(cleanup_data, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Cleanup report saved to {args.cleanup_report}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
