#!/usr/bin/env python3
"""Replay at least 50 distinct catalog candidates and audit chapter ordering."""
from __future__ import annotations
import argparse, json, re
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import requests
import audit_category_sources as engine

NUMBER = re.compile(r"第\s*(\d+)\s*[话話章回集]")

def replay(item: dict) -> dict:
    session = requests.Session()
    session.trust_env = False
    session.headers.update({"User-Agent": engine.UA, "Accept-Language": "zh-CN,zh;q=0.9"})
    work = {"id": item.get("workId"), "language": item.get("language", "zh-Hans"),
            "canonicalTitle": item.get("queryTitle", item.get("matchedTitle", ""))}
    result = engine.audit(session, work, item["detailUrl"])
    numbers = []
    try:
        body = engine.fetch(session, item["detailUrl"])
        chapters = engine.chapters(engine.BeautifulSoup(body, "lxml"), item["detailUrl"])
        numbers = [int(m.group(1)) for title, _ in chapters if (m := NUMBER.search(title))]
    except Exception:
        chapters = []
    ascending = all(numbers[i] <= numbers[i + 1] for i in range(len(numbers) - 1)) if numbers else False
    descending = all(numbers[i] >= numbers[i + 1] for i in range(len(numbers) - 1)) if numbers else False
    gaps = sum(max(0, abs(numbers[i + 1] - numbers[i]) - 1) for i in range(len(numbers) - 1))
    result["ordering"] = {"chapterLinks": len(chapters), "numbered": len(numbers),
        "first": numbers[0] if numbers else None, "last": numbers[-1] if numbers else None,
        "monotonic": ascending or descending, "direction": "ascending" if ascending else "descending" if descending else "mixed",
        "gapCount": gaps}
    return result

def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--audits-dir", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--limit", type=int, default=50)
    parser.add_argument("--workers", type=int, default=8)
    args = parser.parse_args()
    raw_candidates = []
    for path in sorted(args.audits_dir.glob("*.jsonl")):
        for line in path.read_text(encoding="utf-8-sig").splitlines():
            if not line.strip(): continue
            item = json.loads(line)
            if item.get("workId") and item.get("detailUrl"): raw_candidates.append(item)
    # Production candidates first, then one candidate per distinct work. This
    # prevents 50 bad search URLs belonging to only a handful of titles from
    # masquerading as a 50-book test.
    raw_candidates.sort(key=lambda item: (item.get("status") == "verified", int(item.get("chapterCount") or 0)), reverse=True)
    candidates, seen = [], set()
    for item in raw_candidates:
        work_id = str(item.get("workId", ""))
        if work_id in seen: continue
        seen.add(work_id); candidates.append(item)
    if len(candidates) < args.limit:
        raise SystemExit(f"not enough distinct candidates: {len(candidates)}/{args.limit}")
    selected = candidates[:args.limit]
    results = []
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(replay, item): item for item in selected}
        for index, future in enumerate(as_completed(futures), 1):
            try: results.append(future.result())
            except Exception as exc: results.append({"workId": futures[future].get("workId"), "detailUrl": futures[future].get("detailUrl"),
                "status": "unreachable", "rejectionReasons": [f"{type(exc).__name__}: {exc}"], "ordering": {"monotonic": False}})
            print(f"[{index}/{len(selected)}]", flush=True)
    verified = [x for x in results if x.get("status") == "verified"]
    ordered = [x for x in verified if x.get("ordering", {}).get("monotonic")]
    doc = {"schema": "comic_batch_replay_v1", "sampleSize": len(results), "verified": len(verified),
        "verifiedAndOrdered": len(ordered), "results": results}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(doc, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"batch replay: {len(results)} tested, {len(verified)} readable, {len(ordered)} ordered")
    return 0

if __name__ == "__main__": raise SystemExit(main())
