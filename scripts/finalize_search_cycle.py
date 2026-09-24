#!/usr/bin/env python3
"""Report search progress and reset markers only after every category completes."""
from __future__ import annotations

import argparse
import json
import os
from datetime import datetime, timezone, timedelta
from pathlib import Path


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--state-dir", type=Path, required=True)
    parser.add_argument("--cycle-file", type=Path, required=True)
    args = parser.parse_args()
    paths = sorted(args.state_dir.glob("*.json"))
    if not paths:
        raise SystemExit("no category search states found")
    states = [(path, json.loads(path.read_text(encoding="utf-8-sig"))) for path in paths]
    complete = all(state.get("complete") for _, state in states)
    total = sum(int(state.get("total", 0)) for _, state in states)
    searched = sum(int(state.get("searched", 0)) for _, state in states)
    summary = os.getenv("GITHUB_STEP_SUMMARY")
    lines = ["## 第二步逐类搜索进度", "", f"- 总进度：**{searched}/{total}（{searched * 100 // total if total else 0}%）**", ""]
    for _, state in states:
        lines.append(f"- {state.get('category')}: {state.get('searched', 0)}/{state.get('total', 0)}, 待搜索 {state.get('pending', 0)}")
    if complete:
        stamp = datetime.now(timezone.utc).isoformat()
        cutoff = datetime.now(timezone.utc) - timedelta(days=30)
        reset_count = 0
        for path, state in states:
            for entry in state.get("entries", {}).values():
                if entry.get("status") != "searched":
                    continue
                searched_at = entry.get("searchedAt", "")
                expired = True
                if searched_at:
                    try:
                        sa = datetime.fromisoformat(searched_at.replace("Z", "+00:00"))
                        expired = sa < cutoff
                    except Exception:
                        expired = True
                if expired:
                    entry["status"] = "pending"
                    entry["searchedAt"] = ""
                    reset_count += 1
            searched_now = sum(1 for e in state.get("entries", {}).values() if e.get("status") == "searched")
            total_n = int(state.get("total", 0))
            state.update({"searched": searched_now, "pending": total_n - searched_now,
                          "complete": searched_now == total_n, "lastCycleCompletedAt": stamp})
            path.write_text(json.dumps(state, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        if reset_count:
            lines.extend(["", f"本轮复检：{reset_count} 个超期(>30 天)条目重置为 pending，其余保留。结果文件继续保留，供发布和下一轮复检使用。"])
        else:
            lines.extend(["", f"本轮所有条目均在 30 天复检期内，无需重搜。结果文件继续保留，供发布使用。"])
    args.cycle_file.parent.mkdir(parents=True, exist_ok=True)
    args.cycle_file.write_text(json.dumps({
        "schema": "comic_search_cycle_v1",
        "updatedAt": datetime.now(timezone.utc).isoformat(),
        "readyForDomainAnalysis": complete,
        "searched": searched,
        "total": total,
    }, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    if summary:
        with Path(summary).open("a", encoding="utf-8") as stream:
            stream.write("\n".join(lines) + "\n")
    output = os.getenv("GITHUB_OUTPUT")
    if output:
        with Path(output).open("a", encoding="utf-8") as stream:
            stream.write(f"cycle_complete={'true' if complete else 'false'}\n")
            stream.write(f"pending={'false' if complete else 'true'}\n")
    print("\n".join(lines))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
