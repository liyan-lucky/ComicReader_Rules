#!/usr/bin/env python3
"""Build a language-separated domain/work ledger used by site-rule analysis."""
from __future__ import annotations

import argparse
import json
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path


def build(best_sources: dict) -> dict:
    domains = defaultdict(lambda: {"languages": set(), "policyVersions": set(), "works": []})
    seen = set()
    for source in best_sources.get("verifiedCandidates", best_sources.get("selected", [])):
        identity = (source["domain"], source["workId"])
        if identity in seen:
            continue
        seen.add(identity)
        record = domains[source["domain"]]
        record["languages"].add(source["language"])
        record["policyVersions"].add(source.get("validationPolicy", ""))
        record["works"].append({"workId": source["workId"], "title": source["title"],
                                "detailUrl": source["detailUrl"], "verifiedChapterCount": source["verifiedChapterCount"],
                                "samples": source["samples"]})
    return {"schema": "comic_domain_ledger_v2", "generatedAt": datetime.now(timezone.utc).isoformat(),
            "domains": [{"domain": domain, "languages": sorted(value["languages"]),
                         "policyVersions": sorted(x for x in value["policyVersions"] if x),
                         "verifiedWorkCount": len(value["works"]), "works": value["works"],
                         "ruleStatus": "pending_domain_analysis"}
                        for domain, value in sorted(domains.items())]}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--sources", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    result = build(json.loads(args.sources.read_text(encoding="utf-8-sig")))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"domain ledger: {len(result['domains'])} -> {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
