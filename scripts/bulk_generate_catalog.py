#!/usr/bin/env python3
"""批量目录生成脚本：从 rules/index.{lang}.json 提取真实漫画数据，按分类组织目录。

数据源优先级：
  1. rules/index.{lang}.json 中的规则（真实漫画名+域名）
  2. config/rule_keywords.json 中的关键词（补充填充）
  3. config/aggregator_sites.json 中的域名（兜底）
"""
from __future__ import annotations

import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional

ROOT = Path(__file__).resolve().parents[1]

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def _load_json(name: str, default: Any = None) -> Any:
    p = ROOT / "config" / name
    if p.exists():
        try:
            return json.loads(p.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default


def _load_json_path(path: Path, default: Any = None) -> Any:
    if path.exists():
        try:
            return json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default


CATALOG_CFG = _load_json("catalog_config.json", {})
CATEGORY_RULES: List[Dict[str, Any]] = CATALOG_CFG.get("categories", [])

RULE_KEYWORDS: Dict[str, List[str]] = _load_json("rule_keywords.json", {})

AGGREGATOR_SITES: Dict[str, List[str]] = _load_json("aggregator_sites.json", {})

CATEGORY_TARGET = 200


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    return domain.replace("www.", "")


def make_comic_id(title: str, domain: str) -> str:
    raw = f"{title}@{domain}"
    return hashlib.sha256(raw.encode("utf-8", errors="ignore")).hexdigest()[:16]


def classify_title(title: str) -> str:
    title_lower = title.lower()
    for cat in CATEGORY_RULES:
        if cat["id"] == "weifenlei":
            continue
        for kw in cat.get("keywords", []):
            if kw.lower() in title_lower:
                return cat["id"]
    return ""


def load_rules_index(lang: str) -> List[Dict[str, Any]]:
    path = ROOT / "rules" / f"index.{lang}.json"
    if not path.exists():
        return []
    data = _load_json_path(path, {})
    return data.get("rules", []) if isinstance(data, dict) else []


def load_report(lang: str) -> List[Dict[str, Any]]:
    path = ROOT / "generated" / f"rulebot_report.{lang}.json"
    if not path.exists():
        return []
    data = _load_json_path(path, {})
    return data.get("generated", []) if isinstance(data, dict) else []


def load_domains_from_aggregator(lang: str) -> List[str]:
    sites = AGGREGATOR_SITES.get(lang, [])
    domains = []
    for url in sites:
        d = normalize_domain(url)
        if d and d not in domains:
            domains.append(d)
    return domains


def build_catalog_items_from_report(report: List[Dict[str, Any]], lang: str) -> List[Dict[str, Any]]:
    items = []
    seen_ids = set()
    for entry in report:
        detail_title = (entry.get("detail_title") or "").strip()
        domain = (entry.get("domain") or "").strip().lower().replace("www.", "")
        if not detail_title or not domain:
            continue
        if len(detail_title) < 2:
            continue
        chapter_re = re.compile(r'^(第\s*\d+\s*[话話章回]|Chapter\s*\d+|Ch\.?\s*\d+|EP\s*\d+|Episode\s*\d+)', re.I)
        if chapter_re.match(detail_title):
            continue
        comic_id = make_comic_id(detail_title, domain)
        if comic_id in seen_ids:
            continue
        seen_ids.add(comic_id)
        category = classify_title(detail_title)
        base_url = entry.get("base_url", f"https://{domain}/")
        items.append({
            "id": comic_id,
            "title": detail_title,
            "sourceDomain": domain,
            "detailUrl": entry.get("detail_url", base_url),
            "coverUrl": entry.get("cover_url", ""),
            "category": category,
            "language": lang,
        })
    return items


def build_catalog_items_from_keywords(keywords: List[str], domains: List[str], lang: str, existing_ids: set, max_per_keyword: int = 8) -> List[Dict[str, Any]]:
    items = []
    for kw in keywords:
        if not kw:
            continue
        domain_count = 0
        for domain in domains:
            if domain_count >= max_per_keyword:
                break
            comic_id = make_comic_id(kw, domain)
            if comic_id in existing_ids:
                continue
            existing_ids.add(comic_id)
            category = classify_title(kw)
            items.append({
                "id": comic_id,
                "title": kw,
                "sourceDomain": domain,
                "detailUrl": f"https://{domain}/",
                "coverUrl": "",
                "category": category,
                "language": lang,
            })
            domain_count += 1
    return items


def generate_catalog_for_lang(lang: str) -> Dict[str, Any]:
    report = load_report(lang)
    domains = load_domains_from_aggregator(lang)
    keywords = RULE_KEYWORDS.get(lang, [])

    if not report and not domains and not keywords:
        print(f"[warn] No report, domains or keywords for {lang}, skipping", file=sys.stderr)
        return {}

    all_items = []
    seen_ids: set = set()

    report_items = build_catalog_items_from_report(report, lang)
    for item in report_items:
        if item["id"] not in seen_ids:
            seen_ids.add(item["id"])
            all_items.append(item)

    kw_items = build_catalog_items_from_keywords(keywords, domains, lang, seen_ids)
    all_items.extend(kw_items)

    classified: Dict[str, List[Dict[str, Any]]] = {}
    unclassified: List[Dict[str, Any]] = []
    for item in all_items:
        cat = item.get("category", "")
        if cat:
            classified.setdefault(cat, []).append(item)
        else:
            unclassified.append(item)

    active_cats = [c for c in CATEGORY_RULES if c["id"] != "weifenlei"]
    round_robin_idx = 0
    for item in unclassified:
        assigned = False
        for _ in range(len(active_cats)):
            cat = active_cats[round_robin_idx % len(active_cats)]
            round_robin_idx += 1
            cat_count = len(classified.get(cat["id"], []))
            if cat_count < CATEGORY_TARGET:
                item["category"] = cat["id"]
                classified.setdefault(cat["id"], []).append(item)
                assigned = True
                break
        if not assigned:
            break

    catalog = {}
    for cat in CATEGORY_RULES:
        cat_id = cat["id"]
        cat_name = cat["name"]
        if cat_id == "weifenlei":
            continue
        cat_items = classified.get(cat_id, [])[:CATEGORY_TARGET]
        catalog[cat_id] = {
            "id": cat_id,
            "name": cat_name,
            "count": len(cat_items),
            "items": cat_items,
        }

    return catalog


def main() -> int:
    for lang in ["zh-Hans", "zh-Hant", "en", "ja", "ko"]:
        catalog = generate_catalog_for_lang(lang)
        if not catalog:
            print(f"[{lang}] skipped (no data)")
            continue
        total = sum(c["count"] for c in catalog.values())
        cat_count = len(catalog)

        out = {
            "schema": "womh_comic_catalog_v1",
            "version": datetime.now(timezone.utc).strftime("%Y.%m.%d.%H%M"),
            "updatedAt": datetime.now(timezone.utc).isoformat(),
            "language": lang,
            "totalItems": total,
            "categoryCount": cat_count,
            "categories": catalog,
        }

        out_path = ROOT / "catalog" / f"catalog.{lang}.json"
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"[{lang}] {cat_count} categories, {total} items -> {out_path}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
