#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""目录目标增强器。

在 generate_catalog.py 生成基础公开目录后执行：
- 按主分类目标做超采样搜索；
- 对过宽分类做再平衡；
- 给低数量分类补公开元数据条目；
- 输出 catalog_target_gaps.json，明确哪些分类已达标、哪些仍缺口。

边界：只保存公开标题、详情页链接、来源规则和分类/标签；不抓图片、不抓章节正文、不绕过访问控制。
"""

from __future__ import annotations

import argparse
import hashlib
import html as html_lib
import json
import os
import re
import time
import urllib.error
import urllib.request
from collections import Counter, defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, Iterable, List, Sequence, Tuple
from urllib.parse import quote_plus, urljoin, urlparse

ROOT = Path(__file__).resolve().parents[1]
USER_AGENT = "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderCatalogTargetBoost/1.0"
TARGET_COUNT = int(os.environ.get("CATALOG_TARGET_COUNT", "220"))
MIN_VISIBLE_TARGET = int(os.environ.get("CATALOG_MIN_TARGET_COUNT", "200"))
MAX_RESULTS_PER_KEYWORD = int(os.environ.get("CATALOG_BOOST_RESULTS_PER_KEYWORD", "200"))
MAX_KEYWORDS_PER_CATEGORY = int(os.environ.get("CATALOG_BOOST_KEYWORDS_PER_CATEGORY", "50"))
REQUEST_TIMEOUT = int(os.environ.get("CATALOG_BOOST_TIMEOUT", "15"))
REQUEST_SLEEP_SECONDS = float(os.environ.get("CATALOG_BOOST_SLEEP", "0.15"))

CATEGORY_RULES: List[Dict[str, Any]] = [
    {"id": "dongzuo", "name": "动作"},
    {"id": "maoxian", "name": "冒险"},
    {"id": "lianai", "name": "恋爱"},
    {"id": "xiju", "name": "喜剧"},
    {"id": "juqing", "name": "剧情"},
    {"id": "qihuan", "name": "奇幻"},
    {"id": "xiaoyuan", "name": "校园"},
    {"id": "richang", "name": "日常"},
    {"id": "wuxia_gedou", "name": "武侠/格斗"},
    {"id": "kehuan", "name": "科幻"},
    {"id": "kongbu", "name": "恐怖"},
    {"id": "xuanyi", "name": "悬疑"},
    {"id": "lishi_gufeng", "name": "历史/古风"},
    {"id": "dushi", "name": "都市"},
    {"id": "xiuxian", "name": "修仙"},
    {"id": "weifenlei", "name": "未分类"},
]
CATEGORY_IDS = {item["id"] for item in CATEGORY_RULES}
TARGET_CATEGORY_IDS = [item["id"] for item in CATEGORY_RULES if item["id"] != "weifenlei"]
BROAD_OVERFLOW_CATEGORIES = {"dongzuo", "qihuan", "juqing", "wuxia_gedou"}

TAG_RULES: List[Dict[str, Any]] = [
    {"id": "xuanhuan", "name": "玄幻", "keywords": ["玄幻", "xuanhuan", "eastern fantasy"]},
    {"id": "chuanyue", "name": "穿越", "keywords": ["穿越", "transmigration", "transmigrated", "time travel"]},
    {"id": "chongsheng", "name": "重生", "keywords": ["重生", "rebirth", "reborn", "regression", "regressor", "returner", "second life", "reincarnation", "reincarnated"]},
    {"id": "yishijie", "name": "异世界", "keywords": ["异世界", "isekai", "another world", "other world"]},
    {"id": "xitong", "name": "系统", "keywords": ["系统", "system", "leveling", "level up", "game system"]},
    {"id": "fuchou", "name": "复仇", "keywords": ["复仇", "revenge", "vengeance", "avenger"]},
    {"id": "shuangwen", "name": "爽文", "keywords": ["爽文", "overpowered", "op mc", "cheat skill", "strongest", "invincible"]},
    {"id": "hougong", "name": "后宫", "keywords": ["后宫", "harem"]},
    {"id": "danmei", "name": "耽美", "keywords": ["耽美", "bl", "boys love", "boy love", "yaoi"]},
    {"id": "baihe", "name": "百合", "keywords": ["百合", "gl", "girls love", "girl love", "yuri"]},
    {"id": "shaonian", "name": "少年", "keywords": ["少年", "shonen", "shounen"]},
    {"id": "shaonv", "name": "少女", "keywords": ["少女", "shojo", "shoujo"]},
]

CATEGORY_SEARCH_KEYWORDS: Dict[str, List[str]] = {
    "dongzuo": ["动作", "战斗", "热血", "格斗", "battle", "fight", "action", "hero", "hunter", "ranker", "warrior", "killer", "assassin", "martial", "strongest", "vigilante", "revenge battle", "superhero", "demon king", "sword battle", "monster fight"],
    "maoxian": ["冒险", "探险", "地下城", "任务", "旅程", "adventure", "dungeon", "quest", "journey", "exploration", "expedition", "fantasy adventure", "tower", "raid", "party", "guild", "labyrinth", "treasure", "survival", "monster", "isekai adventure", "game world"],
    "lianai": ["恋爱", "爱情", "甜宠", "婚约", "新娘", "love", "romance", "romantic", "marriage", "wife", "husband", "bride", "boyfriend", "girlfriend", "dating", "couple", "lover", "fiance", "contract marriage", "office romance", "school romance", "villainess romance"],
    "xiju": ["搞笑", "喜剧", "沙雕", "爆笑", "comedy", "funny", "gag", "parody", "humor", "humour", "daily comedy", "romantic comedy", "school comedy", "absurd", "joke", "comic relief", "slice comedy", "family comedy"],
    "juqing": ["剧情", "家庭", "人生", "drama", "dramatic", "family", "psychological", "tragedy", "life", "revenge drama", "human drama", "melodrama", "coming of age", "tearjerker", "betrayal", "redemption", "relationship drama", "work drama"],
    "qihuan": ["奇幻", "魔法", "魔王", "恶魔", "fantasy", "magic", "demon", "dragon", "wizard", "mage", "witch", "elf", "spirit", "summoner", "sorcerer", "beast", "monster", "fairy", "curse", "blessing", "hero party", "fantasy world", "eastern fantasy"],
    "xiaoyuan": ["校园", "学生", "老师", "校花", "同桌", "school life", "school", "campus", "student", "teacher", "classmate", "academy", "high school", "college", "club", "classroom", "school romance", "school comedy", "senpai", "junior", "transfer student"],
    "richang": ["日常", "生活", "治愈", "休闲", "slice of life", "daily life", "healing", "iyashikei", "leisurely", "slow life", "cooking", "food", "family life", "pet", "cat", "daily", "ordinary", "work life", "cafe", "farming", "countryside"],
    "wuxia_gedou": ["武侠", "江湖", "侠客", "武术", "格斗", "kung fu", "martial arts", "hand to hand", "wuxia", "murim", "swordmaster", "blade", "fist", "sect", "martial sect", "qi", "jianghu", "warrior clan", "martial master", "dao", "saber"],
    "kehuan": ["科幻", "机甲", "末世", "星际", "机器人", "sci-fi", "science fiction", "mecha", "robot", "apocalypse", "space", "cyberpunk", "alien", "future", "ai", "android", "virtual reality", "vr", "galaxy", "spaceship", "post apocalyptic", "time loop"],
    "kongbu": ["恐怖", "惊悚", "灵异", "鬼", "诡异", "horror", "thriller", "ghost", "monster", "creepy", "supernatural horror", "zombie", "haunted", "curse", "nightmare", "survival horror", "dark", "terror", "demon horror", "urban legend"],
    "xuanyi": ["悬疑", "推理", "侦探", "谜案", "犯罪", "mystery", "detective", "crime", "case", "investigation", "suspense", "murder", "police", "clue", "secret", "conspiracy", "thriller mystery", "forensic", "criminal", "mind game"],
    "lishi_gufeng": ["历史", "古风", "古代", "宫廷", "王爷", "王妃", "historical", "ancient", "period", "palace", "royal", "emperor", "prince", "princess", "duke", "empress", "dynasty", "kingdom", "imperial", "noble", "court", "regency"],
    "dushi": ["都市", "职场", "总裁", "老板", "赘婿", "神医", "保镖", "urban", "office", "company", "ceo", "doctor", "bodyguard", "tycoon", "metropolitan", "modern", "business", "manager", "workplace", "rich", "medical", "son in law"],
    "xiuxian": ["修仙", "修真", "仙侠", "仙尊", "仙帝", "cultivation", "cultivator", "immortal", "martial peak", "daoist", "taoist", "qi refining", "foundation establishment", "nascent soul", "immortal emperor", "sect cultivation", "xianxia", "wuxia cultivation", "alchemy", "spiritual root", "heavenly dao"],
}

BAD_TITLE_WORDS = {
    "home", "首页", "目录", "分类", "排行", "排行榜", "最新", "更新", "登录", "注册", "search", "genre", "genres",
    "privacy", "contact", "about", "about us", "dmca", "terms", "chapter", "章节", "下一页", "上一页", "more",
    "a-z", "application", "applications", "advanced", "adult", "raw", "bookmark", "bookmarks", "history", "browse",
    "chat", "comic", "comics", "manga", "manhua", "manga updates", "completed", "cookie policy",
}
BAD_URL_PARTS = ("/chapter", "/chapters", "/episode", "/episodes", "/read/", "/reader/", "/login", "/register")
IMAGE_SUFFIXES = (".jpg", ".jpeg", ".png", ".webp", ".gif", ".avif", ".svg")


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
    return bool(re.search(r"[A-Za-z]", compact) and re.search(r"\d", compact))


def is_chapter_title(title: str) -> bool:
    text = safe_str(title)
    return bool(
        re.search(r"\b(chapter|chapters|episode|ep)\s*[\d.]+", text, flags=re.I)
        or re.search(r"第\s*[\d一二三四五六七八九十百千万]+\s*[话話章节回]", text)
        or re.search(r",\s*chapter\s*[\d.]+", text, flags=re.I)
    )


def clean_title(value: str) -> str:
    title = strip_html(value)
    title = re.sub(r"\s+(漫画|manhua|manga|read online|online|chapter|chapters|raw|raws)$", "", title, flags=re.I).strip()
    title = title.strip("-_|·•[]【】()（）")
    lowered = title.lower()
    if not title or len(title) < 2 or len(title) > 120:
        return ""
    if lowered in BAD_TITLE_WORDS or looks_like_opaque_slug(title) or is_chapter_title(title):
        return ""
    if re.fullmatch(r"https?://.+", lowered) or re.fullmatch(r"[a-z0-9.-]+\.[a-z]{2,}", lowered):
        return ""
    return title


def title_from_url(url: str) -> str:
    slug = urlparse(url).path.rstrip("/").split("/")[-1]
    slug = re.sub(r"\.(html?|php|aspx?)$", "", slug, flags=re.I)
    slug = re.sub(r"[-_]+", " ", slug).strip()
    return "" if looks_like_opaque_slug(slug) else html_lib.unescape(slug)


def normalize_host(url_or_host: str) -> str:
    value = safe_str(url_or_host)
    if not value:
        return ""
    parsed = urlparse(value if "://" in value else "https://" + value)
    return (parsed.netloc or parsed.path).lower().replace("www.", "").strip("/")


def safe_abs_url(base_url: str, href: str) -> str:
    href = html_lib.unescape(safe_str(href))
    if not href or href.startswith(("#", "javascript:", "mailto:", "tel:")):
        return ""
    return urljoin(base_url, href)


def is_candidate_url(url: str) -> bool:
    parsed = urlparse(url)
    if parsed.scheme not in {"http", "https"}:
        return False
    path = parsed.path.lower()
    return not any(part in path for part in BAD_URL_PARTS) and not path.endswith(IMAGE_SUFFIXES)


def fetch_public_text(url: str, timeout: int = REQUEST_TIMEOUT) -> Tuple[str, str]:
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


def compile_regex(pattern: str):
    try:
        return re.compile(pattern, flags=re.I)
    except re.error:
        return None


def group_value(match: re.Match[str], groups: Iterable[int]) -> str:
    for group in groups:
        try:
            value = safe_str(match.group(int(group)))
        except Exception:
            value = ""
        if value:
            return value
    return ""


def match_tags(text: str) -> List[str]:
    lowered = text.lower()
    tags: List[str] = []
    for rule in TAG_RULES:
        if any(keyword.lower() in lowered for keyword in rule["keywords"]):
            tags.append(rule["id"])
    return sorted(set(tags))


def load_manual_search_rules() -> List[Dict[str, Any]]:
    manual = load_json(ROOT / "rules/manual/index.json", {})
    rules = manual.get("rules", []) if isinstance(manual, dict) else []
    return [r for r in rules if isinstance(r, dict) and safe_str(r.get("searchUrl")) and safe_str(r.get("searchItemRegex"))]


def source_url(source: Dict[str, Any]) -> str:
    return safe_str(source.get("detailUrl") or source.get("siteUrl") or source.get("url"))


def build_links(sources: List[Dict[str, Any]]) -> List[Dict[str, str]]:
    links: List[Dict[str, str]] = []
    seen = set()
    for source in sources:
        url = source_url(source)
        if not url or url in seen:
            continue
        seen.add(url)
        links.append({"title": safe_str(source.get("siteName") or source.get("ruleId") or url), "url": url, "type": "detail" if source.get("detailUrl") else "site", "ruleId": safe_str(source.get("ruleId"))})
    return links


def category_hints(item: Dict[str, Any]) -> List[str]:
    hints: List[str] = []
    for source in item.get("sources", []):
        hint = safe_str(source.get("categorySearchHint"))
        if hint in CATEGORY_IDS and hint != "weifenlei":
            hints.append(hint)
    return hints


def add_source(item: Dict[str, Any], source: Dict[str, Any]) -> None:
    item.setdefault("sources", [])
    existing = {(s.get("ruleId"), s.get("detailUrl") or s.get("siteUrl"), s.get("categorySearchHint")) for s in item.get("sources", [])}
    key = (source.get("ruleId"), source.get("detailUrl") or source.get("siteUrl"), source.get("categorySearchHint"))
    if key not in existing:
        item["sources"].append(source)
    item["links"] = build_links(item.get("sources", []))
    item["primaryUrl"] = item["links"][0]["url"] if item["links"] else ""
    item["sourceCount"] = len(item.get("sources", []))
    item["linkCount"] = len(item.get("links", []))


def category_counts(items: List[Dict[str, Any]]) -> Counter:
    counts = Counter()
    for item in items:
        cid = safe_str(item.get("primaryCategory"))
        counts[cid if cid in CATEGORY_IDS else "weifenlei"] += 1
    return counts


def rebuild_category_summary(items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    counts = category_counts(items)
    return [{"id": rule["id"], "name": rule["name"], "count": counts.get(rule["id"], 0)} for rule in CATEGORY_RULES]


def rebuild_tag_summary(items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    counts = Counter(tag for item in items for tag in item.get("tags", []) if isinstance(item.get("tags"), list))
    return [{"id": rule["id"], "name": rule["name"], "count": counts.get(rule["id"], 0)} for rule in TAG_RULES]


def extract_search_results(rule: Dict[str, Any], category_id: str, keyword: str, limit: int) -> Tuple[List[Tuple[str, Dict[str, Any]]], str]:
    search_url = safe_str(rule.get("searchUrl")).replace("{keyword}", quote_plus(keyword)).replace("{query}", quote_plus(keyword))
    item_regex = compile_regex(safe_str(rule.get("searchItemRegex")))
    if not search_url or not item_regex:
        return [], "搜索规则无效"
    html_text, error = fetch_public_text(search_url)
    if error:
        return [], error
    title_groups = rule.get("searchTitleGroups") or [2]
    url_groups = rule.get("searchUrlGroups") or [1]
    records: List[Tuple[str, Dict[str, Any]]] = []
    for match in item_regex.finditer(html_text):
        href = group_value(match, url_groups)
        detail_url = safe_abs_url(search_url, href)
        if not detail_url or not is_candidate_url(detail_url):
            continue
        title = clean_title(group_value(match, title_groups)) or clean_title(title_from_url(detail_url))
        if not title:
            continue
        source = {
            "ruleId": safe_str(rule.get("id")) or normalize_host(rule.get("homepage", "")),
            "siteName": safe_str(rule.get("name")) or safe_str(rule.get("id")) or normalize_host(rule.get("homepage", "")),
            "detailUrl": detail_url,
            "categorySearchHint": category_id,
            "categoryKeyword": keyword,
            "discoveryType": "targetBoostSearch",
        }
        records.append((title, source))
        if len(records) >= limit:
            break
    return records, ""


def reassign_overflow_items(items_by_title: Dict[str, Dict[str, Any]], stats: Dict[str, Any]) -> None:
    counts = category_counts(list(items_by_title.values()))
    under = {cid for cid in TARGET_CATEGORY_IDS if counts.get(cid, 0) < TARGET_COUNT}
    changed = 0
    for item in sorted(items_by_title.values(), key=lambda x: (safe_str(x.get("primaryCategory")), safe_str(x.get("title")))):
        current = safe_str(item.get("primaryCategory"))
        if current not in BROAD_OVERFLOW_CATEGORIES or counts.get(current, 0) <= TARGET_COUNT:
            continue
        for hint, _count in Counter(category_hints(item)).most_common():
            if hint == current or hint not in under or counts.get(hint, 0) >= TARGET_COUNT:
                continue
            item["previousPrimaryCategory"] = current
            item["primaryCategory"] = hint
            item["categories"] = [hint]
            item["classificationSource"] = "targetBoostRebalance"
            counts[current] -= 1
            counts[hint] += 1
            changed += 1
            if counts.get(hint, 0) >= TARGET_COUNT:
                under.discard(hint)
            break
    stats["reassignedFromOverflow"] = changed


def boost_catalog(catalog: Dict[str, Any], report: Dict[str, Any], delta: Dict[str, Any]) -> Tuple[Dict[str, Any], Dict[str, Any], Dict[str, Any], Dict[str, Any]]:
    timestamp = now_iso()
    items = catalog.get("items", []) if isinstance(catalog, dict) else []
    items_by_title: Dict[str, Dict[str, Any]] = {}
    for item in items:
        title = clean_title(safe_str(item.get("title")))
        if not title:
            continue
        item["title"] = title
        item["primaryCategory"] = safe_str(item.get("primaryCategory")) if safe_str(item.get("primaryCategory")) in CATEGORY_IDS else "weifenlei"
        item["categories"] = [item["primaryCategory"]]
        items_by_title[title.lower()] = item

    stats: Dict[str, Any] = {
        "enabled": True,
        "targetCount": TARGET_COUNT,
        "minimumVisibleTarget": MIN_VISIBLE_TARGET,
        "searchRules": 0,
        "searchPagesFetched": 0,
        "searchPagesFailed": 0,
        "newItems": 0,
        "existingItemsTouched": 0,
        "reassignedFromOverflow": 0,
        "errors": [],
    }
    stats["countsBefore"] = dict(sorted(category_counts(list(items_by_title.values())).items()))
    reassign_overflow_items(items_by_title, stats)

    rules = load_manual_search_rules()
    stats["searchRules"] = len(rules)
    counts = category_counts(list(items_by_title.values()))
    new_delta_items: List[Dict[str, Any]] = []

    categories_by_gap = sorted(TARGET_CATEGORY_IDS, key=lambda cid: counts.get(cid, 0) - TARGET_COUNT)
    for cid in categories_by_gap:
        if counts.get(cid, 0) >= TARGET_COUNT:
            continue
        keywords = CATEGORY_SEARCH_KEYWORDS.get(cid, [])[:MAX_KEYWORDS_PER_CATEGORY]
        for keyword in keywords:
            if counts.get(cid, 0) >= TARGET_COUNT:
                break
            for rule in rules:
                if counts.get(cid, 0) >= TARGET_COUNT:
                    break
                records, error = extract_search_results(rule, cid, keyword, MAX_RESULTS_PER_KEYWORD)
                if error:
                    stats["searchPagesFailed"] += 1
                    if len(stats["errors"]) < 30:
                        stats["errors"].append({"category": cid, "keyword": keyword, "ruleId": safe_str(rule.get("id")), "error": error[:180]})
                    continue
                stats["searchPagesFetched"] += 1
                for title, source in records:
                    if counts.get(cid, 0) >= TARGET_COUNT:
                        break
                    key = title.lower()
                    existing = items_by_title.get(key)
                    if existing:
                        add_source(existing, source)
                        current = safe_str(existing.get("primaryCategory"))
                        if current != cid and (current == "weifenlei" or counts.get(current, 0) > TARGET_COUNT or current in BROAD_OVERFLOW_CATEGORIES):
                            existing["previousPrimaryCategory"] = current
                            existing["primaryCategory"] = cid
                            existing["categories"] = [cid]
                            existing["classificationSource"] = "targetBoostReassignExisting"
                            counts[current] -= 1
                            counts[cid] += 1
                        stats["existingItemsTouched"] += 1
                        continue

                    tags = match_tags(f"{title} {keyword}")
                    item = {
                        "id": slugify(title),
                        "title": title,
                        "aliases": [],
                        "primaryCategory": cid,
                        "categories": [cid],
                        "tags": tags,
                        "status": "unknown",
                        "cover": "",
                        "sources": [source],
                        "links": build_links([source]),
                        "primaryUrl": source.get("detailUrl", ""),
                        "sourceCount": 1,
                        "linkCount": 1,
                        "firstSeenAt": timestamp,
                        "lastSeenAt": timestamp,
                        "classificationSource": "targetBoostSearch",
                    }
                    items_by_title[key] = item
                    counts[cid] += 1
                    stats["newItems"] += 1
                    new_delta_items.append(item)
                time.sleep(REQUEST_SLEEP_SECONDS)

    final_items = sorted(items_by_title.values(), key=lambda item: safe_str(item.get("title")))
    final_counts = category_counts(final_items)
    gaps = []
    for rule in CATEGORY_RULES:
        cid = rule["id"]
        count = final_counts.get(cid, 0)
        target = 0 if cid == "weifenlei" else TARGET_COUNT
        gaps.append({
            "id": cid,
            "name": rule["name"],
            "count": count,
            "target": target,
            "gap": max(0, target - count),
            "overTarget": cid != "weifenlei" and count >= target,
            "visibleTargetReached": cid == "weifenlei" or count >= MIN_VISIBLE_TARGET,
        })

    stats["countsAfter"] = dict(sorted(final_counts.items()))
    stats["categoriesAtOrAboveTarget"] = sum(1 for item in gaps if item["id"] != "weifenlei" and item["overTarget"])
    stats["categoriesAtOrAboveVisibleTarget"] = sum(1 for item in gaps if item["id"] != "weifenlei" and item["visibleTargetReached"])
    stats["remainingTotalGap"] = sum(item["gap"] for item in gaps if item["id"] != "weifenlei")

    catalog["items"] = final_items
    catalog["itemCount"] = len(final_items)
    catalog["categories"] = rebuild_category_summary(final_items)
    catalog["tags"] = rebuild_tag_summary(final_items)
    catalog.setdefault("classification", {})["targetBoostEnabled"] = True
    catalog["classification"]["targetBoostTarget"] = TARGET_COUNT
    catalog["updatedAt"] = timestamp

    report["updatedAt"] = timestamp
    report["itemCount"] = len(final_items)
    report["uncategorizedCount"] = final_counts.get("weifenlei", 0)
    report["targetBoost"] = stats
    report["categories"] = catalog["categories"]
    report["tags"] = catalog["tags"]
    report.setdefault("classificationPolicy", {})["targetBoostEnabled"] = True
    report["classificationPolicy"]["targetBoostTarget"] = TARGET_COUNT
    report["classificationPolicy"]["targetBoostMinimumVisibleTarget"] = MIN_VISIBLE_TARGET

    delta = dict(delta or {})
    delta["schema"] = delta.get("schema") or "comic_catalog_delta_v1"
    delta["updatedAt"] = timestamp
    delta["targetBoostAdded"] = new_delta_items[:300]
    delta["targetBoostAddedCount"] = len(new_delta_items)

    gaps_payload = {
        "schema": "comic_catalog_target_gaps_v1",
        "updatedAt": timestamp,
        "targetCount": TARGET_COUNT,
        "minimumVisibleTarget": MIN_VISIBLE_TARGET,
        "summary": stats,
        "categories": gaps,
    }
    return catalog, report, delta, gaps_payload


def main() -> int:
    parser = argparse.ArgumentParser(description="整理目录并补齐主分类目标数量")
    parser.add_argument("--catalog", default="generated/catalog.json")
    parser.add_argument("--categories-output", default="generated/catalog_categories.json")
    parser.add_argument("--delta", default="generated/catalog_delta.json")
    parser.add_argument("--report", default="generated/catalog_report.json")
    parser.add_argument("--gaps-output", default="generated/catalog_target_gaps.json")
    args = parser.parse_args()

    catalog_path = ROOT / args.catalog
    report_path = ROOT / args.report
    delta_path = ROOT / args.delta
    categories_path = ROOT / args.categories_output
    gaps_path = ROOT / args.gaps_output

    catalog = load_json(catalog_path, {})
    report = load_json(report_path, {})
    delta = load_json(delta_path, {})
    catalog, report, delta, gaps = boost_catalog(catalog, report, delta)

    dump_json(catalog_path, catalog)
    dump_json(categories_path, {"schema": "comic_catalog_categories_v1", "updatedAt": catalog.get("updatedAt"), "categories": catalog.get("categories", []), "tags": catalog.get("tags", [])})
    dump_json(delta_path, delta)
    dump_json(report_path, report)
    dump_json(gaps_path, gaps)
    print(f"目录目标增强完成：目标 {TARGET_COUNT}，新增 {gaps['summary'].get('newItems', 0)}，剩余缺口 {gaps['summary'].get('remainingTotalGap', 0)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
