#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Convert RuleBot audit report into remote rules/index.json for 漫画浏览器."""
from __future__ import annotations
import argparse, json, re
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

UA = 'Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules'

def safe_id(domain: str) -> str:
    core = domain.lower().replace('www.', '')
    core = re.sub(r'[^a-z0-9]+', '_', core).strip('_')
    return (core or 'generated')[:48] + '_remote_public'

def rule_for_audit(a: dict) -> dict:
    domain = (a.get('domain') or urlparse(a.get('detail_url','')).netloc or 'unknown').replace('www.','')
    base = a.get('base_url') or (urlparse(a.get('detail_url','')).scheme + '://' + urlparse(a.get('detail_url','')).netloc)
    return {
        'id': safe_id(domain),
        'name': f'{domain} 远程公开源',
        'description': 'GitHub规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/JS图片URL；静态无图由App渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。',
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
    }

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument('--report', default='generated/rulebot_report.json')
    ap.add_argument('--output', default='generated/index.json')
    args = ap.parse_args()
    report_path = Path(args.report)
    data = json.loads(report_path.read_text(encoding='utf-8')) if report_path.exists() else {'generated': [], 'excluded': [], 'queries': []}
    rules = []
    seen = set()
    for a in data.get('generated', []):
        r = rule_for_audit(a)
        if r['id'] in seen:
            continue
        seen.add(r['id'])
        rules.append(r)
    out = {
        'schema': 'womh_comic_rules_index_v1',
        'version': datetime.now(timezone.utc).strftime('%Y.%m.%d.%H%M'),
        'updatedAt': datetime.now(timezone.utc).isoformat(),
        'queries': data.get('queries', []),
        'rules': rules,
        'audit': {
            'generatedCount': len(rules),
            'excludedCount': len(data.get('excluded', [])),
            'publicOnly': True,
            'noLoginPayBypass': True,
            'sourceReport': args.report
        }
    }
    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding='utf-8')
    print(f'wrote {len(rules)} remote rules to {out_path}')
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
