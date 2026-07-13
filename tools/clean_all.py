#!/usr/bin/env python3
"""Clean all generated data for a fresh pipeline run."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

# 1. Clear generated/ files content (keep files, reset to empty)
gen_dir = ROOT / "generated"
for f in gen_dir.glob("*.json"):
    f.write_text("{}", encoding="utf-8")
    print(f"  Cleared: {f.name}")
for f in gen_dir.glob("*.ets"):
    f.write_text("", encoding="utf-8")
    print(f"  Cleared: {f.name}")

# 2. Reset rules/index.zh-Hans.json to empty rules array
rules_path = ROOT / "rules" / "index.zh-Hans.json"
if rules_path.exists():
    template = {
        "schema": "womh_comic_rules_index_v1",
        "version": "0.0.0",
        "updatedAt": "",
        "license": "MIT",
        "language": {"code": "zh-Hans", "name": "简体中文"},
        "compliance": {
            "license": "MIT",
            "publicOnly": True,
            "noAccountData": True,
            "noBundledComicContent": True,
            "noPaidContentCopies": True,
            "noProtectedAssets": True,
            "noAccessControlBypass": True,
            "rightsPolicy": "See README.md, DISCLAIMER.md and COMPLIANCE.md"
        },
        "queries": [],
        "rules": []
    }
    rules_path.write_text(json.dumps(template, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"  Reset: {rules_path.name}")

# 3. Reset catalog/catalog.zh-Hans.json to empty categories
catalog_path = ROOT / "catalog" / "catalog.zh-Hans.json"
if catalog_path.exists():
    categories = {
        "lianai": {"id": "lianai", "name": "恋爱", "count": 0, "items": []},
        "xuanhuan": {"id": "xuanhuan", "name": "玄幻", "count": 0, "items": []},
        "yineng": {"id": "yineng", "name": "异能", "count": 0, "items": []},
        "kongbu": {"id": "kongbu", "name": "恐怖", "count": 0, "items": []},
        "juqing": {"id": "juqing", "name": "剧情", "count": 0, "items": []},
        "kehuan": {"id": "kehuan", "name": "科幻", "count": 0, "items": []},
        "xuanyi": {"id": "xuanyi", "name": "悬疑", "count": 0, "items": []},
        "qihuan": {"id": "qihuan", "name": "奇幻", "count": 0, "items": []},
        "maoxian": {"id": "maoxian", "name": "冒险", "count": 0, "items": []},
        "fanzui": {"id": "fanzui", "name": "犯罪", "count": 0, "items": []},
        "dongzuo": {"id": "dongzuo", "name": "动作", "count": 0, "items": []},
        "richang": {"id": "richang", "name": "日常", "count": 0, "items": []},
        "jingji": {"id": "jingji", "name": "竞技", "count": 0, "items": []},
        "wuxia": {"id": "wuxia", "name": "武侠", "count": 0, "items": []},
        "lishi": {"id": "lishi", "name": "历史", "count": 0, "items": []},
        "zhanzheng": {"id": "zhanzheng", "name": "战争", "count": 0, "items": []},
    }
    template = {
        "schema": "womh_comic_catalog_v1",
        "version": "0.0.0",
        "updatedAt": "",
        "language": "zh-Hans",
        "totalItems": 0,
        "categoryCount": 16,
        "categories": categories
    }
    catalog_path.write_text(json.dumps(template, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"  Reset: {catalog_path.name}")

print("\nAll generated data cleared. Ready for fresh pipeline run.")
