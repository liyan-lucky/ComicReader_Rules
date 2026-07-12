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
CONFIG_DIR = ROOT / "config"

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def _load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def _compile_pattern_set(raw: Dict[str, str]) -> Dict[str, str]:
    return {k: v for k, v in raw.items()}


UA = _load_json(CONFIG_DIR / "headers.json")["rule_bot_ua"]

PROJECT_COMPLIANCE = _load_json(CONFIG_DIR / "compliance.json")

_regex_cfg = _load_json(CONFIG_DIR / "regex_patterns.json")
_pattern_sets = {k: _compile_pattern_set(v) for k, v in _regex_cfg["pattern_sets"].items()}
LANG_PATTERNS = {lang: _pattern_sets[set_key] for lang, set_key in _regex_cfg["lang_mapping"].items()}

LANG_NAMES = {
    "zh-Hans": "简体中文",
    "zh-Hant": "繁體中文",
    "en": "English",
    "ja": "日本語",
    "ko": "한국어",
}

SEARCH_URL_TEMPLATES = _load_json(CONFIG_DIR / "search_url_templates.json")


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
