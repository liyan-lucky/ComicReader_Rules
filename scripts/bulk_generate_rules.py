#!/usr/bin/env python3
"""批量规则生成脚本：基于域名列表和通用模板快速生成规则。

为每个域名生成一条通用规则，同签名规则合并domainApplicabilityList。
目标：1000+ 条规则覆盖 100+ 域名。
"""
from __future__ import annotations

import hashlib
import json
import re
import sys
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Tuple

ROOT = Path(__file__).resolve().parents[1]

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

UA = "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules"

PROJECT_COMPLIANCE = {
    "license": "MIT",
    "publicOnly": True,
    "noAccountData": True,
    "noBundledComicContent": True,
    "noPaidContentCopies": True,
    "noProtectedAssets": True,
    "noAccessControlBypass": True,
    "rightsPolicy": "See README.md, DISCLAIMER.md and COMPLIANCE.md",
}

PATTERN_ZH = {
    "detailChapterRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,180}?(?:第\s*\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\s\S]{0,120}?)<\/a>',
    "readerImageRegex": r'<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=["\']([^"\']+)["\'][^>]*>|["\']((?:https?:)?\/\/[^"\']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^"\']*)?)["\']|["\']((?:https?:)?//[^"\']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^"\']*)?)["\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)["\']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])',
    "readerNextPageRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>(?:\s*下一页\s*|\s*下页\s*|\s*Next\s*|\s*next\s*|\s*&gt;\s*|\s*›\s*)<\/a>|rel=["\']next["\'][^>]+href=["\']([^"\']+)["\']|href=["\']([^"\']+)["\'][^>]+rel=["\']next["\']',
}

PATTERN_EN = {
    "detailChapterRegex": r'<a[^>]+href=["\']([^"\']*(?:/chapter/|/chap/|/read/|/viewer|chapter|episode|cid=)[^"\']*)["\'][^>]*>([\s\S]{0,220}?(?:Chapter\s*\d+|chapter\s*\d+|Chap\.?\s*\d+|Episode\s*\d+|episode\s*\d+|EP\s*\d+|Read Chapter)[\s\S]{0,120}?)<\/a>',
    "readerImageRegex": r'<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=["\']([^"\']+)["\'][^>]*>|<source[^>]+srcset=["\']([^"\']+)["\'][^>]*>|["\']((?:https?:)?\/\/[^"\']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^"\']*)?)["\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)["\']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])',
    "readerNextPageRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>(?:\s*Next\s*|\s*next\s*|\s*&gt;\s*|\s*›\s*|\s*»\s*)<\/a>|rel=["\']next["\'][^>]+href=["\']([^"\']+)["\']|href=["\']([^"\']+)["\'][^>]+rel=["\']next["\']',
}

PATTERN_JA = {
    "detailChapterRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,180}?(?:第\s*\d+|第[一二三四五六七八九十百千零〇两]+|話|章|回|Episode|episode|EP\s*\d+|読む)[\s\S]{0,120}?)<\/a>',
    "readerImageRegex": r'<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=["\']([^"\']+)["\'][^>]*>|["\']((?:https?:)?\/\/[^"\']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^"\']*)?)["\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)["\']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])',
    "readerNextPageRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>(?:\s*次へ\s*|\s*次のページ\s*|\s*Next\s*|\s*&gt;\s*)<\/a>|rel=["\']next["\'][^>]+href=["\']([^"\']+)["\']|href=["\']([^"\']+)["\'][^>]+rel=["\']next["\']',
}

PATTERN_KO = {
    "detailChapterRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,180}?(?:제\s*\d+|第\s*\d+|화|章|회|Episode|episode|EP\s*\d+|읽기)[\s\S]{0,120}?)<\/a>',
    "readerImageRegex": r'<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=["\']([^"\']+)["\'][^>]*>|["\']((?:https?:)?\/\/[^"\']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^"\']*)?)["\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)["\']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])',
    "readerNextPageRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>(?:\s*다음\s*|\s*다음페이지\s*|\s*Next\s*|\s*&gt;\s*)<\/a>|rel=["\']next["\'][^>]+href=["\']([^"\']+)["\']|href=["\']([^"\']+)["\'][^>]+rel=["\']next["\']',
}

