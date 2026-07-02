#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""输出公开漫画目录生成分析摘要。

用于 GitHub Actions Summary，也可本地执行：

    python scripts/summarize_catalog_report.py

只读取已生成的 JSON 统计文件，不请求外部网络。
"""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
from typing import Any, Dict, Iterable, List

ROOT = Path(__file__).resolve().parents[1]


def load_json(path: Path) -> Dict[str, Any]:
    if not path.exists():
        return {}
    return json.loads(path.read_text("utf-8"))


def safe(value: Any) -> str:
    return "" if value is None else str(value)


def rows_to_table(headers: List[str], rows: Iterable[List[Any]]) -> List[str]:
    lines = ["| " + " | ".join(headers) + " |", "| " + " | ".join(["---"] * len(headers)) + " |"]
    for row in rows:
        lines.append("| " + " | ".join(safe(cell).replace("\n", " ") for cell in row) + " |")
    return lines


def main() -> int:
    parser = argparse.ArgumentParser(description="输出目录生成分析摘要")
    parser.add_argument("--catalog", default="generated/catalog.json")
    parser.add_argument("--report", default="generated/catalog_report.json")
    parser.add_argument("--gaps", default="generated/catalog_target_gaps.json")
    parser.add_argument("--target", type=int, default=int(os.environ.get("CATALOG_TARGET_COUNT", "200")))
    args = parser.parse_args()

    catalog = load_json(ROOT / args.catalog)
    report = load_json(ROOT / args.report)
    gaps = load_json(ROOT / args.gaps)

    target = int(gaps.get("targetCount") or report.get("classificationPolicy", {}).get("targetBoostTarget") or args.target)
    visible_target = int(gaps.get("minimumVisibleTarget") or report.get("classificationPolicy", {}).get("targetBoostMinimumVisibleTarget") or target)
    tag_name = f"catalog-{os.popen('date -u +%Y%m%d').read().strip()}"
    categories = gaps.get("categories") or catalog.get("categories") or report.get("categories") or []
    target_categories = [item for item in categories if item.get("id") != "weifenlei"]
    reached_target = sum(1 for item in target_categories if int(item.get("count") or 0) >= target)
    reached_visible = sum(1 for item in target_categories if int(item.get("count") or 0) >= visible_target)
    remaining_gap = sum(max(0, target - int(item.get("count") or 0)) for item in target_categories)

    discovery = report.get("discovery", {})
    category_search = report.get("categorySearch", {})
    target_boost = report.get("targetBoost", gaps.get("summary", {}))
    detail = report.get("detailMetadata", {})

    lines: List[str] = [
        "## 公开漫画目录生成分析",
        "",
        f"目标分支：{os.environ.get('CATALOG_BRANCH', 'main')}",
        f"目录版本：{catalog.get('version', '')}",
        f"更新时间：{catalog.get('updatedAt') or report.get('updatedAt') or gaps.get('updatedAt') or ''}",
        f"日期标签：{tag_name}",
        f"每个主分类目标：{target} 部漫画",
        f"最小可见目标：{visible_target} 部漫画",
        "",
        "### 总览",
        "",
    ]
    lines += rows_to_table(
        ["项目", "数量"],
        [
            ["漫画总数", catalog.get("itemCount", report.get("itemCount", 0))],
            ["主分类数量", len(target_categories)],
            ["标签数量", report.get("tagCount", len(catalog.get("tags", [])))],
            ["未分类数量", report.get("uncategorizedCount", 0)],
            ["达成 200 目标分类", f"{reached_target}/{len(target_categories)}"],
            ["达成最小可见目标分类", f"{reached_visible}/{len(target_categories)}"],
            ["剩余总缺口", remaining_gap],
        ],
    )

    lines += ["", "### 数据来源分析", ""]
    lines += rows_to_table(
        ["来源", "数量/状态"],
        [
            ["总输入记录", report.get("sourceRecordCount", 0)],
            ["规则索引记录", report.get("indexRecordCount", 0)],
            ["规则报告记录", report.get("reportRecordCount", 0)],
            ["发现页记录", report.get("discoveryRecordCount", 0)],
            ["分类搜索记录", report.get("categorySearchRecordCount", 0)],
            ["发现源数量", discovery.get("enabledSourceCount", 0)],
            ["发现页成功/失败", f"{discovery.get('pagesFetched', 0)}/{discovery.get('pagesFailed', 0)}"],
            ["分类搜索规则数", category_search.get("enabledRuleCount", target_boost.get("searchRules", 0))],
            ["分类搜索页成功/失败", f"{category_search.get('searchPagesFetched', target_boost.get('searchPagesFetched', 0))}/{category_search.get('searchPagesFailed', target_boost.get('searchPagesFailed', 0))}"],
            ["详情页成功/失败", f"{detail.get('detailPagesFetched', 0)}/{detail.get('detailPagesFailed', 0)}"],
            ["详情元数据命中", detail.get("metadataHits", 0)],
            ["目标增强新增", target_boost.get("newItems", 0)],
            ["目标增强触达已有条目", target_boost.get("existingItemsTouched", 0)],
            ["过宽分类重分配", target_boost.get("reassignedFromOverflow", 0)],
        ],
    )

    lines += ["", "### 主分类目标分析", ""]
    category_rows = []
    for item in categories:
        cid = item.get("id", "")
        count = int(item.get("count") or 0)
        if cid == "weifenlei":
            category_rows.append([cid, item.get("name", ""), count, "-", "-", "不计目标"])
            continue
        gap = max(0, target - count)
        status = "达标" if gap == 0 else "缺口"
        category_rows.append([cid, item.get("name", ""), count, target, gap, status])
    lines += rows_to_table(["ID", "分类", "当前漫画数", "目标", "缺口", "状态"], category_rows)

    weak = [item for item in target_categories if int(item.get("count") or 0) < target]
    weak = sorted(weak, key=lambda item: int(item.get("count") or 0))[:10]
    if weak:
        lines += ["", "### 缺口最大的分类", ""]
        lines += rows_to_table(
            ["分类", "当前", "缺口"],
            [[item.get("name", ""), int(item.get("count") or 0), max(0, target - int(item.get("count") or 0))] for item in weak],
        )

    errors = []
    for source_name, source_stats in (("发现页", discovery), ("目标增强", target_boost), ("分类搜索", category_search)):
        for error in source_stats.get("errors", [])[:10]:
            errors.append([source_name, error.get("source") or error.get("ruleId") or error.get("category") or "", error.get("url") or error.get("keyword") or "", safe(error.get("error"))[:160]])
    if errors:
        lines += ["", "### 采集错误样例", ""]
        lines += rows_to_table(["阶段", "来源", "关键词/URL", "错误"], errors[:15])

    output = "\n".join(lines) + "\n"
    print(output)
    summary = os.environ.get("GITHUB_STEP_SUMMARY")
    if summary:
        with open(summary, "a", encoding="utf-8") as handle:
            handle.write(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
