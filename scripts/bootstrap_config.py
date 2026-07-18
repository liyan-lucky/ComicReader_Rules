#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""参数自举脚本：从唯一根种子词"漫画/漫畫"自动生成 pipeline 全部配置参数。

生成内容：
  - manga_indicator_keywords.json: search_text / validate / anti_patterns / title_match / secondary
  - keyword_discovery.json: ranking_sites / search_queries / fallback_ranking / noise/tag/generic
  - domain_knowledge.json: 首次运行时自动初始化

唯一硬编码种子：
  ROOT_SEEDS = {"zh-Hans": ["漫画", "漫畫"]}

其余所有参数通过以下机制自动推导：
  1. 翻译映射：漫画 → manga/comic/マンガ/만화/manhua/manhwa/webtoon
  2. 搜索修饰词：种子词 × 修饰词 → search_text
  3. 领域知识配置：domain_knowledge.json（首次运行自动初始化，可手动微调）
"""
from __future__ import annotations

import argparse
import json
import os
import sys
from datetime import datetime
from pathlib import Path
from typing import Any, Dict, List, Set
from urllib.parse import urlencode

ROOT = Path(__file__).resolve().parents[1]
CONFIG_DIR = ROOT / "config"

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def _load_json(path: Path, default: Any = None) -> Any:
    if path.exists():
        try:
            return json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default


def _dump_json(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


# ═══════════════════════════════════════════════════════════════
# 唯一硬编码：根种子词
# ═══════════════════════════════════════════════════════════════
ROOT_SEEDS: Dict[str, List[str]] = {
    "zh-Hans": ["漫画", "漫畫"],
}

# 翻译映射：从根种子词推导各语种等价词
SEED_TRANSLATIONS: Dict[str, Dict[str, List[str]]] = {
    "漫画": {
        "zh-Hant": ["漫畫"],
        "en": ["manga", "comic"],
        "ja": ["マンガ", "コミック"],
        "ko": ["만화"],
        "zh-Hans_aliases": ["国漫", "条漫", "manhua"],
        "zh-Hant_aliases": ["國漫", "條漫", "manhua", "webtoon"],
        "en_aliases": ["webtoon", "manhwa", "manhua"],
        "ja_aliases": ["ウェブコミック", "webコミック"],
        "ko_aliases": ["웹툰", "manhwa", "webtoon"],
    },
    "漫畫": {
        "zh-Hant": ["漫画"],
        "en": ["manga", "comic"],
        "ja": ["マンガ"],
        "ko": ["만화"],
        "zh-Hant_aliases": ["國漫", "條漫", "manhua", "webtoon"],
        "en_aliases": ["webtoon", "manhwa", "manhua"],
        "ja_aliases": ["ウェブコミック", "webコミック"],
        "ko_aliases": ["웹툰", "manhwa", "webtoon"],
    },
}

SEARCH_MODIFIERS: Dict[str, List[str]] = {
    "zh-Hans": ["免费", "看", "网", "站", "大全", "阅读", "在线", "在线看",
                "更新", "热门", "最新", "推荐", "排行榜", "app"],
    "zh-Hant": ["免費", "看", "線上", "熱門", "推薦"],
    "en": ["read", "free", "online", "site", "reader"],
    "ja": ["サイト", "無料", "読む", "オンライン", "人気", "おすすめ"],
    "ko": ["사이트", "무료", "인기", "추천"],
}

# 搜索查询模板
SEARCH_QUERY_TEMPLATES: Dict[str, List[str]] = {
    "zh-Hans": [
        "{year}最火国漫推荐 漫画",
        "{seed}排行榜 人气漫画",
        "热门{seed}推荐 {year}",
        "免费{seed}在线看 热门",
        "{seed}大全 人气排行",
        "最新{seed}连载 推荐",
        "国产{seed}排行 少年 热血",
        "{seed}排行榜 月票榜",
    ],
    "zh-Hant": [
        "{year}熱門{seed}推薦排行",
        "{seed}排行榜 人氣",
        "免費{seed}線上看 熱門",
    ],
    "en": [
        "top {seed} {year} ranking list",
        "popular {seed} {year} best",
        "best {seed} {year} recommendation",
    ],
    "ja": [
        "{seed}ランキング {year} 人気",
        "おすすめ{seed}ランキング 少年",
    ],
    "ko": [
        "{seed} 순위 {year} 인기",
        "인기 {seed} 추천 랭킹",
    ],
}

# 领域知识默认值（首次运行写入 domain_knowledge.json，之后从文件读取）
_DOMAIN_KNOWLEDGE_DEFAULTS = {
    "anti_patterns": {
        "zh-Hans": ["18+", "18禁", "H漫", "腐漫", "肉漫", "色情", "无删", "禁漫", "工口", "里番", "男孕", "本子", "黄漫", "媚药", "触手", "催眠"],
        "zh-Hant": ["18+", "18禁", "H漫", "腐漫", "肉漫", "色情", "無刪", "禁漫", "本子", "黃漫"],
        "en": ["hentai", "18+", "nsfw", "adult", "porn", "doujinshi", "ecchi", "yaoi", "yuri", "loli"],
        "ja": ["18禁", "R-18", "アダルト", "エロ", "同人誌", "えっち"],
        "ko": ["성인", "19+", "19금", "adult", "에로", "야오이"],
    },
    "secondary": {
        "zh-Hans": ["连载", "更新", "章节", "阅读", "在线看"],
        "zh-Hant": ["連載", "更新", "章節", "閱讀", "線上看"],
        "en": ["chapter", "read", "scanlation", "update", "latest"],
        "ja": ["連載", "読む", "無料", "更新", "話"],
        "ko": ["연재", "무료", "추천", "업데이트", "화"],
    },
    "title_match_exclude": {
        "zh-Hans": ["サイト", "無料", "連載", "読む", "マンガ", "만화", "웹툰", "연재", "무료"],
        "zh-Hant": ["翻譯", "新聞", "遊戲", "視頻", "購物", "導航", "小說", "サイト", "만화"],
        "en": [],
        "ja": ["不動産", "賃貸", "求人", "通販", "旅行", "レストラン"],
        "ko": [],
    },
    "ranking_sites": {
        "zh-Hans": [
            {"name": "腾讯动漫-TOP榜", "url": "https://ac.qq.com/Rank/comicRank/type/top", "selector": "a[href*='/Comic/']", "attr": "title"},
            {"name": "腾讯动漫-月票榜", "url": "https://ac.qq.com/Rank/comicRank/type/mt", "selector": "a[href*='/Comic/']", "attr": "title"},
            {"name": "腾讯动漫-飙升榜", "url": "https://ac.qq.com/Rank/comicRank/type/rise", "selector": "a[href*='/Comic/']", "attr": "title"},
            {"name": "快看漫画-排行榜", "url": "https://www.kuaikanmanhua.com/ranking/", "selector": "a[href*='/web/comic/']", "attr": "title"},
            {"name": "咚漫漫画-排行榜", "url": "https://www.dongmanmanhua.cn/ranking", "selector": "a[href*='/list/']", "attr": "title"},
            {"name": "哔哩哔哩漫画-排行榜", "url": "https://manga.bilibili.com/ranking", "selector": "a[href*='/detail/']", "attr": "title"},
            {"name": "包子漫画-排行榜", "url": "https://www.baozimh.com/ranking", "selector": "a[href*='/comic/']", "attr": "title"},
        ],
        "zh-Hant": [
            {"name": "咚漫漫画-排行榜", "url": "https://www.dongmanmanhua.cn/ranking", "selector": "a.title", "attr": "title"},
            {"name": "LINE WEBTOON-排行榜", "url": "https://www.webtoons.com/zh-hant/ranking", "selector": "a.rank_lst_a", "attr": "title"},
        ],
        "en": [
            {"name": "MangaPlus-排行", "url": "https://mangaplus.shueisha.co.jp/manga_list/all", "selector": "a.AllTitle-module_allTitle", "attr": "title"},
            {"name": "Webtoon-排行", "url": "https://www.webtoons.com/en/ranking", "selector": "a.rank_lst_a", "attr": "title"},
        ],
        "ja": [
            {"name": "ピッコマ-ランキング", "url": "https://piccoma.com/web/ranking", "selector": "a.PCM-ranking_itemTitle", "attr": "title"},
            {"name": "マンガUP-ランキング", "url": "https://magazine.jp.square-enix.com/mangaup/", "selector": "a.title", "attr": "title"},
        ],
        "ko": [
            {"name": "네이버웹툰-인기", "url": "https://comic.naver.com/webtoon/weekday", "selector": "a.title", "attr": "title"},
            {"name": "카카오웹툰-인기", "url": "https://webtoon.kakao.com/ranking", "selector": "a.title", "attr": "title"},
        ],
    },
    "noise_patterns": r'^(登录|注册|首页|排行|分类|更新|推荐|搜索|更多|全部|标签|筛选|第[一二三四五六七八九十百千零〇两\d]+[话章回卷]|chapter\s*\d+|vol\.?\s*\d+|http|www\.|\.com|\.net|\.org|\d{4}[-年]\d{1,2}[-月]\d{1,2}|[\d.]+分|[\d.]+星|[\d,]+人|[\d,]+阅|[\d,]+赞|[\d,]+评|更新至|更新到|连载|完结|免费|付费|签约|独家)',
    "noise_patterns_flags": "IGNORECASE",
    "tag_words": ["战斗", "热血", "搞笑", "恋爱", "古风", "穿越", "重生", "系统", "怪物", "末日", "灵异", "悬疑", "冒险", "魔幻", "校园", "治愈", "复仇", "强强", "脑洞", "青春", "暗黑", "女神", "大男主", "大女主"],
    "tag_suffix": r'(\s{2,})[\u4e00-\u9fffa-zA-Z]{1,6}(\s+[\u4e00-\u9fffa-zA-Z]{1,6})?$',
    "noise_suffix": r'(更新至?\d+[话章回]|更新到\d+[话章回]|连载至?\d+|完结$|免费$|付费$)',
    "noise_suffix_flags": "IGNORECASE",
    "non_manga_tlds": [".gov", ".mil", ".edu"],
    "non_manga_domain_kw": [
        "novel", "xiaoshuo", "fiction", "books", "bookstore",
        "lyrics", "news", "newspaper", "magazine", "journal",
        "government", "agency", "research", "academic", "library",
        "movie", "film", "video", "music", "song", "podcast",
        "shopping", "store", "shop", "market", "deal", "coupon",
        "travel", "hotel", "flight", "recipe", "food", "cooking",
        "weather", "sports", "fitness", "health", "medical", "doctor",
        "dating", "social", "forum", "community", "wiki",
    ],
    "non_manga_title_patterns": [
        r'\bnews\b', r'\bnewspaper\b', r'\bjournal\b', r'\bmagazine\b',
        r'\bgovernment\b', r'\bagency\b', r'\bdepartment\b', r'\bministry\b',
        r'\blyrics?\b', r'\bsong\b', r'\bmusic\b', r'\bartist\b',
        r'\bnovel\b', r'\bfiction\b', r'\bbook(?:store)?\b', r'\blibrary\b',
        r'\brecipe\b', r'\bcooking\b', r'\bfood\b', r'\bfitness\b',
        r'\bmovie\b', r'\bfilm\b', r'\btravel\b', r'\bhotel\b',
        r'\bshopping\b', r'\bstore\b', r'\bshop\b', r'\bdeal\b',
        r'\bweather\b', r'\bsports?\b', r'\bhealth\b', r'\bmedical\b',
        r'小说', r'阅读网', r'书库', r'书城', r'文学', r'中文网$',
        r'新闻网', r'新闻', r'政府', r'部门', r' ministry',
    ],
    "hosting_platforms": [
        ".github.io", ".vercel.app", ".netlify.app", ".pages.dev",
        ".gitlab.io", ".gitee.io", ".cloudfront.net", ".herokuapp.com",
        ".render.com", ".railway.app", ".fly.dev", ".supabase.co",
        ".firebaseapp.com", ".web.app", ".glitch.me", ".replit.com",
        ".onrender.com", ".surge.sh", ".itch.io",
    ],
    "generic_patterns": [
        "漫画", "manga", "manhua", "webtoon", "comic",
        "在线", "免费", "阅读", "推荐", "更新", "网站", "连载", "追更", "大全",
        "read", "online", "free", "site", "list",
    ],
    "genre_hints": [
        "恋爱", "玄幻", "异能", "恐怖", "剧情", "科幻", "悬疑", "奇幻",
        "冒险", "犯罪", "动作", "日常", "竞技", "武侠", "历史", "战争",
        "修仙", "穿越", "重生", "异世界", "系统", "复仇", "爽文", "古风", "都市",
    ],
    "rule_regexes": {
        "chapter_text": r"(第\s*[0-9一二三四五六七八九十百千零〇两]+\s*[话章回]|Chapter\s*\d+|chapter\s*\d+|Chap\.?\s*\d+|Episode\s*\d+|episode\s*\d+|EP\s*\d+|阅读|开始阅读|Read\s*Chapter)",
        "chapter_url": r"/(chapter|chap|read|viewer|episode|episodes|cid|manga|comic)[/_\-?=0-9A-Za-z.%]+",
        "detail_url": r"/(comic|manga|book|manhua|series|detail|cartoon|webtoon)/?[^/#?]*",
        "public_work_url": r"/(comic|manga|manhua|book|series|webtoon|title|en/[^/]+/[^/]+/list|read|chapter|episode)/?[^/#?]*",
        "pay_login_text": r"(登录后|请登录|注册|充值|VIP|付费|购买|金币|订阅|premium|sign\s*in|log\s*in|subscribe|membership|captcha|验证码|下载APP|客户端)",
        "exclude_url": r"/(login|register|user|member|pay|vip|charge|download|app|news|video|tag|category|rank|comment|forum|bbs|cart|shop)(?:/|$|\?)",
        "exclude_image": r"(logo|avatar|icon|banner|ads?|qrcode|wechat|comment|cover-small|sprite|loading|placeholder)",
        "image": r"(?:(?:https?:)?//|/)['\"\\/A-Za-z0-9._~:/?#\[\]@!$&()*+,;=%-]+?\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^\s'\"<>]*)?",
        "js_escaped_image": r"https?:\\/\\/[^\s'\"<>]+?\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\\?[^\s'\"<>]*)?",
        "bad_title": r"^(登录|注册|首页|排行榜|漫画$|Manga$|//|/\*|<!|var |let |const |function |window\.|document\.|{\s*$|404|403|500|Error|Forbidden|Not Found|移动|下载|客户端)",
    },
}


# ═══════════════════════════════════════════════════════════════
# 自动推导函数
# ═══════════════════════════════════════════════════════════════

def derive_validate_seeds(language: str) -> List[str]:
    seeds = list(ROOT_SEEDS.get(language, []))
    for root_word, translations in SEED_TRANSLATIONS.items():
        if language in translations:
            for word in translations[language]:
                if word not in seeds:
                    seeds.append(word)
        alias_key = f"{language}_aliases"
        if alias_key in translations:
            for word in translations[alias_key]:
                if word not in seeds:
                    seeds.append(word)
    return seeds


def derive_search_seeds(language: str) -> List[str]:
    seeds = derive_validate_seeds(language)
    for root_word, translations in SEED_TRANSLATIONS.items():
        alias_key = f"{language}_aliases"
        if alias_key in translations:
            for word in translations[alias_key]:
                if word not in seeds:
                    seeds.append(word)
    return seeds


def derive_search_text(language: str) -> List[str]:
    search_seeds = derive_search_seeds(language)
    modifiers = SEARCH_MODIFIERS.get(language, [])
    text = list(search_seeds)
    seen = set(search_seeds)
    for seed in search_seeds[:5]:
        for mod in modifiers:
            combined = f"{seed}{mod}"
            if combined not in seen:
                seen.add(combined)
                text.append(combined)
    return text


def derive_generic_terms() -> List[str]:
    terms = set()
    for lang_seeds in ROOT_SEEDS.values():
        terms.update(lang_seeds)
    for translations in SEED_TRANSLATIONS.values():
        for lang_words in translations.values():
            terms.update(lang_words)
    return sorted(terms)


def load_domain_knowledge() -> dict:
    path = CONFIG_DIR / "domain_knowledge.json"
    dk = _load_json(path, None)
    if dk is None:
        dk = dict(_DOMAIN_KNOWLEDGE_DEFAULTS)
        _dump_json(path, dk)
        print(f"  Initialized domain_knowledge.json (first run)")
        return dk
    updated = False
    for key, val in _DOMAIN_KNOWLEDGE_DEFAULTS.items():
        if key not in dk:
            dk[key] = val
            updated = True
    if updated:
        _dump_json(path, dk)
        print(f"  Updated domain_knowledge.json with new fields")
    return dk


# ═══════════════════════════════════════════════════════════════
# Bootstrap 主逻辑
# ═══════════════════════════════════════════════════════════════

def _generate_search_queries(language: str, search_text: List[str]) -> List[str]:
    templates = SEARCH_QUERY_TEMPLATES.get(language, [])
    year = str(datetime.now().year)
    queries: List[str] = []
    seen: Set[str] = set()
    for seed in search_text[:5]:
        for tmpl in templates:
            q = tmpl.replace("{seed}", seed).replace("{year}", year)
            if q not in seen:
                seen.add(q)
                queries.append(q)
    return queries


def _discover_ranking_sites_via_searxng(language: str, search_text: List[str]) -> List[dict]:
    base_url = os.getenv("SEARXNG_URL", "").strip()
    if not base_url:
        cfg = _load_json(CONFIG_DIR / "search.json", {})
        base_url = (cfg.get("searxng") or {}).get("default_url", "").strip()
    if not base_url:
        return []

    try:
        import requests
    except ImportError:
        return []

    discovered: List[dict] = []
    seen_domains: Set[str] = set()
    validate_words = derive_validate_seeds(language)

    for seed in search_text[:3]:
        query = f"{seed} 排行榜 ranking" if language.startswith("zh") else f"{seed} ranking chart"
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": query, "format": "json", "pageno": 1})
            r = requests.get(url, headers={"User-Agent": "Mozilla/5.0", "Accept": "application/json"}, timeout=15)
            r.raise_for_status()
            for item in r.json().get("results", [])[:10]:
                result_url = item.get("url", "")
                if not result_url:
                    continue
                from urllib.parse import urlparse
                domain = urlparse(result_url).netloc.replace("www.", "")
                if domain in seen_domains:
                    continue
                if any(v in (item.get("title", "") + item.get("content", "")) for v in validate_words):
                    seen_domains.add(domain)
                    discovered.append({
                        "name": item.get("title", domain).split("-")[0].strip()[:30],
                        "url": result_url,
                        "selector": "a[href*='/comic/'], a[href*='/manga/'], a[href*='/detail/'], a[href*='/Comic/'], a[href*='/webtoon/']",
                        "attr": "title",
                    })
        except Exception:
            continue

    return discovered


def bootstrap_manga_indicator_keywords(language: str, dk: dict) -> Dict[str, Any]:
    mik = _load_json(CONFIG_DIR / "manga_indicator_keywords.json", {})
    cfg = mik.get(language, {})

    cfg["search_text"] = derive_search_text(language)
    cfg["search_subdomain"] = cfg.get("search_subdomain", [])
    cfg["validate"] = derive_validate_seeds(language)
    cfg["anti_patterns"] = dk.get("anti_patterns", {}).get(language, [])
    cfg["title_match"] = dk.get("title_match_exclude", {}).get(language, [])
    cfg["secondary"] = dk.get("secondary", {}).get(language, [])

    mik[language] = cfg
    return mik


def bootstrap_keyword_discovery(language: str, dk: dict) -> Dict[str, Any]:
    kwd = _load_json(CONFIG_DIR / "keyword_discovery.json", {})

    mik = _load_json(CONFIG_DIR / "manga_indicator_keywords.json", {})
    search_text = mik.get(language, {}).get("search_text", [])

    ranking_sites = list(dk.get("ranking_sites", {}).get(language, []))
    searxng_ranking = _discover_ranking_sites_via_searxng(language, search_text)
    for site in searxng_ranking:
        domain = site.get("url", "")
        if not any(s.get("url") == domain for s in ranking_sites):
            ranking_sites.append(site)

    search_queries = _generate_search_queries(language, search_text)

    fallback_ranking = kwd.get("fallback_ranking", {})
    rk_path = CONFIG_DIR / "rule_keywords.json"
    if rk_path.exists():
        try:
            existing_kw = json.loads(rk_path.read_text(encoding="utf-8")).get(language, [])
            fallback_ranking[language] = list(dict.fromkeys(fallback_ranking.get(language, []) + existing_kw))
        except Exception:
            pass

    if "ranking_sites" not in kwd:
        kwd["ranking_sites"] = {}
    kwd["ranking_sites"][language] = ranking_sites

    if "search_queries" not in kwd:
        kwd["search_queries"] = {}
    kwd["search_queries"][language] = search_queries

    if "fallback_ranking" not in kwd:
        kwd["fallback_ranking"] = {}
    kwd["fallback_ranking"][language] = fallback_ranking.get(language, [])

    if "manga_domains_map" not in kwd:
        kwd["manga_domains_map"] = {}
    agg = _load_json(CONFIG_DIR / "aggregator_sites.json", {})
    domains_map: Dict[str, List[str]] = {}
    for lang, urls in agg.items():
        domains_map[lang] = [u.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "") for u in urls]
    kwd["manga_domains_map"] = domains_map

    if "noise_patterns" not in kwd:
        kwd["noise_patterns"] = dk.get("noise_patterns", "")
    if "noise_patterns_flags" not in kwd:
        kwd["noise_patterns_flags"] = dk.get("noise_patterns_flags", "IGNORECASE")
    if "tag_words" not in kwd:
        kwd["tag_words"] = dk.get("tag_words", [])
    if "generic_terms" not in kwd:
        kwd["generic_terms"] = derive_generic_terms()
    if "tag_suffix" not in kwd:
        kwd["tag_suffix"] = dk.get("tag_suffix", "")
    if "noise_suffix" not in kwd:
        kwd["noise_suffix"] = dk.get("noise_suffix", "")
    if "noise_suffix_flags" not in kwd:
        kwd["noise_suffix_flags"] = dk.get("noise_suffix_flags", "IGNORECASE")

    return kwd


def main() -> int:
    parser = argparse.ArgumentParser(description="从种子词自举生成 pipeline 配置参数")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en", "ja", "ko"])
    args = parser.parse_args()

    lang = args.language
    print(f"=== Bootstrapping config for {lang} ===")
    print(f"  Root seeds: {ROOT_SEEDS}")
    print(f"  Derived validate: {derive_validate_seeds(lang)}")
    print(f"  Derived search_text: {len(derive_search_text(lang))} terms")

    dk = load_domain_knowledge()

    mik = bootstrap_manga_indicator_keywords(lang, dk)
    _dump_json(CONFIG_DIR / "manga_indicator_keywords.json", mik)
    mik_cfg = mik.get(lang, {})
    print(f"  manga_indicator_keywords.json: validate={len(mik_cfg.get('validate', []))}, "
          f"anti_patterns={len(mik_cfg.get('anti_patterns', []))}, "
          f"title_match={len(mik_cfg.get('title_match', []))}, "
          f"secondary={len(mik_cfg.get('secondary', []))}, "
          f"search_text={len(mik_cfg.get('search_text', []))}")

    kwd = bootstrap_keyword_discovery(lang, dk)
    _dump_json(CONFIG_DIR / "keyword_discovery.json", kwd)
    print(f"  keyword_discovery.json: ranking_sites={len(kwd.get('ranking_sites', {}).get(lang, []))}, "
          f"search_queries={len(kwd.get('search_queries', {}).get(lang, []))}, "
          f"fallback_ranking={len(kwd.get('fallback_ranking', {}).get(lang, []))}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
