#!/usr/bin/env python3
"""Build the App's broad online title catalogue without waiting for source audits.

The readable-source pipeline is intentionally slower and remains independent.
Every title here has a search fallback, so selecting it in the App opens the
normal all-web search while background jobs later attach verified direct links.
"""
from __future__ import annotations

import argparse
import json
import re
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CJK_RE = re.compile(r"[\u3400-\u9fff\uf900-\ufaff]")
EVENT_RE = re.compile(r"^\s*(?:\(?C\d{2,4}\)?|#|\[C\d{2,4}\])", re.I)


def title_key(value: str) -> str:
    return re.sub(r"\s+", "", value).casefold()


def usable_title(value: str) -> bool:
    value = value.strip()
    if len(value) < 2 or len(value) > 120:
        return False
    if not CJK_RE.search(value) or EVENT_RE.search(value):
        return False
    return True


def https_cover(value: object) -> str:
    cover = str(value or "").strip()
    if cover.startswith("http://"):
        cover = "https://" + cover[7:]
    return cover if cover.startswith("https://") else ""


def load_verified_sources(path: Path) -> dict[str, list[dict]]:
    if not path.exists():
        return {}
    doc = json.loads(path.read_text(encoding="utf-8-sig"))
    results: dict[str, list[dict]] = {}
    for source in doc.get("verifiedCandidates", doc.get("selected", [])):
        work_id = str(source.get("workId", ""))
        if not work_id:
            continue
        if source.get("validationPolicy") != "readability-v5":
            continue
        if not str(source.get("detailUrl", "")).startswith("https://"):
            continue
        results.setdefault(work_id, []).append(source)
    for group in results.values():
        group.sort(key=lambda item: int(item.get("verifiedChapterCount") or 0), reverse=True)
    return results


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parameters", type=Path, required=True)
    parser.add_argument("--sources", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--existing", type=Path)
    parser.add_argument("--max-per-category", type=int, default=4500)
    parser.add_argument("--minimum-items", type=int, default=30000,
                        help="Preserve prior non-conflicting rows until this release floor is met")
    args = parser.parse_args()

    config = json.loads((ROOT / "config" / "catalog_config.json").read_text(encoding="utf-8-sig"))
    verified_by_work = load_verified_sources(args.sources)
    seen_titles: set[str] = set()
    categories: dict[str, dict] = {}
    flattened: list[dict] = []
    dropped = Counter()
    direct_count = 0

    for category in config["categories"]:
        category_id = str(category["id"])
        parameter_path = args.parameters / f"{category_id}.json"
        doc = json.loads(parameter_path.read_text(encoding="utf-8-sig")) if parameter_path.exists() else {"works": []}
        works = list(doc.get("works", []))
        works.sort(key=lambda work: (-len(work.get("platformEvidence", [])), str(work.get("canonicalTitle", "")).casefold()))
        items: list[dict] = []
        for work in works:
            if len(items) >= args.max_per_category:
                break
            title = str(work.get("canonicalTitle", "")).strip()
            key = title_key(title)
            if not usable_title(title):
                dropped["invalid_title"] += 1
                continue
            if key in seen_titles:
                dropped["duplicate_title"] += 1
                continue
            seen_titles.add(key)
            work_id = str(work.get("id", ""))
            candidates = verified_by_work.get(work_id, [])
            sources: list[dict] = []
            if candidates:
                for candidate in candidates[:3]:
                    sources.append({
                        "domain": str(candidate.get("domain", "")),
                        "detailUrl": str(candidate["detailUrl"]),
                        "coverUrl": https_cover(candidate.get("coverUrl")),
                        "chapters": candidate.get("chapters", []),
                    })
                direct_count += 1
                policy = "readability-v5"
                chapters = int(candidates[0].get("verifiedChapterCount") or 0)
            else:
                # A non-empty source intentionally routes a card click to the
                # App's all-web search instead of creating a dead catalogue row.
                sources.append({"domain": "全网检索", "searchUrl": "online-search://" + work_id})
                policy = "online-title-index-v1"
                chapters = 0
            item = {
                "id": work_id,
                "title": title,
                "sources": sources,
                "category": category_id,
                "language": "zh-Hans",
                "verifiedChapterCount": chapters,
                "validationPolicy": policy,
            }
            items.append(item)
            flattened.append(item)
        categories[category_id] = {"id": category_id, "name": category["name"], "count": len(items), "items": items}

    preserved_count = 0
    if args.existing and args.existing.exists():
        old = json.loads(args.existing.read_text(encoding="utf-8-sig"))
        # Upstream platform snapshots naturally fluctuate.  The visible online
        # index must therefore be monotonic: a transiently smaller input must
        # never turn a 30k release into a sub-30k release or block publishing.
        # Preserve only unique, structurally usable previous rows and continue
        # to prefer the freshly discovered version of every title.
        if len(flattened) < args.minimum_items:
            seen_ids = {str(item.get("id", "")) for item in flattened}
            old_categories = old.get("categories", {})
            for category in config["categories"]:
                if len(flattened) >= args.minimum_items:
                    break
                category_id = str(category["id"])
                old_category = old_categories.get(category_id, {})
                for prior in old_category.get("items", []):
                    if len(flattened) >= args.minimum_items:
                        break
                    title = str(prior.get("title", "")).strip()
                    work_id = str(prior.get("id", ""))
                    if not usable_title(title) or not work_id or not prior.get("sources"):
                        continue
                    key = title_key(title)
                    if key in seen_titles or work_id in seen_ids:
                        continue
                    preserved = dict(prior)
                    preserved["category"] = category_id
                    preserved["language"] = "zh-Hans"
                    categories[category_id]["items"].append(preserved)
                    flattened.append(preserved)
                    seen_titles.add(key)
                    seen_ids.add(work_id)
                    preserved_count += 1
            for category in categories.values():
                category["count"] = len(category["items"])

    content = {"categories": categories, "totalItems": len(flattened), "categoryCount": len(categories)}
    if args.existing and args.existing.exists():
        old_content = {key: old.get(key) for key in content}
        if old_content == content:
            print(f"online title catalog unchanged: {len(flattened)} items; keeping version {old.get('version', '')}")
            return 0
    now = datetime.now(timezone.utc)
    result = {
        "schema": "comic_catalog_v1",
        "version": now.strftime("%Y%m%d%H%M%S"),
        "updatedAt": now.isoformat(),
        "language": {"code": "zh-Hans", "name": "简体中文"},
        **content,
        "audit": {"mode": "online-title-index-v1", "directReadableCount": direct_count,
                  "fallbackSearchCount": len(flattened) - direct_count, "preservedFromPrevious": preserved_count,
                  "dropped": dict(dropped)},
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"published": len(flattened), "directReadable": direct_count,
                      "searchFallback": len(flattened) - direct_count, "preserved": preserved_count,
                      "dropped": dict(dropped)}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
