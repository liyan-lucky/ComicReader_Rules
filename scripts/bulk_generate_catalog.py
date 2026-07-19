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
import os
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

try:
    CATEGORY_TARGET = int(os.environ.get("PIPELINE_TARGET_COUNT", "200"))
except ValueError:
    CATEGORY_TARGET = 200

CHAPTER_RE = re.compile(r'(第\s*\d+\s*[话話章回]|Chapter\s*\d+|Ch\.?\s*\d+|EP\s*\d+|Episode\s*\d+)', re.I)
SUFFIX_NOISE_RE = re.compile(r'[_-]第\s*\d+\s*[话話章回].*$|_在线漫画阅读.*$|_漫画人.*$|_免费漫画.*$|_漫画.*$|_最新章节.*$|更新到\d+.*$|更新至\d+.*$', re.I)

_DK_CFG = _load_json("domain_knowledge.json", {})
_GENRE_HINTS = set(_DK_CFG.get("genre_hints", []))
_TAG_WORDS = set(_DK_CFG.get("tag_words", []))
GENRE_KEYWORDS = _GENRE_HINTS | _TAG_WORDS | {"欧美", "韩国", "日本", "国产", "日漫", "韩漫", "国漫", "条漫", "webtoon", "manhwa", "manhua"}

_HEADERS_CFG = _load_json("headers.json", {})
_DEFAULT_UA = _HEADERS_CFG.get("default_ua", "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/120.0.6099.230 Mobile Safari/537.36")


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
    import html as _html
    title = _html.unescape(title)
    title = SUFFIX_NOISE_RE.sub('', title)
    title = re.sub(r'[\r\n]+', ' ', title)
    title = re.sub(r'\s{2,}', ' ', title)
    title = title.strip()
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
    if title in GENRE_KEYWORDS:
        return False
    if re.match(r'^[\u4e00-\u9fff]{1,2}$', title) and len(title) <= 2:
        return False
    return True


REPORT_BLOCKED = set(b.strip().lower() for b in _load_json("blocked_domains.json", {}).get("generate_rules", []))
EXCLUDED_DOMAINS = set(d.strip().lower() for d in _load_json("blocked_domains.json", {}).get("excluded_domains", []))

def build_items_from_report(report: List[Dict[str, Any]], lang: str) -> Dict[str, Dict[str, Any]]:
    by_title: Dict[str, Dict[str, Any]] = {}
    for entry in report:
        detail_title = clean_catalog_title((entry.get("detail_title") or "").strip())
        domain = (entry.get("domain") or "").strip().lower().replace("www.", "")
        if not is_valid_title(detail_title) or not domain:
            continue
        if any(b in domain for b in REPORT_BLOCKED):
            continue
        if domain in EXCLUDED_DOMAINS:
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
        sources = []
        for d in domains[:5]:
            source = {"domain": d}
            search_templates = _load_json("search_url_templates.json", {})
            tpl = search_templates.get(d, "")
            if tpl:
                source["searchUrl"] = tpl.replace("{keyword}", kw)
            sources.append(source)
        by_title[key] = {
            "id": make_comic_id(kw),
            "title": kw,
            "sources": sources,
            "category": classify_title(kw),
            "language": lang,
        }
    return by_title


RANKING_PAGES_CFG: Dict[str, Dict[str, Any]] = _load_json("ranking_pages.json", {})

_AUTO_DISCOVER_PATTERNS = [
    "/rank/", "/ranking/", "/rank.html", "/rank",
    "/list/", "/list/rank.html",
    "/classify", "/update",
    "/manhua/", "/comic/",
    "/ComicAll",
]

_AUTO_PAGINATION_TESTS = [
    ("?page={n}", 2),
    ("/page/{n}/", 2),
    ("/page-{n}.html", 2),
    ("_p{n}.html", 2),
]


def _expand_ranking_cfg(domain: str, cfg: Dict[str, Any]) -> List[str]:
    urls: List[str] = []
    for tpl in cfg.get("urls", []):
        type_params = cfg.get("type_params", [])
        pag = cfg.get("pagination", {})
        if type_params and "{type}" in tpl:
            for tp in type_params:
                urls.append(tpl.replace("{type}", tp))
        elif "{page}" in tpl:
            start = pag.get("start", 1)
            max_pages = pag.get("max_pages", 1)
            for p in range(start, start + max_pages):
                urls.append(tpl.replace("{page}", str(p)))
        else:
            urls.append(tpl)
    return urls


