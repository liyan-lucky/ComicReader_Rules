#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""热门漫画关键词发现脚本：爬取知名漫画站排行榜，横向对比按频次排序，输出到 rule_keywords.json。

策略：从4-6个知名漫画站提取排行榜Top50，按漫画名在多站出现的频次排序。
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path
from typing import Any, Dict, List, Set
from urllib.parse import urljoin, urlparse, urlencode

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools" / "rule_discovery"))

try:
    import requests
except ImportError:
    print("requests not installed", file=sys.stderr)
    sys.exit(1)

try:
    from bs4 import BeautifulSoup
except ImportError:
    print("beautifulsoup4 not installed", file=sys.stderr)
    sys.exit(1)

try:
    import cloudscraper
    _SCRAPER = cloudscraper.create_scraper(browser={"browser": "chrome", "platform": "android", "desktop": False})
except Exception:
    _SCRAPER = None

_HEADERS_CFG = json.loads((ROOT / "config" / "headers.json").read_text(encoding="utf-8")) if (ROOT / "config" / "headers.json").exists() else {}
DEFAULT_UA = _HEADERS_CFG.get("default_ua", "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36")
_ACCEPT_LANG = _HEADERS_CFG.get("accept_language", "zh-CN,zh;q=0.9,en;q=0.8")

RANKING_SITES: Dict[str, List[dict]] = {
    "zh-Hans": [
        {
            "name": "腾讯动漫-TOP榜",
            "url": "https://ac.qq.com/Rank/comicRank/type/top",
            "selector": ".rank-list-wrap a.text-overflow",
            "attr": "title",
            "text_pattern": r'<a[^>]*class="text-overflow"[^>]*title="([^"]+)"',
        },
        {
            "name": "腾讯动漫-月票榜",
            "url": "https://ac.qq.com/Rank/comicRank/type/mt",
            "selector": ".rank-list-wrap a.text-overflow",
            "attr": "title",
            "text_pattern": r'<a[^>]*class="text-overflow"[^>]*title="([^"]+)"',
        },
        {
            "name": "腾讯动漫-飙升榜",
            "url": "https://ac.qq.com/Rank/comicRank/type/rise",
            "selector": ".rank-list-wrap a.text-overflow",
            "attr": "title",
            "text_pattern": r'<a[^>]*class="text-overflow"[^>]*title="([^"]+)"',
        },
        {
            "name": "快看漫画-排行榜",
            "url": "https://www.kuaikanmanhua.com/ranking/",
            "selector": ".ranking-list a .title",
            "attr": "text",
        },
        {
            "name": "咚漫漫画-排行榜",
            "url": "https://www.dongmanmanhua.cn/ranking",
            "selector": "a.title",
            "attr": "title",
        },
        {
            "name": "哔哩哔哩漫画-排行榜",
            "url": "https://manga.bilibili.com/ranking",
            "selector": "a.manga-title",
            "attr": "title",
        },
    ],
    "zh-Hant": [
        {
            "name": "咚漫漫画-排行榜",
            "url": "https://www.dongmanmanhua.cn/ranking",
            "selector": "a.title",
            "attr": "title",
        },
    ],
    "en": [
        {
            "name": "MangaHub",
            "url": "https://mangahub.io/browse",
            "selector": "a._1ZpYx",
            "attr": "title",
        },
        {
            "name": "MangaKakalot",
            "url": "https://mangakakalot.com/manga_list",
            "selector": "a.list-title",
            "attr": "title",
        },
    ],
    "ja": [],
    "ko": [],
}

