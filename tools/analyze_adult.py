import requests, re, json

adult_domains = [
    '18touch.com', 'fapinquan.com', 'avcomic.net', 'avmanhua.net',
    'h-hman.com', 'bl-comic.net', 'blhcomic.com', 'blmanhua.org',
    'blh-mh.com',
]

adult_keywords = [
    '成人', '18+', '18R', '18r', '18禁', '18漫', '禁漫',
    '色情', '情色', '黄色', 'AV', 'av', 'H漫', 'h漫',
    '里番', '肉番', '本子', '工口', '18comic',
    'BL', 'bl', '耽美', '腐漫', '男漫', '同志',
    '成人漫画', '黄色漫画', '18漫画', 'H漫画',
    '无删减', '无修正', '全彩肉', '肉漫',
]

for d in adult_domains:
    try:
        r = requests.get('https://' + d, headers={'User-Agent': 'Mozilla/5.0 (Linux; Android 13) Chrome/120.0.6099.230 Mobile Safari/537.36'}, timeout=8)
        text = r.text.lower()[:80000]
        title = ''
        m = re.search(r'<title[^>]*>(.*?)</title>', text, re.DOTALL | re.IGNORECASE)
        if m:
            title = m.group(1).strip()
        
        found = []
        for kw in adult_keywords:
            kw_lower = kw.lower()
            if re.search(r'[\u4e00-\u9fff]', kw):
                if kw_lower in text:
                    loc = 'title' if kw_lower in title.lower() else 'body'
                    found.append(kw + '(' + loc + ')')
            else:
                if re.search(r'\b' + re.escape(kw_lower) + r'\b', text, re.IGNORECASE):
                    loc = 'title' if re.search(r'\b' + re.escape(kw_lower) + r'\b', title, re.IGNORECASE) else 'body'
                    found.append(kw + '(' + loc + ')')
        
        print(f'{d}: {found if found else "NO MATCH"}')
    except Exception as e:
        print(f'{d}: ERROR {str(e)[:50]}')
