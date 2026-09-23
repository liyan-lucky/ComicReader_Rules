#!/usr/bin/env python3
"""检查 App 屏蔽列表是否误伤 catalog 中已发布的漫画站/作品。

误伤定义：
- 屏蔽域名包含 catalog 中作品的来源域名
- 屏蔽标题匹配 catalog 中作品的标题
- 屏蔽词出现在 catalog 中作品的标题中
任何误伤都会报告并退出非零，阻断发布。
"""
from __future__ import annotations

import argparse
import json
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('--blacklist', type=Path, default=ROOT / 'generated/app_blacklist.zh-Hans.json')
    parser.add_argument('--catalog', type=Path, default=ROOT / 'catalog/catalog.zh-Hans.json')
    parser.add_argument('--rules', type=Path, default=ROOT / 'rules/index.zh-Hans.json')
    parser.add_argument('--output', type=Path, default=ROOT / 'generated/blacklist_safety_report.json')
    args = parser.parse_args()

    bl = json.loads(args.blacklist.read_text(encoding='utf-8-sig')) if args.blacklist.exists() else {}
    catalog = json.loads(args.catalog.read_text(encoding='utf-8-sig')) if args.catalog.exists() else {}
    rules = json.loads(args.rules.read_text(encoding='utf-8-sig')) if args.rules.exists() else {}

    blocked_domains = set(bl.get('blockedDomains', []))
    blocked_titles = {t.casefold() for t in bl.get('blockedTitles', [])}
    blocked_words = set(bl.get('blockedWords', []))

    catalog_domains = set()
    catalog_titles = set()
    catalog_title_words = []
    for cat in catalog.get('categories', {}).values():
        for item in cat.get('items', []):
            title = str(item.get('title', '')).strip()
            catalog_titles.add(title.casefold())
            catalog_title_words.append(title)
            for src in item.get('sources', []):
                catalog_domains.add(str(src.get('domain', '')))

    rule_domains = set()
    for rule in rules.get('rules', []):
        domain = str(rule.get('homepage', '')).split('://', 1)[-1].strip('/').removeprefix('www.')
        rule_domains.add(domain)

    domain_collisions = sorted(blocked_domains & catalog_domains)
    domain_rule_collisions = sorted(blocked_domains & rule_domains)
    title_collisions = sorted(blocked_titles & catalog_titles)
    word_collisions = []
    for word in blocked_words:
        for title in catalog_title_words:
            if word in title:
                word_collisions.append({'word': word, 'title': title})
                break

    errors = []
    if domain_collisions:
        errors.append(f'屏蔽域名误伤 catalog 作品来源: {domain_collisions}')
    if domain_rule_collisions:
        errors.append(f'屏蔽域名误伤已发布域名规则: {domain_rule_collisions}')
    if title_collisions:
        errors.append(f'屏蔽标题误伤 catalog 作品: {title_collisions[:20]}')
    if word_collisions:
        errors.append(f'屏蔽词误伤 catalog 作品标题: {word_collisions[:20]}')

    report = {
        'schema': 'blacklist_safety_report_v1',
        'updatedAt': datetime.now(timezone.utc).isoformat(),
        'passed': not errors,
        'checkedBlockedDomains': len(blocked_domains),
        'checkedBlockedTitles': len(blocked_titles),
        'checkedBlockedWords': len(blocked_words),
        'catalogDomainCount': len(catalog_domains),
        'ruleDomainCount': len(rule_domains),
        'domainCollisions': domain_collisions,
        'domainRuleCollisions': domain_rule_collisions,
        'titleCollisions': title_collisions,
        'wordCollisions': word_collisions,
        'errors': errors,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if not errors else 1


if __name__ == '__main__':
    raise SystemExit(main())