FALLBACK_RANKING: Dict[str, List[str]] = {
    "zh-Hans": [
        "斗破苍穹", "一人之下", "斗罗大陆4终极斗罗", "道诡异仙", "万渣朝凰",
        "我的徒弟都是大反派", "恰似寒光遇骄阳", "小白的男神爹地", "重生封神游戏之最强散人", "恶婴",
        "日月同错", "狐妖小红娘", "19天", "我家老婆来自一千年前", "不健全关系",
        "绍宋", "诱敌深入", "心动的声音", "星甲魂将传", "请与我同眠",
        "喰恋", "我家大师兄脑子有坑", "斗罗大陆 II 绝世唐门", "大奉打更人", "勇士的意志 第二季",
        "非人哉", "签到九万年", "不当舔狗后，我成了亿万神豪", "白天被逃婚晚上被奶凶指挥官求抱", "重生不当舔王，我独自氪金升级",
        "绝色道侣都说吾皇体质无敌", "反派大师兄，师妹们全是病娇", "穿成Alpha大佬的金丝大鹅", "开局一座山", "魔皇前夫诈尸了",
        "我独自升级", "地球尽头", "斗罗大陆 第三部 龙王传说", "我竟成了异世界后宫的采集对象", "大象无形",
        "我为邪帝", "全知读者视角", "敖敖待捕", "奇洛李维斯回信", "强制勾引指南",
        "高武进化：从觉醒怪兽之王开始", "传武", "雪之牢笼", "犬大欺主", "我真没想重生啊",
        "盐友", "斗罗大陆 5 重生唐三", "尸兄", "快穿：上瘾关系", "从水猴子开始成神",
        "航海王", "学霸哥哥别碰我", "一骗丹心", "居心不敬", "开局签到荒古圣体",
        "遇强则强，我的修为无上限", "情绪病", "孤日落", "意中人", "火影忍者",
        "宦妃天下", "我不是教主", "妖神记", "我可不跟你去苞米地", "原来，她们才是主角",
        "王牌御史", "与死亡同行：从鱼人地下城开始", "万界守门人", "一不小心，名垂千史", "中国惊奇先生",
        "我独自升级 ：诸神黄昏", "诡浊仙道", "污系少女老黄", "我靠后宫征服世界", "蛊真人",
        "摊牌了，我全职业系统", "系统送我避难所", "日久见人缺心眼", "祈祷之夜", "妖怪名单",
        "他的星星", "从姑获鸟开始", "只有尾巴不可以", "我的专属邪神", "这里的妹子都想攻略我",
        "圣心不难撩", "治愈我的邪神", "恶之环", "1st Kiss", "无限回档：我在惊悚游戏做bug",
        "顶级气运，悄悄修炼千年", "开局绝色俏师父：系统十斤反骨", "火影忍者（全彩版）", "斗厌神", "我的天劫女友",
    ],
}

NOISE_PATTERNS = re.compile(
    r'^(登录|注册|首页|排行|分类|更新|推荐|搜索|更多|全部|标签|筛选|'
    r'第[一二三四五六七八九十百千零〇两\d]+[话章回卷]|'
    r'chapter\s*\d+|vol\.?\s*\d+|'
    r'http|www\.|\.com|\.net|\.org|'
    r'\d{4}[-年]\d{1,2}[-月]\d{1,2}|'
    r'[\d.]+分|[\d.]+星|[\d,]+人|[\d,]+阅|[\d,]+赞|[\d,]+评|'
    r'更新至|更新到|连载|完结|免费|付费|签约|独家)',
    re.I,
)

TAG_WORDS: Set[str] = {
    "战斗", "热血", "搞笑", "恋爱", "古风", "穿越", "重生", "系统",
    "怪物", "末日", "灵异", "悬疑", "冒险", "魔幻", "校园", "治愈",
    "复仇", "强强", "脑洞", "青春", "暗黑", "女神", "大男主", "大女主",
}

TAG_SUFFIX = re.compile(r'(\s{2,})[\u4e00-\u9fffa-zA-Z]{1,6}(\s+[\u4e00-\u9fffa-zA-Z]{1,6})?$')

NOISE_SUFFIX = re.compile(
    r'(更新至?\d+[话章回]|更新到\d+[话章回]|连载至?\d+|完结$|免费$|付费$)',
    re.I,
)

