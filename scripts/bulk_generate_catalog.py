#!/usr/bin/env python3
"""批量目录生成脚本：从 rulebot_report 提取真实漫画数据，按分类组织目录。

数据源优先级：
  1. rulebot_report.{lang}.json 中的 detail_title（真实漫画名+域名）
  2. config/rule_keywords.json 中的关键词（补充填充，每关键词1条）
  3. config/aggregator_sites.json 中的域名（为关键词条目提供来源域名）

目录条目按标题去重，同一漫画合并多个来源域名到 sources 列表。
"""
from __future__ import annotations

import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Set

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

CHAPTER_RE = re.compile(r'(第\s*\d+\s*[话話章回]|Chapter\s*\d+|Ch\.?\s*\d+|EP\s*\d+|Episode\s*\d+)', re.I)
SUFFIX_NOISE_RE = re.compile(r'[_-]第\s*\d+\s*[话話章回].*$|_在线漫画阅读.*$|_漫画人.*$|_免费漫画.*$|_漫画.*$|_最新章节.*$', re.I)


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    return domain.replace("www.", "")


def make_comic_id(title: str) -> str:
    return hashlib.sha256(title.encode("utf-8", errors="ignore")).hexdigest()[:16]


def classify_title(title: str) -> str:
    title_lower = title.lower()
    for cat in CATEGORY_RULES:
        if cat["id"] == "weifenlei":
            continue
        for kw in cat.get("keywords", []):
            if kw.lower() in title_lower:
                return cat["id"]
    return ""


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


def clean_catalog_title(title: str) -> str:
    title = SUFFIX_NOISE_RE.sub('', title).strip()
    return title

TEMPLATE_GARBAGE_RE = re.compile(r'\{\{.*?\}\}|#.*?#|SITEMAP|PK\s*!+', re.I)

def is_valid_title(title: str) -> bool:
    if not title or len(title) < 2:
        return False
    if title == "#top_title#":
        return False
    if TEMPLATE_GARBAGE_RE.search(title):
        return False
    if not re.search(r'[\u4e00-\u9fff]', title) and not re.search(r'[a-zA-Z]{3,}', title):
        return False
    if CHAPTER_RE.search(title) and not re.search(r'[\u4e00-\u9fff]{2,}', title.split('第')[0].split('Chapter')[0]):
        return False
    return True


REPORT_BLOCKED = set(b.strip().lower() for b in _load_json("blocked_domains.json", {}).get("generate_rules", []))

def build_items_from_report(report: List[Dict[str, Any]], lang: str) -> Dict[str, Dict[str, Any]]:
    by_title: Dict[str, Dict[str, Any]] = {}
    for entry in report:
        detail_title = clean_catalog_title((entry.get("detail_title") or "").strip())
        domain = (entry.get("domain") or "").strip().lower().replace("www.", "")
        if not is_valid_title(detail_title) or not domain:
            continue
        if any(b in domain for b in REPORT_BLOCKED):
            continue
        key = detail_title.lower()
        if key not in by_title:
            by_title[key] = {
                "id": make_comic_id(detail_title),
                "title": detail_title,
                "sources": [],
                "category": classify_title(detail_title),
                "language": lang,
            }
        source = {"domain": domain}
        detail_url = entry.get("detail_url", "")
        if detail_url:
            source["detailUrl"] = detail_url
        cover_url = entry.get("cover_url", "")
        if cover_url:
            source["coverUrl"] = cover_url
        existing_domains = {s["domain"] for s in by_title[key]["sources"]}
        if domain not in existing_domains:
            by_title[key]["sources"].append(source)
    return by_title


def build_items_from_keywords(keywords: List[str], domains: List[str], lang: str, existing_titles: Set[str]) -> Dict[str, Dict[str, Any]]:
    by_title: Dict[str, Dict[str, Any]] = {}
    for kw in keywords:
        if not kw:
            continue
        key = kw.lower()
        if key in existing_titles:
            continue
        existing_titles.add(key)
        by_title[key] = {
            "id": make_comic_id(kw),
            "title": kw,
            "sources": [{"domain": d, "detailUrl": f"https://{d}/"} for d in domains[:5]],
            "category": classify_title(kw),
            "language": lang,
        }
    return by_title


