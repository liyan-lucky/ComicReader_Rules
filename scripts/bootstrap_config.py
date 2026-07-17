#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""参数自举脚本：从种子词自动生成 pipeline 所需的配置参数。

生成内容：
  - manga_indicator_keywords.json: validate / anti_patterns / title_match / secondary
  - keyword_discovery.json: ranking_sites / search_queries / fallback_ranking

种子入口（唯一需要手动维护）：
  - manga_indicator_keywords.json 中的 search_text（域名搜索种子词）
  - keyword_discovery.json 中的 noise_patterns / tag_words / generic_terms（标题清洗规则）
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
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


LANG_VALIDATE_SEEDS: Dict[str, List[str]] = {
    "zh-Hans": ["漫画", "漫畫"],
    "zh-Hant": ["漫畫", "漫画"],
    "en": ["manga", "comic"],
    "ja": ["漫画", "マンガ"],
    "ko": ["만화", "웹툰"],
}

LANG_ANTI_PATTERNS: Dict[str, List[str]] = {
    "zh-Hans": ["18+", "18禁", "H漫", "腐漫", "肉漫", "色情", "无删", "禁漫", "工口", "里番", "男孕", "本子", "黄漫", "媚药", "触手", "催眠"],
    "zh-Hant": ["18+", "18禁", "H漫", "腐漫", "肉漫", "色情", "無刪", "禁漫", "本子", "黃漫"],
    "en": ["hentai", "18+", "nsfw", "adult", "porn", "doujinshi", "ecchi", "yaoi", "yuri", "loli"],
    "ja": ["18禁", "R-18", "アダルト", "エロ", "同人誌", "えっち"],
    "ko": ["성인", "19+", "19금", "adult", "에로", "야오이"],
}

LANG_SECONDARY: Dict[str, List[str]] = {
    "zh-Hans": ["连载", "更新", "章节", "阅读", "在线看"],
    "zh-Hant": ["連載", "更新", "章節", "閱讀", "線上看"],
    "en": ["chapter", "read", "scanlation", "update", "latest"],
    "ja": ["連載", "読む", "無料", "更新", "話"],
    "ko": ["연재", "무료", "추천", "업데이트", "화"],
}

LANG_TITLE_MATCH_EXCLUDE: Dict[str, List[str]] = {
    "zh-Hans": ["サイト", "無料", "連載", "読む", "マンガ", "만화", "웹툰", "연재", "무료"],
    "zh-Hant": ["翻譯", "新聞", "遊戲", "視頻", "購物", "導航", "小說", "サイト", "만화"],
    "en": [],
    "ja": ["不動産", "賃貸", "求人", "通販", "旅行", "レストラン"],
    "ko": [],
}

KNOWN_RANKING_SITES: Dict[str, List[dict]] = {
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
}

