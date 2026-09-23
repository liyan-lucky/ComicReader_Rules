#!/usr/bin/env python3
"""Publish only works having a readable candidate on a replay-verified domain."""
from __future__ import annotations

import argparse
import json
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def rule_supports_source(rule: dict | None, source: dict) -> bool:
    if not rule or rule.get("audit", {}).get("status") != "verified":
        return False
    audit = rule.get("audit", {})
    return audit.get("policyVersion") == "readability-v5" \
        and source.get("workId") in audit.get("verifiedWorkIds", []) \
        and rule.get("readerImageGroups") == [1]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parameters", type=Path, required=True)
    parser.add_argument("--states", type=Path)
    parser.add_argument("--sources", type=Path, required=True)
    parser.add_argument("--rules", type=Path, required=True)
    parser.add_argument("--existing", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    source_doc = json.loads(args.sources.read_text(encoding="utf-8-sig"))
    candidates_by_work: dict[str, list[dict]] = defaultdict(list)
    for source in source_doc.get("verifiedCandidates", source_doc.get("selected", [])):
        candidates_by_work[str(source["workId"])].append(source)

    rule_doc = json.loads(args.rules.read_text(encoding="utf-8-sig"))
    rules_by_domain = {rule["homepage"].split("://", 1)[-1].strip("/").removeprefix("www."): rule
                       for rule in rule_doc.get("rules", [])}
    config = json.loads((ROOT / "config/catalog_config.json").read_text(encoding="utf-8-sig"))
    old_doc = json.loads(args.existing.read_text(encoding="utf-8-sig")) if args.existing and args.existing.exists() else {}
    old_by_id = {str(item["id"]): item for value in old_doc.get("categories", {}).values() for item in value.get("items", [])}
    states = {}
    if args.states and args.states.exists():
        for path in args.states.glob("*.json"):
            states[path.stem] = json.loads(path.read_text(encoding="utf-8-sig")).get("entries", {})
    categories, flat, rejected, published_titles = {}, [], [], set()

    for category in config["categories"]:
        parameter_doc = json.loads((args.parameters / f"{category['id']}.json").read_text(encoding="utf-8-sig"))
        items = []
        for work in parameter_doc["works"]:
            all_candidates = candidates_by_work.get(work["id"], [])
            eligible = [source for source in all_candidates if rule_supports_source(rules_by_domain.get(source.get("domain")), source)
                        and source.get("validationPolicy") == "readability-v5"
                        and len(source.get("chapters", [])) == int(source.get("verifiedChapterCount") or 0)]
            eligible.sort(key=lambda source: (int(source.get("verifiedChapterCount") or 0),
                sum(int(sample.get("imageCount") or 0) for sample in source.get("samples", [])),
                str(source.get("detailUrl", ""))), reverse=True)
            if not eligible:
                prior = old_by_id.get(str(work["id"]))
                prior_sources = prior.get("sources", []) if prior else []
                prior_manifest_count = len(prior_sources[0].get("chapters", [])) if prior_sources else 0
                # A completed search with no fresh hit is not evidence that an
                # already replay-validated source became invalid. Preserve the
                # last-good catalog entry until an explicit replay/invalidation
                # mechanism marks that exact URL bad.
                if prior and prior.get("validationPolicy") == "readability-v5" \
                        and prior_manifest_count == int(prior.get("verifiedChapterCount") or 0):
                    prior_domain = str(prior.get("sources", [{}])[0].get("domain", "")) if prior.get("sources") else ""
                    prior_rule = rules_by_domain.get(prior_domain)
                    prior_source_proof = {"workId": str(work["id"])}
                    if rule_supports_source(prior_rule, prior_source_proof):
                        title_key = str(work["canonicalTitle"]).strip().casefold()
                        if title_key in published_titles:
                            rejected.append({"workId": work["id"], "title": work["canonicalTitle"], "category": category["id"], "reason": "duplicate_title_across_categories"})
                            continue
                        published_titles.add(title_key)
                        items.append(prior); flat.append(prior)
                        continue
                reason = "domain_rule_not_verified" if all_candidates else "no_verified_source"
                rejected.append({"workId": work["id"], "title": work["canonicalTitle"],
                    "category": category["id"], "reason": reason})
                continue
            source = eligible[0]
            cover = source.get("coverUrl", "")
            if cover.startswith("http://"):
                cover = "https://" + cover[len("http://"):]
            if not cover:
                rejected.append({"workId": work["id"], "title": work["canonicalTitle"],
                    "category": category["id"], "reason": "no_cover"})
                continue
            if not cover.startswith("https://"):
                rejected.append({"workId": work["id"], "title": work["canonicalTitle"],
                    "category": category["id"], "reason": "insecure_cover"})
                continue
            published_sources = []
            for candidate in eligible[:3]:
                if not str(candidate.get("detailUrl", "")).startswith("https://"): continue
                candidate_cover = str(candidate.get("coverUrl", ""))
                if candidate_cover.startswith("http://"):
                    candidate_cover = "https://" + candidate_cover[len("http://"):]
                published_sources.append({"domain": candidate["domain"], "detailUrl": candidate["detailUrl"],
                    "coverUrl": candidate_cover, "chapters": candidate.get("chapters", [])})
            item = {"id": work["id"], "title": work["canonicalTitle"], "sources": published_sources, "category": category["id"],
                "language": "zh-Hans", "verifiedChapterCount": source["verifiedChapterCount"],
                "validationPolicy": source.get("validationPolicy", "")}
            title_key = str(work["canonicalTitle"]).strip().casefold()
            if title_key in published_titles:
                rejected.append({"workId": work["id"], "title": work["canonicalTitle"], "category": category["id"], "reason": "duplicate_title_across_categories"})
                continue
            published_titles.add(title_key)
            items.append(item); flat.append(item)
        categories[category["id"]] = {"id": category["id"], "name": category["name"],
            "count": len(items), "items": items}

    # Incremental discovery must be monotonic. A platform refresh may rename or
    # temporarily omit a work from the latest parameter file; that is not an
    # explicit invalidation of a previously replay-verified source. Preserve
    # every last-good item whose domain rule still carries readability-v5 proof
    # for that exact work ID. This also keeps the App's cached catalog stable
    # while category jobs finish at different times.
    published_ids = {str(item["id"]) for item in flat}
    for category_id, old_category in old_doc.get("categories", {}).items():
        if category_id not in categories:
            continue
        for prior in old_category.get("items", []):
            work_id = str(prior.get("id", ""))
            if not work_id or work_id in published_ids or prior.get("validationPolicy") != "readability-v5":
                continue
            sources = prior.get("sources", [])
            verified = any(rule_supports_source(rules_by_domain.get(str(source.get("domain", ""))),
                                                {"workId": work_id})
                           and source.get("detailUrl") and source.get("chapters")
                           for source in sources)
            if not verified:
                continue
            title_key = str(prior.get("title", "")).strip().casefold()
            if not title_key or title_key in published_titles:
                continue
            published_titles.add(title_key)
            published_ids.add(work_id)
            categories[category_id]["items"].append(prior)
            categories[category_id]["count"] = len(categories[category_id]["items"])
            flat.append(prior)

    old_items = {key: value.get("items", []) for key, value in old_doc.get("categories", {}).items()}
    new_items = {key: value.get("items", []) for key, value in categories.items()}
    if args.existing and args.existing.exists() and old_items == new_items:
        print(f"catalog unchanged: {len(flat)} items; keeping version {old_doc.get('version', '')}")
        return 0
    now = datetime.now(timezone.utc)
    result = {"schema": "comic_catalog_v1", "version": now.strftime("%Y%m%d%H%M%S"),
        "updatedAt": now.isoformat(), "language": {"code": "zh-Hans", "name": "简体中文"},
        "totalItems": len(flat), "categoryCount": len(categories), "categories": categories,
        "audit": {"rejected": rejected}}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(f"published {len(flat)}, rejected {len(rejected)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
