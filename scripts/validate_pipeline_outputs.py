#!/usr/bin/env python3
"""Validate publishable outputs against the pipeline's hard completion gates."""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any

from pipeline_seed import ROOT_TERM

ROOT = Path(__file__).resolve().parents[1]
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def rule_items(data: dict) -> list:
    for key in ("rules", "sources", "items"):
        value = data.get(key)
        if isinstance(value, list):
            return value
    return []


def validate(language: str, min_rules: int, min_per_category: int) -> list[str]:
    errors: list[str] = []
    rules_path = ROOT / "rules" / f"index.{language}.json"
    catalog_path = ROOT / "catalog" / f"catalog.{language}.json"
    if not rules_path.exists():
        return [f"missing rules output: {rules_path}"]
    if not catalog_path.exists():
        return [f"missing catalog output: {catalog_path}"]

    rules_doc = load_json(rules_path)
    rules = rule_items(rules_doc)
    queries = rules_doc.get("queries", [])
    if queries != [ROOT_TERM]:
        errors.append(f"public queries must be exactly [{ROOT_TERM!r}], got {queries!r}")
    if len(rules) < min_rules:
        errors.append(f"rules: {len(rules)} < {min_rules}")

    ids: set[str] = set()
    for index, rule in enumerate(rules):
        rid = str(rule.get("id", "")).strip()
        if not rid:
            errors.append(f"rule[{index}] has no id")
        elif rid in ids:
            errors.append(f"duplicate rule id: {rid}")
        ids.add(rid)
        homepage = str(rule.get("homepage", ""))
        is_url_only_fallback = rule.get("searchMethod") == "url-only" and not homepage
        if not is_url_only_fallback and not homepage.startswith(("http://", "https://")):
            errors.append(f"rule[{index}] has invalid homepage")

    catalog_doc = load_json(catalog_path)
    categories = catalog_doc.get("categories", {})
    category_items = categories.items() if isinstance(categories, dict) else (
        (str(c.get("id", i)), c) for i, c in enumerate(categories)
    )
    category_count = 0
    catalog_item_count = 0
    for category_id, category in category_items:
        category_count += 1
        items = category.get("items", []) if isinstance(category, dict) else []
        catalog_item_count += len(items)
        if len(items) < min_per_category:
            errors.append(f"category {category_id}: {len(items)} < {min_per_category}")
        seen_titles: set[str] = set()
        for item in items:
            title = str(item.get("title", "")).strip().casefold()
            if not title:
                errors.append(f"category {category_id} contains an empty title")
            elif title in seen_titles:
                errors.append(f"category {category_id} duplicate title: {title}")
            seen_titles.add(title)
            if not item.get("sources"):
                errors.append(f"category {category_id} item {title!r} has no source")
            for source in item.get("sources", []):
                detail_url = str(source.get("detailUrl", ""))
                search_url = str(source.get("searchUrl", ""))
                if detail_url and not detail_url.startswith(("http://", "https://")):
                    errors.append(f"category {category_id} item {title!r} has invalid detailUrl")
                if search_url and not search_url.startswith(("http://", "https://")):
                    errors.append(f"category {category_id} item {title!r} has invalid searchUrl")
    if category_count == 0:
        errors.append("catalog has no categories")
    if catalog_doc.get("categoryCount") != category_count:
        errors.append("catalog categoryCount metadata does not match categories")
    if catalog_doc.get("totalItems") != catalog_item_count:
        errors.append("catalog totalItems metadata does not match category items")
    return errors


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--language", default="zh-Hans")
    parser.add_argument("--min-rules", type=int, default=500)
    parser.add_argument("--min-per-category", type=int, default=200)
    args = parser.parse_args()
    errors = validate(args.language, args.min_rules, args.min_per_category)
    if errors:
        print("PIPELINE GATE: FAILED")
        for error in errors:
            print(f"- {error}")
        return 1
    print(
        f"PIPELINE GATE: PASSED (rules>={args.min_rules}, "
        f"every category>={args.min_per_category}, query={ROOT_TERM!r})"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
