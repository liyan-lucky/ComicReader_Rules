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
import threading
import time
from http.server import HTTPServer, ThreadingHTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlencode, urlparse, parse_qs

USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

_baidu_suspend_until = 0
_baidu_lock = threading.Lock()
_baidu_last_request = 0.0
_baidu_min_interval = 0.5
_fetch_semaphore = threading.Semaphore(4)
_global_lock = threading.Lock()
_global_last_request = 0.0
_global_min_interval = 0.25
_domain_403_until = {}
_403_cooldown = 900

def _is_domain_cooled(domain):
    if not domain:
        return False
    until = _domain_403_until.get(domain, 0)
    if time.time() < until:
        return True
    if until:
        _domain_403_until.pop(domain, None)
    return False

def _mark_domain_403(url):
    try:
        domain = urlparse(url).hostname or ''
        if domain:
            _domain_403_until[domain] = time.time() + _403_cooldown
    except Exception:
        pass


def fetch(url, timeout=8, referer=''):
    global _global_last_request
    with _global_lock:
        elapsed = time.time() - _global_last_request
        if elapsed < _global_min_interval:
            time.sleep(_global_min_interval - elapsed)
        _global_last_request = time.time()
    cmd = ["curl", "-sL", "--connect-timeout", str(timeout), "--max-time", str(timeout + 2),
           "-H", f"User-Agent: {USER_AGENT}",
           "-H", "Accept-Language: zh-CN,zh;q=0.9,en;q=0.8",
           "-H", "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
           "--compressed", "-w", "\n%{http_code}", url]
    if referer:
        cmd.insert(-3, "-H")
        cmd.insert(-3, f"Referer: {referer}")
    result = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout + 5)
    parts = result.stdout.rsplit('\n', 1)
    if len(parts) == 2 and parts[1].isdigit():
        code = int(parts[1])
        if code == 403:
            _mark_domain_403(url)
        return parts[0], code
    return result.stdout, 0


def search_bing(query, count=20):
    url = f"https://cn.bing.com/search?{urlencode({'q': query, 'count': count, 'setlang': 'zh-CN'})}"
    page, _ = fetch(url)
    results = []
    blocks = re.split(r'<li class="b_algo"', page)
    for block in blocks[1:]:
        links = re.findall(r'href="(https?://[^"]+)"', block[:3000])
        h2s = re.findall(r'<h2[^>]*>(.*?)</h2>', block[:3000], re.S)
        title = re.sub(r'<[^>]+>', '', h2s[0]).strip() if h2s else ""
        real_links = [l for l in links if "bing.com" not in l and "microsoft.com" not in l and "/rp/" not in l and "go.microsoft" not in l]
        if real_links and title:
            results.append({
                "url": html.unescape(real_links[0]),
                "title": html.unescape(title),
                "content": "",
                "engine": "bing",
            })
        if len(results) >= count:
            break
    return results, None


def search_baidu(query, count=20):
    global _baidu_suspend_until, _baidu_last_request
    with _baidu_lock:
        now = time.time()
        if now < _baidu_suspend_until:
            return [], f"suspended({int(_baidu_suspend_until - now)}s left)"
        elapsed = now - _baidu_last_request
        if elapsed < _baidu_min_interval:
            time.sleep(_baidu_min_interval - elapsed)
        _baidu_last_request = time.time()
        url = f"https://www.baidu.com/s?{urlencode({'wd': query, 'rn': count})}"
        try:
            page, _ = fetch(url, timeout=10)
        except Exception as e:
            _baidu_suspend_until = time.time() + 600
            return [], f"fetch error: {e}"
    if not page:
        return [], "empty response"
    if "captcha" in page.lower() or "wappass.baidu.com" in page:
        with _baidu_lock:
            _baidu_suspend_until = time.time() + 600
        return [], "captcha"
    results = []
    blocks = re.split(r'<div class="[^"]*c-container', page)
    for block in blocks[1:]:
        mu_links = re.findall(r'mu="(https?://[^"]+)"', block[:2000])
        h3s = re.findall(r'<h3[^>]*>(.*?)</h3>', block[:2000], re.S)
        if not mu_links or not h3s:
            continue
        u = mu_links[0]
        t = re.sub(r'<[^>]+>', '', h3s[0]).strip()
        if t and u.startswith("http") and "baidu.com" not in u:
            results.append({
                "url": html.unescape(u),
                "title": html.unescape(t),
                "content": "",
                "engine": "baidu",
            })
        if len(results) >= count:
            break
    if not results and len(page) > 5000:
        with _baidu_lock:
            _baidu_suspend_until = time.time() + 300
        return [], "soft-block (0 results from full page)"
    return results, None


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
            seen_urls = set()
            def _add(new_results):
                for r in new_results:
                    if r["url"] not in seen_urls:
                        seen_urls.add(r["url"])
                        results.append(r)
            if "bing" in engines:
                try:
                    bing_results, bing_reason = search_bing(query)
                    _add(bing_results)
                    if bing_reason:
                        unresponsive.append(["bing", bing_reason])
                except Exception as e:
                    unresponsive.append(["bing", str(e)])
            if "baidu" in engines:
                try:
                    baidu_results, baidu_reason = search_baidu(query)
                    _add(baidu_results)
                    if baidu_reason:
                        unresponsive.append(["baidu", baidu_reason])
                except Exception as e:
                    unresponsive.append(["baidu", str(e)])
            self._json({"results": results, "unresponsive_engines": unresponsive})
        elif parsed.path == "/health":
            self._json({"status": "ok"})
        elif parsed.path == "/fetch":
            qs = parse_qs(parsed.query)
            target_url = qs.get("url", [""])[0]
            if not target_url or not target_url.startswith("http"):
                self._json({"error": "missing or invalid url parameter"})
                return
            try:
                domain = urlparse(target_url).hostname or ''
            except Exception:
                domain = ''
            if _is_domain_cooled(domain):
                self.send_response(403); self.end_headers()
                self.wfile.write(b"domain cooldown (403 rate-limited)")
                return
            referer = qs.get("referer", [""])[0]
            with _fetch_semaphore:
                try:
                    content, status_code = fetch(target_url, timeout=15, referer=referer)
                except subprocess.TimeoutExpired:
                    self.send_response(504); self.end_headers()
                    self.wfile.write(b"Gateway Timeout")
                    return
                except Exception as e:
                    self._json({"error": str(e)})
                    return
            data = content.encode('utf-8', errors='replace')
            self.send_response(status_code if status_code else 200)
            self.send_header("Content-Type", "text/html; charset=utf-8")
            self.send_header("Content-Length", str(len(data)))
            self.end_headers()
            self.wfile.write(data)
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
