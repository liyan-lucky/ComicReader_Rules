#!/usr/bin/env python3
"""Verify CI output data usability - spot check rules and catalog."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
lang = "zh-Hans"

rules = json.loads((ROOT / f"rules/index.{lang}.json").read_text("utf-8"))
rule_list = rules.get("rules", [])
su_rules = [r for r in rule_list if r.get("searchUrl")]

print("=== RULES USABILITY CHECK ===")
print(f"Total: {len(rule_list)}, With searchUrl: {len(su_rules)}")
print()

for r in su_rules[:5]:
    rid = r.get("id", "")[:40]
    name = r.get("name", "")[:60]
    hp = r.get("homepage", "")
    su = r.get("searchUrl", "")
    has_img = bool(r.get("readerImageRegex"))
    has_ch = bool(r.get("detailChapterRegex"))
    has_next = bool(r.get("readerNextPageRegex"))
    print(f"ID: {rid}")
    print(f"  Name: {name}")
    print(f"  Homepage: {hp}")
    print(f"  SearchUrl: {su}")
    print(f"  readerImageRegex: {has_img}")
    print(f"  detailChapterRegex: {has_ch}")
    print(f"  readerNextPageRegex: {has_next}")
    print()

cat = json.loads((ROOT / f"catalog/catalog.{lang}.json").read_text("utf-8"))
items = cat.get("items", [])

print("=== CATALOG USABILITY CHECK ===")
print(f"Total items: {len(items)}")
print()

for item in items[:5]:
    title = item.get("title", "")
    iid = item.get("id", "")
    cat_id = item.get("category", "")
    sources = item.get("sources", [])
    print(f"Title: {title}")
    print(f"  ID: {iid}")
    print(f"  Category: {cat_id}")
    print(f"  Sources: {len(sources)}")
    for s in sources[:3]:
        dom = s.get("domain", "")
        url = s.get("detailUrl", "")[:70]
        print(f"    - {dom}: {url}")
    print()

# Check for data completeness
print("=== DATA COMPLETENESS ===")
no_homepage = sum(1 for r in rule_list if not r.get("homepage"))
no_img_regex = sum(1 for r in rule_list if not r.get("readerImageRegex"))
no_ch_regex = sum(1 for r in rule_list if not r.get("detailChapterRegex"))
print(f"Rules missing homepage: {no_homepage}")
print(f"Rules missing readerImageRegex: {no_img_regex}")
print(f"Rules missing detailChapterRegex: {no_ch_regex}")

cat_no_title = sum(1 for i in items if not i.get("title"))
cat_no_sources = sum(1 for i in items if not i.get("sources"))
cat_no_category = sum(1 for i in items if not i.get("category"))
print(f"Catalog items missing title: {cat_no_title}")
print(f"Catalog items missing sources: {cat_no_sources}")
print(f"Catalog items missing category: {cat_no_category}")
