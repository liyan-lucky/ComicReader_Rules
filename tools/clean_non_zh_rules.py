import json

remove_domains = {
    'comic-action.com', 'comic-days.com', 'comic-zenon.com', 'kingofshojo.com', 'mangapaw.com',
    'anime-planet.com', 'www.anime-planet.com', 'comix.to', 'mgeko.cc', 'www.mgeko.cc',
    '19-days-manga.com', 'comics.inkr.com', 'en-thunderscans.com', 'list.tsfcomics.com',
    'mangago.me', 'www.mangago.me', 'noveltrust.com', 'novelupdates.com', 'www.novelupdates.com',
    'comick.io', 'mangafire.to', 'mangahere.cc', 'www.mangahere.cc',
    'manhuaplus.com', 'manhuahot.com',
    'who.int', 'www.who.int', '',
}

with open('rules/index.zh-Hans.json', 'r', encoding='utf-8') as f:
    idx = json.load(f)

before_idx = len(idx['rules'])
idx['rules'] = [r for r in idx['rules'] if r.get('homepage', '').replace('https://', '').replace('http://', '').split('/')[0].lower() not in remove_domains]
after_idx = len(idx['rules'])
print(f'Index: {before_idx} -> {after_idx} (removed {before_idx - after_idx})')

with open('rules/index.zh-Hans.json', 'w', encoding='utf-8') as f:
    json.dump(idx, f, ensure_ascii=False, indent=2)

with open('generated/rulebot_report.zh-Hans.json', 'r', encoding='utf-8') as f:
    rpt = json.load(f)

before_rpt = len(rpt['generated'])
rpt['generated'] = [r for r in rpt['generated'] if r.get('domain', '').lower() not in remove_domains]
after_rpt = len(rpt['generated'])
rpt['generatedCount'] = len(rpt['generated'])
print(f'Report: {before_rpt} -> {after_rpt} (removed {before_rpt - after_rpt})')

with open('generated/rulebot_report.zh-Hans.json', 'w', encoding='utf-8') as f:
    json.dump(rpt, f, ensure_ascii=False, indent=2)

domains = {}
for r in idx['rules']:
    d = r['homepage'].replace('https://', '').replace('http://', '').split('/')[0].lower()
    domains[d] = domains.get(d, 0) + 1
remaining_count = len(idx['rules'])
print(f'\nRemaining {remaining_count} rules, {len(domains)} domains:')
for d, c in sorted(domains.items(), key=lambda x: -x[1]):
    print(f'  {c:4d} {d}')