LANG_PATTERNS = {
    "zh-Hans": PATTERN_ZH,
    "zh-Hant": PATTERN_ZH,
    "en": PATTERN_EN,
    "ja": PATTERN_JA,
    "ko": PATTERN_KO,
}

LANG_NAMES = {
    "zh-Hans": "简体中文",
    "zh-Hant": "繁體中文",
    "en": "English",
    "ja": "日本語",
    "ko": "한국어",
}

SEARCH_URL_TEMPLATES = {
    "comick.io": "https://comick.io/search?q={keyword}",
    "mangadex.org": "https://mangadex.org/search?q={keyword}",
    "mangafire.to": "https://mangafire.to/search?keyword={keyword}",
    "mangahere.cc": "https://mangahere.cc/search?keyword={keyword}",
    "mangapark.net": "https://mangapark.net/search?q={keyword}",
    "bato.to": "https://bato.to/search?q={keyword}",
    "mangabuddy.com": "https://mangabuddy.com/search?q={keyword}",
    "mangakakalot.com": "https://mangakakalot.com/search?q={keyword}",
    "fanfox.net": "https://fanfox.net/search?keyword={keyword}",
    "mangasee123.com": "https://mangasee123.com/search?keyword={keyword}",
    "mangalife.us": "https://mangalife.us/search?keyword={keyword}",
    "mangareader.tv": "https://mangareader.tv/search?keyword={keyword}",
    "asuracomic.net": "https://asuracomic.net/search?q={keyword}",
    "mangahub.io": "https://mangahub.io/search?q={keyword}",
    "mangatown.com": "https://mangatown.com/search?keyword={keyword}",
    "mangaclash.com": "https://mangaclash.com/search?q={keyword}",
    "mangakomi.io": "https://mangakomi.io/search?q={keyword}",
    "toonily.com": "https://toonily.com/search?q={keyword}",
    "webtoon.xyz": "https://webtoon.xyz/search?q={keyword}",
    "manhwascan.net": "https://manhwascan.net/search?q={keyword}",
    "flamescans.org": "https://flamescans.org/search?q={keyword}",
    "mangaeffect.com": "https://mangaeffect.com/search?q={keyword}",
    "kunmanga.com": "https://kunmanga.com/search?q={keyword}",
    "tapas.io": "https://tapas.io/search?q={keyword}",
    "mgeko.cc": "https://mgeko.cc/search?q={keyword}",
    "comic-walker.com": "https://comic-walker.com/search?q={keyword}",
    "comicdays.com": "https://comicdays.com/search?q={keyword}",
    "webtoons.com": "https://webtoons.com/search?keyword={keyword}",
    "comic.naver.com": "https://comic.naver.com/search?keyword={keyword}",
    "kakaopage.com": "https://kakaopage.com/search?keyword={keyword}",
    "lezhin.com": "https://lezhin.com/search?keyword={keyword}",
    "bomtoon.com": "https://bomtoon.com/search?keyword={keyword}",
    "ridibooks.com": "https://ridibooks.com/search?keyword={keyword}",
    "colamanga.com": "https://colamanga.com/search?keyword={keyword}",
    "dm5.com": "https://dm5.com/search?keyword={keyword}",
    "dm5.cn": "https://dm5.cn/search?keyword={keyword}",
    "kanman.com": "https://kanman.com/search?keyword={keyword}",
    "kuaikanmanhua.com": "https://kuaikanmanhua.com/search?keyword={keyword}",
    "manhuagui.com": "https://manhuagui.com/search?keyword={keyword}",
    "manhuaren.com": "https://manhuaren.com/search?keyword={keyword}",
    "mkzhan.com": "https://mkzhan.com/search?keyword={keyword}",
    "sfacg.com": "https://sfacg.com/search?keyword={keyword}",
    "xinmanhua.net": "https://xinmanhua.net/search?keyword={keyword}",
    "zaimanhua.com": "https://zaimanhua.com/search?keyword={keyword}",
    "zymk.cn": "https://zymk.cn/search?keyword={keyword}",
    "manhuaplus.com": "https://manhuaplus.com/search?keyword={keyword}",
    "manhuaplus.top": "https://manhuaplus.top/search?keyword={keyword}",
    "readmanhua.net": "https://readmanhua.net/search?keyword={keyword}",
    "topmanhua.com": "https://topmanhua.com/search?keyword={keyword}",
    "manhuascan.io": "https://manhuascan.io/search?keyword={keyword}",
    "copymanga.com": "https://copymanga.com/search?keyword={keyword}",
    "baozimanhua.com": "https://baozimanhua.com/search?keyword={keyword}",
    "happymh.com": "https://happymh.com/search?keyword={keyword}",
    "mojoin.com": "https://mojoin.com/search?keyword={keyword}",
    "manmanapp.com": "https://manmanapp.com/search?keyword={keyword}",
    "guazimanhua.com": "https://guazimanhua.com/search?keyword={keyword}",
    "kalamanhua.com": "https://kalamanhua.com/search?keyword={keyword}",
    "kaixinman.com": "https://kaixinman.com/search?keyword={keyword}",
    "mycomic.com": "https://mycomic.com/search?keyword={keyword}",
}


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    return domain.replace("www.", "")


