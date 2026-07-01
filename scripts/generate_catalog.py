#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""生成公开漫画目录索引。

只生成公开作品元数据、分类、来源规则和可点击链接；不保存漫画图片、章节正文、账号数据或付费内容。
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
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional, Tuple
from urllib.parse import quote_plus, urljoin, urlparse

ROOT = Path(__file__).resolve().parents[1]
USER_AGENT = "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderCatalog/5.5"

# 这些是大类/剧情设定，标题里出现时不自动归类，避免误分。
BROAD_AUTO_DISABLED_CATEGORY_IDS = {"xuanhuan", "chuanyue", "chongsheng"}
CATEGORY_TARGET_COUNT = 200
MAX_CATEGORY_SEARCH_RESULTS_PER_KEYWORD = 80
MAX_CATEGORY_SEARCH_KEYWORDS_PER_CATEGORY = 10

CATEGORY_RULES: List[Dict[str, Any]] = [
    {"id": "xiuxian", "name": "修仙", "keywords": ["修仙", "凡人修仙", "仙侠", "修真", "仙尊", "仙帝", "仙王", "仙界", "炼气", "筑基", "金丹", "元婴", "飞升", "immortal", "cultivation", "cultivator", "cultivate", "martial peak", "dao", "taoist"]},
    {"id": "wuxia", "name": "武侠", "keywords": ["武侠", "江湖", "侠", "一人之下", "剑", "刀", "拳", "kung fu", "martial arts", "sword", "blade", "fist"]},
    {"id": "dushi", "name": "都市", "keywords": ["都市", "职场", "总裁", "老板", "经理", "赘婿", "神医", "保镖", "city", "urban", "manager", "office", "company", "ceo", "doctor", "bodyguard", "tycoon"]},
    {"id": "xiaoyuan", "name": "校园", "keywords": ["校园", "同桌", "校花", "学生", "老师", "班长", "school", "campus", "student", "teacher", "classmate"]},
    {"id": "lianai", "name": "恋爱", "keywords": ["恋爱", "爱情", "甜宠", "告白", "婚约", "新娘", "妻子", "老婆", "老公", "关系", "love", "romance", "romantic", "bride", "wife", "husband", "marriage", "married", "fiance", "fiancée", "relationship"]},
    {"id": "gongdou", "name": "宫斗", "keywords": ["宫斗", "后宫", "皇后", "妃", "嫔", "宫廷", "palace", "harem", "empress", "concubine"]},
    {"id": "gufeng", "name": "古风", "keywords": ["古风", "古代", "王爷", "王妃", "侯爷", "公主", "皇帝", "太子", "ancient", "prince", "princess", "duke", "emperor", "royal"]},
    {"id": "chuanyue", "name": "穿越", "keywords": []},
    {"id": "chongsheng", "name": "重生", "keywords": []},
    {"id": "rexue", "name": "热血", "keywords": ["热血", "战斗", "格斗", "竞技", "杀手", "斗罗", "斗破", "武动乾坤", "soul land", "douluo", "battle through", "martial universe", "battle", "fight", "fighting", "action", "warrior", "hero", "hunter", "ranker", "vigilante", "killer"]},
    {"id": "maoxian", "name": "冒险", "keywords": ["冒险", "探险", "秘境", "地下城", "游戏", "完美世界", "perfect world", "isekai", "another world", "adventure", "dungeon", "quest", "journey", "vrmmo", "playthrough"]},
    {"id": "xuanyi", "name": "悬疑", "keywords": ["悬疑", "推理", "侦探", "谜案", "mystery", "detective", "case", "crime"]},
    {"id": "kongbu", "name": "恐怖", "keywords": ["恐怖", "惊悚", "灵异", "鬼", "诡异", "horror", "thriller", "ghost", "monster"]},
    {"id": "kehuan", "name": "科幻", "keywords": ["科幻", "机甲", "末世", "星际", "机器人", "吞噬星空", "swallowed star", "time loop", "sci-fi", "science fiction", "mecha", "robot", "apocalypse", "space"]},
    {"id": "gaoxiao", "name": "搞笑", "keywords": ["搞笑", "喜剧", "沙雕", "comedy", "funny", "gag"]},
    {"id": "richang", "name": "日常", "keywords": ["日常", "生活", "休闲", "猫", "slice of life", "daily life", "leisurely", "cat"]},
    {"id": "shaonian", "name": "少年", "keywords": ["少年", "shonen", "shounen"]},
    {"id": "shaonv", "name": "少女", "keywords": ["少女", "小姐姐", "shojo", "shoujo"]},
    {"id": "danmei", "name": "耽美", "keywords": ["耽美", "bl", "boys love", "boy love"]},
    {"id": "baihe", "name": "百合", "keywords": ["百合", "gl", "girls love", "girl love", "yuri"]},
    {"id": "xuanhuan", "name": "玄幻", "keywords": []},
    {"id": "weifenlei", "name": "未分类", "keywords": []},
]

