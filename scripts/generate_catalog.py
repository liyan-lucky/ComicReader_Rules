#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
生成公开漫画目录索引。

边界：
- 只生成作品元数据、分类、标签、来源规则引用。
- 不下载、不保存漫画图片、章节正文、付费内容、账号数据。
- 默认从 generated/index.json 与 generated/rulebot_report.json 中提取公开来源信息。
- 每本漫画只固定到一个主分类，避免分类重复计数。
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional, Tuple
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parents[1]

# 分类顺序就是唯一主分类优先级。
# 例如同一本漫画同时命中“古风”和“穿越”，会固定归入优先级更靠前的分类。
CATEGORY_RULES: List[Dict[str, Any]] = [
    {"id": "xuanhuan", "name": "玄幻", "keywords": ["玄幻", "斗罗", "斗破", "完美世界", "武动乾坤", "吞噬星空", "soul land", "douluo"]},
    {"id": "xiuxian", "name": "修仙", "keywords": ["修仙", "凡人修仙", "仙侠", "immortal", "cultivation"]},
    {"id": "wuxia", "name": "武侠", "keywords": ["武侠", "江湖", "一人之下", "kung fu", "martial"]},
    {"id": "dushi", "name": "都市", "keywords": ["都市", "职场", "总裁", "city", "urban"]},
    {"id": "xiaoyuan", "name": "校园", "keywords": ["校园", "同桌", "校花", "学生", "school", "campus"]},
    {"id": "lianai", "name": "恋爱", "keywords": ["恋爱", "爱情", "甜宠", "告白", "love", "romance"]},
    {"id": "gongdou", "name": "宫斗", "keywords": ["宫斗", "后宫", "皇后", "妃", "宫廷", "palace", "harem"]},
    {"id": "gufeng", "name": "古风", "keywords": ["古风", "古代", "王爷", "王妃", "ancient"]},
    {"id": "chuanyue", "name": "穿越", "keywords": ["穿越", "异世界", "isekai", "transmigration"]},
    {"id": "chongsheng", "name": "重生", "keywords": ["重生", "rebirth", "regression"]},
    {"id": "rexue", "name": "热血", "keywords": ["热血", "战斗", "少年", "battle", "action", "shonen"]},
    {"id": "maoxian", "name": "冒险", "keywords": ["冒险", "探险", "adventure"]},
    {"id": "xuanyi", "name": "悬疑", "keywords": ["悬疑", "推理", "侦探", "mystery", "detective"]},
    {"id": "kongbu", "name": "恐怖", "keywords": ["恐怖", "惊悚", "灵异", "horror", "thriller"]},
    {"id": "kehuan", "name": "科幻", "keywords": ["科幻", "机甲", "末世", "sci-fi", "science fiction", "mecha"]},
    {"id": "gaoxiao", "name": "搞笑", "keywords": ["搞笑", "喜剧", "comedy", "funny"]},
    {"id": "richang", "name": "日常", "keywords": ["日常", "生活", "slice of life"]},
    {"id": "shaonian", "name": "少年", "keywords": ["少年", "shonen", "shounen"]},
    {"id": "shaonv", "name": "少女", "keywords": ["少女", "shojo", "shoujo"]},
    {"id": "danmei", "name": "耽美", "keywords": ["耽美", "bl", "boys love"]},
    {"id": "baihe", "name": "百合", "keywords": ["百合", "gl", "girls love", "yuri"]},
    {"id": "weifenlei", "name": "未分类", "keywords": []},
]

CATEGORY_IDS = {rule["id"] for rule in CATEGORY_RULES}

SEED_TITLES = [
    "斗罗大陆",
    "Soul Land",
    "Douluo Dalu",
    "完美世界",
    "吞噬星空",
    "凡人修仙传",
    "斗破苍穹",
    "武动乾坤",
    "一人之下",
]

TEXT_KEYS = ("title", "name", "comicName", "bookName", "displayName", "keyword")
URL_KEYS = ("detailUrl", "url", "homepage", "homeUrl", "sourceUrl", "searchUrl")
ID_KEYS = ("id", "ruleId", "sourceId")
SITE_KEYS = ("siteName", "name", "domain", "host")


def now_iso() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def load_json(path: Path, default: Any) -> Any:
    if not path.exists():
        return default
    try:
        return json.loads(path.read_text("utf-8"))
    except Exception:
        return default