GENERIC_TERMS: Set[str] = {
    "漫画", "漫畫", "manga", "manhua", "manhwa", "webtoon", "comic",
    "在线", "免费", "阅读", "推荐", "更新", "网站", "连载", "大全",
    "排行", "排行榜", "人气", "热度", "排名", "榜单", "分类", "全部",
    "月票", "飙升", "畅销", "新作", "男生", "女生", "韩漫", "日漫", "恋爱", "剧情",
    "read", "online", "free", "site", "list", "top", "best", "popular",
    "trending", "new", "recommendation", "ranking", "chapter", "latest",
}


def _fetch_page(url: str, timeout: int = 15) -> str:
    headers = {"User-Agent": DEFAULT_UA, "Accept-Language": _ACCEPT_LANG, "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
    try:
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=timeout, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=timeout, allow_redirects=True)
        if r.status_code >= 400:
            return ""
        if not r.encoding or r.encoding.lower() == "iso-8859-1":
            r.encoding = r.apparent_encoding or "utf-8"
        return r.text
    except Exception:
        return ""


def _extract_from_selector(html_text: str, selector: str, attr: str) -> List[str]:
    if not html_text:
        return []
    try:
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        soup = BeautifulSoup(html_text, "html.parser")
    els = soup.select(selector)
    print(f"      selector='{selector}' attr='{attr}' matched={len(els)} elements")
    titles = []
    for el in els:
        if attr == "text":
            t = el.get_text(strip=True)
        else:
            t = el.get(attr, "").strip()
            if not t:
                t = el.get_text(strip=True)
        if t and 2 <= len(t) <= 60:
            titles.append(t)
    return titles


def _clean_title(t: str) -> str:
    t = TAG_SUFFIX.sub('', t).strip()
    t = NOISE_SUFFIX.sub('', t).strip()
    for tw in TAG_WORDS:
        if t.endswith(tw) and len(t) > len(tw) + 1:
            t = t[:-len(tw)].strip()
    return t


def _extract_titles_from_links(html_text: str) -> List[str]:
    if not html_text:
        return []
    try:
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        soup = BeautifulSoup(html_text, "html.parser")
    titles = []
    manga_link_patterns = re.compile(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon|ComicInfo)/', re.I)
    skip_hrefs = re.compile(r'/(login|register|user|pay|vip|tag|category|rank|list|search)', re.I)
    for a in soup.find_all("a", href=True):
        href = a.get("href", "")
        if not manga_link_patterns.search(href):
            continue
        if skip_hrefs.search(href):
            continue
        t = a.get("title", "").strip()
        if not t:
            t = a.get_text(strip=True)
        t = _clean_title(t)
        if t and 2 <= len(t) <= 60 and not NOISE_PATTERNS.match(t):
            titles.append(t)
    return titles


CJK_LANGS = {"zh-Hans", "zh-Hant", "ja"}


_current_language = ""


def _is_valid_keyword(kw: str) -> bool:
    kw = kw.strip()
    if not kw or len(kw) < 2:
        return False
    if kw.lower() in {g.lower() for g in GENERIC_TERMS}:
        return False
    if NOISE_PATTERNS.match(kw):
        return False
    if re.match(r'^\d+\s', kw):
        return False
    if re.match(r'^[\d\s\-_./]+$', kw):
        return False
    if any(c in kw for c in '<>{}[]|\\`~!@#$%^&*()=+'):
        return False
    if _current_language in CJK_LANGS and not re.search(r'[\u4e00-\u9fff\u3040-\u309f\u30a0-\u30ff]', kw):
        return False
    return True


