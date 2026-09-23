#!/usr/bin/env python3
"""Normalize platform title observations into language/category parameters.

Input is JSONL. Every line is an independently recorded public platform item:
{"platform":"...","url":"...","title":"...","category":"xuanhuan","language":"zh-Hans"}
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
LANGUAGES = {"zh-Hans", "zh-Hant", "en", "ja", "ko"}
CHAPTER_SUFFIX_RE = re.compile(
    r"(?:[\s_\-|·:：]*(?:第\s*[0-9一二三四五六七八九十百千零〇两]+\s*[话話章回集]|"
    r"(?:chapter|chap\.?|episode|ep\.?)\s*\d+|最新(?:话|話|章节|章節)|在线阅读|在線閱讀|免费阅读|免費閱讀))+$",
    re.I,
)
QUALIFIER_RE = re.compile(
    r"(?:第\s*[一二三四五六七八九十0-9]+\s*[季部卷]|前传|前傳|后传|後傳|外传|外傳|番外|续篇|續篇|重制版|重製版|"
    r"season\s*\d+|prequel|sequel|side\s*story|remake)", re.I
)
NOISE_RE = re.compile(r"(?:漫画|漫畫)?(?:免费观看|免費觀看|在线观看|在線觀看|在线阅读|在線閱讀|免费阅读|免費閱讀)(?:全集|完整版)?", re.I)


def clean_title(value: str) -> str:
    value = re.sub(r"<[^>]+>", " ", str(value or ""))
    value = re.sub(r"\s+", " ", value).strip(" \t\r\n-_|·:：")
    value = NOISE_RE.sub("", value).strip(" \t\r\n-_|·:：")
    previous = None
    while value and value != previous:
        previous = value
        value = CHAPTER_SUFFIX_RE.sub("", value).strip(" \t\r\n-_|·:：")
    return value


def qualifier(value: str) -> str:
    match = QUALIFIER_RE.search(value)
    return match.group(0).replace(" ", "") if match else ""


def identity_key(title: str, language: str) -> str:
    # Qualifiers deliberately remain part of identity: 第二季 is not merged
    # into 第一季. Only punctuation/spacing and ASCII case are normalized.
    folded = title.casefold()
    folded = re.sub(r"[\s\u3000·•・_\-|—:：,，.。!！?？'\"“”‘’()（）\[\]【】]+", "", folded)
    return f"{language}:{folded}"


def work_id(language: str, category: str, key: str) -> str:
    return hashlib.sha256(f"{language}\n{category}\n{key}".encode()).hexdigest()[:16]


def load_observations(paths: list[Path]) -> list[dict[str, Any]]:
    values: list[dict[str, Any]] = []
    for path in paths:
        for line_no, line in enumerate(path.read_text(encoding="utf-8-sig").splitlines(), 1):
            if not line.strip() or line.lstrip().startswith("#"):
                continue
            item = json.loads(line)
            item["_input"] = f"{path}:{line_no}"
            values.append(item)
    return values


def build(observations: list[dict[str, Any]], language: str, category: str) -> dict[str, Any]:
    groups: dict[str, dict[str, Any]] = {}
    for item in observations:
        if item.get("language") != language or item.get("category") != category:
            continue
        title = clean_title(item.get("title", ""))
        if len(title) < 2:
            continue
        if language == "zh-Hans" and not re.search(r"[\u3400-\u9fff]", title):
            continue
        key = identity_key(title, language)
        entry = groups.setdefault(key, {
            "id": work_id(language, category, key), "canonicalTitle": title,
            "seriesQualifier": qualifier(title), "language": language,
            "category": category, "aliases": [], "platformEvidence": [],
        })
        observed = str(item.get("title", "")).strip()
        if observed and observed != title and observed not in entry["aliases"]:
            entry["aliases"].append(observed)
        evidence_key = (item.get("platform"), observed)
        existing = {(e["platform"], e["observedTitle"]) for e in entry["platformEvidence"]}
        if evidence_key not in existing:
            entry["platformEvidence"].append({
                "platform": str(item.get("platform", "")), "observedTitle": observed,
            })
    return {"schema": "comic_title_parameters_v2",
            "language": language, "category": {"id": category, "name": category},
            "works": sorted(groups.values(), key=lambda x: x["canonicalTitle"].casefold())}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", action="append", required=True, type=Path)
    parser.add_argument("--language", required=True, choices=sorted(LANGUAGES))
    parser.add_argument("--category", required=True)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    result = build(load_observations(args.input), args.language, args.category)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"title parameters: {len(result['works'])} -> {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