def safe_id(domain: str) -> str:
    core = normalize_domain(domain)
    core = re.sub(r"[^a-z0-9]+", "_", core).strip("_")
    return (core or "generated")[:40] + "_auto_public"


def load_domains(lang: str) -> List[str]:
    p = ROOT / "config" / "domains" / f"{lang}.txt"
    if not p.exists():
        return []
    domains = []
    for line in p.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if line and not line.startswith("#"):
            domains.append(normalize_domain(line))
    return list(dict.fromkeys(domains))


def load_existing_rules(lang: str) -> List[Dict[str, Any]]:
    rules = []
    for path in [
        ROOT / "rules" / f"index.{lang}.json",
        ROOT / "rules" / "index.json",
    ]:
        if path.exists():
            try:
                data = json.loads(path.read_text(encoding="utf-8"))
                for r in data.get("rules", []):
                    if r.get("searchUrl", ""):
                        rules.append(r)
            except Exception:
                pass
    return rules


def rule_signature(rule: Dict[str, Any]) -> tuple:
    return (
        rule.get("detailChapterRegex", ""),
        rule.get("readerImageRegex", ""),
        rule.get("readerNextPageRegex", ""),
        rule.get("searchUrl", ""),
        rule.get("searchMethod", ""),
    )


def make_rule(domain: str, lang: str) -> Dict[str, Any]:
    nd = normalize_domain(domain)
    patterns = LANG_PATTERNS.get(lang, PATTERN_EN)
    search_url = SEARCH_URL_TEMPLATES.get(nd, "")
    search_method = "search-api" if search_url else "url-only"
    homepage = f"https://{nd}"
    rule = {
        "id": safe_id(nd),
        "name": f"{nd} 远程公开源",
        "description": f"规则仓库自动生成：{LANG_NAMES.get(lang, lang)}漫画站，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
        "homepage": homepage,
        "searchUrl": search_url,
        "searchMethod": search_method,
        "searchItemRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,260}?)<\/a>',
        "searchTitleGroups": [2],
        "searchUrlGroups": [1],
        "searchCoverGroups": [],
        "searchResultIsChapter": False,
        "searchFilterByKeyword": False,
        "detailChapterRegex": patterns["detailChapterRegex"],
        "detailChapterTitleGroups": [2],
        "detailChapterUrlGroups": [1],
        "detailChapterFilter": True,
        "readerImageRegex": patterns["readerImageRegex"],
        "readerImageGroups": [1, 2, 3, 4],
        "userAgent": UA,
        "referer": homepage + "/",
        "readerNextPageRegex": patterns["readerNextPageRegex"],
        "readerNextPageUrlGroups": [1, 2, 3],
        "maxReaderPages": 12,
        "license": "MIT",
        "sourceType": "public-web-page-rule",
        "compliance": {
            "publicOnly": True,
            "noLoginRequired": True,
            "noPaymentBypass": True,
            "noCaptchaBypass": True,
            "noProtectedAssetBundled": True,
        },
    }
    return rule


