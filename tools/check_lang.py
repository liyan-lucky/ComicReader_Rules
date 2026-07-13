import requests, re
for d in ['yoyomanga.com', 'hmkorea.org']:
    try:
        r = requests.get('https://'+d, headers={'User-Agent':'Mozilla/5.0'}, timeout=8)
        m = re.search(r'<html[^>]+lang=["\']([^"\']+)["\']', r.text, re.IGNORECASE)
        if m:
            print(d, 'lang=', m.group(1))
        else:
            print(d, 'no lang attr')
    except Exception as e:
        print(d, 'error:', str(e)[:50])
