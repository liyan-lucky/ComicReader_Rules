#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""把规则审计报告转换成 App 可读取的远程规则索引。"""
from __future__ import annotations
import argparse, json, re, sys
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

UA = 'Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules'

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

REQUIRED_RULE_FIELDS = [
    'id', 'name', 'homepage', 'searchUrl', 'searchMethod', 'searchItemRegex',
    'searchTitleGroups', 'searchUrlGroups', 'searchCoverGroups',
    'searchResultIsChapter', 'searchFilterByKeyword', 'detailChapterRegex',
    'detailChapterTitleGroups', 'detailChapterUrlGroups', 'detailChapterFilter',
    'readerImageRegex', 'readerImageGroups', 'userAgent', 'referer'
]

PROJECT_COMPLIANCE = {
    'license': 'MIT',
    'publicOnly': True,
    'noAccountData': True,
    'noBundledComicContent': True,
    'noPaidContentCopies': True,
    'noProtectedAssets': True,
    'noAccessControlBypass': True,
    'rightsPolicy': 'See README.md, DISCLAIMER.md and COMPLIANCE.md'
}

def safe_id(domain: str) -> str:
    core = domain.lower().replace('www.', '')
    core = re.sub(r'[^a-z0-9]+', '_', core).strip('_')
    return (core or 'generated')[:48] + '_remote_public'

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

def rule_for_audit(a: dict) -> dict:
    domain = (a.get('domain') or urlparse(a.get('detail_url','')).netloc or 'unknown').replace('www.','')
    base = a.get('base_url') or (urlparse(a.get('detail_url','')).scheme + '://' + urlparse(a.get('detail_url','')).netloc)
    return add_rule_compliance({
        'id': safe_id(domain),
        'name': f'{domain} 远程公开源',
        'description': '规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。',
        'homepage': base,
        'searchUrl': '',
        'searchMethod': 'url-only',
        'searchItemRegex': '<a[^>]+href=["\\\']([^"\\\']+)["\\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>',
        'searchTitleGroups': [2],
        'searchUrlGroups': [1],
        'searchCoverGroups': [],
        'searchResultIsChapter': False,
        'searchFilterByKeyword': False,
        'detailChapterRegex': '<a[^>]+href=["\\\']([^"\\\']+)["\\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>',
        'detailChapterTitleGroups': [2],
        'detailChapterUrlGroups': [1],
        'detailChapterFilter': True,
        'readerImageRegex': '<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=["\\\']([^"\\\']+)["\\\'][^>]*>|["\\\']((?:https?:)?\\/\\/[^"\\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^"\\\']*)?)["\\\']|["\\\']((?:https?:)?//[^"\\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^"\\\']*)?)["\\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)["\\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])',
        'readerImageGroups': [1, 2, 3, 4],
        'userAgent': UA,
        'referer': base + '/',
        'readerNextPageRegex': '<a[^>]+href=["\\\']([^"\\\']+)["\\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=["\\\']next["\\\'][^>]+href=["\\\']([^"\\\']+)["\\\']|href=["\\\']([^"\\\']+)["\\\'][^>]+rel=["\\\']next["\\\']',
        'readerNextPageUrlGroups': [1, 2, 3],
        'maxReaderPages': 12
    })

def append_unique(target: list[dict], seen: set[str], rule: dict) -> None:
    rule_id = str(rule.get('id', '')).strip()
    if not rule_id or rule_id in seen:
        return
    seen.add(rule_id)
    target.append(add_rule_compliance(rule))

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument('--report', default='generated/rulebot_report.json')
    ap.add_argument('--output', default='generated/index.json')
    ap.add_argument('--manual', default='rules/manual/index.json')
    ap.add_argument('--language-code', default='')
    ap.add_argument('--language-name', default='')
    args = ap.parse_args()

    report_path = Path(args.report)
    data = json.loads(report_path.read_text(encoding='utf-8')) if report_path.exists() else {'generated': [], 'excluded': [], 'queries': []}
    report_language = ((data.get('stats') or {}).get('language') or {})
    language_code = args.language_code or str(report_language.get('code') or 'mixed')
    language_name = args.language_name or str(report_language.get('name') or language_code)
    manual_rules = load_manual_rules(args.manual)

    rules: list[dict] = []
    seen: set[str] = set()
    generated_valid_count = 0
    for a in data.get('generated', []):
        r = rule_for_audit(a)
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
    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding='utf-8')
    print(f'写入远程规则 {len(rules)} 条：自动 {generated_valid_count} 条，手工 {manual_added_count} 条 -> {out_path}')
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