CATEGORY_IDS = {rule["id"] for rule in CATEGORY_RULES}
TEXT_KEYS = ("title", "name", "comicName", "bookName", "displayName", "keyword")
URL_KEYS = ("detailUrl", "url", "homepage", "homeUrl", "sourceUrl", "searchUrl")
ID_KEYS = ("id", "ruleId", "sourceId")
SITE_KEYS = ("siteName", "name", "domain", "host")
BAD_TITLE_WORDS = {
    "home", "首页", "目录", "分类", "排行", "排行榜", "最新", "更新", "登录", "注册", "search", "genre", "genres",
    "privacy", "contact", "about", "about us", "dmca", "terms", "chapter", "章节", "下一页", "上一页", "more",
    "a-z", "application", "applications", "advanced", "adult", "raw", "bookmark", "bookmarks", "history", "browse", "chat", "comic", "completed", "cookie policy",
}
BAD_URL_PARTS = ("/chapter", "/chapters", "/episode", "/episodes", "/tag/", "/author/", "/login", "/register")
IMAGE_SUFFIXES = (".jpg", ".jpeg", ".png", ".webp", ".gif", ".avif", ".svg")
SEED_TITLES = ["斗罗大陆", "Soul Land", "Douluo Dalu", "完美世界", "吞噬星空", "凡人修仙传", "斗破苍穹", "武动乾坤", "一人之下"]

CATEGORY_SEARCH_KEYWORDS: Dict[str, List[str]] = {
    "xiuxian": ["修仙", "修真", "仙侠", "仙尊", "仙帝", "cultivation", "cultivator", "immortal", "martial peak", "dao"],
    "wuxia": ["武侠", "江湖", "剑", "刀", "侠", "kung fu", "martial arts", "sword", "blade"],
    "dushi": ["都市", "总裁", "职场", "神医", "保镖", "赘婿", "urban", "ceo", "manager", "doctor"],
    "xiaoyuan": ["校园", "学生", "老师", "校花", "同桌", "school", "campus", "student", "teacher"],
    "lianai": ["恋爱", "爱情", "甜宠", "婚约", "新娘", "love", "romance", "romantic", "marriage", "wife"],
    "gongdou": ["宫斗", "后宫", "皇后", "王妃", "palace", "harem", "empress", "concubine"],
    "gufeng": ["古风", "古代", "王爷", "公主", "皇帝", "ancient", "prince", "princess", "royal"],
    "rexue": ["热血", "战斗", "格斗", "动作", "battle", "fight", "action", "hero", "hunter", "ranker"],
    "maoxian": ["冒险", "探险", "地下城", "游戏", "adventure", "dungeon", "quest", "journey", "vrmmo"],
    "xuanyi": ["悬疑", "推理", "侦探", "mystery", "detective", "crime", "case"],
    "kongbu": ["恐怖", "惊悚", "灵异", "鬼", "horror", "thriller", "ghost", "monster"],
    "kehuan": ["科幻", "机甲", "末世", "星际", "robot", "sci-fi", "science fiction", "mecha", "apocalypse", "space"],
    "gaoxiao": ["搞笑", "喜剧", "沙雕", "comedy", "funny", "gag"],
    "richang": ["日常", "生活", "休闲", "slice of life", "daily life", "leisurely"],
    "shaonian": ["少年", "shonen", "shounen"],
    "shaonv": ["少女", "shojo", "shoujo"],
    "danmei": ["耽美", "bl", "boys love", "boy love"],
    "baihe": ["百合", "gl", "girls love", "yuri"],
}


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


