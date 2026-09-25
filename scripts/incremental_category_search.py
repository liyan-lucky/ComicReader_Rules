#!/usr/bin/env python3
"""Incrementally search one category while keeping one durable state/result file."""
from __future__ import annotations

import argparse
import hashlib
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path

import requests

import audit_category_sources as engine


def now() -> str:
    return datetime.now(timezone.utc).isoformat()


def load_json(path: Path, default):
    return json.loads(path.read_text(encoding="utf-8-sig")) if path.exists() else default


def fingerprint(work: dict, policy: dict) -> str:
    value = engine.POLICY_VERSION + engine.CHECKPOINT_SCHEMA + str(work.get("id", "")) + str(work.get("canonicalTitle", ""))
    return hashlib.sha256(value.encode()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parameters", type=Path, required=True)
    parser.add_argument("--category-config", type=Path, required=True)
    parser.add_argument("--state", type=Path, required=True)
    parser.add_argument("--audits", type=Path, required=True)
    parser.add_argument("--checkpoint-dir", type=Path, required=True)
    parser.add_argument("--max-works", type=int, default=50)
    parser.add_argument("--search-workers", type=int, default=4, help="parallel search threads")
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
    engine.SEARCH_BLOCKED_HOSTS |= {str(x).lower().removeprefix("www.") for x in policy.get("extraBlockedSearchHosts", [])}
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

    def search_one_work(work):
        wid = str(work["id"])
        ckpt = args.checkpoint_dir / f"{wid}.json"
        audits = None
        if ckpt.exists():
            saved = load_json(ckpt, {})
            if saved.get("workFingerprint") == entries[wid]["workFingerprint"]:
                audits = saved.get("audits", [])
        if audits is None:
            urls = engine.search(session, work["canonicalTitle"], candidate_limit, policy.get("searchTerms"))
            audits = []
            if urls:
                with ThreadPoolExecutor(max_workers=min(len(urls), 6)) as audit_pool:
                    audit_futures = {audit_pool.submit(engine.audit, session, work, url): url for url in urls}
                    for future in as_completed(audit_futures):
                        url = audit_futures[future]
                        try:
                            audits.append(future.result())
                        except Exception as exc:
                            print(f"  AUDIT ERROR [{work['canonicalTitle'][:30]}] {url}: {exc}", flush=True)
            ckpt.write_text(json.dumps({"workFingerprint": entries[wid]["workFingerprint"], "workId": wid, "audits": audits}, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        return wid, audits

    search_workers = max(1, args.search_workers)

    def save_progress():
        ordered = [item for items in existing.values() for item in items]
        args.audits.parent.mkdir(parents=True, exist_ok=True)
        args.audits.write_text("".join(json.dumps(item, ensure_ascii=False) + "\n" for item in ordered), encoding="utf-8")
        sc = sum(item["status"] == "searched" for item in entries.values())
        st = {
            "schema": "comic_category_search_state_v1",
            "language": doc.get("language", "zh-Hans"),
            "category": args.parameters.stem,
            "updatedAt": now(),
            "total": len(entries),
            "searched": sc,
            "pending": len(entries) - sc,
            "complete": sc == len(entries),
            "entries": entries,
        }
        args.state.parent.mkdir(parents=True, exist_ok=True)
        args.state.write_text(json.dumps(st, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    with ThreadPoolExecutor(max_workers=search_workers) as pool:
        consecutive_empty = 0
        for chunk_start in range(0, len(selected), search_workers):
            if processed > 0 and time.monotonic() - started >= args.job_time_budget:
                print(f"time budget reached after {processed} works; not starting new searches", flush=True)
                break
            if consecutive_empty >= 20:
                print(f"[search-engine-failure] 连续 {consecutive_empty} 个作品搜索结果为空，判定搜索引擎故障，提前结束本轮", flush=True)
                break
            chunk = selected[chunk_start:chunk_start + search_workers]
            futures = {pool.submit(search_one_work, work): work for work in chunk}
            for future in as_completed(futures):
                work = futures[future]
                try:
                    work_id, work_audits = future.result()
                except Exception as exc:
                    print(f"  ERROR [{work['canonicalTitle'][:30]}]: {exc}", flush=True)
                    continue
                prior_good = [item for item in existing.get(work_id, []) if item.get("status") == "verified"
                              and item.get("policyVersion") == engine.POLICY_VERSION]
                replayed_urls = {str(item.get("detailUrl", "")) for item in work_audits}
                existing[work_id] = work_audits + [item for item in prior_good
                                                   if str(item.get("detailUrl", "")) not in replayed_urls]
                entries[work_id]["status"] = "searched"
                entries[work_id]["searchedAt"] = now()
                processed += 1
                if not work_audits:
                    consecutive_empty += 1
                else:
                    consecutive_empty = 0
                print(f"[{processed}/{len(selected)}] {work['canonicalTitle']}: {sum(x.get('status') == 'verified' for x in work_audits)}/{len(work_audits)}", flush=True)
                if processed % 50 == 0:
                    save_progress()
                    print(f"  [checkpoint] saved {processed} works", flush=True)

    save_progress()
    searched_count = sum(item["status"] == "searched" for item in entries.values())
    print(f"progress: {searched_count}/{len(entries)} ({searched_count * 100 // len(entries)}%), pending={len(entries)-searched_count}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