def dump_json(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", "utf-8")


def safe_str(value: Any) -> str:
    if value is None:
        return ""
    return str(value).strip()


def first_text(record: Dict[str, Any], keys: Iterable[str]) -> str:
    for key in keys:
        value = safe_str(record.get(key))
        if value:
            return value
    return ""


def normalize_host(url_or_host: str) -> str:
    value = safe_str(url_or_host)
    if not value:
        return ""
    parsed = urlparse(value if "://" in value else "https://" + value)
    return (parsed.netloc or parsed.path).lower().replace("www.", "").strip("/")


def slugify(title: str) -> str:
    text = title.lower().strip()
    text = re.sub(r"[^0-9a-zA-Z\u4e00-\u9fff]+", "-", text).strip("-")
    if re.search(r"[\u4e00-\u9fff]", text):
        digest = hashlib.sha1(title.encode("utf-8")).hexdigest()[:10]
        return f"comic-{digest}"
    return text or hashlib.sha1(title.encode("utf-8")).hexdigest()[:12]


def guess_primary_category(title: str, tags: Optional[List[str]] = None) -> str:
    text = (title + " " + " ".join(tags or [])).lower()
    for rule in CATEGORY_RULES:
        if rule["id"] == "weifenlei":
            continue
        if any(keyword.lower() in text for keyword in rule["keywords"]):
            return rule["id"]
    return "weifenlei"


def normalize_single_category(title: str, item: Optional[Dict[str, Any]] = None) -> str:
    tags = item.get("tags", []) if isinstance(item, dict) else []
    guessed = guess_primary_category(title, tags)
    if guessed != "weifenlei":
        return guessed

    # 对历史目录做兼容：如果之前已有分类，但现在无法重新命中关键词，只保留第一个有效分类。
    previous_categories = item.get("categories", []) if isinstance(item, dict) else []
    if isinstance(previous_categories, str):
        previous_categories = [previous_categories]
    for cid in previous_categories:
        cid = safe_str(cid)
        if cid in CATEGORY_IDS:
            return cid
    return "weifenlei"


def guess_categories(title: str, tags: Optional[List[str]] = None) -> List[str]:
    return [guess_primary_category(title, tags)]


def walk_records(obj: Any) -> Iterable[Dict[str, Any]]:
    if isinstance(obj, dict):
        if any(k in obj for k in TEXT_KEYS + URL_KEYS + ID_KEYS):
            yield obj
        for value in obj.values():
            yield from walk_records(value)
    elif isinstance(obj, list):
        for item in obj:
            yield from walk_records(item)


def extract_from_index(index: Dict[str, Any]) -> List[Tuple[str, Dict[str, Any]]]:
    records: List[Tuple[str, Dict[str, Any]]] = []

    for record in walk_records(index):
        title = first_text(record, TEXT_KEYS)
        url = first_text(record, URL_KEYS)
        if not title and url:
            title = normalize_host(url)
        if not title:
            continue
        records.append((title, record))

    for query in index.get("queries", []) if isinstance(index, dict) else []:
        query_text = safe_str(query)
        # query 示例：site:kaixinman.com 斗罗大陆 漫画 在线阅读
        m = re.search(r"site:([^\s]+)\s+(.+)$", query_text)
        if not m:
            continue
        domain, rest = m.groups()
        title = re.sub(r"\s+(漫画|在线阅读|manga|chapter|read|online|manhua).*$", "", rest, flags=re.I).strip()
        if not title:
            continue
        records.append((title, {"domain": domain, "ruleId": normalize_host(domain), "siteName": normalize_host(domain)}))

    return records


def make_source(record: Dict[str, Any]) -> Dict[str, str]:
    url = first_text(record, URL_KEYS)
    host = normalize_host(url or first_text(record, SITE_KEYS))
    rule_id = first_text(record, ID_KEYS) or host or "unknown-source"
    site_name = first_text(record, SITE_KEYS) or host or rule_id
    source = {"ruleId": rule_id, "siteName": site_name}
    if url:
        source["detailUrl"] = url
    elif host:
        source["siteUrl"] = f"https://{host}"
    return source


def merge_catalog(records: List[Tuple[str, Dict[str, Any]]], previous: Dict[str, Any], timestamp: str) -> List[Dict[str, Any]]:
    by_title: Dict[str, Dict[str, Any]] = {}

    for item in previous.get("items", []) if isinstance(previous, dict) else []:
        title = safe_str(item.get("title"))
        if title:
            item["primaryCategory"] = normalize_single_category(title, item)
            item["categories"] = [item["primaryCategory"]]
            by_title[title.lower()] = item

    for title, record in records:
        key = title.lower()
        item = by_title.get(key) or {
            "id": slugify(title),
            "title": title,
            "aliases": [],
            "categories": [],
            "tags": [],
            "status": "unknown",
            "cover": "",
            "sources": [],
            "firstSeenAt": timestamp,
        }
        item["primaryCategory"] = normalize_single_category(title, item)
        item["categories"] = [item["primaryCategory"]]

        source = make_source(record)
        existing = {(s.get("ruleId"), s.get("detailUrl") or s.get("siteUrl")) for s in item.get("sources", [])}
        source_key = (source.get("ruleId"), source.get("detailUrl") or source.get("siteUrl"))
        if source_key not in existing:
            item.setdefault("sources", []).append(source)
        item["sourceCount"] = len(item.get("sources", []))
        item["lastSeenAt"] = timestamp
        by_title[key] = item

    return sorted(by_title.values(), key=lambda x: safe_str(x.get("title")))


def build_category_summary(items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    counts = defaultdict(int)
    for item in items:
        cid = safe_str(item.get("primaryCategory"))
        if not cid:
            categories = item.get("categories", []) or []
            cid = safe_str(categories[0]) if categories else "weifenlei"
        counts[cid if cid in CATEGORY_IDS else "weifenlei"] += 1
    return [
        {"id": rule["id"], "name": rule["name"], "count": counts.get(rule["id"], 0)}
        for rule in CATEGORY_RULES
    ]


def build_delta(previous: Dict[str, Any], items: List[Dict[str, Any]], timestamp: str) -> Dict[str, Any]:
    old_ids = {safe_str(item.get("id")) for item in previous.get("items", [])} if isinstance(previous, dict) else set()
    new_items = [item for item in items if item.get("id") not in old_ids]
    return {
        "schema": "comic_catalog_delta_v1",
        "updatedAt": timestamp,
        "added": new_items,
        "updated": [],
        "removed": [],
        "addedCount": len(new_items),
        "updatedCount": 0,
        "removedCount": 0,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="生成公开漫画目录 catalog.json")
    parser.add_argument("--index", default="generated/index.json")
    parser.add_argument("--report", default="generated/rulebot_report.json")
    parser.add_argument("--output", default="generated/catalog.json")
    parser.add_argument("--categories-output", default="generated/catalog_categories.json")
    parser.add_argument("--delta-output", default="generated/catalog_delta.json")
    parser.add_argument("--report-output", default="generated/catalog_report.json")
    args = parser.parse_args()

    timestamp = now_iso()
    index = load_json(ROOT / args.index, {})
    report = load_json(ROOT / args.report, {})
    previous = load_json(ROOT / args.output, {})

    records = extract_from_index(index) + extract_from_index(report)
    if not records:
        records = [(title, {"ruleId": "seed", "siteName": "seed"}) for title in SEED_TITLES]

    items = merge_catalog(records, previous, timestamp)
    categories = build_category_summary(items)

    catalog = {
        "schema": "comic_catalog_v1",
        "version": timestamp.replace("-", "").replace(":", "").replace("Z", "Z"),
        "updatedAt": timestamp,
        "compliance": {
            "publicOnly": True,
            "noBundledComicContent": True,
            "noImages": True,
            "noChapterText": True,
            "noAccountData": True,
            "noAccessControlBypass": True,
            "singlePrimaryCategory": True,
        },
        "categories": categories,
        "items": items,
        "itemCount": len(items),
        "sourceRecordCount": len(records),
    }

    categories_payload = {
        "schema": "comic_catalog_categories_v1",
        "updatedAt": timestamp,
        "categories": categories,
    }

    delta = build_delta(previous, items, timestamp)
    report_payload = {
        "schema": "comic_catalog_report_v1",
        "updatedAt": timestamp,
        "input": {"index": args.index, "report": args.report},
        "itemCount": len(items),
        "categoryCount": len(categories),
        "sourceRecordCount": len(records),
        "uncategorizedCount": sum(1 for item in items if item.get("primaryCategory") == "weifenlei"),
        "singlePrimaryCategory": True,
    }

    dump_json(ROOT / args.output, catalog)
    dump_json(ROOT / args.categories_output, categories_payload)
    dump_json(ROOT / args.delta_output, delta)
    dump_json(ROOT / args.report_output, report_payload)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