def crawl_ranking_pages(domains: List[str], lang: str, existing_titles: Set[str]) -> Dict[str, Dict[str, Any]]:
    import re as _re
    import urllib.request
    import urllib.error
    by_title: Dict[str, Dict[str, Any]] = {}
    ranking_urls = {
        "baozimh.com": [
            "https://www.baozimh.com/classify",
            "https://www.baozimh.com/classify?type=lianhua",
            "https://www.baozimh.com/classify?type=xuanhuan",
            "https://www.baozimh.com/classify?type=rexue",
            "https://www.baozimh.com/classify?type=gaoxiao",
            "https://www.baozimh.com/classify?type=danmei",
            "https://www.baozimh.com/classify?type=xuanyi",
            "https://www.baozimh.com/classify?type=kongbu",
            "https://www.baozimh.com/classify?type=kehuan",
            "https://www.baozimh.com/classify?type=maoxian",
            "https://www.baozimh.com/classify?type=xiaoyuan",
            "https://www.baozimh.com/classify?type=mofa",
            "https://www.baozimh.com/classify?type=zhanzheng",
            "https://www.baozimh.com/classify?type=wuxia",
            "https://www.baozimh.com/classify?type=lishi",
            "https://www.baozimh.com/classify?type=jingji",
            "https://www.baozimh.com/update",
        ],
        "ac.qq.com": [f"https://ac.qq.com/ComicAll/page/{i}" for i in range(1, 51)] + ["https://ac.qq.com/Rank"],
        "manga.bilibili.com": ["https://manga.bilibili.com/ranking"],
        "m.manhuagui.com": [f"https://www.manhuagui.com/list/?page={i}" for i in range(1, 8)],
        "manhuatuan.com": [f"https://www.manhuatuan.com/list/page/{i}/" for i in range(1, 11)] + ["https://www.manhuatuan.com/"],
        "dongmanmanhua.cn": ["https://www.dongmanmanhua.cn/ranking"],
        "kalamanhua.com": ["https://www.kalamanhua.com/rank/"],
        "qimanwu.app": ["https://qimanwu.app/rank/"],
        "hetushu.com": ["https://www.hetushu.com/manhua/"],
        "guazimanhua.com": ["https://www.guazimanhua.com/rank/"],
        "duokanmh.com": ["https://www.duokanmh.com/rank/"],
        "mh250.com": ["https://www.mh250.com/rank/"],
        "manwang.net": ["https://www.manwang.net/rank/"],
        "wmanhua.com": ["https://www.wmanhua.com/rank/"],
        "yumanhua.com": ["https://www.yumanhua.com/rank/"],
        "shenqimanhua.net": ["https://www.shenqimanhua.net/rank/"],
        "sto66.com": ["https://www.sto66.com/rank/"],
        "ttkmh.com": ["https://www.ttkmh.com/rank/"],
        "kaixinman.com": ["https://www.kaixinman.com/rank/"],
        "manhuaplus.com": ["https://www.manhuaplus.com/rank/"],
        "baomh.com": ["https://www.baomh.com/rank/"],
        "mycomic.com": ["https://www.mycomic.com/rank/"],
        "pufei8.com": ["https://www.pufei8.com/rank/"],
        "dmzj.com": ["https://www.dmzj.com/rank/"],
        "manhuadb.com": ["https://www.manhuadb.com/rank/"],
        "manhuaren.com": ["https://www.manhuaren.com/rank/"],
        "mh1234.com": ["https://www.mh1234.com/rank/"],
        "omanhua.com": ["https://www.omanhua.com/rank/"],
    }
    link_re = _re.compile(r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,500}?)</a>', _re.I)
    title_attr_re = _re.compile(r'title=["\']([^"\']+)["\']', _re.I)
    comic_path_re = _re.compile(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon|ComicInfo)/', _re.I)
    blocked = set(b.strip().lower() for b in _load_json("blocked_domains.json", {}).get("generate_rules", []))
    ua = "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/120.0.6099.230 Mobile Safari/537.36"
    for domain, urls in ranking_urls.items():
        if domain not in domains:
            continue
        if any(b in domain for b in blocked):
            continue
        for url in urls:
            crawled_count = 0
            try:
                req = urllib.request.Request(url, headers={"User-Agent": ua, "Accept": "text/html"})
                with urllib.request.urlopen(req, timeout=15) as resp:
                    html = resp.read(1_000_000).decode("utf-8", errors="ignore")
            except Exception:
                print(f"  [{domain}] {url}: fetch failed")
                continue
            for m in link_re.finditer(html):
                href = m.group(1).strip()
                if not comic_path_re.search(href):
                    continue
                a_tag = m.group(0)
                title_match = title_attr_re.search(a_tag)
                if title_match:
                    raw_title = title_match.group(1).strip()
                else:
                    raw_title = _re.sub(r'<[^>]+>', '', m.group(2)).strip()
                title = clean_catalog_title(raw_title)
                if not is_valid_title(title):
                    continue
                if len(title) > 80:
                    continue
                key = title.lower()
                if key in existing_titles:
                    if key in by_title:
                        existing_sources = {s["domain"] for s in by_title[key]["sources"]}
                        if domain not in existing_sources:
                            by_title[key]["sources"].append({"domain": domain, "detailUrl": href if href.startswith("http") else f"https://{domain}{href}"})
                    continue
                existing_titles.add(key)
                crawled_count += 1
                if href.startswith("/"):
                    href = f"https://{domain}{href}"
                by_title[key] = {
                    "id": make_comic_id(title),
                    "title": title,
                    "sources": [{"domain": domain, "detailUrl": href}],
                    "category": classify_title(title),
                    "language": lang,
                }
            print(f"  [{domain}] {url}: +{crawled_count} new titles")
    return by_title


def generate_catalog_for_lang(lang: str) -> Dict[str, Any]:
    report = load_report(lang)
    domains = load_domains_from_aggregator(lang)
    keywords = RULE_KEYWORDS.get(lang, [])

    if not report and not domains and not keywords:
        print(f"[warn] No report, domains or keywords for {lang}, skipping", file=sys.stderr)
        return {}

    existing_titles: Set[str] = set()

    report_items = build_items_from_report(report, lang)
    existing_titles.update(report_items.keys())

    crawled_items = crawl_ranking_pages(domains, lang, existing_titles)
    existing_titles.update(crawled_items.keys())

    kw_items = build_items_from_keywords(keywords, domains, lang, existing_titles)

    all_items = {**report_items, **crawled_items, **kw_items}

    classified: Dict[str, List[Dict[str, Any]]] = {}
    unclassified: List[Dict[str, Any]] = []
    for item in all_items.values():
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

        all_items_list = []
        for cat_data in catalog.values():
            all_items_list.extend(cat_data.get("items", []))

        out = {
            "schema": "womh_comic_catalog_v1",
            "version": datetime.now(timezone.utc).strftime("%Y.%m.%d.%H%M"),
            "updatedAt": datetime.now(timezone.utc).isoformat(),
            "language": lang,
            "totalItems": total,
            "categoryCount": cat_count,
            "categories": catalog,
            "items": all_items_list,
        }

        out_path = ROOT / "catalog" / f"catalog.{lang}.json"
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"[{lang}] {cat_count} categories, {total} items -> {out_path}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
