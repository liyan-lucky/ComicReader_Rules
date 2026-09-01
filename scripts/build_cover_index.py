#!/usr/bin/env python3
"""Build the App-facing, title-bound cover correction index.

Only covers attached to readability-v5 catalog entries are published.  The
catalog gate already proves exact work-title identity; this step additionally
checks that the image is reachable, is an image response and is not a tiny
placeholder before a phone is allowed to replace a local cover with it.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

import requests


def title_key(value: str) -> str:
    return re.sub(r"[\W_]+", "", value, flags=re.UNICODE).casefold()


def verify_image(url: str, timeout: int = 15) -> dict:
    try:
        response = requests.get(url, timeout=timeout, stream=True,
                                headers={"User-Agent": "ComicReader-CoverAudit/1.0"})
        response.raise_for_status()
        content_type = response.headers.get("content-type", "").split(";", 1)[0].lower()
        data = bytearray()
        for chunk in response.iter_content(65536):
            data.extend(chunk)
            if len(data) > 2_000_000:
                break
        valid = content_type.startswith("image/") and len(data) >= 10_000
        return {"reachable": True, "validImage": valid, "contentType": content_type,
                "byteSize": len(data), "sha256": hashlib.sha256(data).hexdigest() if valid else ""}
    except requests.RequestException as exc:
        return {"reachable": False, "validImage": False, "error": type(exc).__name__}


def build(catalog: dict, online: bool = True) -> dict:
    entries = []
    for category in catalog.get("categories", {}).values():
        for item in category.get("items", []):
            if item.get("validationPolicy") != "readability-v5":
                continue
            title = str(item.get("title", "")).strip()
            for rank, source in enumerate(item.get("sources", []), 1):
                cover = str(source.get("coverUrl", ""))
                if not title or not cover.startswith("https://"):
                    continue
                proof = verify_image(cover) if online else {"reachable": True, "validImage": True,
                    "contentType": "image/test", "byteSize": 10000, "sha256": "offline"}
                if not proof.get("validImage"):
                    continue
                entries.append({"workId": str(item.get("id", "")), "title": title,
                    "titleKey": title_key(title), "language": str(item.get("language", "zh-Hans")),
                    "coverUrl": cover, "detailUrl": str(source.get("detailUrl", "")),
                    "domain": str(source.get("domain", "")), "sourceRank": rank,
                    "verifiedChapterCount": len(source.get("chapters", [])),
                    "confidence": "verified-title-bound-cover", "imageProof": proof})
                break
    now = datetime.now(timezone.utc)
    return {"schema": "comic_cover_accuracy_index_v1", "version": now.strftime("%Y%m%d%H%M%S"),
        "updatedAt": now.isoformat(), "language": {"code": "zh-Hans", "name": "简体中文"},
        "count": len(entries), "entries": entries}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--catalog", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--offline", action="store_true")
    args = parser.parse_args()
    result = build(json.loads(args.catalog.read_text(encoding="utf-8-sig")), not args.offline)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(f"published {result['count']} verified title-bound covers")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
