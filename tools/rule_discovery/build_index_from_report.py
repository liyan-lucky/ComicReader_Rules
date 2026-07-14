#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""把规则审计报告转换成 App 可读取的远程规则索引。"""
from __future__ import annotations
import argparse, hashlib, json, re, sys
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

_CONFIG_DIR = Path(__file__).resolve().parents[2] / "config"

def _load_json_config(name: str, default=None):
    p = _CONFIG_DIR / name
    if p.exists():
        try:
            return json.loads(p.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default

_HEADERS_CFG = _load_json_config("headers.json", {})
UA = _HEADERS_CFG.get("rule_bot_ua", "")

_REGEX_CFG = _load_json_config("regex_patterns.json", {})

_BUILTIN_PATTERNS = {
    "searchItemRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,260}?)</a>',
    "detailChapterRegex": r'<a[^>]+href=["\']([^"\']*(?:/chapter/|/chap/|/read/|/viewer|chapter|episode|cid=)[^"\']*)["\'][^>]*>([\s\S]{0,220}?(?:第\s*\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\s\S]{0,120}?)</a>',
    "readerImageRegex": r'<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=["\']([^"\']+)["\'][^>]*>|<source[^>]+srcset=["\']([^"\']+)["\'][^>]*>|["\']((?:https?:)?//[^"\']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^"\']*)?)["\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)["\']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])',
    "readerNextPageRegex": r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>(?:\s*下一页\s*|\s*下页\s*|\s*Next\s*|\s*next\s*|\s*&gt;\s*|\s*›\s*)</a>|rel=["\']next["\'][^>]+href=["\']([^"\']+)["\']|href=["\']([^"\']+)["\'][^>]+rel=["\']next["\']',
}

_PATTERN_SETS = _REGEX_CFG.get("pattern_sets", {})
_LANG_MAPPING = _REGEX_CFG.get("lang_mapping", {})
_COMMON_PATTERNS = _REGEX_CFG.get("common", {})

def _get_patterns(lang_code: str) -> dict:
    mapped = _LANG_MAPPING.get(lang_code, lang_code)
    lang_patterns = _PATTERN_SETS.get(mapped, _PATTERN_SETS.get("zh", {}))
    merged = {**_BUILTIN_PATTERNS, **_COMMON_PATTERNS, **lang_patterns}
    return merged

_BAD_TITLE_RE = re.compile(r'^(登录|注册|首页|排行榜|漫画$|Manga$|//|/\*|<!|var |let |const |function |window\.|document\.|{\s*$|404|403|500|Error|Forbidden|Not Found|移动|下载|客户端)', re.I)

def _clean_rule_title(detail_title: str, first_chapter_title: str, domain: str) -> str:
    for t in [detail_title, first_chapter_title]:
        t = safe_str(t)[:48]
        if not t:
            continue
        if _BAD_TITLE_RE.match(t):
            continue
        if len(t) < 2:
            continue
        return t
    return domain

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

REQUIRED_RULE_FIELDS = [
    'id', 'name', 'homepage', 'searchUrl', 'searchMethod', 'searchItemRegex',
    'searchTitleGroups', 'searchUrlGroups', 'searchCoverGroups',
    'searchResultIsChapter', 'searchFilterByKeyword', 'detailChapterRegex',
    'detailChapterTitleGroups', 'detailChapterUrlGroups', 'detailChapterFilter',
    'readerImageRegex', 'readerImageGroups', 'userAgent', 'referer'
]

_COMPLIANCE_CFG = _load_json_config("compliance.json", {})
PROJECT_COMPLIANCE = _COMPLIANCE_CFG if _COMPLIANCE_CFG else {}

def safe_str(value) -> str:
    return '' if value is None else str(value).strip()

def safe_id(domain: str, seed: str = '') -> str:
    core = domain.lower().replace('www.', '')
    core = re.sub(r'[^a-z0-9]+', '_', core).strip('_')
    suffix = ''
    if seed:
        suffix = '_' + hashlib.sha1(seed.encode('utf-8', errors='ignore')).hexdigest()[:8]
    return (core or 'generated')[:40] + suffix + '_auto_public'

def is_valid_rule(rule: dict) -> bool:
    for field in REQUIRED_RULE_FIELDS:
        if field not in rule:
            return False
    return bool(rule.get('id')) and bool(rule.get('name')) and bool(rule.get('readerImageRegex')) and isinstance(rule.get('readerImageGroups'), list)

def add_rule_compliance(rule: dict) -> dict:
    rule = dict(rule)
    rule.setdefault('license', 'MIT')
    rule.setdefault('sourceType', 'public-web-page-rule')
    rule.setdefault('compliance', {
        'publicOnly': True,
        'noLoginRequired': True,
        'noPaymentBypass': True,
        'noCaptchaBypass': True,
        'noProtectedAssetBundled': True
    })
    return rule

def load_manual_rules(path: str) -> list[dict]:
    manual_path = Path(path)
    if not manual_path.exists():
        return []
    data = json.loads(manual_path.read_text(encoding='utf-8'))
    raw_rules = data.get('rules', []) if isinstance(data, dict) else []
    rules: list[dict] = []
    for item in raw_rules:
        if isinstance(item, dict) and is_valid_rule(item):
            rules.append(add_rule_compliance(item))
    return rules

def rule_for_audit(a: dict, lang_code: str = "zh") -> dict:
    _patterns = _get_patterns(lang_code)
    domain = (a.get('domain') or urlparse(a.get('detail_url','')).netloc or 'unknown').replace('www.','')
    base = a.get('base_url') or (urlparse(a.get('detail_url','')).scheme + '://' + urlparse(a.get('detail_url','')).netloc)
    title = _clean_rule_title(safe_str(a.get('detail_title') or ''), safe_str(a.get('first_chapter_title') or ''), domain)[:48]
    rule = add_rule_compliance({
        'id': safe_id(domain, a.get('detail_url', '')),
        'name': f'{title} - {domain} 远程公开源',
        'description': '规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。',
        'homepage': base,
        'searchUrl': '',
        'searchMethod': 'url-only',
        'searchItemRegex': _patterns.get('searchItemRegex', ''),
        'searchTitleGroups': [2],
        'searchUrlGroups': [1],
        'searchCoverGroups': [],
        'searchResultIsChapter': False,
        'searchFilterByKeyword': False,
        'detailChapterRegex': _patterns.get('detailChapterRegex', ''),
        'detailChapterTitleGroups': [2],
        'detailChapterUrlGroups': [1],
        'detailChapterFilter': True,
        'readerImageRegex': _patterns.get('readerImageRegex', ''),
        'readerImageGroups': [1, 2, 3, 4],
        'userAgent': UA,
        'referer': base + '/',
        'readerNextPageRegex': _patterns.get('readerNextPageRegex', ''),
        'readerNextPageUrlGroups': [1, 2, 3],
        'maxReaderPages': 12
    })
    dal = a.get('domainApplicabilityList')
    if dal and isinstance(dal, list):
        rule['domainApplicabilityList'] = dal
    return rule

def append_unique(target: list[dict], seen: set[str], rule: dict) -> None:
    rule_id = str(rule.get('id', '')).strip()
    if not rule_id or rule_id in seen:
        return
    seen.add(rule_id)
    target.append(add_rule_compliance(rule))

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument('--report', default='generated/rulebot_report.{lang}.json')
    ap.add_argument('--output', default='generated/index.{lang}.json')
    ap.add_argument('--manual', default='rules/manual/index.json')
    ap.add_argument('--language-code', default='')
    ap.add_argument('--language-name', default='')
    args = ap.parse_args()

    report_path = Path(args.report.format(lang=args.language_code) if '{lang}' in args.report else args.report)
    data = json.loads(report_path.read_text(encoding='utf-8')) if report_path.exists() else {'generated': [], 'excluded': [], 'queries': []}
    report_language = ((data.get('stats') or {}).get('language') or {})
    language_code = args.language_code or str(report_language.get('code') or 'mixed')
    language_name = args.language_name or str(report_language.get('name') or language_code)
    manual_rules = load_manual_rules(args.manual)

    rules: list[dict] = []
    seen: set[str] = set()
    generated_valid_count = 0
    for a in data.get('generated', []):
        r = rule_for_audit(a, language_code)
        if is_valid_rule(r):
            append_unique(rules, seen, r)
            generated_valid_count += 1

    manual_added_count = 0
    for manual_rule in manual_rules:
        before = len(rules)
        append_unique(rules, seen, manual_rule)
        if len(rules) > before:
            manual_added_count += 1

    out = {
        'schema': 'womh_comic_rules_index_v1',
        'version': datetime.now(timezone.utc).strftime('%Y.%m.%d.%H%M'),
        'updatedAt': datetime.now(timezone.utc).isoformat(),
        'license': 'MIT',
        'language': {
            'code': language_code,
            'name': language_name,
        },
        'compliance': PROJECT_COMPLIANCE,
        'queries': data.get('queries', []),
        'rules': rules,
        'audit': {
            'generatedCount': generated_valid_count,
            'manualCount': manual_added_count,
            'totalCount': len(rules),
            'excludedCount': len(data.get('excluded', [])),
            'publicOnly': True,
            'noLoginPayBypass': True,
            'sourceReport': args.report,
            'manualRules': args.manual
        }
    }
    out_path = Path(args.output.format(lang=language_code) if '{lang}' in args.output else args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding='utf-8')
    print(f'写入远程规则 {len(rules)} 条：自动 {generated_valid_count} 条，手工 {manual_added_count} 条 -> {out_path}')
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