def generate_rules_for_lang(lang: str) -> Tuple[List[Dict[str, Any]], Dict[str, Any]]:
    domains = load_domains(lang)
    existing = load_existing_rules(lang)

    existing_domains = set()
    existing_by_sig: Dict[tuple, List[str]] = defaultdict(list)
    for r in existing:
        d = normalize_domain(r.get("homepage", ""))
        if d:
            existing_domains.add(d)
            sig = rule_signature(r)
            existing_by_sig[sig].append(d)
            for ad in r.get("domainApplicabilityList", []):
                existing_by_sig[sig].append(normalize_domain(ad))

    new_rules_by_sig: Dict[tuple, List[Dict[str, Any]]] = defaultdict(list)
    new_domains_by_sig: Dict[tuple, List[str]] = defaultdict(list)
    skipped_existing = 0

    for domain in domains:
        nd = normalize_domain(domain)
        if nd in existing_domains:
            skipped_existing += 1
            continue
        rule = make_rule(nd, lang)
        sig = rule_signature(rule)
        new_rules_by_sig[sig].append(rule)
        new_domains_by_sig[sig].append(nd)

    merged: List[Dict[str, Any]] = []
    for sig, rules in new_rules_by_sig.items():
        dal = list(dict.fromkeys(
            new_domains_by_sig.get(sig, [])
            + existing_by_sig.get(sig, [])
        ))
        for r in rules:
            r["domainApplicabilityList"] = dal
            merged.append(r)

    stats = {
        "language": lang,
        "totalDomains": len(domains),
        "existingDomains": len(existing_domains),
        "skippedExisting": skipped_existing,
        "newRulesGenerated": len(merged),
        "uniqueSignatures": len(new_rules_by_sig),
        "domainsWithSearchApi": sum(1 for d in domains if normalize_domain(d) in SEARCH_URL_TEMPLATES),
    }
    return merged, stats


def main() -> int:
    all_rules = []
    all_stats = {}
    for lang in ["zh-Hans", "zh-Hant", "en", "ja", "ko"]:
        rules, stats = generate_rules_for_lang(lang)
        all_rules.extend(rules)
        all_stats[lang] = stats
        print(f"[{lang}] domains={stats['totalDomains']} existing={stats['existingDomains']} new={stats['newRulesGenerated']} sigs={stats['uniqueSignatures']} searchApi={stats['domainsWithSearchApi']}")

    # Write per-language index files
    for lang in ["zh-Hans", "zh-Hant", "en", "ja", "ko"]:
        lang_rules = [r for r in all_rules if LANG_PATTERNS.get(lang) and r["detailChapterRegex"] == LANG_PATTERNS[lang]["detailChapterRegex"]]
        if not lang_rules:
            continue
        out = {
            "schema": "womh_comic_rules_index_v1",
            "version": datetime.now(timezone.utc).strftime("%Y.%m.%d.%H%M"),
            "updatedAt": datetime.now(timezone.utc).isoformat(),
            "license": "MIT",
            "language": {"code": lang, "name": LANG_NAMES.get(lang, lang)},
            "compliance": PROJECT_COMPLIANCE,
            "rules": lang_rules,
            "audit": {
                "generatedCount": len(lang_rules),
                "totalCount": len(lang_rules),
                "publicOnly": True,
            },
        }
        out_path = ROOT / "rules" / f"index.{lang}.json"
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Wrote {len(lang_rules)} rules -> {out_path}")

    # Write combined index
    combined = {
        "schema": "womh_comic_rules_index_v1",
        "version": datetime.now(timezone.utc).strftime("%Y.%m.%d.%H%M"),
        "updatedAt": datetime.now(timezone.utc).isoformat(),
        "license": "MIT",
        "language": {"code": "mixed", "name": "Mixed"},
        "compliance": PROJECT_COMPLIANCE,
        "rules": all_rules,
        "audit": {
            "generatedCount": len(all_rules),
            "totalCount": len(all_rules),
            "publicOnly": True,
        },
    }
    combined_path = ROOT / "rules" / "index.json"
    combined_path.write_text(json.dumps(combined, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"Wrote {len(all_rules)} total rules -> {combined_path}")

    # Write stats
    stats_path = ROOT / "generated" / "bulk_rule_generation_stats.json"
    stats_path.parent.mkdir(parents=True, exist_ok=True)
    stats_path.write_text(json.dumps(all_stats, ensure_ascii=False, indent=2), encoding="utf-8")

    print(f"\nTotal: {len(all_rules)} rules across {len(all_stats)} languages")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
