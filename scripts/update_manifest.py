#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
维护 generated/update_manifest.json。

用途：
  - App 只读取一个总入口文件；
  - 规则流程只更新 rules section；
  - 目录流程只更新 catalog section；
  - 两个流程发布频率可以不同，互不覆盖。

所有路径均使用 {lang} 后缀，无后缀文件已废弃。
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
        "source_template": "rules/index.{lang}.json",
        "url_template": f"{REPO_RAW_BASE}/rules/index.{{lang}}.json",
    },
    "catalog": {
        "name": "catalog",
        "source_template": "catalog/catalog.{lang}.json",
        "url_template": f"{REPO_RAW_BASE}/catalog/catalog.{{lang}}.json",
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


def build_section(section: str, tag: str, language_code: str = "", language_name: str = "") -> Dict[str, Any]:
    config = SECTION_CONFIG[section]
    if not language_code:
        raise SystemExit(f"--language-code is required for {section}")

    source_path = Path(config["source_template"].format(lang=language_code))
    source = load_json(source_path)
    version = str(source.get("version") or "")
    updated_at = str(source.get("updatedAt") or "")
    if not version:
        raise SystemExit(f"{source_path} missing version")
    if not updated_at:
        raise SystemExit(f"{source_path} missing updatedAt")

    url = config["url_template"].format(lang=language_code)
    data: Dict[str, Any] = {
        "version": version,
        "updatedAt": updated_at,
        "tag": tag,
        "url": url,
        "language": {
            "code": language_code,
            "name": language_name or language_code,
        },
    }
    if section == "rules":
        data["reportUrl"] = f"{REPO_RAW_BASE}/generated/rulebot_report.{language_code}.json"
        data["etsUrl"] = f"{REPO_RAW_BASE}/generated/GeneratedSourceRules.{language_code}.ets"
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
        }

    section_data = build_section(args.section, args.tag, args.language_code, args.language_name)
    section_key = args.section
    existing = manifest.get(section_key) if isinstance(manifest.get(section_key), dict) else {}
    languages = existing.get("languages") if isinstance(existing.get("languages"), dict) else {}
    languages[args.language_code] = section_data
    top = dict(section_data)
    top["languages"] = languages
    manifest[section_key] = top
    manifest["schema"] = MANIFEST_SCHEMA
    manifest["updatedAt"] = now_iso()
    write_json(MANIFEST_PATH, manifest)
    print(f"Updated {MANIFEST_PATH}: {args.section}/{args.language_code} -> {args.tag}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