LANG_SEARCH_QUERY_TEMPLATES: Dict[str, List[str]] = {
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


def _generate_search_queries(language: str, search_text: List[str]) -> List[str]:
    templates = LANG_SEARCH_QUERY_TEMPLATES.get(language, [])
    from datetime import datetime
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
    validate_words = LANG_VALIDATE_SEEDS.get(language, [])

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


def bootstrap_manga_indicator_keywords(language: str) -> Dict[str, Any]:
    mik = _load_json(CONFIG_DIR / "manga_indicator_keywords.json", {})
    cfg = mik.get(language, {})
    search_text = cfg.get("search_text", [])

    validate = LANG_VALIDATE_SEEDS.get(language, [])
    anti_patterns = LANG_ANTI_PATTERNS.get(language, [])
    title_match = LANG_TITLE_MATCH_EXCLUDE.get(language, [])
    secondary = LANG_SECONDARY.get(language, [])

    cfg["validate"] = validate
    cfg["anti_patterns"] = anti_patterns
    cfg["title_match"] = title_match
    cfg["secondary"] = secondary
    mik[language] = cfg
    return mik


def bootstrap_keyword_discovery(language: str) -> Dict[str, Any]:
    kwd = _load_json(CONFIG_DIR / "keyword_discovery.json", {})

    mik = _load_json(CONFIG_DIR / "manga_indicator_keywords.json", {})
    search_text = mik.get(language, {}).get("search_text", [])

    ranking_sites = KNOWN_RANKING_SITES.get(language, [])
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
        kwd["noise_patterns"] = r'^(登录|注册|首页|排行|分类|更新|推荐|搜索|更多|全部|标签|筛选|第[一二三四五六七八九十百千零〇两\d]+[话章回卷]|chapter\s*\d+|vol\.?\s*\d+|http|www\.|\.com|\.net|\.org|\d{4}[-年]\d{1,2}[-月]\d{1,2}|[\d.]+分|[\d.]+星|[\d,]+人|[\d,]+阅|[\d,]+赞|[\d,]+评|更新至|更新到|连载|完结|免费|付费|签约|独家)'
    if "noise_patterns_flags" not in kwd:
        kwd["noise_patterns_flags"] = "IGNORECASE"
    if "tag_words" not in kwd:
        kwd["tag_words"] = ["战斗", "热血", "搞笑", "恋爱", "古风", "穿越", "重生", "系统", "怪物", "末日", "灵异", "悬疑", "冒险", "魔幻", "校园", "治愈", "复仇", "强强", "脑洞", "青春", "暗黑", "女神", "大男主", "大女主"]
    if "generic_terms" not in kwd:
        kwd["generic_terms"] = ["漫画", "漫畫", "manga", "manhua", "manhwa", "webtoon", "comic", "在线", "免费", "阅读", "推荐", "更新", "网站", "连载", "大全", "排行", "排行榜", "人气", "热度", "排名", "榜单", "分类", "全部", "月票", "飙升", "畅销", "新作", "男生", "女生", "韩漫", "日漫", "恋爱", "剧情", "read", "online", "free", "site", "list", "top", "best", "popular", "trending", "new", "recommendation", "ranking", "chapter", "latest"]
    if "tag_suffix" not in kwd:
        kwd["tag_suffix"] = r'(\s{2,})[\u4e00-\u9fffa-zA-Z]{1,6}(\s+[\u4e00-\u9fffa-zA-Z]{1,6})?$'
    if "noise_suffix" not in kwd:
        kwd["noise_suffix"] = r'(更新至?\d+[话章回]|更新到\d+[话章回]|连载至?\d+|完结$|免费$|付费$)'
    if "noise_suffix_flags" not in kwd:
        kwd["noise_suffix_flags"] = "IGNORECASE"

    return kwd


def main() -> int:
    parser = argparse.ArgumentParser(description="从种子词自举生成 pipeline 配置参数")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en", "ja", "ko"])
    args = parser.parse_args()

    lang = args.language
    print(f"=== Bootstrapping config for {lang} ===")

    mik = bootstrap_manga_indicator_keywords(lang)
    _dump_json(CONFIG_DIR / "manga_indicator_keywords.json", mik)
    mik_cfg = mik.get(lang, {})
    print(f"  manga_indicator_keywords.json: validate={len(mik_cfg.get('validate', []))}, "
          f"anti_patterns={len(mik_cfg.get('anti_patterns', []))}, "
          f"title_match={len(mik_cfg.get('title_match', []))}, "
          f"secondary={len(mik_cfg.get('secondary', []))}")

    kwd = bootstrap_keyword_discovery(lang)
    _dump_json(CONFIG_DIR / "keyword_discovery.json", kwd)
    kwd_cfg = kwd
    print(f"  keyword_discovery.json: ranking_sites={len(kwd_cfg.get('ranking_sites', {}).get(lang, []))}, "
          f"search_queries={len(kwd_cfg.get('search_queries', {}).get(lang, []))}, "
          f"fallback_ranking={len(kwd_cfg.get('fallback_ranking', {}).get(lang, []))}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
