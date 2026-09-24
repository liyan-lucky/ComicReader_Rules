#!/usr/bin/env python3
"""从 02 审计 rejected 候选中自动产出 App 屏蔽域名/标题/词。

只有 02 分析确认不是漫画站的域名才加入屏蔽：
- 域名不含漫画特征词（comic/manhua/mh/manga/cartoon/anime）
- 且该域名全部候选均因 title_identity_mismatch 或网络错误被拒
含漫画特征词的域名即使全部失败也不屏蔽（可能暂时不可达）。
"""
from __future__ import annotations

import argparse
import json
import re
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parents[1]
COMIC_HINT = re.compile(r'(comic|manhua|mh|manga|cartoon|anime|toon|webtoon)', re.I)


def host(url: str) -> str:
    return (urlparse(url).hostname or '').lower().removeprefix('www.')


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('--ledger', type=Path, required=True)
    parser.add_argument('--audits-dir', type=Path, default=ROOT / 'generated/v3/audits')
    parser.add_argument('--catalog', type=Path, default=ROOT / 'catalog/catalog.zh-Hans.json')
    parser.add_argument('--output', type=Path, default=ROOT / 'generated/app_blacklist.zh-Hans.json')
    args = parser.parse_args()

    ledger = json.loads(args.ledger.read_text(encoding='utf-8-sig'))
    catalog = json.loads(args.catalog.read_text(encoding='utf-8-sig')) if args.catalog.exists() else {}

    catalog_domains = set()
    for cat in catalog.get('categories', {}).values():
        for item in cat.get('items', []):
            for src in item.get('sources', []):
                catalog_domains.add(str(src.get('domain', '')))

    blocked_domains = []
    for entry in ledger.get('domains', []):
        domain = entry.get('domain', '')
        if not domain or entry.get('verifiedWorkCount', 0) > 0:
            continue
        if domain in catalog_domains:
            continue
        if COMIC_HINT.search(domain):
            continue
        rws = entry.get('rejectedWorks', [])
        if not rws:
            continue
        all_mismatch = all(
            'title_identity_mismatch' in rw.get('rejectionReasons', []) or
            'non_comic_source' in rw.get('rejectionReasons', [])
            for rw in rws
        )
        if all_mismatch and len(rws) >= 2:
            blocked_domains.append(domain)

    title_counter: Counter = Counter()
    for entry in ledger.get('domains', []):
        for rw in entry.get('rejectedWorks', []):
            matched = str(rw.get('matchedTitle', '') or rw.get('title', '')).strip()
            if matched and len(matched) >= 2:
                title_counter[matched] += 1

    catalog_titles = {str(item.get('title', '')).strip().casefold()
                       for cat in catalog.get('categories', {}).values()
                       for item in cat.get('items', [])}

    all_work_titles = set()
    for param_file in (ROOT / 'parameters/catalog/zh-Hans').glob('*.json'):
        try:
            doc = json.loads(param_file.read_text(encoding='utf-8-sig'))
            for w in doc.get('works', []):
                all_work_titles.add(str(w.get('canonicalTitle', '')).strip().casefold())
        except Exception:
            pass

    GENERIC_NOISE = {
        '在线阅读', '在线观看', '全文阅读', '免费阅读', '最新章节', '漫画大全',
        '漫画列表', '首页', '登录', '注册', '排行榜', '全集', '完整版', '无弹窗',
        '笔趣阁', '漫画网', '免费观看', '下载', '更多', '查看更多', '查看全部',
    }
    blocked_titles = []
    for title, count in title_counter.most_common(200):
        if title.casefold() in catalog_titles:
            continue
        if title.casefold() in all_work_titles:
            continue
        if title.casefold() in {n.casefold() for n in GENERIC_NOISE}:
            blocked_titles.append(title)
            continue
        if count >= 5 and len(title) <= 12 and not any(
            wt in title.casefold() for wt in all_work_titles if len(wt) >= 2
        ):
            blocked_titles.append(title)

    words_counter: Counter = Counter()
    junk_words = ['在线观看', '全文阅读', '在线阅读', '免费阅读', '最新章节',
                  '漫画大全', '漫画列表', '首页', '登录', '注册', '排行榜']
    for entry in ledger.get('rejectedWorks', []):
        pass
    for title in blocked_titles:
        for word in junk_words:
            if word in title:
                words_counter[word] += 1
    blocked_words = [w for w, _ in words_counter.most_common(50)]

    now = datetime.now(timezone.utc)
    result = {
        'schema': 'comic_app_blacklist_v1',
        'version': now.strftime('%Y%m%d%H%M%S'),
        'updatedAt': now.isoformat(),
        'blockedDomains': sorted(set(blocked_domains)),
        'blockedTitles': sorted(set(blocked_titles)),
        'blockedWords': sorted(set(blocked_words)),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(f'blocked domains: {len(result["blockedDomains"])}, '
          f'titles: {len(result["blockedTitles"])}, '
          f'words: {len(result["blockedWords"])}')

    filter_words_path = ROOT / 'generated' / 'filter_words.txt'
    builtin_blocked_domains = [
        'iqiyi.com', 'youku.com', 'v.qq.com', 'tv.sohu.com', 'v.baidu.com',
        'bilibili.com/video', 'douyin.com', 'kuaishou.com', 'zhihu.com',
        '.edu.', 'coursera', 'udemy', 'zhangmen.com', 'zhangmenbaby.com',
        'weibo.com', 'twitter.com', 'facebook.com', 'instagram.com', 'tiktok.com',
        'pinterest.com', 'reddit.com', 'quora.com', 'amazon.com', 'taobao.com',
        'jd.com', 'tmall.com', 'pdd.com', 'ebay.com', 'walmart.com',
    ]
    builtin_blocked_words = [
        '教育', '培训', '课程', '辅导', '网课', '一对一', '考研', '公务员', '职业培训', '英语培训',
    ]
    pipeline = json.loads((ROOT / 'config/pipeline.json').read_text(encoding='utf-8-sig'))
    official_domains = sorted(catalog_domains)
    preferred_domains = sorted(set(
        str(d).lower().removeprefix('www.') for d in pipeline.get('preferredReadableDomains', [])
    ) | catalog_domains)

    all_blocked_domains = sorted(set(blocked_domains) | set(builtin_blocked_domains))
    all_blocked_words = sorted(set(blocked_words) | set(builtin_blocked_words))
    sections = {
        'DOMAINS': all_blocked_domains,
        'WORDS': all_blocked_words,
        'NOISE': sorted(set(blocked_titles)),
        'OFFICIAL': official_domains,
        'PREFERRED': preferred_domains,
    }
    lines = []
    for section, items in sections.items():
        lines.append(f'[{section}]')
        lines.extend(items)
        lines.append('')
    filter_words_path.write_text('\n'.join(lines) + '\n', encoding='utf-8')
    print(f'filter_words.txt: {len(all_blocked_domains)} domains, {len(all_blocked_words)} words, '
          f'{len(blocked_titles)} noise titles, {len(official_domains)} official, {len(preferred_domains)} preferred')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
