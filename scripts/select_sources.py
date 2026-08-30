#!/usr/bin/env python3
"""Select one best readable public source per work from independent audits."""
from __future__ import annotations

import argparse
import json
import os
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

from title_normalization import identity_key


def valid_audit(item: dict, min_images: int = 8) -> bool:
    samples = item.get("samples", [])
    positions = {sample.get("position") for sample in samples if isinstance(sample, dict)}
    if item.get("policyVersion") != "readability-v4":
        return False
    if item.get("status") != "verified" or int(item.get("chapterCount") or 0) <= 0:
        return False
    if not {"first", "middle", "latest"}.issubset(positions):
        return False
    if any(not sample.get("readable") or int(sample.get("imageCount") or 0) < min_images for sample in samples):
        return False
    host = (urlparse(str(item.get("detailUrl", ""))).hostname or "").lower().removeprefix("www.")
    return bool(host and host == str(item.get("domain", "")).lower().removeprefix("www."))


def title_matches(item: dict) -> bool:
    language = str(item.get("language", ""))
    return identity_key(str(item.get("queryTitle", "")), language) == identity_key(str(item.get("matchedTitle", "")), language)


def score(item: dict) -> tuple[int, int, str]:
    images = sum(int(sample.get("imageCount") or 0) for sample in item.get("samples", []))
    return int(item.get("chapterCount") or 0), images, str(item.get("detailUrl", ""))


def choose(audits: list[dict]) -> dict:
    grouped: dict[str, list[dict]] = defaultdict(list)
    rejected: list[dict] = []
    for item in audits:
        reasons = []
        if not title_matches(item): reasons.append("title_identity_mismatch")
        if not valid_audit(item): reasons.append("three_chapter_readability_gate_failed")
        if reasons:
            rejected.append({"workId": item.get("workId"), "detailUrl": item.get("detailUrl"), "reasons": reasons})
        else:
            grouped[str(item.get("workId", ""))].append(item)
    selected = []
    verified_candidates = []
    for work_id, candidates in sorted(grouped.items()):
        normalized = [{"workId": work_id, "language": item["language"], "title": item["queryTitle"],
            "domain": item["domain"], "detailUrl": item["detailUrl"], "coverUrl": item.get("coverUrl", ""),
            "verifiedChapterCount": item["chapterCount"], "samples": item["samples"],
            "validationPolicy": item["policyVersion"], "chapterOrder": item.get("chapterOrder", {})} for item in candidates]
        normalized.sort(key=lambda item: (item["verifiedChapterCount"], sum(x["imageCount"] for x in item["samples"]), item["detailUrl"]), reverse=True)
        verified_candidates.extend(normalized)
        selected.append({**normalized[0], "candidateCount": len(normalized), "selectionReason": "highest_verified_chapter_count_before_domain_replay"})
    return {"schema": "comic_best_sources_v2", "generatedAt": datetime.now(timezone.utc).isoformat(),
            "selected": selected, "verifiedCandidates": verified_candidates, "rejected": rejected}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--audits", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    audits = [json.loads(line) for line in args.audits.read_text(encoding="utf-8-sig").splitlines() if line.strip()]
    result = choose(audits)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"best readable sources: {len(result['selected'])} -> {args.output}")
    summary = os.getenv("GITHUB_STEP_SUMMARY")
    if summary:
        category = args.output.stem
        with Path(summary).open("a", encoding="utf-8") as stream:
            stream.write(f"### {category} 来源筛选\n\n- 通过：**{len(result['selected'])} 本**\n- 拒绝：**{len(result['rejected'])} 条候选**\n\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
