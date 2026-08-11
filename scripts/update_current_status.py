#!/usr/bin/env python3
"""Refresh the machine-owned section of docs/CURRENT_STATUS.md from audit JSON."""
from __future__ import annotations

import argparse
import json
import os
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
START = "<!-- PIPELINE_STATUS:START -->"
END = "<!-- PIPELINE_STATUS:END -->"


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8-sig"))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--language", default="zh-Hans")
    parser.add_argument("--audit")
    parser.add_argument("--coverage")
    parser.add_argument("--run-url", default=os.getenv("GITHUB_RUN_URL", ""))
    args = parser.parse_args()
    audit_path = Path(args.audit) if args.audit else ROOT / "generated" / f"pipeline_audit.{args.language}.json"
    coverage_path = Path(args.coverage) if args.coverage else ROOT / "generated" / f"domain_coverage.{args.language}.json"
    audit = load(audit_path)
    coverage = load(coverage_path)
    categories = audit.get("catalog", {}).get("categories", [])
    minimum = int(audit.get("catalog", {}).get("minimumPerCategory", 200))
    deficits = [item for item in categories if int(item.get("count", 0)) < minimum]
    reasons = Counter(
        str(value.get("reason", "unknown"))
        for value in coverage.get("uncoveredReasons", {}).values()
    )
    passed = (
        not deficits
        and int(audit.get("catalog", {}).get("incompleteSource", 0)) == 0
        and not coverage.get("uncoveredValidatedDomains", [])
        and not coverage.get("unresolvedDomains", [])
        and not coverage.get("unexpectedRuleDomains", [])
        and int(audit.get("rules", {}).get("count", 0)) >= int(audit.get("rules", {}).get("minimum", 0))
    )
    run_link = f"[查看运行]({args.run_url})" if args.run_url else "运行链接未提供"
    lines = [
        START,
        "## 最近一次机器审计",
        "",
        f"- 结论：**{'达标' if passed else '未达标，未发布'}**",
        f"- 审计时间：`{audit.get('generatedAt', '')}`",
        f"- 运行：{run_link}",
        f"- 固定查询：`{', '.join(audit.get('fixedQueries', []))}`",
        f"- 规则：{audit.get('rules', {}).get('count', 0)} / 最低 {audit.get('rules', {}).get('minimum', 0)}",
        f"- 目录：{audit.get('catalog', {}).get('actualTotal', 0)} 项 / {len(categories)} 类",
        f"- 来源不完整：{audit.get('catalog', {}).get('incompleteSource', 0)}",
        f"- 发现域名：{len(coverage.get('discoveredDomains', coverage.get('validatedDomains', [])))}",
        f"- 可生成域名覆盖：{len(coverage.get('eligibleDomains', [])) - len(coverage.get('uncoveredEligibleDomains', []))}/{len(coverage.get('eligibleDomains', []))} ({coverage.get('coveragePercent', 0)}%)",
        f"- 明确拒绝域名：{len(coverage.get('rejectedDomains', {}))}；待判定：{len(coverage.get('unresolvedDomains', []))}",
        f"- 未达最低数量分类：{len(deficits)}",
        "",
        "| 分类 | 数量 | 最低要求 | 分类证据缺失 | 结果 |",
        "|---|---:|---:|---:|---|",
    ]
    for item in categories:
        count = int(item.get("count", 0))
        lines.append(
            f"| {item.get('name', item.get('id', ''))} | {count} | {minimum} | "
            f"{item.get('missingCategoryEvidence', 0)} | {'达标' if count >= minimum else '不足'} |"
        )
    lines.extend(["", "未覆盖域名原因："])
    if reasons:
        lines.extend(f"- `{reason}`：{count}" for reason, count in sorted(reasons.items()))
    else:
        lines.append("- 无")
    lines.extend([END, ""])
    block = "\n".join(lines)

    target = ROOT / "docs" / "CURRENT_STATUS.md"
    current = target.read_text(encoding="utf-8") if target.exists() else "# 当前状态\n"
    if START in current and END in current:
        prefix, remainder = current.split(START, 1)
        _, suffix = remainder.split(END, 1)
        updated = prefix.rstrip() + "\n\n" + block + suffix.lstrip("\n")
    else:
        updated = current.rstrip() + "\n\n" + block
    with target.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write(updated)
    print(f"updated {target} from {audit_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
