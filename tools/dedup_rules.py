import json

with open('rules/index.zh-Hans.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

before = len(data['rules'])

seen = set()
deduped = []
for r in data['rules']:
    key = (r['homepage'], r['name'])
    if key in seen:
        continue
    if '#top_title#' in r.get('name', ''):
        continue
    if '#top_title#' in r.get('searchUrl', ''):
        continue
    seen.add(key)
    deduped.append(r)

data['rules'] = deduped
after = len(data['rules'])

with open('rules/index.zh-Hans.json', 'w', encoding='utf-8') as f:
    json.dump(data, f, ensure_ascii=False, indent=2)

print(f'Deduped: {before} -> {after} (removed {before - after})')

domains = {}
for r in data['rules']:
    d = r['homepage'].replace('https://', '').replace('http://', '').split('/')[0].lower()
    domains[d] = domains.get(d, 0) + 1
print(f'\nRemaining {after} rules, {len(domains)} domains:')
for d, c in sorted(domains.items(), key=lambda x: -x[1]):
    print(f'  {c:4d} {d}')
