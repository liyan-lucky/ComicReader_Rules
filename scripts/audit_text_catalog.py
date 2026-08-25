#!/usr/bin/env python3
"""Audit stage-01 name-only catalogs before any URL discovery starts."""
from __future__ import annotations

import argparse
import json
import os
import re
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
NOISE = re.compile(r"^(?:首页|分类|排行|登录|注册|更多|查看更多|查看全部|查看全部作品|作品分类|没有了|书页|完结抽奖)$")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parameters", type=Path, required=True)
    parser.add_argument("--platform-report", type=Path, required=True)
    args = parser.parse_args()
    gates = json.loads((ROOT / "config/pipeline.json").read_text(encoding="utf-8-sig"))["textCatalogGates"]
    platform_report = json.loads(args.platform_report.read_text(encoding="utf-8-sig"))
    platform_counts = {k: int(v) for k, v in platform_report.get("platformCounts", {}).items() if int(v) > 0}
    category_counts, names, errors, warnings = {}, [], [], []
    for path in sorted(args.parameters.glob("*.json")):
        doc = json.loads(path.read_text(encoding="utf-8-sig"))
        works = doc.get("works", [])
        category_counts[path.stem] = len(works)
        for work in works:
            title = str(work.get("canonicalTitle", "")).strip()
            names.append(title.casefold())
            if work.get("language") != "zh-Hans": errors.append(f"{path.stem}: wrong language: {title}")
            if NOISE.search(title): errors.append(f"{path.stem}: navigation noise: {title}")
    unique_names = len(set(names)); duplicate_within_output = sum(v - 1 for v in Counter(names).values() if v > 1)
    # Cross-category title overlap is allowed; each individual category file is already identity-deduplicated.
    if len(platform_counts) < gates["minimumPlatformsWithNames"]:
        errors.append(f"platforms with names below minimum: {len(platform_counts)}/{gates['minimumPlatformsWithNames']}")
    if len(platform_counts) < gates.get("targetPlatformsWithNames", gates["minimumPlatformsWithNames"]):
        warnings.append(f"platform coverage target not reached: {len(platform_counts)}/{gates['targetPlatformsWithNames']}")
    if unique_names < gates["minimumUniqueNames"]:
        errors.append(f"unique names below minimum: {unique_names}/{gates['minimumUniqueNames']}")
    for category, count in category_counts.items():
        if count < gates["minimumNamesPerCategory"]: errors.append(f"empty category: {category}")
    result = {"passed": not errors, "platformsWithNames": len(platform_counts), "platformCounts": platform_counts,
        "uniqueNameCount": unique_names, "crossCategoryOverlapCount": duplicate_within_output,
        "categoryCounts": category_counts, "warnings": warnings, "errors": errors[:100]}
    print(json.dumps(result, ensure_ascii=False, indent=2))
    summary = os.getenv("GITHUB_STEP_SUMMARY")
    if summary:
        lines = ["## 第一步：文字目录审计", "", f"- 有名称的平台：**{len(platform_counts)}**",
            f"- 不同书名：**{unique_names}**", f"- 分类：**{sum(v > 0 for v in category_counts.values())}/{len(category_counts)}**",
            f"- 审计：**{'通过' if not errors else '未通过'}**", "", "| 分类 | 去重后名称 |", "|---|---:|"]
        lines += [f"| {k} | {v} |" for k, v in category_counts.items()]
        if warnings: lines += ["", "### 覆盖警告", ""] + [f"- {w}" for w in warnings]
        if errors: lines += ["", "### 阻断原因", ""] + [f"- {e}" for e in errors]
        Path(summary).open("a", encoding="utf-8").write("\n".join(lines) + "\n")
    return 0 if not errors else 1


if __name__ == "__main__":
    raise SystemExit(main())
