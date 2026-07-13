import requests, re, json

agg = json.load(open('config/aggregator_sites.json', 'r', encoding='utf-8'))
urls = agg.get('zh-Hans', [])

mh = '漫画'
mh_trad = '漫畫'
man = '漫'

results = []
for url in urls:
    domain = url.split('//')[-1].split('/')[0].replace('www.', '')
    try:
        r = requests.get(url, headers={'User-Agent': 'Mozilla/5.0 (Linux; Android 13) Chrome/120.0.6099.230 Mobile Safari/537.36'}, timeout=8)
        text = r.text.lower()[:80000]
        
        has_mh = mh in text
        has_mh_trad = mh_trad in text
        has_man = man in text
        
        # Check title
        m = re.search(r'<title[^>]*>(.*?)</title>', text, re.DOTALL | re.IGNORECASE)
        title = m.group(1).strip() if m else ''
        title_mh = mh in title or mh_trad in title
        title_man = man in title
        
        results.append({
            'domain': domain,
            'has_mh': has_mh,
            'has_mh_trad': has_mh_trad,
            'has_man': has_man,
            'title_mh': title_mh,
            'title_man': title_man,
            'status': r.status_code,
        })
        
        if has_man and not (has_mh or has_mh_trad):
            # Find context of 漫
            for m2 in re.finditer(r'.{0,15}漫.{0,15}', r.text):
                snippet = m2.group()[:60]
                if '漫' in snippet:
                    print(f'  {domain}: 漫 found but 漫画 not. Context: {repr(snippet)}')
                    break
    except Exception as e:
        results.append({
            'domain': domain,
            'has_mh': False,
            'has_mh_trad': False,
            'has_man': False,
            'title_mh': False,
            'title_man': False,
            'status': 'error',
        })

mh_count = sum(1 for r in results if r['has_mh'] or r['has_mh_trad'])
man_count = sum(1 for r in results if r['has_man'])
title_mh_count = sum(1 for r in results if r['title_mh'])
title_man_count = sum(1 for r in results if r['title_man'])

print(f'\n=== Summary ===')
print(f'Total domains tested: {len(results)}')
print(f'漫画/漫畫 in page text: {mh_count}')
print(f'漫 in page text: {man_count}')
print(f'漫画/漫畫 in title: {title_mh_count}')
print(f'漫 in title: {title_man_count}')
print(f'\n漫 matches but 漫画 doesnt:')
for r in results:
    if r['has_man'] and not (r['has_mh'] or r['has_mh_trad']):
        print(f'  {r["domain"]}')