def _scrape_site(site_cfg: dict) -> List[str]:
    url = site_cfg["url"]
    name = site_cfg.get("name", url)
    selector = site_cfg.get("selector", "")
    attr = site_cfg.get("attr", "title")
    text_pattern = site_cfg.get("text_pattern", "")

    print(f"    Fetching: {name} ({url})")
    html_text = _fetch_page(url)
    if not html_text:
        print(f"      Failed to fetch")
        return []

    raw = _extract_from_selector(html_text, selector, attr) if selector else []
    print(f"      selector={len(raw)} titles")

    if not raw and text_pattern:
        print(f"      Trying text_pattern extraction...")
        raw = [m.group(1).strip() for m in re.finditer(text_pattern, html_text) if m.group(1).strip()]
        print(f"      text_pattern={len(raw)} titles")

    if not raw:
        print(f"      Trying cloudscraper fallback...")
        try:
            if _SCRAPER is not None:
                headers = {"User-Agent": DEFAULT_UA, "Accept-Language": _ACCEPT_LANG}
                r = _SCRAPER.get(url, headers=headers, timeout=20, allow_redirects=True)
                print(f"      cloudscraper HTTP {r.status_code}, len={len(r.text)}")
                if r.status_code < 400 and r.text:
                    raw = _extract_from_selector(r.text, selector, attr) if selector else []
                    print(f"      cloudscraper selector={len(raw)} titles")
                    if not raw and text_pattern:
                        raw = [m.group(1).strip() for m in re.finditer(text_pattern, r.text) if m.group(1).strip()]
                        print(f"      cloudscraper text_pattern={len(raw)} titles")
        except Exception as e:
            print(f"      cloudscraper error: {e}")

    if not raw:
        print(f"      Trying link-based extraction...")
        raw = _extract_titles_from_links(html_text)
        print(f"      link-based={len(raw)} titles")

    valid = [t for t in raw if _is_valid_keyword(t)]
    print(f"      Valid titles: {len(valid)}")
    return valid


SEARCH_QUERIES: Dict[str, List[str]] = {
    "zh-Hans": [
        "国漫排行榜 2025 热门漫画",
        "快看漫画排行榜 人气漫画",
        "腾讯漫画排行榜 月票榜",
        "哔哩哔哩漫画排行榜 热门",
        "2025最火国漫推荐 漫画",
        "条漫排行榜 国产漫画人气",
    ],
    "zh-Hant": [
        "漫畫排行榜 2025",
        "熱門漫畫推薦排行",
    ],
    "en": [
        "top manga 2025 ranking list",
        "popular manga 2025 best",
        "myanimelist top manga 2025",
    ],
    "ja": [
        "漫画ランキング 2025 人気",
        "おすすめ漫画ランキング",
    ],
    "ko": [
        "웹툰 순위 2025 인기",
        "인기 만화 추천 랭킹",
    ],
}


def _searxng_url() -> str:
    url = os.getenv("SEARXNG_URL", "").strip()
    if url:
        return url
    cfg_path = ROOT / "config" / "search.json"
    if cfg_path.exists():
        try:
            cfg = json.loads(cfg_path.read_text(encoding="utf-8"))
            url = (cfg.get("searxng") or {}).get("url", "").strip()
            if url:
                return url
        except Exception:
            pass
    return ""


def _search_and_scrape(language: str) -> List[str]:
    base_url = _searxng_url()
    if not base_url:
        print(f"    SearXNG not available, skipping search phase")
        return []
    queries = SEARCH_QUERIES.get(language, [])
    all_titles: List[str] = []
    manga_domains = {"ac.qq.com", "kuaikanmanhua.com", "dongmanmanhua.cn", "manga.bilibili.com", "mkzhan.com", "manhuagui.com"}
    for q in queries:
        print(f"    Searching: {q}")
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": q, "format": "json", "pageno": 1, "language": "all"})
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=20)
            r.raise_for_status()
            data = r.json()
            results = data.get("results", [])
            print(f"      Got {len(results)} results")
            for item in results[:8]:
                result_url = item.get("url", "")
                if not result_url:
                    continue
                is_manga_site = any(d in result_url for d in manga_domains)
                if not is_manga_site:
                    continue
                html_text = _fetch_page(result_url)
                if not html_text:
                    continue
                titles = _extract_titles_from_links(html_text)
                valid = [t for t in titles if _is_valid_keyword(t)]
                if valid:
                    print(f"      {result_url[:60]}: {len(valid)} titles")
                all_titles.extend(valid)
        except Exception as e:
            print(f"      Search error: {e}")
    return all_titles


