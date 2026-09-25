#!/usr/bin/env python3
"""
NAS 搜索代理服务 - 直接爬 baidu/bing 搜索结果，返回 searxng 兼容 JSON。
在 NAS 上用住宅 IP 运行，绕过 searxng 引擎实现问题和 GFW 封禁。

用法: python3 nas_search_proxy.py --port 18081 --token <TOKEN>
"""

import argparse
import gzip
import html
import json
import os
import re
import subprocess
import sys
import time
from http.server import HTTPServer, ThreadingHTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlencode, urlparse, parse_qs

USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

_baidu_suspend_until = 0
_google_daily_count = 0
_google_count_date = ""
GOOGLE_DAILY_LIMIT = 100
GOOGLE_API_KEY = os.environ.get("GOOGLE_API_KEY", "")
GOOGLE_CX = os.environ.get("GOOGLE_CX", "")


def fetch(url, timeout=8):
    result = subprocess.run(
        ["curl", "-s", "--connect-timeout", str(timeout), "--max-time", str(timeout + 2),
         "-H", f"User-Agent: {USER_AGENT}",
         "-H", "Accept-Language: zh-CN,zh;q=0.9,en;q=0.8",
         "-H", "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
         "--compressed", url],
        capture_output=True, text=True, timeout=timeout + 5,
    )
    return result.stdout


def search_bing(query, count=20):
    url = f"https://cn.bing.com/search?{urlencode({'q': query, 'count': count, 'setlang': 'zh-CN'})}"
    page = fetch(url)
    results = []
    blocks = re.split(r'<li class="b_algo"', page)
    for block in blocks[1:]:
        links = re.findall(r'href="(https?://[^"]+)"', block[:600])
        h2s = re.findall(r'<h2[^>]*>(.*?)</h2>', block[:600], re.S)
        title = re.sub(r'<[^>]+>', '', h2s[0]).strip() if h2s else ""
        real_links = [l for l in links if "bing.com" not in l and "microsoft.com" not in l]
        if real_links and title:
            results.append({
                "url": html.unescape(real_links[0]),
                "title": html.unescape(title),
                "content": "",
                "engine": "bing",
            })
        if len(results) >= count:
            break
    return results


def search_baidu(query, count=20):
    global _baidu_suspend_until
    if time.time() < _baidu_suspend_until:
        return []
    url = f"https://www.baidu.com/s?{urlencode({'wd': query, 'rn': count})}"
    try:
        page = fetch(url, timeout=10)
    except Exception:
        _baidu_suspend_until = time.time() + 3600
        return []
    if "captcha" in page.lower() or "wappass.baidu.com" in page:
        _baidu_suspend_until = time.time() + 3600
        return []
    urls = re.findall(r'mu="(https?://[^"]+)"', page)
    titles = re.findall(r'<h3[^>]*>(.*?)</h3>', page, re.S)
    results = []
    for u, t in zip(urls, titles):
        t = re.sub(r'<[^>]+>', '', t).strip()
        if t and u.startswith("http") and "baidu.com" not in u:
            results.append({
                "url": html.unescape(u),
                "title": html.unescape(t),
                "content": "",
                "engine": "baidu",
            })
        if len(results) >= count:
            break
    return results


def _google_can_use():
    global _google_daily_count, _google_count_date
    today = time.strftime("%Y-%m-%d")
    if today != _google_count_date:
        _google_count_date = today
        _google_daily_count = 0
    return GOOGLE_API_KEY and GOOGLE_CX and _google_daily_count < GOOGLE_DAILY_LIMIT


def search_google(query, count=10):
    global _google_daily_count
    if not _google_can_use():
        return []
    url = f"https://www.googleapis.com/customsearch/v1?{urlencode({'key': GOOGLE_API_KEY, 'cx': GOOGLE_CX, 'q': query, 'num': count})}"
    try:
        result = subprocess.run(
            ["curl", "-s", "--connect-timeout", "8", "--max-time", "10", url],
            capture_output=True, text=True, timeout=12,
        )
        data = json.loads(result.stdout)
        _google_daily_count += 1
        results = []
        for item in data.get("items", []):
            results.append({
                "url": item.get("link", ""),
                "title": item.get("title", ""),
                "content": item.get("snippet", ""),
                "engine": "google",
            })
        return results
    except Exception:
        return []


class Handler(BaseHTTPRequestHandler):
    token = None

    def _check_token(self):
        if self.token and self.headers.get("X-Search-Token") != self.token:
            self.send_response(403)
            self.end_headers()
            self.wfile.write(b"Forbidden")
            return False
        return True

    def do_GET(self):
        if not self._check_token():
            return
        parsed = urlparse(self.path)
        if parsed.path == "/search":
            qs = parse_qs(parsed.query)
            query = qs.get("q", [""])[0]
            if not query:
                self._json({"results": [], "unresponsive_engines": []})
                return
            engines = qs.get("engines", ["bing,baidu"])[0].split(",")
            results = []
            unresponsive = []
            try:
                results.extend(search_bing(query))
            except Exception as e:
                unresponsive.append(["bing", str(e)])
            if len(results) < 3 and "baidu" in engines:
                try:
                    results.extend(search_baidu(query))
                except Exception as e:
                    unresponsive.append(["baidu", str(e)])
            if not results:
                try:
                    results.extend(search_google(query))
                except Exception as e:
                    unresponsive.append(["google", str(e)])
            self._json({"results": results, "unresponsive_engines": unresponsive})
        elif parsed.path == "/health":
            self._json({
                "status": "ok",
                "google_api": bool(GOOGLE_API_KEY and GOOGLE_CX),
                "google_used": _google_daily_count,
                "google_limit": GOOGLE_DAILY_LIMIT,
            })
        else:
            self.send_response(404)
            self.end_headers()

    def _json(self, obj):
        data = json.dumps(obj).encode()
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(data)))
        self.end_headers()
        self.wfile.write(data)

    def log_message(self, fmt, *args):
        sys.stderr.write(f"{time.strftime('%H:%M:%S')} {fmt % args}\n")


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--port", type=int, default=18081)
    p.add_argument("--token", default=None)
    p.add_argument("--host", default="0.0.0.0")
    args = p.parse_args()
    Handler.token = args.token
    server = ThreadingHTTPServer((args.host, args.port), Handler)
    print(f"NAS search proxy on {args.host}:{args.port}")
    server.serve_forever()


if __name__ == "__main__":
    main()
