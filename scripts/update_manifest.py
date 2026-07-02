#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
维护 generated/update_manifest.json。

用途：
  - App 只读取一个总入口文件；
  - 规则流程只更新 rules section；
  - 目录流程只更新 catalog section；
  - 两个流程发布频率可以不同，互不覆盖。
"""
from __future__ import annotations

import argparse
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict

REPO_RAW_BASE = "https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main"
MANIFEST_SCHEMA = "comic_reader_update_manifest_v1"
MANIFEST_PATH = Path("generated/update_manifest.json")

SECTION_CONFIG = {
    "rules": {
        "name": "search rules",
        "source": Path("generated/index.json"),
        "url": f"{REPO_RAW_BASE}/generated/index.json",
        "extra": {
            "rulesUrl": f"{REPO_RAW_BASE}/rules/index.json",
            "reportUrl": f"{REPO_RAW_BASE}/generated/rulebot_report.json",
            "etsUrl": f"{REPO_RAW_BASE}/generated/GeneratedSourceRules.ets",
        },
    },
    "catalog": {
        "name": "catalog",
        "source": Path("generated/catalog.json"),
        "url": f"{REPO_RAW_BASE}/generated/catalog.json",
        "extra": {
            "categoriesUrl": f"{REPO_RAW_BASE}/generated/catalog_categories.json",
            "deltaUrl": f"{REPO_RAW_BASE}/generated/catalog_delta.json",
            "reportUrl": f"{REPO_RAW_BASE}/generated/catalog_report.json",
            "targetGapsUrl": f"{REPO_RAW_BASE}/generated/catalog_target_gaps.json",
        },
    },
}


def now_iso() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def load_json(path: Path) -> Dict[str, Any]:
    if not path.exists():
        return {}
    return json.loads(path.read_text("utf-8"))


def write_json(path: Path, data: Dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def language_file(path: Path, language_code: str) -> Path:
    if not language_code:
        return path
    return path.with_name(f"{path.stem}.{language_code}{path.suffix}")


def raw_url(path: Path) -> str:
    return f"{REPO_RAW_BASE}/{path.as_posix()}"


def build_section(section: str, tag: str, language_code: str = "", language_name: str = "") -> Dict[str, Any]:
    config = SECTION_CONFIG[section]
    source_path: Path = config["source"]
    if section == "rules" and language_code:
        source_path = language_file(source_path, language_code)
    source = load_json(source_path)
    version = str(source.get("version") or "")
    updated_at = str(source.get("updatedAt") or "")
    if not version:
        raise SystemExit(f"{source_path} missing version")
    if not updated_at:
        raise SystemExit(f"{source_path} missing updatedAt")

    data: Dict[str, Any] = {
        "version": version,
        "updatedAt": updated_at,
        "tag": tag,
        "url": raw_url(source_path) if section == "rules" and language_code else config["url"],
    }
    if section == "rules" and language_code:
        rules_path = language_file(Path("rules/index.json"), language_code)
        report_path = language_file(Path("generated/rulebot_report.json"), language_code)
        ets_path = language_file(Path("generated/GeneratedSourceRules.ets"), language_code)
        data["language"] = {
            "code": language_code,
            "name": language_name or language_code,
        }
        data.update({
            "rulesUrl": raw_url(rules_path),
            "reportUrl": raw_url(report_path),
            "etsUrl": raw_url(ets_path),
        })
    else:
        data.update(config["extra"])
    return data


def main() -> int:
    parser = argparse.ArgumentParser(description="Update generated/update_manifest.json")
    parser.add_argument("--section", choices=sorted(SECTION_CONFIG), required=True)
    parser.add_argument("--tag", required=True)
    parser.add_argument("--language-code", default="")
    parser.add_argument("--language-name", default="")
    args = parser.parse_args()

    manifest = load_json(MANIFEST_PATH)
    if not manifest:
        manifest = {
            "schema": MANIFEST_SCHEMA,
            "updatedAt": now_iso(),
            "description": "App update entry. Compare rules.version and catalog.version separately.",
            "rules": None,
            "catalog": None,
        }
    manifest["schema"] = MANIFEST_SCHEMA
    section_data = build_section(args.section, args.tag, args.language_code, args.language_name)
    if args.section == "rules" and args.language_code:
        current_rules = manifest.get("rules") if isinstance(manifest.get("rules"), dict) else {}
        languages = current_rules.get("languages") if isinstance(current_rules.get("languages"), dict) else {}
        languages[args.language_code] = section_data
        top_level_section = dict(section_data)
        top_level_section["languages"] = languages
        manifest[args.section] = top_level_section
    else:
        manifest[args.section] = section_data
    manifest["updatedAt"] = now_iso()
    write_json(MANIFEST_PATH, manifest)
    print(f"Updated {MANIFEST_PATH}: {args.section} -> {args.tag}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
