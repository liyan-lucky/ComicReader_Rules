#!/usr/bin/env python3
"""Release gate for the broad online title index."""
from __future__ import annotations

import argparse
import json
from pathlib import Path


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--catalog", type=Path, required=True)
    parser.add_argument("--minimum-items", type=int, default=20000)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    doc = json.loads(args.catalog.read_text(encoding="utf-8-sig"))
    categories = doc.get("categories", {})
    items = [item for category in categories.values() for item in category.get("items", [])]
    ids = [str(item.get("id", "")) for item in items]
    titles = [str(item.get("title", "")).strip().casefold() for item in items]
    errors: list[str] = []
    if doc.get("schema") != "comic_catalog_v1": errors.append("invalid schema")
    if len(items) < args.minimum_items: errors.append(f"catalog below minimum: {len(items)}/{args.minimum_items}")
    if len(ids) != len(set(ids)): errors.append("duplicate work id")
    if len(titles) != len(set(titles)): errors.append("duplicate title")
    if any(not item.get("sources") for item in items): errors.append("item without usable source route")
    report = {"passed": not errors, "catalogCount": len(items), "categoryCounts": {key: len(value.get("items", [])) for key, value in categories.items()}, "errors": errors}
    rendered = json.dumps(report, ensure_ascii=False, indent=2)
    print(rendered)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered + "\n", encoding="utf-8", newline="\n")
    return 0 if not errors else 1


if __name__ == "__main__":
    raise SystemExit(main())
