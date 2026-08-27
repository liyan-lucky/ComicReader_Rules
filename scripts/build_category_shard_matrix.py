#!/usr/bin/env python3
"""Build a bounded GitHub Actions matrix from stage-01 category parameters."""
from __future__ import annotations

import argparse
import json
import math
import os
from pathlib import Path


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-dir", type=Path, required=True)
    parser.add_argument("--batch-size", type=int, default=100)
    parser.add_argument("--max-jobs", type=int, default=256)
    parser.add_argument("--category-batch", action="append", default=[], metavar="CATEGORY=SIZE")
    args = parser.parse_args()
    if args.batch_size <= 0:
        parser.error("--batch-size must be > 0")
    if not 1 <= args.max_jobs <= 256:
        parser.error("--max-jobs must be between 1 and 256")
    overrides = {}
    for value in args.category_batch:
        try:
            category, raw_size = value.split("=", 1)
            size = int(raw_size)
        except ValueError:
            parser.error(f"invalid --category-batch value: {value!r}")
        if not category or size <= 0:
            parser.error(f"invalid --category-batch value: {value!r}")
        overrides[category] = size

    counts = {}
    for path in sorted(args.input_dir.glob("*.json")):
        doc = json.loads(path.read_text(encoding="utf-8-sig"))
        count = len(doc.get("works", []))
        counts[path.stem] = count
        if count == 0:
            raise SystemExit(f"stage 01 category is empty: {path.stem}")
    if not counts:
        raise SystemExit("no stage 01 category parameters found")
    unknown = sorted(set(overrides) - set(counts))
    if unknown:
        parser.error(f"unknown override categories: {', '.join(unknown)}")
    batch_size = args.batch_size
    def job_count(default_size: int) -> int:
        return sum(math.ceil(count / overrides.get(category, default_size)) for category, count in counts.items())
    while job_count(batch_size) > args.max_jobs:
        batch_size += 25
    include = []
    for category, count in counts.items():
        size = overrides.get(category, batch_size)
        for shard in range(math.ceil(count / size)):
            include.append({"category": category, "shard": shard, "start": shard * size, "limit": size})
    matrix = json.dumps({"include": include}, separators=(",", ":"))
    output = os.getenv("GITHUB_OUTPUT")
    if output:
        with Path(output).open("a", encoding="utf-8") as stream:
            stream.write(f"matrix={matrix}\n")
    print(json.dumps({"categories": counts, "shards": len(include), "batchSize": batch_size, "categoryBatch": overrides}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
