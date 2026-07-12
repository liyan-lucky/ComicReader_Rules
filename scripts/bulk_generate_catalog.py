#!/usr/bin/env python3
"""批量目录生成脚本：基于流程生成的配置和域名生成初始catalog数据。"""
from __future__ import annotations

import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List

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


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    return domain.replace("www.", "")


def load_domains_from_aggregator(lang: str) -> List[str]:
    sites = AGGREGATOR_SITES.get(lang, [])
    domains = []
    for url in sites:
        d = normalize_domain(url)
        if d and d not in domains:
            domains.append(d)
    return domains


def make_comic_id(title: str, domain: str) -> str:
    raw = f"{title}@{domain}"
    return hashlib.sha256(raw.encode("utf-8", errors="ignore")).hexdigest()[:16]


def generate_catalog_for_lang(lang: str) -> Dict[str, Any]:
    domains = load_domains_from_aggregator(lang)
    titles = RULE_KEYWORDS.get(lang, RULE_KEYWORDS.get("en", []))
    if not titles:
        print(f"[warn] No keywords for {lang}, using empty titles", file=sys.stderr)
    if not domains:
        print(f"[warn] No domains for {lang} in aggregator_sites.json", file=sys.stderr)
        domains = ["example.com"]

    catalog = {}

    for cat in CATEGORY_RULES:
        cat_id = cat["id"]
        cat_name = cat["name"]
        if cat_id == "weifenlei":
            continue
        items = []
        title_idx = 0
        domain_idx = 0
        target = 200

        while len(items) < target and title_idx < len(titles) * 3:
            title = titles[title_idx % len(titles)]
            domain = domains[domain_idx % len(domains)]
            comic_id = make_comic_id(title, domain)

            existing_ids = {item["id"] for item in items}
            if comic_id not in existing_ids:
                items.append({
                    "id": comic_id,
                    "title": title,
                    "sourceDomain": domain,
                    "detailUrl": f"https://{domain}/comic/{comic_id[:8]}",
                    "coverUrl": f"https://{domain}/covers/{comic_id[:8]}.jpg",
                    "category": cat_id,
                    "language": lang,
                })

            title_idx += 1
            if len(titles) > 0 and title_idx % len(titles) == 0:
                domain_idx += 1

        catalog[cat_id] = {
            "id": cat_id,
            "name": cat_name,
            "count": len(items),
            "items": items,
        }

    return catalog


def main() -> int:
    for lang in ["zh-Hans", "zh-Hant", "en", "ja", "ko"]:
        catalog = generate_catalog_for_lang(lang)
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
