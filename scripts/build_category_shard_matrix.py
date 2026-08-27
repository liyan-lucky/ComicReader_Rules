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
    parser.add_argument("--batch-size", type=int, default=125)
    parser.add_argument("--max-jobs", type=int, default=240)
    args = parser.parse_args()
    if args.batch_size <= 0:
        parser.error("--batch-size must be > 0")
    if not 1 <= args.max_jobs <= 256:
        parser.error("--max-jobs must be between 1 and 256")

    counts = {}
    for path in sorted(args.input_dir.glob("*.json")):
        doc = json.loads(path.read_text(encoding="utf-8-sig"))
        count = len(doc.get("works", []))
        counts[path.stem] = count
        if count == 0:
            raise SystemExit(f"stage 01 category is empty: {path.stem}")
    if not counts:
        raise SystemExit("no stage 01 category parameters found")
    batch_size = args.batch_size
    while sum(math.ceil(count / batch_size) for count in counts.values()) > args.max_jobs:
        batch_size += 25
    include = []
    for category, count in counts.items():
        for shard in range(math.ceil(count / batch_size)):
            include.append({"category": category, "shard": shard, "start": shard * batch_size, "limit": batch_size})
    matrix = json.dumps({"include": include}, separators=(",", ":"))
    output = os.getenv("GITHUB_OUTPUT")
    if output:
        with Path(output).open("a", encoding="utf-8") as stream:
            stream.write(f"matrix={matrix}\n")
    print(json.dumps({"categories": counts, "shards": len(include), "batchSize": batch_size}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