def _auto_discover_ranking(domain: str) -> List[str]:
    import time
    import urllib.request
    import urllib.error
    ua = _DEFAULT_UA
    found: List[str] = []
    start_time = time.monotonic()
    for pattern in _AUTO_DISCOVER_PATTERNS:
        if time.monotonic() - start_time > 30:
            break
        url = f"https://{domain}{pattern}"
        try:
            req = urllib.request.Request(url, headers={"User-Agent": ua, "Accept": "text/html"})
            with urllib.request.urlopen(req, timeout=8) as resp:
                html = resp.read(200_000).decode("utf-8", errors="ignore")
            comic_count = len(re.findall(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon)/', html, re.I))
            if comic_count >= 3:
                found.append(url)
                for pag_pat, start_n in _AUTO_PAGINATION_TESTS:
                    if time.monotonic() - start_time > 30:
                        break
                    test_url = f"https://{domain}{pattern.rstrip('/')}{pag_pat.format(n=start_n)}"
                    try:
                        req2 = urllib.request.Request(test_url, headers={"User-Agent": ua, "Accept": "text/html"})
                        with urllib.request.urlopen(req2, timeout=8) as resp2:
                            html2 = resp2.read(200_000).decode("utf-8", errors="ignore")
                        comic_count2 = len(re.findall(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon)/', html2, re.I))
                        if comic_count2 >= 3 and html2 != html:
                            for p in range(start_n, start_n + 50):
                                found.append(f"https://{domain}{pattern.rstrip('/')}{pag_pat.format(n=p)}")
                            break
                    except Exception:
                        break
        except Exception:
            continue
    return found


def crawl_ranking_pages(domains: List[str], lang: str, existing_titles: Set[str]) -> Dict[str, Dict[str, Any]]:
    import re as _re
    import urllib.request
    import urllib.error
    by_title: Dict[str, Dict[str, Any]] = {}
    ranking_cfg = RANKING_PAGES_CFG.get(lang, {})
    blocked = set(b.strip().lower() for b in _load_json("blocked_domains.json", {}).get("generate_rules", []))
    excluded = EXCLUDED_DOMAINS
    link_re = _re.compile(r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,500}?)</a>', _re.I)
    title_attr_re = _re.compile(r'title=["\']([^"\']+)["\']', _re.I)
    comic_path_re = _re.compile(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon|ComicInfo)/', _re.I)
    ua = _DEFAULT_UA
    for domain in domains:
        if any(b in domain for b in blocked):
            continue
        if domain in excluded:
            continue
        cfg = ranking_cfg.get(domain)
        if cfg:
            urls = _expand_ranking_cfg(domain, cfg)
        else:
            urls = _auto_discover_ranking(domain)
            if urls:
                print(f"  [{domain}] auto-discovered {len(urls)} ranking URLs")
        if not urls:
            continue
        for url in urls:
            crawled_count = 0
            try:
                req = urllib.request.Request(url, headers={"User-Agent": ua, "Accept": "text/html"})
                with urllib.request.urlopen(req, timeout=15) as resp:
                    html = resp.read(1_000_000).decode("utf-8", errors="ignore")
            except Exception:
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
            if crawled_count > 0:
                print(f"  [{domain}] {url}: +{crawled_count} new titles")
    return by_title


def generate_catalog_for_lang(lang: str, max_crawl_domains: int = 20) -> Dict[str, Any]:
    report = load_report(lang)
    domains = load_domains_from_aggregator(lang)
    keywords = RULE_KEYWORDS.get(lang, [])

    if not report and not domains and not keywords:
        print(f"[warn] No report, domains or keywords for {lang}, skipping", file=sys.stderr)
        return {}

    existing_titles: Set[str] = set()

    report_items = build_items_from_report(report, lang)
    existing_titles.update(report_items.keys())

    crawl_domains = domains[:max_crawl_domains]
    if len(domains) > max_crawl_domains:
        print(f"[{lang}] Limiting crawl to {max_crawl_domains}/{len(domains)} domains")
    crawled_items = crawl_ranking_pages(crawl_domains, lang, existing_titles)
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
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-crawl-domains", type=int, default=20, help="最多爬取多少个域名的排行榜")
    args = ap.parse_args()

    env_lang = os.environ.get("PIPELINE_LANGUAGE", "").strip()
    langs = [env_lang] if env_lang else ["zh-Hans", "zh-Hant", "en", "ja", "ko"]
    for lang in langs:
        catalog = generate_catalog_for_lang(lang, max_crawl_domains=args.max_crawl_domains)
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
        out_path.parent.mkdir(parents=True, exist_ok=True)
        tmp = out_path.with_suffix(".tmp")
        tmp.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8")
        tmp.replace(out_path)
        print(f"[{lang}] {cat_count} categories, {total} items -> {out_path}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
