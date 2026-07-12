#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""生成公开漫画目录索引。

设计原则：
- 主分类使用公开漫画站常见且数量更稳定的类型：动作、冒险、恋爱、喜剧、剧情、奇幻、校园、日常、武侠/格斗、科幻、恐怖、悬疑、历史/古风、都市、修仙。
- 玄幻、穿越、重生、异世界、系统、复仇等作为标签，不作为主分类。
- 分类搜索用于扩大公开作品发现量；分类归属优先按详情页 genre/tag/category/meta keywords，其次标题关键词，最后用分类搜索来源兜底补齐。
- 每个主分类兜底补齐目标为 200，避免一个宽泛分类无限吞数据。
- 只保存公开元数据、来源规则和链接；不保存图片、章节正文、账号数据或付费内容。
"""

from __future__ import annotations

import argparse
import hashlib
import html as html_lib
import json
import re
import time
import urllib.error
import urllib.request
from collections import Counter, defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional, Sequence, Tuple
from urllib.parse import quote_plus, urljoin, urlparse

ROOT = Path(__file__).resolve().parents[1]

def _load_config(name: str, default: Any = None) -> Any:
    p = ROOT / "config" / name
    if p.exists():
        try:
            return json.loads(p.read_text("utf-8"))
        except Exception:
            pass
    return default

_HEADERS_CFG = _load_config("headers.json", {})
USER_AGENT = _HEADERS_CFG.get("default_ua", "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36")
_ACCEPT_HTML = _HEADERS_CFG.get("accept_html", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")

CATEGORY_TARGET_COUNT = 200
MAX_CONSECUTIVE_NO_NEW = 10
MAX_CATEGORY_SEARCH_RESULTS_PER_KEYWORD = 200
MAX_CATEGORY_SEARCH_KEYWORDS_PER_CATEGORY = 30
DETAIL_METADATA_LIMIT = 3000
DETAIL_TIMEOUT_SECONDS = 15

_CATALOG_CFG = _load_config("catalog_config.json", {})
CATEGORY_RULES: List[Dict[str, Any]] = _CATALOG_CFG.get("categories", [])
CATEGORY_IDS = {rule["id"] for rule in CATEGORY_RULES}

TAG_RULES: List[Dict[str, Any]] = _CATALOG_CFG.get("tags", [])

_filters = _CATALOG_CFG.get("filters", {})
TEXT_KEYS = tuple(_filters.get("text_keys", ("title", "name", "comicName", "bookName", "displayName", "keyword")))
URL_KEYS = tuple(_filters.get("url_keys", ("detailUrl", "url", "homepage", "homeUrl", "sourceUrl", "searchUrl")))
ID_KEYS = tuple(_filters.get("id_keys", ("id", "ruleId", "sourceId")))
SITE_KEYS = tuple(_filters.get("site_keys", ("siteName", "name", "domain", "host")))

BAD_TITLE_WORDS = set(_filters.get("bad_title_words", []))
BAD_URL_PARTS = tuple(_filters.get("bad_url_parts", []))
IMAGE_SUFFIXES = tuple(_filters.get("image_suffixes", []))
SEED_TITLES = _filters.get("seed_titles", [])

CATEGORY_SEARCH_KEYWORDS: Dict[str, List[str]] = _CATALOG_CFG.get("search_keywords", {})


def now_iso() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def safe_str(value: Any) -> str:
    return "" if value is None else str(value).strip()


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


def normalize_host(url_or_host: str) -> str:
    value = safe_str(url_or_host)
    if not value:
        return ""
    parsed = urlparse(value if "://" in value else "https://" + value)
    return (parsed.netloc or parsed.path).lower().replace("www.", "").strip("/")


def first_text(record: Dict[str, Any], keys: Iterable[str]) -> str:
    for key in keys:
        value = safe_str(record.get(key))
        if value:
            return value
    return ""


def slugify(title: str) -> str:
    text = title.lower().strip()
    text = re.sub(r"[^0-9a-zA-Z\u4e00-\u9fff]+", "-", text).strip("-")
    if re.search(r"[\u4e00-\u9fff]", text):
        return f"comic-{hashlib.sha1(title.encode('utf-8')).hexdigest()[:10]}"
    return text or hashlib.sha1(title.encode("utf-8")).hexdigest()[:12]


def strip_html(raw: str) -> str:
    value = safe_str(raw)
    value = re.sub(r"<script[\s\S]*?</script>|<style[\s\S]*?</style>", " ", value, flags=re.I)
    alt_values = re.findall(r"<img[^>]+(?:alt|title)=[\"']([^\"']+)[\"'][^>]*>", value, flags=re.I)
    if alt_values:
        value = " ".join(alt_values) + " " + value
    value = re.sub(r"<[^>]+>", " ", value)
    value = html_lib.unescape(value)
    return re.sub(r"\s+", " ", value).strip()


def looks_like_opaque_slug(value: str) -> bool:
    title = safe_str(value)
    if not title or " " in title or re.search(r"[\u4e00-\u9fff]", title):
        return False
    compact = re.sub(r"[^A-Za-z0-9]", "", title)
    if len(compact) < 6 or len(compact) > 20:
        return False
    has_alpha = bool(re.search(r"[A-Za-z]", compact))
    has_digit = bool(re.search(r"\d", compact))
    has_upper = bool(re.search(r"[A-Z]", compact))
    has_lower = bool(re.search(r"[a-z]", compact))
    return has_alpha and has_digit and (has_upper and has_lower or len(compact) >= 8)


def is_chapter_title(title: str) -> bool:
    text = safe_str(title)
    return bool(
        re.search(r"\b(chapter|chapters|episode|ep)\s*[\d.]+", text, flags=re.I)
        or re.search(r"第\s*[\d一二三四五六七八九十百千万]+\s*[话話章节回]", text)
        or re.search(r",\s*chapter\s*[\d.]+", text, flags=re.I)
    )


def title_from_url(url: str) -> str:
    slug = urlparse(url).path.rstrip("/").split("/")[-1]
    slug = re.sub(r"\.(html?|php|aspx?)$", "", slug, flags=re.I)
    slug = re.sub(r"[-_]+", " ", slug).strip()
    return "" if looks_like_opaque_slug(slug) else html_lib.unescape(slug)


def clean_title(value: str) -> str:
    title = strip_html(value)
    title = re.sub(r"\s+(漫画|manhua|manga|read online|online|chapter|chapters|raw|raws)$", "", title, flags=re.I).strip()
    title = title.strip("-_|·•[]【】()（）")
    lowered = title.lower()
    if not title or len(title) < 2 or len(title) > 120:
        return ""
    if looks_like_opaque_slug(title) or lowered in BAD_TITLE_WORDS or is_chapter_title(title):
        return ""
    if re.fullmatch(r"https?://.+", lowered) or re.fullmatch(r"[a-z0-9.-]+\.[a-z]{2,}", lowered):
        return ""
    return title


def text_matches_keywords(text: str, keywords: Sequence[str]) -> bool:
    lowered = text.lower()
    return any(keyword.lower() in lowered for keyword in keywords)


def match_tags(text: str) -> List[str]:
    tags: List[str] = []
    for rule in TAG_RULES:
        if text_matches_keywords(text, rule["keywords"]):
            tags.append(rule["id"])
    return tags


def category_from_text(text: str) -> str:
    for rule in CATEGORY_RULES:
        if rule["id"] == "weifenlei":
            continue
        if text_matches_keywords(text, rule["keywords"]):
            return rule["id"]
    return "weifenlei"


def category_hints_from_item(item: Dict[str, Any]) -> List[str]:
    hints: List[str] = []
    for source in item.get("sources", []):
        hint = safe_str(source.get("categorySearchHint"))
        if hint in CATEGORY_IDS and hint != "weifenlei":
            hints.append(hint)
    return hints


def choose_hint_category(item: Dict[str, Any], category_counts: Dict[str, int]) -> str:
    hints = category_hints_from_item(item)
    if not hints:
        return "weifenlei"
    ranked = Counter(hints).most_common()
    for cid, _count in ranked:
        if category_counts.get(cid, 0) < CATEGORY_TARGET_COUNT:
            return cid
    return ranked[0][0]


def group_value(match: re.Match[str], groups: Iterable[int]) -> str:
    for group in groups:
        try:
            value = safe_str(match.group(int(group)))
        except Exception:
            value = ""
        if value:
            return value
    return ""


def safe_abs_url(base_url: str, href: str) -> str:
    href = html_lib.unescape(safe_str(href))
    if not href or href.startswith(("#", "javascript:", "mailto:", "tel:")):
        return ""
    return urljoin(base_url, href)


def is_catalog_candidate_url(url: str) -> bool:
    parsed = urlparse(url)
    if parsed.scheme not in {"http", "https"}:
        return False
    path = parsed.path.lower()
    return not any(part in path for part in BAD_URL_PARTS) and not path.endswith(IMAGE_SUFFIXES)


def fetch_public_text(url: str, timeout: int) -> Tuple[str, str]:
    request = urllib.request.Request(
        url,
        headers={"User-Agent": USER_AGENT, "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"},
    )
    try:
        with urllib.request.urlopen(request, timeout=timeout) as response:
            content_type = response.headers.get("content-type", "")
            if "text" not in content_type and "html" not in content_type and "xml" not in content_type:
                return "", f"跳过非文本响应：{content_type}"
            raw = response.read(900_000)
            charset_match = re.search(r"charset=([^;]+)", content_type, flags=re.I)
            charset = charset_match.group(1).strip() if charset_match else "utf-8"
            try:
                return raw.decode(charset, errors="ignore"), ""
            except LookupError:
                return raw.decode("utf-8", errors="ignore"), ""
    except (urllib.error.URLError, TimeoutError, OSError) as exc:
        return "", str(exc)


def compile_regex(pattern: str) -> Optional[re.Pattern[str]]:
    try:
        return re.compile(pattern, flags=re.I)
    except re.error:
        return None


def extract_links_from_html(
    html_text: str,
    base_url: str,
    item_regex: re.Pattern[str],
    title_groups: Iterable[int],
    url_groups: Iterable[int],
    base_record: Dict[str, Any],
    max_items: int,
) -> List[Tuple[str, Dict[str, Any]]]:
    records: List[Tuple[str, Dict[str, Any]]] = []
    for match in item_regex.finditer(html_text):
        detail_url = safe_abs_url(base_url, group_value(match, url_groups))
        if not detail_url or not is_catalog_candidate_url(detail_url):
            continue
        title = clean_title(group_value(match, title_groups)) or clean_title(title_from_url(detail_url))
        if not title:
            continue
        record = dict(base_record)
        record["detailUrl"] = detail_url
        records.append((title, record))
        if len(records) >= max_items:
            break
    return records


def extract_from_discovery_sources(discovery: Dict[str, Any]) -> Tuple[List[Tuple[str, Dict[str, Any]]], Dict[str, Any]]:
    records: List[Tuple[str, Dict[str, Any]]] = []
    defaults = discovery.get("defaults", {}) if isinstance(discovery, dict) else {}
    sources = discovery.get("sources", []) if isinstance(discovery, dict) else []
    stats = {"enabledSourceCount": 0, "entryUrlCount": 0, "pagesFetched": 0, "pagesFailed": 0, "recordsFound": 0, "errors": []}

    for source in sources:
        if not isinstance(source, dict) or not source.get("enabled", True):
            continue
        stats["enabledSourceCount"] += 1
        source_id = safe_str(source.get("id")) or normalize_host(source.get("homepage", ""))
        rule_id = safe_str(source.get("ruleId")) or source_id
        site_name = safe_str(source.get("name")) or source_id
        entries = source.get("entryUrls", []) or []
        stats["entryUrlCount"] += len(entries)

        item_regex = compile_regex(safe_str(source.get("itemRegex") or defaults.get("itemRegex")))
        next_regex = compile_regex(safe_str(source.get("nextPageRegex") or defaults.get("nextPageRegex")))
        if not item_regex:
            stats["errors"].append({"source": source_id, "error": "itemRegex 无效"})
            continue

        title_groups = source.get("titleGroups") or defaults.get("titleGroups") or [2]
        url_groups = source.get("urlGroups") or defaults.get("urlGroups") or [1]
        next_groups = source.get("nextPageUrlGroups") or defaults.get("nextPageUrlGroups") or [1]
        max_pages = int(source.get("maxPages") or defaults.get("maxPages") or 5)
        max_items = int(source.get("maxItemsPerSource") or defaults.get("maxItemsPerSource") or 500)
        timeout = int(source.get("requestTimeoutSeconds") or defaults.get("requestTimeoutSeconds") or 12)
        source_found = 0

        for entry in entries:
            if source_found >= max_items:
                break
            current_url = safe_str(entry.get("url") if isinstance(entry, dict) else entry)
            seen_pages = set()
            page_no = 0
            while current_url and page_no < max_pages and source_found < max_items:
                if current_url in seen_pages:
                    break
                seen_pages.add(current_url)
                page_no += 1
                html_text, error = fetch_public_text(current_url, timeout)
                if error:
                    stats["pagesFailed"] += 1
                    if len(stats["errors"]) < 20:
                        stats["errors"].append({"source": source_id, "url": current_url, "error": error[:180]})
                    break
                stats["pagesFetched"] += 1
                base_record = {
                    "ruleId": rule_id,
                    "siteName": site_name,
                    "domain": source_id,
                    "discoveryType": safe_str(entry.get("type") if isinstance(entry, dict) else "list"),
                }
                found = extract_links_from_html(html_text, current_url, item_regex, title_groups, url_groups, base_record, max_items - source_found)
                records.extend(found)
                source_found += len(found)

                next_url = ""
                if next_regex:
                    next_match = next_regex.search(html_text)
                    if next_match:
                        next_url = safe_abs_url(current_url, group_value(next_match, next_groups))
                current_url = next_url if next_url and next_url not in seen_pages else ""
                time.sleep(0.25)

    stats["recordsFound"] = len(records)
    return records, stats


def load_manual_search_rules() -> List[Dict[str, Any]]:
    manual = load_json(ROOT / "rules/manual/index.json", {})
    rules = manual.get("rules", []) if isinstance(manual, dict) else []
    return [r for r in rules if isinstance(r, dict) and safe_str(r.get("searchUrl")) and safe_str(r.get("searchItemRegex"))]


def extract_from_category_search_rules() -> Tuple[List[Tuple[str, Dict[str, Any]]], Dict[str, Any]]:
    records: List[Tuple[str, Dict[str, Any]]] = []
    stats = {
        "enabledRuleCount": 0,
        "categoryCount": 0,
        "searchPagesFetched": 0,
        "searchPagesFailed": 0,
        "recordsFound": 0,
        "errors": [],
        "targetPerCategory": CATEGORY_TARGET_COUNT,
        "searchDiscoveryWithFallbackClassification": True,
    }
    rules = load_manual_search_rules()
    stats["enabledRuleCount"] = len(rules)
    hint_counts: Dict[str, int] = defaultdict(int)

    for cid, keywords in CATEGORY_SEARCH_KEYWORDS.items():
        stats["categoryCount"] += 1
        consecutive_no_new = 0
        for keyword in keywords[:MAX_CATEGORY_SEARCH_KEYWORDS_PER_CATEGORY]:
            if hint_counts[cid] >= CATEGORY_TARGET_COUNT:
                break
            if consecutive_no_new >= MAX_CONSECUTIVE_NO_NEW:
                break
            keyword_had_new = False
            for rule in rules:
                if hint_counts[cid] >= CATEGORY_TARGET_COUNT:
                    break
                search_url = safe_str(rule.get("searchUrl")).replace("{keyword}", quote_plus(keyword)).replace("{query}", quote_plus(keyword))
                item_regex = compile_regex(safe_str(rule.get("searchItemRegex")))
                if not search_url or not item_regex:
                    continue
                html_text, error = fetch_public_text(search_url, int(rule.get("requestTimeoutSeconds") or 12))
                if error:
                    stats["searchPagesFailed"] += 1
                    if len(stats["errors"]) < 20:
                        stats["errors"].append({"ruleId": safe_str(rule.get("id")), "url": search_url, "error": error[:180]})
                    continue
                stats["searchPagesFetched"] += 1
                base_record = {
                    "ruleId": safe_str(rule.get("id")),
                    "siteName": safe_str(rule.get("name")) or safe_str(rule.get("id")),
                    "domain": normalize_host(rule.get("homepage", "")),
                    "discoveryType": "categorySearch",
                    "categorySearchHint": cid,
                    "categoryKeyword": keyword,
                }
                found = extract_links_from_html(
                    html_text,
                    search_url,
                    item_regex,
                    rule.get("searchTitleGroups") or [2],
                    rule.get("searchUrlGroups") or [1],
                    base_record,
                    min(MAX_CATEGORY_SEARCH_RESULTS_PER_KEYWORD, CATEGORY_TARGET_COUNT - hint_counts[cid]),
                )
                for title, record in found:
                    records.append((title, record))
                    hint_counts[cid] += 1
                    keyword_had_new = True
                time.sleep(0.25)
            if keyword_had_new:
                consecutive_no_new = 0
            else:
                consecutive_no_new += 1

    stats["recordsFound"] = len(records)
    stats["hintRecordCounts"] = dict(sorted(hint_counts.items()))
    return records, stats


def extract_detail_metadata(detail_url: str) -> Tuple[str, List[str], str]:
    html_text, error = fetch_public_text(detail_url, DETAIL_TIMEOUT_SECONDS)
    if error or not html_text:
        return "", [], error

    bits: List[str] = []
    for match in re.finditer(r"<a[^>]+href=[\"'][^\"']*(?:genre|tag|category|categories)[^\"']*[\"'][^>]*>([\s\S]{0,120}?)</a>", html_text, flags=re.I):
        text = clean_title(match.group(1))
        if text:
            bits.append(text)

    for match in re.finditer(r"<meta[^>]+(?:name|property)=[\"'](?:keywords|article:tag)[\"'][^>]+content=[\"']([^\"']+)[\"']", html_text, flags=re.I):
        for text in re.split(r"[,，/|;；]+", html_lib.unescape(match.group(1))):
            text = clean_title(text)
            if text:
                bits.append(text)

    page_text = strip_html(html_text)
    for match in re.finditer(r"(?:genres?|tags?|categories?|题材|类型|标签|分类)\s*[:：]\s*([\s\S]{0,260})", page_text, flags=re.I):
        for text in re.split(r"[,，/|;；\s]+", match.group(1)):
            text = clean_title(text)
            if text:
                bits.append(text)

    deduped: List[str] = []
    seen = set()
    for bit in bits:
        key = bit.lower()
        if key not in seen and key not in BAD_TITLE_WORDS:
            seen.add(key)
            deduped.append(bit)
    return " ".join(deduped[:30]), deduped[:30], ""


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
        title = clean_title(title)
        if title:
            records.append((title, record))

    for query in index.get("queries", []) if isinstance(index, dict) else []:
        query_text = safe_str(query)
        m = re.search(r"site:([^\s]+)\s+(.+)$", query_text)
        if not m:
            continue
        domain, rest = m.groups()
        title = re.sub(r"\s+(漫画|在线阅读|manga|chapter|read|online|manhua).*$", "", rest, flags=re.I).strip()
        title = clean_title(title)
        if title:
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
    hint = safe_str(record.get("categorySearchHint"))
    keyword = safe_str(record.get("categoryKeyword"))
    if hint:
        source["categorySearchHint"] = hint
    if keyword:
        source["categoryKeyword"] = keyword
    return source


def source_url(source: Dict[str, Any]) -> str:
    return safe_str(source.get("detailUrl") or source.get("siteUrl") or source.get("url"))


def build_item_links(sources: List[Dict[str, Any]]) -> List[Dict[str, str]]:
    links: List[Dict[str, str]] = []
    seen = set()
    for source in sources:
        url = source_url(source)
        if not url or url in seen:
            continue
        seen.add(url)
        links.append({
            "title": safe_str(source.get("siteName") or source.get("ruleId") or url),
            "url": url,
            "type": "detail" if source.get("detailUrl") else "site",
            "ruleId": safe_str(source.get("ruleId")),
        })
    return links


def merge_catalog(records: List[Tuple[str, Dict[str, Any]]], previous: Dict[str, Any], timestamp: str) -> Tuple[List[Dict[str, Any]], Dict[str, Any]]:
    previous_by_title: Dict[str, Dict[str, Any]] = {}
    by_title: Dict[str, Dict[str, Any]] = {}
    detail_stats = {"detailPagesFetched": 0, "detailPagesFailed": 0, "metadataHits": 0, "metadataLimit": DETAIL_METADATA_LIMIT}

    for item in previous.get("items", []) if isinstance(previous, dict) else []:
        title = clean_title(safe_str(item.get("title")))
        if title:
            previous_by_title[title.lower()] = item

    for title, record in records:
        title = clean_title(title)
        if not title:
            continue
        key = title.lower()
        item = by_title.get(key) or previous_by_title.get(key) or {
            "id": slugify(title),
            "title": title,
            "aliases": [],
            "categories": [],
            "tags": [],
            "status": "unknown",
            "cover": "",
            "sources": [],
            "links": [],
            "primaryUrl": "",
            "firstSeenAt": timestamp,
        }
        item["title"] = title
        item.setdefault("firstSeenAt", timestamp)

        source = make_source(record)
        existing = {(s.get("ruleId"), s.get("detailUrl") or s.get("siteUrl")) for s in item.get("sources", [])}
        source_key = (source.get("ruleId"), source.get("detailUrl") or source.get("siteUrl"))
        if source_key not in existing:
            item.setdefault("sources", []).append(source)

        item["links"] = build_item_links(item.get("sources", []))
        item["primaryUrl"] = item["links"][0]["url"] if item["links"] else ""
        item["sourceCount"] = len(item.get("sources", []))
        item["linkCount"] = len(item.get("links", []))
        item["lastSeenAt"] = timestamp
        by_title[key] = item

    for item in by_title.values():
        metadata_text = ""
        detail_tags: List[str] = []
        for link in item.get("links", []):
            if link.get("type") != "detail":
                continue
            if detail_stats["detailPagesFetched"] + detail_stats["detailPagesFailed"] >= DETAIL_METADATA_LIMIT:
                break
            meta_text, found_tags, error = extract_detail_metadata(link.get("url", ""))
            if error:
                detail_stats["detailPagesFailed"] += 1
                continue
            detail_stats["detailPagesFetched"] += 1
            if meta_text:
                metadata_text += " " + meta_text
                detail_tags.extend(found_tags)
                detail_stats["metadataHits"] += 1
                break
            time.sleep(0.15)

        existing_tags = item.get("tags", [])
        if not isinstance(existing_tags, list):
            existing_tags = []
        tag_ids = sorted(set(existing_tags) | set(match_tags(f"{item.get('title', '')} {metadata_text} {' '.join(detail_tags)}")))
        item["tags"] = tag_ids
        item["genreText"] = metadata_text.strip()

        natural_category = category_from_text(f"{metadata_text} {item.get('title', '')}")
        item["naturalCategory"] = natural_category
        item["primaryCategory"] = natural_category
        item["classificationSource"] = "detailOrTitle" if natural_category != "weifenlei" else "unclassified"
        item["categories"] = [item["primaryCategory"]]

    category_counts = Counter(item.get("primaryCategory") for item in by_title.values() if item.get("primaryCategory") != "weifenlei")
    fallback_assigned = 0
    for item in sorted(by_title.values(), key=lambda x: (-len(category_hints_from_item(x)), safe_str(x.get("title")))):
        if item.get("primaryCategory") != "weifenlei":
            continue
        hint_category = choose_hint_category(item, category_counts)
        if hint_category == "weifenlei":
            continue
        item["primaryCategory"] = hint_category
        item["categories"] = [hint_category]
        item["classificationSource"] = "categorySearchFallback"
        category_counts[hint_category] += 1
        fallback_assigned += 1

    detail_stats["categorySearchFallbackAssigned"] = fallback_assigned
    detail_stats["categoryCountsAfterFallback"] = dict(sorted(category_counts.items()))
    return sorted(by_title.values(), key=lambda x: safe_str(x.get("title"))), detail_stats


def build_category_summary(items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    counts = defaultdict(int)
    for item in items:
        cid = safe_str(item.get("primaryCategory"))
        counts[cid if cid in CATEGORY_IDS else "weifenlei"] += 1
    return [{"id": rule["id"], "name": rule["name"], "count": counts.get(rule["id"], 0)} for rule in CATEGORY_RULES]


def build_tag_summary(items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    counts = Counter(tag for item in items for tag in item.get("tags", []) if isinstance(item.get("tags"), list))
    return [{"id": rule["id"], "name": rule["name"], "count": counts.get(rule["id"], 0)} for rule in TAG_RULES]


def build_delta(previous: Dict[str, Any], items: List[Dict[str, Any]], timestamp: str) -> Dict[str, Any]:
    old_ids = {safe_str(item.get("id")) for item in previous.get("items", [])} if isinstance(previous, dict) else set()
    new_ids = {safe_str(item.get("id")) for item in items}
    new_items = [item for item in items if item.get("id") not in old_ids]
    removed_ids = sorted(i for i in old_ids if i and i not in new_ids)
    return {"schema": "comic_catalog_delta_v1", "updatedAt": timestamp, "added": new_items, "updated": [], "removed": removed_ids[:200], "addedCount": len(new_items), "updatedCount": 0, "removedCount": len(removed_ids)}


def main() -> int:
    parser = argparse.ArgumentParser(description="生成公开漫画目录 catalog.json")
    parser.add_argument("--index", default="generated/index.json")
    parser.add_argument("--report", default="generated/rulebot_report.json")
    parser.add_argument("--discovery-sources", default="generated/catalog_discovery_sources.json")
    parser.add_argument("--output", default="generated/catalog.json")
    parser.add_argument("--categories-output", default="generated/catalog_categories.json")
    parser.add_argument("--delta-output", default="generated/catalog_delta.json")
    parser.add_argument("--report-output", default="generated/catalog_report.json")
    parser.add_argument("--target", type=int, default=0, help="每个分类目标漫画数（0=使用内置默认值200）")
    parser.add_argument("--max-consecutive-no-new", type=int, default=10, help="连续多少轮无新发现后提前退出")
    parser.add_argument("--request-delay", type=float, default=0.5, help="每次请求间隔秒数")
    args = parser.parse_args()

    global CATEGORY_TARGET_COUNT, MAX_CONSECUTIVE_NO_NEW
    if args.target > 0:
        CATEGORY_TARGET_COUNT = args.target
    if args.max_consecutive_no_new > 0:
        MAX_CONSECUTIVE_NO_NEW = args.max_consecutive_no_new

    timestamp = now_iso()
    index = load_json(ROOT / args.index, {})
    report = load_json(ROOT / args.report, {})
    discovery_sources = load_json(ROOT / args.discovery_sources, {})
    previous = load_json(ROOT / args.output, {})

    discovery_records, discovery_stats = extract_from_discovery_sources(discovery_sources)
    category_search_records, category_search_stats = extract_from_category_search_rules()
    index_records = extract_from_index(index)
    report_records = extract_from_index(report)
    records = category_search_records + discovery_records + index_records + report_records
    if not records:
        records = [(title, {"ruleId": "seed", "siteName": "seed"}) for title in SEED_TITLES]

    items, detail_stats = merge_catalog(records, previous, timestamp)
    categories = build_category_summary(items)
    tags = build_tag_summary(items)
    uncategorized_samples = [safe_str(item.get("title")) for item in items if item.get("primaryCategory") == "weifenlei"][:30]
    delta = build_delta(previous, items, timestamp)

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
            "clickableLinks": True,
        },
        "classification": {
            "primaryCategoryModel": "common_public_comic_genres_v3_balanced_fallback",
            "broadStorySettingsMovedToTags": True,
            "categorySearchFallback": True,
            "categorySearchFallbackTarget": CATEGORY_TARGET_COUNT,
            "detailMetadataFirst": True,
        },
        "categories": categories,
        "tags": tags,
        "items": items,
        "itemCount": len(items),
        "sourceRecordCount": len(records),
        "discoveryRecordCount": len(discovery_records),
        "categorySearchRecordCount": len(category_search_records),
    }

    categories_payload = {"schema": "comic_catalog_categories_v1", "updatedAt": timestamp, "categories": categories, "tags": tags}
    report_payload = {
        "schema": "comic_catalog_report_v1",
        "updatedAt": timestamp,
        "input": {"index": args.index, "report": args.report, "discoverySources": args.discovery_sources, "manualRules": "rules/manual/index.json"},
        "itemCount": len(items),
        "categoryCount": len(categories),
        "tagCount": len(tags),
        "sourceRecordCount": len(records),
        "indexRecordCount": len(index_records),
        "reportRecordCount": len(report_records),
        "discoveryRecordCount": len(discovery_records),
        "categorySearchRecordCount": len(category_search_records),
        "uncategorizedCount": sum(1 for item in items if item.get("primaryCategory") == "weifenlei"),
        "uncategorizedSamples": uncategorized_samples,
        "singlePrimaryCategory": True,
        "clickableLinks": True,
        "classificationPolicy": {
            "primaryCategoryModel": "common_public_comic_genres_v3_balanced_fallback",
            "targetPerCategory": CATEGORY_TARGET_COUNT,
            "categoryTargetedSearchEnabled": True,
            "categorySearchFallbackEnabled": True,
            "categorySearchFallbackOnlyForUnclassified": True,
            "forcedCategoryFromCategorySearch": False,
            "detailMetadataFirst": True,
            "chapterTitleFilter": True,
            "broadStorySettingsMovedToTags": ["xuanhuan", "chuanyue", "chongsheng", "yishijie", "xitong", "fuchou", "shuangwen"],
            "primaryCategoryPriority": [rule["id"] for rule in CATEGORY_RULES],
            "tagIds": [rule["id"] for rule in TAG_RULES],
        },
        "discovery": discovery_stats,
        "categorySearch": category_search_stats,
        "detailMetadata": detail_stats,
        "tags": tags,
    }

    dump_json(ROOT / args.output, catalog)
    dump_json(ROOT / args.categories_output, categories_payload)
    dump_json(ROOT / args.delta_output, delta)
    dump_json(ROOT / args.report_output, report_payload)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