def guess_primary_category(title: str, tags: Optional[List[str]] = None, forced: str = "") -> str:
    forced = safe_str(forced)
    if forced in CATEGORY_IDS and forced not in BROAD_AUTO_DISABLED_CATEGORY_IDS and forced != "weifenlei":
        return forced
    text = (title + " " + " ".join(tags or [])).lower()
    for rule in CATEGORY_RULES:
        if rule["id"] in BROAD_AUTO_DISABLED_CATEGORY_IDS or rule["id"] == "weifenlei":
            continue
        if any(keyword.lower() in text for keyword in rule["keywords"]):
            return rule["id"]
    return "weifenlei"


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
    if looks_like_opaque_slug(title) or lowered in BAD_TITLE_WORDS:
        return ""
    if re.fullmatch(r"https?://.+", lowered) or re.fullmatch(r"[a-z0-9.-]+\.[a-z]{2,}", lowered):
        return ""
    return title


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
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT, "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"})
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


def extract_links_from_html(html_text: str, base_url: str, item_regex: re.Pattern[str], title_groups: Iterable[int], url_groups: Iterable[int], base_record: Dict[str, Any], max_items: int) -> List[Tuple[str, Dict[str, Any]]]:
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
            forced_category = safe_str(entry.get("category") if isinstance(entry, dict) else "")
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
                base_record = {"ruleId": rule_id, "siteName": site_name, "domain": source_id, "discoveryType": safe_str(entry.get("type") if isinstance(entry, dict) else "list"), "forcedCategory": forced_category}
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
    stats = {"enabledRuleCount": 0, "categoryCount": 0, "searchPagesFetched": 0, "searchPagesFailed": 0, "recordsFound": 0, "errors": [], "targetPerCategory": CATEGORY_TARGET_COUNT}
    rules = load_manual_search_rules()
    stats["enabledRuleCount"] = len(rules)
    category_counts: Dict[str, int] = defaultdict(int)
    for cid, keywords in CATEGORY_SEARCH_KEYWORDS.items():
        stats["categoryCount"] += 1
        if cid in BROAD_AUTO_DISABLED_CATEGORY_IDS:
            continue
        for keyword in keywords[:MAX_CATEGORY_SEARCH_KEYWORDS_PER_CATEGORY]:
            if category_counts[cid] >= CATEGORY_TARGET_COUNT:
                break
            for rule in rules:
                if category_counts[cid] >= CATEGORY_TARGET_COUNT:
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
                base_record = {"ruleId": safe_str(rule.get("id")), "siteName": safe_str(rule.get("name")) or safe_str(rule.get("id")), "domain": normalize_host(rule.get("homepage", "")), "forcedCategory": cid, "discoveryType": "categorySearch", "categoryKeyword": keyword}
                found = extract_links_from_html(html_text, search_url, item_regex, rule.get("searchTitleGroups") or [2], rule.get("searchUrlGroups") or [1], base_record, min(MAX_CATEGORY_SEARCH_RESULTS_PER_KEYWORD, CATEGORY_TARGET_COUNT - category_counts[cid]))
                for title, record in found:
                    records.append((title, record))
                    category_counts[cid] += 1
                time.sleep(0.25)
    stats["recordsFound"] = len(records)
    stats["categoryRecordCounts"] = dict(sorted(category_counts.items()))
    return records, stats


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
        links.append({"title": safe_str(source.get("siteName") or source.get("ruleId") or url), "url": url, "type": "detail" if source.get("detailUrl") else "site", "ruleId": safe_str(source.get("ruleId"))})
    return links


