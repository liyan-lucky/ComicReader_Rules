#!/usr/bin/env python3
"""Publish only works having a readable candidate on a replay-verified domain."""
from __future__ import annotations

import argparse
import json
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parameters", type=Path, required=True)
    parser.add_argument("--sources", type=Path, required=True)
    parser.add_argument("--rules", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    source_doc = json.loads(args.sources.read_text(encoding="utf-8-sig"))
    candidates_by_work: dict[str, list[dict]] = defaultdict(list)
    for source in source_doc.get("verifiedCandidates", source_doc.get("selected", [])):
        candidates_by_work[str(source["workId"])].append(source)

    rule_doc = json.loads(args.rules.read_text(encoding="utf-8-sig"))
    verified_domains = {rule["homepage"].split("://", 1)[-1].strip("/") for rule in rule_doc.get("rules", [])}
    config = json.loads((ROOT / "config/catalog_config.json").read_text(encoding="utf-8-sig"))
    categories, flat, rejected = {}, [], []

    for category in config["categories"]:
        parameter_doc = json.loads((args.parameters / f"{category['id']}.json").read_text(encoding="utf-8-sig"))
        items = []
        for work in parameter_doc["works"]:
            all_candidates = candidates_by_work.get(work["id"], [])
            eligible = [source for source in all_candidates if source.get("domain") in verified_domains]
            eligible.sort(key=lambda source: (int(source.get("verifiedChapterCount") or 0),
                sum(int(sample.get("imageCount") or 0) for sample in source.get("samples", [])),
                str(source.get("detailUrl", ""))), reverse=True)
            if not eligible:
                reason = "domain_rule_not_verified" if all_candidates else "no_verified_source"
                rejected.append({"workId": work["id"], "title": work["canonicalTitle"],
                    "category": category["id"], "reason": reason})
                continue
            source = eligible[0]
            cover = source.get("coverUrl", "")
            if not cover:
                rejected.append({"workId": work["id"], "title": work["canonicalTitle"],
                    "category": category["id"], "reason": "no_cover"})
                continue
            if not cover.startswith("https://"):
                rejected.append({"workId": work["id"], "title": work["canonicalTitle"],
                    "category": category["id"], "reason": "insecure_cover"})
                continue
            item = {"id": work["id"], "title": work["canonicalTitle"], "sources": [{"domain": source["domain"],
                "detailUrl": source["detailUrl"], "coverUrl": cover}], "category": category["id"],
                "language": "zh-Hans", "verifiedChapterCount": source["verifiedChapterCount"]}
            items.append(item); flat.append(item)
        categories[category["id"]] = {"id": category["id"], "name": category["name"],
            "count": len(items), "items": items}

    now = datetime.now(timezone.utc)
    result = {"schema": "comic_catalog_v1", "version": now.strftime("%Y%m%d%H%M%S"),
        "updatedAt": now.isoformat(), "language": {"code": "zh-Hans", "name": "简体中文"},
        "totalItems": len(flat), "categoryCount": len(categories), "categories": categories,
        "audit": {"rejected": rejected}}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"published {len(flat)}, rejected {len(rejected)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
