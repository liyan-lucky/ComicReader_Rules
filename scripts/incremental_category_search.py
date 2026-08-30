#!/usr/bin/env python3
"""Incrementally search one category while keeping one durable state/result file."""
from __future__ import annotations

import argparse
import hashlib
import json
import time
from datetime import datetime, timezone
from pathlib import Path

import requests

import audit_category_sources as engine


def now() -> str:
    return datetime.now(timezone.utc).isoformat()


def load_json(path: Path, default):
    return json.loads(path.read_text(encoding="utf-8-sig")) if path.exists() else default


def fingerprint(work: dict, policy: dict) -> str:
    value = engine.POLICY_VERSION + engine.CHECKPOINT_SCHEMA + json.dumps(policy, sort_keys=True, ensure_ascii=False) + json.dumps(work, sort_keys=True, ensure_ascii=False)
    return hashlib.sha256(value.encode()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parameters", type=Path, required=True)
    parser.add_argument("--category-config", type=Path, required=True)
    parser.add_argument("--state", type=Path, required=True)
    parser.add_argument("--audits", type=Path, required=True)
    parser.add_argument("--checkpoint-dir", type=Path, required=True)
    parser.add_argument("--max-works", type=int, default=50)
    parser.add_argument("--job-time-budget", type=int, default=12600, help="stop cleanly before the Actions job timeout")
    args = parser.parse_args()

    doc = load_json(args.parameters, {})
    works = doc.get("works", [])
    if not works:
        raise SystemExit(f"empty category parameter file: {args.parameters}")
    policy = load_json(args.category_config, {})
    batch_size = int(policy.get("incrementalBatchSize", args.max_works))
    candidate_limit = int(policy.get("candidateLimit", 12))
    engine.MIN_IMAGES = int(policy.get("minimumReadableImagesPerSample", engine.MIN_IMAGES))
    engine.BLOCKED_DOMAINS |= {str(x).lower().removeprefix("www.") for x in policy.get("extraBlockedDomains", [])}
    ledger = load_json(Path("generated/v3/domain_ledger.zh-Hans.json"), {})
    discovered_domains = [str(item.get("domain", "")).lower().removeprefix("www.")
                          for item in ledger.get("domains", []) if item.get("domain")]
    engine.PREFERRED_READABLE_DOMAINS = list(dict.fromkeys(engine.PREFERRED_READABLE_DOMAINS + discovered_domains))

    previous = load_json(args.state, {})
    previous_entries = previous.get("entries", {})
    entries = {}
    for work in works:
        work_id = str(work["id"])
        work_fp = fingerprint(work, policy)
        saved = previous_entries.get(work_id, {})
        searched = saved.get("status") == "searched" and saved.get("workFingerprint") == work_fp
        entries[work_id] = {
            "title": work["canonicalTitle"],
            "workFingerprint": work_fp,
            "status": "searched" if searched else "pending",
            "searchedAt": saved.get("searchedAt", "") if searched else "",
        }

    pending = [work for work in works if entries[str(work["id"])]["status"] == "pending"]
    selected = pending[:batch_size]
    existing = {}
    if args.audits.exists():
        for line in args.audits.read_text(encoding="utf-8-sig").splitlines():
            if line.strip():
                item = json.loads(line)
                existing.setdefault(str(item.get("workId", "")), []).append(item)

    args.checkpoint_dir.mkdir(parents=True, exist_ok=True)
    session = requests.Session()
    session.headers.update({"User-Agent": engine.UA, "Accept-Language": "zh-CN,zh;q=0.9"})
    started = time.monotonic()
    processed = 0
    for index, work in enumerate(selected, 1):
        if index > 1 and time.monotonic() - started >= args.job_time_budget:
            print(f"time budget reached after {processed} works; saving progress for the next run", flush=True)
            break
        work_id = str(work["id"])
        checkpoint = args.checkpoint_dir / f"{work_id}.json"
        work_audits = None
        if checkpoint.exists():
            saved = load_json(checkpoint, {})
            if saved.get("workFingerprint") == entries[work_id]["workFingerprint"]:
                work_audits = saved.get("audits", [])
        if work_audits is None:
            urls = engine.search(session, work["canonicalTitle"], candidate_limit, policy.get("searchTerms"))
            work_audits = [engine.audit(session, work, url) for url in urls]
            checkpoint.write_text(json.dumps({"workFingerprint": entries[work_id]["workFingerprint"], "workId": work_id, "audits": work_audits}, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        existing[work_id] = work_audits
        entries[work_id]["status"] = "searched"
        entries[work_id]["searchedAt"] = now()
        processed += 1
        print(f"[{index}/{len(selected)}] {work['canonicalTitle']}: {sum(x.get('status') == 'verified' for x in work_audits)}/{len(work_audits)}", flush=True)

    ordered_audits = [item for work in works for item in existing.get(str(work["id"]), [])]
    args.audits.parent.mkdir(parents=True, exist_ok=True)
    args.audits.write_text("".join(json.dumps(item, ensure_ascii=False) + "\n" for item in ordered_audits), encoding="utf-8")
    searched_count = sum(item["status"] == "searched" for item in entries.values())
    state = {
        "schema": "comic_category_search_state_v1",
        "language": doc.get("language", "zh-Hans"),
        "category": args.parameters.stem,
        "updatedAt": now(),
        "total": len(entries),
        "searched": searched_count,
        "pending": len(entries) - searched_count,
        "complete": searched_count == len(entries),
        "entries": entries,
    }
    args.state.parent.mkdir(parents=True, exist_ok=True)
    args.state.write_text(json.dumps(state, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"progress: {searched_count}/{len(entries)} ({searched_count * 100 // len(entries)}%), pending={len(entries)-searched_count}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