def discover_keywords(language: str, top: int = 20) -> List[str]:
    global _current_language
    _current_language = language
    sites = RANKING_SITES.get(language, [])
    title_site_count: Dict[str, int] = {}
    title_position: Dict[str, List[int]] = {}

    print(f"  Phase 1: Scraping {len(sites)} ranking sites")
    for site_cfg in sites:
        titles = _scrape_site(site_cfg)
        seen_in_site: Set[str] = set()
        for pos, t in enumerate(titles[:50], 1):
            if t not in seen_in_site:
                seen_in_site.add(t)
                title_site_count[t] = title_site_count.get(t, 0) + 1
                title_position.setdefault(t, []).append(pos)

    print(f"  Phase 2: SearXNG search for ranking pages")
    search_titles = _search_and_scrape(language)
    for pos, t in enumerate(search_titles[:100], 1):
        title_site_count[t] = title_site_count.get(t, 0) + 1
        title_position.setdefault(t, []).append(pos)

    ranked = sorted(
        title_site_count.items(),
        key=lambda x: (-x[1], sum(title_position.get(x[0], [999])) / max(len(title_position.get(x[0], [999])), 1)),
    )
    keywords = [kw for kw, _ in ranked if _is_valid_keyword(kw)]

    if len(keywords) < top:
        fallback = FALLBACK_RANKING.get(language, [])
        print(f"  Phase 3: Fallback ranking ({len(fallback)} titles, need {top - len(keywords)} more)")
        for pos, t in enumerate(fallback, 1):
            t = _clean_title(t)
            if t and _is_valid_keyword(t) and t not in title_site_count:
                title_site_count[t] = 5
                title_position.setdefault(t, []).append(pos)
        ranked = sorted(
            title_site_count.items(),
            key=lambda x: (-x[1], sum(title_position.get(x[0], [999])) / max(len(title_position.get(x[0], [999])), 1)),
        )
        keywords = [kw for kw, _ in ranked if _is_valid_keyword(kw)]

    return keywords[:top]


def main() -> int:
    parser = argparse.ArgumentParser(description="爬取知名漫画站排行榜，横向对比输出热门关键词")
    parser.add_argument("--language", required=True, choices=["zh-Hans", "zh-Hant", "en", "ja", "ko"])
    parser.add_argument("--top", type=int, default=20, help="取前N个热门关键词，默认20")
    parser.add_argument("--report", default="", help="JSON报告输出路径")
    args = parser.parse_args()

    print(f"=== Discovering top {args.top} keywords for {args.language} ===")
    keywords = discover_keywords(args.language, args.top)
    print(f"\nDiscovered {len(keywords)} keywords:")
    for i, kw in enumerate(keywords, 1):
        print(f"  {i}. {kw}")

    agg_path = ROOT / "config" / "rule_keywords.json"
    agg_data: Dict[str, Any] = {}
    if agg_path.exists():
        try:
            agg_data = json.loads(agg_path.read_text(encoding="utf-8"))
        except Exception:
            agg_data = {}

    agg_data[args.language] = keywords
    agg_path.write_text(json.dumps(agg_data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"\nUpdated {agg_path} ({args.language}: {len(keywords)} keywords)")

    if args.report:
        report = {
            "language": args.language,
            "top": args.top,
            "keywords": keywords,
            "keywordCount": len(keywords),
        }
        report_path = Path(args.report)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Report saved to {args.report}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
