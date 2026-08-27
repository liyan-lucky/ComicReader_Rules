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
    parser.add_argument("--batch-size", type=int, default=75)
    args = parser.parse_args()
    if args.batch_size <= 0:
        parser.error("--batch-size must be > 0")

    include = []
    counts = {}
    for path in sorted(args.input_dir.glob("*.json")):
        doc = json.loads(path.read_text(encoding="utf-8-sig"))
        count = len(doc.get("works", []))
        counts[path.stem] = count
        if count == 0:
            raise SystemExit(f"stage 01 category is empty: {path.stem}")
        for shard in range(math.ceil(count / args.batch_size)):
            include.append({"category": path.stem, "shard": shard, "start": shard * args.batch_size, "limit": args.batch_size})

    if not include:
        raise SystemExit("no stage 01 category parameters found")
    if len(include) > 256:
        raise SystemExit(f"matrix has {len(include)} jobs, exceeding GitHub's 256-job limit")
    matrix = json.dumps({"include": include}, separators=(",", ":"))
    output = os.getenv("GITHUB_OUTPUT")
    if output:
        with Path(output).open("a", encoding="utf-8") as stream:
            stream.write(f"matrix={matrix}\n")
    print(json.dumps({"categories": counts, "shards": len(include), "batchSize": args.batch_size}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
