#!/usr/bin/env python3
"""域名修剪脚本：从审计报告中提取无效域名，从config/domains/中移除。

用法：
    python scripts/prune_domains.py --language zh-Hans --report generated/rulebot_report.json
    python scripts/prune_domains.py --language zh-Hans --report generated/rulebot_report.json --dry-run
    python scripts/prune_domains.py --language zh-Hans --report generated/rulebot_report.json --cleanup-report generated/domain_cleanup_report.json
"""
from __future__ import annotations

import argparse
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Dict, List, Set, Tuple

ROOT = Path(__file__).resolve().parents[1]


def load_report(path: Path) -> dict:
    if not path.exists():
        return {}
    return json.loads(path.read_text(encoding="utf-8"))


def extract_domain_stats(report: dict) -> Dict[str, Dict]:
    domain_stats: Dict[str, Dict] = {}
    for rule in report.get("generated", []):
        domain = rule.get("domain", "")
        if not domain:
            continue
        if domain not in domain_stats:
            domain_stats[domain] = {"generated": 0, "ok": 0, "failed": 0}
        domain_stats[domain]["generated"] += 1
        status = rule.get("status", "")
        if "ok" in status or "fallback" in status:
            domain_stats[domain]["ok"] += 1
        else:
            domain_stats[domain]["failed"] += 1

    for seed in report.get("seedResults", []):
        domain = seed.get("targetDomain", "")
        if not domain:
            url = seed.get("seedUrl", "")
            if "://" in url:
                domain = url.split("://")[1].split("/")[0].replace("www.", "")
        if not domain:
            continue
        if domain not in domain_stats:
            domain_stats[domain] = {"generated": 0, "ok": 0, "failed": 0, "seeds_total": 0, "seeds_failed": 0}
        domain_stats[domain]["seeds_total"] = domain_stats[domain].get("seeds_total", 0) + 1
        if seed.get("status") == "fetch_failed":
            domain_stats[domain]["seeds_failed"] = domain_stats[domain].get("seeds_failed", 0) + 1

    return domain_stats


def identify_dead_domains(domain_stats: Dict[str, Dict], min_seed_fail_ratio: float = 1.0) -> Tuple[Set[str], List[Dict]]:
    dead = set()
    details = []
    for domain, stats in domain_stats.items():
        generated = stats.get("generated", 0)
        ok = stats.get("ok", 0)
        seeds_total = stats.get("seeds_total", 0)
        seeds_failed = stats.get("seeds_failed", 0)

        reason = ""
        if generated == 0 and seeds_total > 0:
            fail_ratio = seeds_failed / seeds_total if seeds_total > 0 else 0
            if fail_ratio >= min_seed_fail_ratio:
                dead.add(domain)
                reason = f"all_seeds_failed ({seeds_failed}/{seeds_total})"
        elif generated > 0 and ok == 0:
            dead.add(domain)
            reason = f"generated_but_none_ok (generated:{generated}, ok:0)"

        if reason:
            details.append({
                "domain": domain,
                "reason": reason,
                "generated": generated,
                "ok": ok,
                "seedsTotal": seeds_total,
                "seedsFailed": seeds_failed,
            })

    return dead, details


def load_domains_file(filepath: Path) -> Tuple[List[str], List[str]]:
    if not filepath.exists():
        return [], []
    lines = filepath.read_text(encoding="utf-8").splitlines()
    header = []
    domains = []
    in_header = True
    for line in lines:
        stripped = line.strip()
        if in_header and (not stripped or stripped.startswith("#")):
            header.append(line)
        elif stripped and not stripped.startswith("#"):
            in_header = False
            d = stripped.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "").lower()
            domains.append(d)
        else:
            header.append(line)
    return header, domains


def prune_domains_file(filepath: Path, dead_domains: Set[str], dry_run: bool = False) -> Tuple[int, List[Dict]]:
    if not filepath.exists():
        return 0, []
    lines = filepath.read_text(encoding="utf-8").splitlines()
    new_lines = []
    removed = 0
    removed_details = []
    for line in lines:
        stripped = line.strip()
        if not stripped or stripped.startswith("#"):
            new_lines.append(line)
            continue
        d = stripped.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "").lower()
        if d in dead_domains:
            removed += 1
            removed_details.append({"domain": d, "reason": "dead_domain"})
        else:
            new_lines.append(line)

    if removed > 0 and not dry_run:
        filepath.write_text("\n".join(new_lines) + "\n", encoding="utf-8")

    return removed, removed_details


def main() -> int:
    parser = argparse.ArgumentParser(description="从审计报告中修剪无效域名")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en"])
    parser.add_argument("--report", default="generated/rulebot_report.json")
    parser.add_argument("--dry-run", action="store_true", help="只预览，不修改文件")
    parser.add_argument("--min-seed-fail-ratio", type=float, default=1.0, help="种子全部失败才判定域名死亡(默认1.0)")
    parser.add_argument("--cleanup-report", default="", help="JSON清理报告输出路径")
    args = parser.parse_args()

    report_path = ROOT / args.report
    report = load_report(report_path)
    if not report:
        print(f"报告文件不存在或为空: {report_path}", file=sys.stderr)
        return 1

    domain_stats = extract_domain_stats(report)
    dead_domains, dead_details = identify_dead_domains(domain_stats, args.min_seed_fail_ratio)

    print(f"审计报告中域名统计：")
    print(f"  总域名数：{len(domain_stats)}")
    print(f"  有规则生成的域名：{sum(1 for s in domain_stats.values() if s.get('generated', 0) > 0)}")
    print(f"  无规则生成的域名：{sum(1 for s in domain_stats.values() if s.get('generated', 0) == 0)}")
    print(f"  判定为死亡的域名：{len(dead_domains)}")

    if dead_domains:
        print(f"\n--- 死亡域名列表 ({len(dead_domains)}) ---")
        by_reason = {}
        for item in dead_details:
            r = item["reason"].split(" ")[0]
            by_reason.setdefault(r, []).append(item)
        for reason in sorted(by_reason.keys()):
            items = by_reason[reason]
            print(f"\n  [{reason}] ({len(items)} domains):")
            for item in items:
                print(f"    ✗ {item['domain']} ({item['reason']})")

    filepath = ROOT / "config" / "domains" / f"{args.language}.txt"
    _, domains_before = load_domains_file(filepath)
    removed, removed_details = prune_domains_file(filepath, dead_domains, dry_run=args.dry_run)

    if args.dry_run:
        print(f"\n[DRY RUN] 将从 {filepath.name} 移除 {removed} 个域名")
    else:
        print(f"\n从 {filepath.name} 移除了 {removed} 个死亡域名")

    _, domains_after = load_domains_file(filepath) if not args.dry_run else ([], domains_before)
    if not args.dry_run:
        _, domains_after = load_domains_file(filepath)

    if args.cleanup_report:
        cleanup_data = {
            "language": args.language,
            "timestamp": datetime.now(timezone.utc).isoformat(),
            "sourceReport": str(report_path),
            "totalAuditedDomains": len(domain_stats),
            "deadDomainCount": len(dead_domains),
            "prunedFromFile": removed,
            "domainsBeforeCount": len(domains_before),
            "domainsAfterCount": len(domains_after) if not args.dry_run else len(domains_before) - removed,
            "removedDomains": dead_details + removed_details,
        }
        cleanup_path = Path(args.cleanup_report)
        cleanup_path.parent.mkdir(parents=True, exist_ok=True)
        cleanup_path.write_text(json.dumps(cleanup_data, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Cleanup report saved to {args.cleanup_report}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
