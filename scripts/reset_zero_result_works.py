#!/usr/bin/env python3
"""Reset search state for works whose audits are missing (0-result searches).

A work marked searched but absent from its category audits file produced no
candidates at all, so replaying it under improved search logic is required.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--state-dir", type=Path, default=Path("state/search/zh-Hans"))
    parser.add_argument("--audits-dir", type=Path, default=Path("generated/v3/audits"))
    parser.add_argument("--apply", action="store_true", help="write changes (default: dry run)")
    args = parser.parse_args()

    total_reset = 0
    for state_file in sorted(args.state_dir.glob("*.json")):
        category = state_file.stem
        audits_file = args.audits_dir / f"{category}.jsonl"
        audited: set[str] = set()
        if audits_file.exists():
            for line in audits_file.read_text(encoding="utf-8-sig").splitlines():
                if not line.strip():
                    continue
                item = json.loads(line)
                if item.get("workId"):
                    audited.add(str(item["workId"]))
        state = json.loads(state_file.read_text(encoding="utf-8-sig"))
        entries = state.get("entries", {})
        reset_ids = [wid for wid, entry in entries.items()
                     if entry.get("status") == "searched" and wid not in audited]
        print(f"{category}: total={len(entries)} audited={len(audited)} to_reset={len(reset_ids)}")
        if not args.apply or not reset_ids:
            total_reset += len(reset_ids)
            continue
        for wid in reset_ids:
            entries[wid]["status"] = "pending"
            entries[wid]["searchedAt"] = ""
        searched = sum(1 for entry in entries.values() if entry.get("status") == "searched")
        state.update({"searched": searched, "pending": len(entries) - searched,
                      "complete": searched == len(entries)})
        state_file.write_text(json.dumps(state, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        total_reset += len(reset_ids)
        print(f"  -> applied: searched={searched} pending={len(entries) - searched}")
    mode = "APPLIED" if args.apply else "DRY RUN"
    print(f"{mode}: {total_reset} works reset in total")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
