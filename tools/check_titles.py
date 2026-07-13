import requests, re
domains = ['fapinquan.com', 'dragonballcn.com', 'mihoyo.com', 'funfundoo.com',
    'go2think.com', 'gtearoom.com', 'patternrecognition.cn', 'mojoin.com',
    'cdmeiweiting.com', 'iguoman.com', 'imengxiang.cn', 'haokantxt.com']
for d in domains:
    try:
        r = requests.get('https://'+d, headers={'User-Agent':'Mozilla/5.0 (Linux; Android 13) Chrome/120.0.6099.230 Mobile Safari/537.36'}, timeout=8)
        m = re.search(r'<title[^>]*>(.*?)</title>', r.text, re.DOTALL|re.IGNORECASE)
        title = m.group(1).strip()[:80] if m else 'NO TITLE'
        print(d + ': ' + title)
    except Exception as e:
        print(d + ': ERROR ' + str(e)[:40])