def merge_catalog(records: List[Tuple[str, Dict[str, Any]]], previous: Dict[str, Any], timestamp: str) -> List[Dict[str, Any]]:
    previous_by_title: Dict[str, Dict[str, Any]] = {}
    by_title: Dict[str, Dict[str, Any]] = {}
    for item in previous.get("items", []) if isinstance(previous, dict) else []:
        title = clean_title(safe_str(item.get("title")))
        if title:
            previous_by_title[title.lower()] = item
    for title, record in records:
        title = clean_title(title)
        if not title:
            continue
        key = title.lower()
        item = by_title.get(key) or previous_by_title.get(key) or {"id": slugify(title), "title": title, "aliases": [], "categories": [], "tags": [], "status": "unknown", "cover": "", "sources": [], "links": [], "primaryUrl": "", "firstSeenAt": timestamp}
        item["title"] = title
        item.setdefault("firstSeenAt", timestamp)
        item["primaryCategory"] = guess_primary_category(title, item.get("tags", []), safe_str(record.get("forcedCategory")))
        item["categories"] = [item["primaryCategory"]]
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
    return sorted(by_title.values(), key=lambda x: safe_str(x.get("title")))


def build_category_summary(items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    counts = defaultdict(int)
    for item in items:
        cid = safe_str(item.get("primaryCategory"))
        counts[cid if cid in CATEGORY_IDS else "weifenlei"] += 1
    return [{"id": rule["id"], "name": rule["name"], "count": counts.get(rule["id"], 0)} for rule in CATEGORY_RULES]


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
    args = parser.parse_args()
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
    items = merge_catalog(records, previous, timestamp)
    categories = build_category_summary(items)
    uncategorized_samples = [safe_str(item.get("title")) for item in items if item.get("primaryCategory") == "weifenlei"][:30]
    delta = build_delta(previous, items, timestamp)
    catalog = {"schema": "comic_catalog_v1", "version": timestamp.replace("-", "").replace(":", "").replace("Z", "Z"), "updatedAt": timestamp, "compliance": {"publicOnly": True, "noBundledComicContent": True, "noImages": True, "noChapterText": True, "noAccountData": True, "noAccessControlBypass": True, "singlePrimaryCategory": True, "clickableLinks": True}, "categories": categories, "items": items, "itemCount": len(items), "sourceRecordCount": len(records), "discoveryRecordCount": len(discovery_records), "categorySearchRecordCount": len(category_search_records)}
    categories_payload = {"schema": "comic_catalog_categories_v1", "updatedAt": timestamp, "categories": categories}
    report_payload = {"schema": "comic_catalog_report_v1", "updatedAt": timestamp, "input": {"index": args.index, "report": args.report, "discoverySources": args.discovery_sources, "manualRules": "rules/manual/index.json"}, "itemCount": len(items), "categoryCount": len(categories), "sourceRecordCount": len(records), "indexRecordCount": len(index_records), "reportRecordCount": len(report_records), "discoveryRecordCount": len(discovery_records), "categorySearchRecordCount": len(category_search_records), "uncategorizedCount": sum(1 for item in items if item.get("primaryCategory") == "weifenlei"), "uncategorizedSamples": uncategorized_samples, "singlePrimaryCategory": True, "clickableLinks": True, "classificationPolicy": {"targetPerCategory": CATEGORY_TARGET_COUNT, "categoryTargetedSearchEnabled": True, "broadAutoMatchDisabledIds": sorted(BROAD_AUTO_DISABLED_CATEGORY_IDS), "xuanhuanKeywords": [], "chuanyueKeywords": [], "chongshengKeywords": [], "forcedCategoryFromCategorySearch": True, "rebuildFromCurrentValidDiscoveries": True, "reusePreviousMetadataOnlyForSeenTitles": True, "priority": [rule["id"] for rule in CATEGORY_RULES]}, "discovery": discovery_stats, "categorySearch": category_search_stats}
    dump_json(ROOT / args.output, catalog)
    dump_json(ROOT / args.categories_output, categories_payload)
    dump_json(ROOT / args.delta_output, delta)
    dump_json(ROOT / args.report_output, report_payload)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
