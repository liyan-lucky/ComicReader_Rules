#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
漫画浏览器 · 公开漫画源规则自动发现/审计/生成脚本

用途：
  1) 使用搜索引擎/API 发现公开漫画详情页/章节页；
  2) 从已知公开站点首页/分类/更新页直接抓取候选链接；
  3) 抓取公开 HTML，统计章节、图片、登录/付费风险；
  4) 为通过审计的域名生成 ArkTS ComicSourceRule；
  5) 写入 GeneratedSourceRules.ets，App 构建后直接可用。

边界：
  - 只请求公开 HTTP/HTTPS 页面；
  - 不登录、不付费、不绕验证码、不解析加密协议、不伪造 App 协议；
  - 静态无图但浏览器公开可读的站点，生成 render Web 兜底型规则。
"""
from __future__ import annotations

import argparse
import dataclasses
import hashlib
import html
import json
import os
import re
import sys
import time
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional, Sequence, Tuple
from urllib.parse import urlencode, urljoin, urlparse

import requests
from bs4 import BeautifulSoup

try:
    import cloudscraper
    _SCRAPER = cloudscraper.create_scraper(
        browser={"browser": "chrome", "platform": "android", "desktop": False}
    )
except Exception:
    _SCRAPER = None

DEFAULT_UA = "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36"

def _load_config(name: str, default: Any = None) -> Any:
    p = Path(__file__).resolve().parents[2] / "config" / name
    if p.exists():
        try:
            return json.loads(p.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default

_HEADERS_CFG = _load_config("headers.json", {})
DEFAULT_UA = _HEADERS_CFG.get("default_ua", DEFAULT_UA)
_ACCEPT_LANG = _HEADERS_CFG.get("accept_language", "zh-CN,zh;q=0.9,en;q=0.8")
_ACCEPT_HTML = _HEADERS_CFG.get("accept_html", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
_RULE_BOT_UA = _HEADERS_CFG.get("rule_bot_ua", "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot")

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8")
IMAGE_RE = re.compile(r"(?:(?:https?:)?//|/)['\"\\/A-Za-z0-9._~:/?#\[\]@!$&()*+,;=%-]+?\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^\s'\"<>]*)?", re.I)
JS_ESCAPED_IMAGE_RE = re.compile(r"https?:\\/\\/[^\s'\"<>]+?\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\\?[^\s'\"<>]*)?", re.I)
CHAPTER_TEXT_RE = re.compile(r"(第\s*[0-9一二三四五六七八九十百千零〇两]+\s*[话章回]|Chapter\s*\d+|chapter\s*\d+|Chap\.?\s*\d+|Episode\s*\d+|episode\s*\d+|EP\s*\d+|阅读|开始阅读|Read\s*Chapter)", re.I)
CHAPTER_URL_RE = re.compile(r"/(chapter|chap|read|viewer|episode|episodes|cid|manga|comic)[/_\-?=0-9A-Za-z.%]+", re.I)
DETAIL_URL_RE = re.compile(r"/(comic|manga|book|manhua|series|detail|cartoon|webtoon)/?[^/#?]*", re.I)
PUBLIC_WORK_URL_RE = re.compile(r"/(comic|manga|manhua|book|series|webtoon|title|en/[^/]+/[^/]+/list|read|chapter|episode)/?[^/#?]*", re.I)
PAY_LOGIN_TEXT_RE = re.compile(r"(登录后|请登录|注册|充值|VIP|付费|购买|金币|订阅|premium|sign\s*in|log\s*in|subscribe|membership|captcha|验证码|下载APP|客户端)", re.I)
EXCLUDE_URL_RE = re.compile(r"/(login|register|user|member|pay|vip|charge|download|app|news|video|tag|category|rank|comment|forum|bbs|cart|shop)(?:/|$|\?)", re.I)
EXCLUDE_IMAGE_RE = re.compile(r"(logo|avatar|icon|banner|ads?|qrcode|wechat|comment|cover-small|sprite|loading|placeholder)", re.I)

_BLOCKED_CFG = _load_config("blocked_domains.json", {})
_DISCOVER_BLOCKED: List[str] = _BLOCKED_CFG.get("discover_domains", [])
_GENERATE_BLOCKED: List[str] = _BLOCKED_CFG.get("generate_rules", [])
BLOCKED_DOMAIN_KEYWORDS: List[str] = list(dict.fromkeys(_GENERATE_BLOCKED + _DISCOVER_BLOCKED))

KNOWN_SOURCE_SEEDS: Dict[str, List[str]] = _load_config("seed_sites.json", {})
AGGREGATOR_SITES: Dict[str, List[str]] = _load_config("aggregator_sites.json", {})
RULE_KEYWORDS: Dict[str, List[str]] = _load_config("rule_keywords.json", {})


@dataclasses.dataclass
class Candidate:
    url: str
    title: str = ""
    snippet: str = ""
    engine: str = ""


@dataclasses.dataclass
class PageAudit:
    domain: str
    base_url: str
    detail_url: str
    detail_title: str
    cover_url: Optional[str]
    chapter_count: int
    first_chapter_title: Optional[str]
    first_chapter_url: Optional[str]
    static_image_count: int
    first_image_url: Optional[str]
    needs_render_fallback: bool
    requires_login_or_pay: bool
    status: str
    evidence: Dict[str, object]


def log(msg: str) -> None:
    print(msg, file=sys.stderr, flush=True)


def clean_text(s: str) -> str:
    s = re.sub(r"<script[\s\S]*?</script>|<style[\s\S]*?</style>", " ", s, flags=re.I)
    s = re.sub(r"<[^>]+>", " ", s)
    s = html.unescape(s)
    s = re.sub(r"\s+", " ", s).strip()
    return s


def canonical_url(url: str, base: str = "") -> str:
    if not url:
        return ""
    url = html.unescape(url.strip())
    url = url.replace("\\/", "/")
    if url.startswith("//"):
        parsed_base = urlparse(base) if base else None
        scheme = parsed_base.scheme if parsed_base and parsed_base.scheme else "https"
        return scheme + ":" + url
    if url.startswith("/") and base:
        return urljoin(base, url)
    if base and not re.match(r"^https?://", url, re.I):
        return urljoin(base, url)
    return url


def domain_of(url: str) -> str:
    return urlparse(url).netloc.lower().replace("www.", "")


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    return domain.replace("www.", "")


def same_site(url: str, domain: str) -> bool:
    host = domain_of(url)
    domain = normalize_domain(domain)
    return host == domain or host.endswith("." + domain)


def base_of(url: str) -> str:
    p = urlparse(url)
    return f"{p.scheme}://{p.netloc}"


def safe_id(domain: str, seed: str = "") -> str:
    core = domain.lower().replace("www.", "")
    core = re.sub(r"[^a-z0-9]+", "_", core).strip("_")
    suffix = ""
    if seed:
        suffix = "_" + hashlib.sha1(seed.encode("utf-8", errors="ignore")).hexdigest()[:8]
    return (core or "generated")[:40] + suffix + "_auto_public"


def fetch(url: str, timeout: int = 15, referer: str = "") -> Optional[str]:
    headers = {"User-Agent": DEFAULT_UA, "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8", "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
    if referer:
        headers["Referer"] = referer
    try:
        if _SCRAPER is not None:
            r = _SCRAPER.get(url, headers=headers, timeout=timeout, allow_redirects=True)
        else:
            r = requests.get(url, headers=headers, timeout=timeout, allow_redirects=True)
        if r.status_code >= 400:
            log(f"[skip] HTTP {r.status_code}: {url}")
            return None
        if not r.encoding or r.encoding.lower() == "iso-8859-1":
            r.encoding = r.apparent_encoding or "utf-8"
        return r.text
    except Exception as e:
        log(f"[skip] fetch failed {url}: {e}")
        return None


def search_brave(query: str, limit: int) -> List[Candidate]:
    key = os.getenv("BRAVE_SEARCH_API_KEY", "").strip()
    if not key:
        return []
    url = "https://api.search.brave.com/res/v1/web/search?" + urlencode({"q": query, "count": min(limit, 20)})
    try:
        r = requests.get(url, headers={"X-Subscription-Token": key, "User-Agent": DEFAULT_UA}, timeout=15)
        r.raise_for_status()
        data = r.json()
        out: List[Candidate] = []
        for item in data.get("web", {}).get("results", [])[:limit]:
            out.append(Candidate(url=item.get("url", ""), title=clean_text(item.get("title", "")), snippet=clean_text(item.get("description", "")), engine="brave"))
        return [c for c in out if c.url]
    except Exception as e:
        log(f"[warn] Brave search failed: {e}")
        return []


def search_serper(query: str, limit: int) -> List[Candidate]:
    key = os.getenv("SERPER_API_KEY", "").strip()
    if not key:
        return []
    out: List[Candidate] = []
    page_size = min(limit, 10)
    for page in range(1, 11):
        if len(out) >= limit:
            break
        payload = {"q": query, "num": page_size, "gl": "cn", "hl": "zh-cn"}
        if page > 1:
            payload["page"] = page
        try:
            r = requests.post("https://google.serper.dev/search", headers={"X-API-KEY": key, "Content-Type": "application/json"}, json=payload, timeout=15)
            r.raise_for_status()
            data = r.json()
            items = data.get("organic", [])
            if not items:
                break
            for item in items:
                out.append(Candidate(url=item.get("link", ""), title=clean_text(item.get("title", "")), snippet=clean_text(item.get("snippet", "")), engine="serper"))
            if len(items) < page_size:
                break
        except Exception as e:
            log(f"[warn] Serper search page {page} failed: {e}")
            break
    return [c for c in out if c.url][:limit]


def search_google_cse(query: str, limit: int) -> List[Candidate]:
    key = os.getenv("GOOGLE_API_KEY", "").strip()
    cx = os.getenv("GOOGLE_CX", "").strip()
    if not key or not cx:
        return []
    out: List[Candidate] = []
    for start in range(1, min(limit, 20) + 1, 10):
        url = "https://www.googleapis.com/customsearch/v1?" + urlencode({"key": key, "cx": cx, "q": query, "num": min(10, limit - len(out)), "start": start})
        try:
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA}, timeout=15)
            r.raise_for_status()
            data = r.json()
            for item in data.get("items", []):
                out.append(Candidate(url=item.get("link", ""), title=clean_text(item.get("title", "")), snippet=clean_text(item.get("snippet", "")), engine="google_cse"))
            if len(out) >= limit:
                break
        except Exception as e:
            log(f"[warn] Google CSE search failed: {e}")
            break
    return [c for c in out if c.url]


def search_duckduckgo_html(query: str, limit: int, suppress_zero: bool = False) -> List[Candidate]:
    url = "https://duckduckgo.com/html/?" + urlencode({"q": query})
    txt = fetch(url, timeout=20)
    if not txt:
        return []
    soup = BeautifulSoup(txt, "lxml")
    out: List[Candidate] = []
    for a in soup.select("a.result__a, a[href]"):
        href = a.get("href") or ""
        title = clean_text(a.get_text(" "))
        if not href or "duckduckgo.com" in href or len(title) < 2:
            continue
        if href.startswith("//duckduckgo.com/l/?") or "uddg=" in href:
            from urllib.parse import parse_qs, urlparse, unquote
            qs = parse_qs(urlparse(href).query)
            if qs.get("uddg"):
                href = unquote(qs["uddg"][0])
        if re.match(r"^https?://", href):
            out.append(Candidate(url=href, title=title, engine="duckduckgo_html"))
        if len(out) >= limit:
            break
    return unique_candidates(out)


def _searxng_url() -> str:
    url = os.getenv("SEARXNG_URL", "").strip()
    if url:
        return url
    cfg_path = Path(__file__).resolve().parents[2] / "config" / "search.json"
    if cfg_path.exists():
        try:
            cfg = json.loads(cfg_path.read_text(encoding="utf-8"))
            url = (cfg.get("searxng") or {}).get("url", "").strip()
            if url:
                return url
        except Exception:
            pass
    return ""


def search_searxng(query: str, limit: int, suppress_zero: bool = False) -> List[Candidate]:
    base_url = _searxng_url()
    if not base_url:
        return []
    all_out: List[Candidate] = []
    seen_urls: set = set()
    max_pages_raw = _load_config("search_endpoints.json", {}).get("searxng", {}).get("max_pages", 3)
    max_pages = max_pages_raw if max_pages_raw and max_pages_raw > 0 else 999
    for page in range(1, max_pages + 1):
        if len(all_out) >= limit:
            break
        try:
            url = f"{base_url.rstrip('/')}/search?" + urlencode({"q": query, "format": "json", "pageno": page})
            r = requests.get(url, headers={"User-Agent": DEFAULT_UA, "Accept": "application/json"}, timeout=15)
            r.raise_for_status()
            data = r.json()
            results = data.get("results", [])
            if not results:
                if page == 1 and not suppress_zero:
                    unresponsive = data.get("unresponsive_engines", [])
                    if unresponsive:
                        log(f"[warn] SearXNG 0 results for '{query[:50]}', unresponsive engines: {unresponsive}")
                    else:
                        log(f"[warn] SearXNG 0 results for '{query[:50]}', no unresponsive engines reported")
                break
            for item in results:
                u = item.get("url", "")
                if u and u not in seen_urls:
                    seen_urls.add(u)
                    all_out.append(Candidate(url=u, title=clean_text(item.get("title", "")), snippet=clean_text(item.get("content", "")), engine="searxng"))
        except Exception as e:
            if not suppress_zero:
                log(f"[warn] SearXNG page {page} failed: {e}")
            break
    if not all_out and not suppress_zero:
        log(f"[warn] SearXNG returned 0 results for '{query}'")
    return [c for c in all_out if c.url][:limit]


def unique_candidates(items: Iterable[Candidate]) -> List[Candidate]:
    seen = set()
    out = []
    for c in items:
        u = c.url.split("#", 1)[0]
        if not u or u in seen:
            continue
        seen.add(u)
        c.url = u
        out.append(c)
    return out


def _has_search_api() -> bool:
    return bool(
        _searxng_url()
        or os.getenv("BRAVE_SEARCH_API_KEY", "").strip()
        or os.getenv("SERPER_API_KEY", "").strip()
        or os.getenv("GOOGLE_API_KEY", "").strip()
    )


def search_web(query: str, limit: int, suppress_zero: bool = False) -> List[Candidate]:
    candidates: List[Candidate] = []
    seen_urls: set = set()
    def _merge(items: List[Candidate]) -> None:
        for c in items:
            u = c.url.split("#", 1)[0]
            if u and u not in seen_urls:
                seen_urls.add(u)
                c.url = u
                candidates.append(c)

    _merge(search_searxng(query, limit, suppress_zero=suppress_zero))
    if len(candidates) >= limit:
        return candidates[:limit]

    _merge(search_duckduckgo_html(query, limit, suppress_zero=suppress_zero))
    if len(candidates) >= limit:
        return candidates[:limit]

    per_engine = max(limit // 2, 5)
    _merge(search_brave(query, per_engine))
    if len(candidates) >= limit:
        return candidates[:limit]

    _merge(search_serper(query, per_engine))
    if len(candidates) >= limit:
        return candidates[:limit]

    _merge(search_google_cse(query, per_engine))
    return candidates[:limit]


def likely_content_url(url: str) -> bool:
    if not url.startswith(("http://", "https://")):
        return False
    if EXCLUDE_URL_RE.search(url):
        return False
    host = domain_of(url)
    if any(bad in host for bad in BLOCKED_DOMAIN_KEYWORDS):
        return False
    if DETAIL_URL_RE.search(url) or CHAPTER_URL_RE.search(url):
        return True
    path = urlparse(url).path.lower()
    if re.search(r"/(comic|manga|manhua|webtoon|chapter|title|work|story|read|episode|douluo|soul-land)", path, re.I):
        return True
    if re.search(r"(comic|manga|manhua|webtoon|chapter|douluo|soul-land)", url, re.I):
        return True
    return False


def likely_seed_candidate_url(url: str, seed_domain: str = "") -> bool:
    if not url.startswith(("http://", "https://")):
        return False
    if EXCLUDE_URL_RE.search(url):
        return False
    host = domain_of(url)
    if any(bad in host for bad in BLOCKED_DOMAIN_KEYWORDS):
        return False
    if PUBLIC_WORK_URL_RE.search(url) or likely_content_url(url):
        return True
    if seed_domain and same_site(url, seed_domain):
        path = urlparse(url).path.lower()
        if re.search(r"/\d+|/title/|/work/|/story/|/comic/|/manga/|/manhua/|/read/|/chapter/|/episode/|/webtoon/", path):
            return True
        if path.count("/") >= 2 and not path.endswith(("/", ".html", ".htm", ".php")):
            return True
    return False


def seed_urls_for_domains(domains: Sequence[str], explicit_seed_urls: Sequence[str], language: str = "") -> List[str]:
    urls: List[str] = []
    for u in explicit_seed_urls:
        if u.strip():
            urls.append(u.strip())
    if language:
        for u in AGGREGATOR_SITES.get(language, []):
            if u.strip() and u.strip() not in urls:
                urls.append(u.strip())
    for domain in domains:
        d = normalize_domain(domain)
        if not d:
            continue
        urls.extend(KNOWN_SOURCE_SEEDS.get(d, []))
        urls.append(f"https://{d}/")
        urls.append(f"https://www.{d}/")
    seen = set()
    out: List[str] = []
    for u in urls:
        if not u or u in seen:
            continue
        seen.add(u)
        out.append(u)
    return out


def extract_seed_candidates(html_text: str, seed_url: str, target_domain: str, limit: int) -> List[Candidate]:
    soup = BeautifulSoup(html_text, "lxml")
    out: List[Candidate] = []
    for a in soup.select("a[href]"):
        href = canonical_url(a.get("href", ""), seed_url)
        title = clean_text(a.get_text(" "))[:160]
        if not href or not same_site(href, target_domain):
            continue
        if not likely_seed_candidate_url(href, target_domain):
            continue
        out.append(Candidate(url=href, title=title, snippet=f"seed:{seed_url}", engine="seed_page"))
    for m in re.finditer(r"['\"]((?:https?:)?//[^'\"<>]+|/[^'\"<>\s]+)['\"]", html_text):
        href = canonical_url(m.group(1), seed_url)
        if not href or not same_site(href, target_domain):
            continue
        if not likely_seed_candidate_url(href, target_domain):
            continue
        out.append(Candidate(url=href, title="", snippet=f"seed-json:{seed_url}", engine="seed_page"))
    return unique_candidates(out)[:limit]


def _fetch_seed_page(seed_url: str) -> Tuple[str, Optional[str], str]:
    target_domain = normalize_domain(domain_of(seed_url) or urlparse(seed_url).netloc)
    txt = fetch(seed_url, timeout=20)
    return seed_url, txt, target_domain


def discover_seed_candidates(
    domains: Sequence[str],
    explicit_seed_urls: Sequence[str],
    per_seed_limit: int,
    max_seed_candidates: int,
    sleep: float,
    deadline_monotonic: Optional[float] = None,
    max_workers: int = 6,
    language: str = "",
) -> Tuple[List[Candidate], Dict[str, object]]:
    from concurrent.futures import ThreadPoolExecutor, as_completed

    seed_urls = seed_urls_for_domains(domains, explicit_seed_urls, language=language)
    out: List[Candidate] = []
    seed_stats = []
    stopped_by_deadline = False
    target_domain_count = len({normalize_domain(domain_of(u) or urlparse(u).netloc) for u in seed_urls}) or 1
    per_domain_seed_limit = max(per_seed_limit, max_seed_candidates // target_domain_count)
    seed_candidate_counts: Dict[str, int] = {}

    seed_results: Dict[str, Tuple[Optional[str], str]] = {}
    with ThreadPoolExecutor(max_workers=max_workers) as pool:
        futures = {pool.submit(_fetch_seed_page, u): u for u in seed_urls}
        for fut in as_completed(futures):
            if deadline_monotonic is not None and time.monotonic() >= deadline_monotonic:
                stopped_by_deadline = True
                log("[stop] time budget reached during seed discovery")
                break
            try:
                url, txt, target_domain = fut.result()
                seed_results[url] = (txt, target_domain)
            except Exception:
                url = futures[fut]
                seed_results[url] = (None, "")

    for seed_url in seed_urls:
        if seed_url not in seed_results:
            continue
        txt, target_domain = seed_results[seed_url]
        if not target_domain:
            target_domain = normalize_domain(domain_of(seed_url) or urlparse(seed_url).netloc)
        if not txt:
            seed_stats.append({"seedUrl": seed_url, "status": "fetch_failed", "candidateCount": 0})
            continue
        found = extract_seed_candidates(txt, seed_url, target_domain, per_seed_limit)
        selected: List[Candidate] = []
        for item in found:
            if seed_candidate_counts.get(target_domain, 0) >= per_domain_seed_limit:
                break
            selected.append(item)
            seed_candidate_counts[target_domain] = seed_candidate_counts.get(target_domain, 0) + 1
        seed_stats.append({
            "seedUrl": seed_url,
            "status": "ok",
            "candidateCount": len(found),
            "selectedCount": len(selected),
            "targetDomain": target_domain,
        })
        out.extend(selected)
        out = unique_candidates(out)
        if len(out) >= max_seed_candidates:
            out = out[:max_seed_candidates]
            break
    return out, {
        "enabled": True,
        "seedUrlCount": len(seed_urls),
        "stoppedByTimeBudget": stopped_by_deadline,
        "seedPageStats": seed_stats,
        "perDomainSeedLimit": per_domain_seed_limit,
        "seedCandidateCounts": dict(sorted(seed_candidate_counts.items())),
        "candidateCount": len(out),
        "candidateSamples": [dataclasses.asdict(c) for c in out[:30]],
    }


def extract_meta_title(soup: BeautifulSoup, html_text: str) -> str:
    for sel in ["h1", "meta[property='og:title']", "title"]:
        el = soup.select_one(sel)
        if not el:
            continue
        val = el.get("content") if el.name == "meta" else el.get_text(" ")
        val = clean_text(val or "")
        if val:
            return val[:120]
    return clean_text(html_text)[:80]


def extract_cover(soup: BeautifulSoup, base: str) -> Optional[str]:
    for sel in ["meta[property='og:image']", "meta[name='twitter:image']"]:
        el = soup.select_one(sel)
        if el and el.get("content"):
            return canonical_url(el.get("content", ""), base)
    preferred = []
    rest = []
    for img in soup.select("img"):
        src = first_attr(img, ["data-original", "data-src", "data-lazy-src", "data-url", "src", "srcset"])
        if not src:
            continue
        src = src.split()[0].split(",")[0]
        src = canonical_url(src, base)
        text = " ".join([img.get("class", [""])[0] if isinstance(img.get("class"), list) and img.get("class") else str(img.get("class", "")), img.get("alt", ""), src])
        if re.search(r"cover|poster|thumb|book|comic", text, re.I):
            preferred.append(src)
        else:
            rest.append(src)
    for src in preferred + rest:
        if src and not EXCLUDE_IMAGE_RE.search(src):
            return src
    return None


def first_attr(tag, names: Sequence[str]) -> str:
    for n in names:
        val = tag.get(n)
        if val:
            return str(val)
    return ""


def extract_chapters(soup: BeautifulSoup, base: str) -> List[Tuple[str, str]]:
    out: List[Tuple[str, str]] = []
    for a in soup.select("a[href]"):
        href = canonical_url(a.get("href", ""), base)
        text = clean_text(a.get_text(" "))[:160]
        if not href or EXCLUDE_URL_RE.search(href):
            continue
        is_chapter = bool(CHAPTER_TEXT_RE.search(text) or CHAPTER_URL_RE.search(href))
        is_noise = bool(re.search(r"(分类|标签|首页|排行|评论|推荐|更多|作者|登录|注册|上一章|下一章)", text)) and not CHAPTER_TEXT_RE.search(text)
        if is_chapter and not is_noise:
            out.append((text or href.rsplit("/", 1)[-1], href))
    seen = set()
    uniq: List[Tuple[str, str]] = []
    for title, url in out:
        if url in seen:
            continue
        seen.add(url)
        uniq.append((title, url))
    return uniq[:500]


def extract_images_from_html(html_text: str, base: str, depth: int = 0) -> List[str]:
    soup = BeautifulSoup(html_text, "lxml")
    imgs: List[str] = []
    for img in soup.select("img"):
        for attr in ["data-original", "data-src", "data-lazy-src", "data-url", "data-cfsrc", "src", "srcset"]:
            val = img.get(attr)
            if not val:
                continue
            parts = re.split(r",\s*", str(val))
            for part in parts:
                src = part.strip().split()[0] if part.strip() else ""
                if src:
                    imgs.append(canonical_url(src, base))
    for source in soup.select("source[srcset]"):
        val = source.get("srcset") or ""
        for part in re.split(r",\s*", str(val)):
            src = part.strip().split()[0] if part.strip() else ""
            if src:
                imgs.append(canonical_url(src, base))
    if depth < 2:
        for nos in soup.select("noscript"):
            inner = nos.decode_contents()
            if inner and inner != html_text:
                imgs.extend(extract_images_from_html(inner, base, depth + 1))
    for m in IMAGE_RE.finditer(html_text):
        imgs.append(canonical_url(m.group(0), base))
    for m in JS_ESCAPED_IMAGE_RE.finditer(html_text):
        imgs.append(canonical_url(m.group(0).replace("\\/", "/"), base))
    seen = set()
    out = []
    for u in imgs:
        if not u or u in seen:
            continue
        if not re.search(r"\.(jpg|jpeg|png|webp|gif|avif)(?:\?|$)", u, re.I):
            continue
        if EXCLUDE_IMAGE_RE.search(u):
            continue
        seen.add(u)
        out.append(u)
    return out


def audit_candidate(candidate: Candidate, keyword: str) -> Optional[PageAudit]:
    try:
        if not likely_content_url(candidate.url):
            return None
        detail_html = fetch(candidate.url)
        if not detail_html:
            return None
        detail_soup = BeautifulSoup(detail_html, "lxml")
        base = base_of(candidate.url)
        text = clean_text(detail_html[:50000])
        requires = bool(PAY_LOGIN_TEXT_RE.search(text))
        title = extract_meta_title(detail_soup, detail_html) or candidate.title
        cover = extract_cover(detail_soup, base)
        chapters = extract_chapters(detail_soup, candidate.url)
        if requires and not chapters:
            return PageAudit(
                domain=domain_of(candidate.url), base_url=base, detail_url=candidate.url,
                detail_title=title, cover_url=cover, chapter_count=0,
                first_chapter_title=None, first_chapter_url=None,
                static_image_count=0, first_image_url=None,
                needs_render_fallback=False, requires_login_or_pay=True,
                status="excluded_login_or_pay",
                evidence={"candidateTitle": candidate.title, "candidateSnippet": candidate.snippet, "engine": candidate.engine, "keyword": keyword},
            )
        chapter_url = chapters[0][1] if chapters else candidate.url
        chapter_title = chapters[0][0] if chapters else title
        chapter_html = fetch(chapter_url, referer=candidate.url) if chapter_url else None
        images = extract_images_from_html(chapter_html or "", chapter_url or base) if chapter_html else []
        if not chapters and not images:
            return None
        if requires and not images:
            status = "excluded_login_or_pay"
        elif images:
            status = "native_scroll_ok"
        else:
            status = "render_fallback_needed"
        return PageAudit(
            domain=domain_of(candidate.url),
            base_url=base,
            detail_url=candidate.url,
            detail_title=title,
            cover_url=cover,
            chapter_count=len(chapters),
            first_chapter_title=chapter_title,
            first_chapter_url=chapter_url,
            static_image_count=len(images),
            first_image_url=images[0] if images else None,
            needs_render_fallback=(len(images) == 0 and bool(chapter_html)),
            requires_login_or_pay=requires,
            status=status,
            evidence={
                "candidateTitle": candidate.title,
                "candidateSnippet": candidate.snippet,
                "engine": candidate.engine,
                "keyword": keyword,
            },
        )
    except Exception as exc:
        log(f"[skip] audit failed {candidate.url}: {exc}")
        return None


def choose_best_by_domain(audits: List[PageAudit], per_domain_limit: int = 1, new_rule_domains_by_sig: Optional[Dict[tuple, List[str]]] = None) -> List[PageAudit]:
    grouped: Dict[str, List[PageAudit]] = {}
    def score(a: PageAudit) -> int:
        return (1000 if a.status == "native_scroll_ok" else 500 if a.status == "render_fallback_needed" else 0) + a.static_image_count * 3 + a.chapter_count
    for a in audits:
        if a.status == "excluded_login_or_pay":
            continue
        grouped.setdefault(a.domain, []).append(a)
    chosen: List[PageAudit] = []
    for domain, items in grouped.items():
        ranked = sorted(items, key=lambda a: (-score(a), a.detail_url))
        chosen.extend(ranked[:max(1, per_domain_limit)])
    return sorted(chosen, key=lambda a: (a.domain, -a.static_image_count, -a.chapter_count, a.detail_url))


def json_str(s: str) -> str:
    return json.dumps(s, ensure_ascii=False)


_BAD_TITLE_RE = re.compile(r"^(登录|注册|首页|排行榜|漫画$|Manga$|//|/\*|<!|var |let |const |function |window\.|document\.|{\s*$|404|403|500|Error|Forbidden|Not Found|移动|下载|客户端)", re.I)

def _clean_rule_title(detail_title: str, first_chapter_title: str, domain: str) -> str:
    candidates = [detail_title, first_chapter_title]
    for t in candidates:
        t = clean_text(t or "")[:48]
        if not t:
            continue
        if _BAD_TITLE_RE.match(t):
            continue
        if len(t) < 2:
            continue
        return t
    return domain

def ets_rule_for_audit(a: PageAudit, domain_applicability_list: Optional[List[str]] = None) -> str:
    rid = safe_id(a.domain, a.detail_url)
    title = _clean_rule_title(a.detail_title, a.first_chapter_title, a.domain)
    name = f"{title} - {a.domain} 自动公开规则"
    detail_chapter_regex = r"<a[^>]+href=[\"']([^\"']*(?:/chapter/|/chap/|/read/|/viewer|chapter|episode|cid=)[^\"']*)[\"'][^>]*>([\s\S]{0,220}?(?:第\s*\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\s\S]{0,120}?)<\/a>"
    reader_image_regex = r"<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|<source[^>]+srcset=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\/\/[^\"']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])"
    next_regex = r"<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\s*下一页\s*|\s*下页\s*|\s*Next\s*|\s*next\s*|\s*&gt;\s*|\s*›\s*)<\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']"
    desc = (
        f"GitHub RuleBot 自动发现公开访问规则。审计详情：章节数 {a.chapter_count}，"
        f"静态图片数 {a.static_image_count}，渲染兜底 {'需要' if a.needs_render_fallback else '可选'}；"
        "只处理公开页面，不登录、不付费、不绕验证码/反爬。"
    )
    dal_lines = ""
    if domain_applicability_list:
        dal_json = json.dumps(sorted(set(domain_applicability_list)), ensure_ascii=False)
        dal_lines = f",\n    domainApplicabilityList: {dal_json}"
    return f"""  {{
    id: {json_str(rid)},
    name: {json_str(name)},
    description: {json_str(desc)},
    homepage: {json_str(a.base_url)},
    searchUrl: '',
    searchMethod: 'url-only',
    searchItemRegex: `<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{{0,260}}?)<\\/a>`,
    searchTitleGroups: [2],
    searchUrlGroups: [1],
    searchCoverGroups: [],
    searchResultIsChapter: false,
    searchFilterByKeyword: false,
    detailChapterRegex: `{detail_chapter_regex}`,
    detailChapterTitleGroups: [2],
    detailChapterUrlGroups: [1],
    detailChapterFilter: true,
    readerImageRegex: `{reader_image_regex}`,
    readerImageGroups: [1, 2, 3, 4],
    userAgent: COMMON_USER_AGENT,
    referer: {json_str(a.base_url + '/')},
    readerNextPageRegex: `{next_regex}`,
    readerNextPageUrlGroups: [1, 2, 3],
    maxReaderPages: 12{dal_lines}
  }}"""


def write_ets(audits: List[PageAudit], out: Path, domain_applicability_map: Optional[Dict[str, List[str]]] = None) -> None:
    def _dal_for(a: PageAudit) -> Optional[List[str]]:
        if domain_applicability_map:
            return domain_applicability_map.get(a.domain)
        return None
    body = ",\n".join(ets_rule_for_audit(a, domain_applicability_list=_dal_for(a)) for a in audits)
    if body:
        body = body + "\n"
    text = f"""import {{ ComicSourceRule }} from '../model/ComicModels';

const COMMON_USER_AGENT = 'Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot';

/**
 * 自动生成文件：请不要手工修改。
 * 生成命令：python3 tools/rule_discovery/generate_rules.py --keyword "斗罗大陆"
 * 生成逻辑：搜索公开网页 / 公开站点种子 → 审计详情/章节/图片 → 生成 ComicSourceRule。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
{body}];
"""
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(text, encoding="utf-8")


def write_report(audits: List[PageAudit], excluded: List[PageAudit], out: Path, queries: List[str], stats: Dict[str, object], domain_applicability_map: Optional[Dict[str, List[str]]] = None) -> None:
    def _enrich(a: PageAudit) -> Dict[str, object]:
        d = dataclasses.asdict(a)
        if domain_applicability_map and a.domain in domain_applicability_map:
            d["domainApplicabilityList"] = domain_applicability_map[a.domain]
        return d
    data = {
        "tool": "ComicReaderHarmony RuleBot",
        "version": "1.1.0",
        "queries": queries,
        "generatedCount": len(audits),
        "excludedCount": len(excluded),
        "generated": [_enrich(a) for a in audits],
        "excluded": [dataclasses.asdict(a) for a in excluded],
        "stats": stats,
        "limits": [
            "只请求公开 HTTP/HTTPS 页面",
            "不登录、不付费、不绕验证码、不解析加密接口、不伪造 App 协议",
            "静态无图但浏览器公开可读的页面由 App 的渲染卷轴兜底处理",
        ],
    }
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")


def _is_blocked_domain(domain: str) -> bool:
    return any(kw in domain.lower() for kw in BLOCKED_DOMAIN_KEYWORDS)


def build_queries(keywords: List[str], domains: List[str], seeded_domains: Optional[set] = None) -> List[str]:
    _GENERIC_PATTERNS = {"漫画", "manga", "manhua", "webtoon", "comic", "在线", "免费", "阅读", "推荐", "更新", "网站", "连载", "追更", "大全", "read", "online", "free", "site", "list"}
    generic_kws = [kw.strip() for kw in keywords if any(p in kw.lower() for p in _GENERIC_PATTERNS)]
    specific_kws = [kw.strip() for kw in keywords if kw.strip() and not any(p in kw.lower() for p in _GENERIC_PATTERNS)]
    ordered_kws = generic_kws + specific_kws
    queries: List[str] = []
    has_search_api = _has_search_api()
    seeded = seeded_domains or set()
    clean_domains = [d for d in domains if not _is_blocked_domain(d)]
    for kw in ordered_kws:
        kw = kw.strip()
        if not kw:
            continue
        if has_search_api:
            queries.append(kw)
            if re.search(r"[\u4e00-\u9fff]", kw):
                queries.append(f"{kw} 漫画")
            else:
                queries.append(f"{kw} manga read")
            if clean_domains:
                for d in clean_domains:
                    if d in seeded:
                        continue
                    queries.append(f"site:{d} {kw}")
        else:
            bases = [kw, f"{kw} 漫画 在线阅读", f"{kw} manga chapter read", f"{kw} manhua read online"]
            for b in bases:
                if clean_domains:
                    for d in clean_domains:
                        if d in seeded:
                            continue
                        queries.append(f"site:{d} {b}")
                else:
                    queries.append(b)
    return list(dict.fromkeys(queries))


def _rule_signature_from_dict(rule: Dict[str, Any]) -> tuple:
    return (
        rule.get("detailChapterRegex", ""),
        rule.get("readerImageRegex", ""),
        rule.get("readerNextPageRegex", ""),
        rule.get("searchUrl", ""),
        rule.get("searchItemRegex", ""),
    )


def _rule_domain_from_dict(rule: Dict[str, Any]) -> str:
    h = rule.get("homepage", "")
    return normalize_domain(h.replace("https://", "").replace("http://", "").split("/")[0])


def _audit_rule_signature(a: PageAudit) -> tuple:
    detail_chapter_regex = r"<a[^>]+href=[\"']([^\"']*(?:/chapter/|/chap/|/read/|/viewer|chapter|episode|cid=)[^\"']*)[\"'][^>]*>([\s\S]{0,220}?(?:第\s*\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\s\S]{0,120}?)<\/a>"
    reader_image_regex = r"<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|<source[^>]+srcset=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\/\/[^\"']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])"
    next_regex = r"<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\s*下一页\s*|\s*下页\s*|\s*Next\s*|\s*next\s*|\s*&gt;\s*|\s*›\s*)<\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']"
    return (detail_chapter_regex, reader_image_regex, next_regex, "", "")


def main() -> int:
    started_at = time.monotonic()
    ap = argparse.ArgumentParser(description="自动搜索公开漫画页面并生成漫画浏览器规则")
    ap.add_argument("--keyword", action="append", default=[], help="搜索关键词，可重复，如：--keyword 斗罗大陆 --keyword 'Soul Land'")
    ap.add_argument("--keywords-file", action="append", default=[], help="关键词文件路径（每行一个，#注释），可重复")
    ap.add_argument("--domain", action="append", default=[], help="限定域名，可重复，如：--domain kaixinman.com")
    ap.add_argument("--domains-file", action="append", default=[], help="域名文件路径（每行一个，#注释），可重复")
    ap.add_argument("--seed-url", action="append", default=[], help="公开站点入口种子页，可重复；脚本会从页面抓取站内漫画候选链接")
    ap.add_argument("--no-seed-discovery", action="store_true", help="关闭公开站点种子抓取，只使用搜索引擎候选")
    ap.add_argument("--seed-limit", type=int, default=300, help="最多保留多少个种子候选链接")
    ap.add_argument("--per-seed-limit", type=int, default=80, help="每个种子页最多抓取多少个候选链接")
    ap.add_argument("--limit", type=int, default=20, help="每个查询最多取多少搜索结果")
    ap.add_argument("--max-audit-candidates", type=int, default=0, help="最多审计多少个候选页；0 表示不限制")
    ap.add_argument("--per-domain-audit-limit", type=int, default=0, help="每个域名最多审计多少个候选页；0 表示不限制")
    ap.add_argument("--per-domain-generated-limit", type=int, default=1, help="每个域名最多保留多少条通过审计的规则")
    ap.add_argument("--max-generated", type=int, default=30, help="最多生成多少个域名规则")
    ap.add_argument("--report", default="entry/src/main/resources/rawfile/audit/generated_rulebot_report.json")
    ap.add_argument("--language-code", default="mixed", help="本次生成使用的语种代码，如 zh-Hans / zh-Hant / en")
    ap.add_argument("--language-name", default="Mixed", help="本次生成使用的语种名称")
    ap.add_argument("--sleep", type=float, default=0.6, help="请求间隔，避免压测公开站点")
    ap.add_argument("--time-budget-seconds", type=int, default=0, help="最多运行秒数；达到后写出已有结果并正常结束，0 表示不限制")
    ap.add_argument("--search-budget-seconds", type=int, default=0, help="搜索阶段最多运行秒数；0 表示不限制，达到后直接进入审计阶段")
    ap.add_argument("--max-consecutive-zero-search", type=int, default=50, help="连续多少次搜索返回0结果后提前跳过搜索阶段")
    ap.add_argument("--suppress-zero-results", action="store_true", help="零结果搜索不输出警告")
    args = ap.parse_args()

    def elapsed_seconds() -> int:
        return int(time.monotonic() - started_at)

    def budget_exceeded() -> bool:
        return args.time_budget_seconds > 0 and elapsed_seconds() >= args.time_budget_seconds

    deadline_monotonic = started_at + args.time_budget_seconds if args.time_budget_seconds > 0 else None

    keywords = args.keyword or []
    for kf in args.keywords_file:
        kf_path = Path(kf)
        if not kf_path.exists():
            log(f"[warn] keywords file not found: {kf}")
            continue
        for line in kf_path.read_text(encoding="utf-8").splitlines():
            line = line.strip()
            if line and not line.startswith("#"):
                keywords.append(line)
    if not keywords and args.language_code != "mixed":
        keywords = RULE_KEYWORDS.get(args.language_code, [])
    if not keywords:
        keywords = RULE_KEYWORDS.get("zh-Hans", [])
    log(f"[info] keywords: {len(keywords)} (from args: {len(args.keyword)}, from files: {len(args.keywords_file)}, from json: {len(RULE_KEYWORDS.get(args.language_code, []))})")
    domains = args.domain or []
    for df in args.domains_file:
        df_path = Path(df)
        if not df_path.exists():
            log(f"[warn] domains file not found: {df}")
            continue
        for line in df_path.read_text(encoding="utf-8").splitlines():
            line = line.strip()
            if line and not line.startswith("#"):
                domains.append(line)
    seeded_domains = set(KNOWN_SOURCE_SEEDS.keys()) if not args.no_seed_discovery else set()

    already_audited_domains: set = set()
    already_generated_per_domain: Dict[str, int] = {}
    existing_rule_signatures: Dict[tuple, List[str]] = {}
    report_path = Path(args.report)
    if report_path.exists():
        try:
            old = json.loads(report_path.read_text(encoding="utf-8"))
            for item in old.get("generated", []):
                d = normalize_domain(item.get("domain", ""))
                if d:
                    already_audited_domains.add(d)
                    already_generated_per_domain[d] = already_generated_per_domain.get(d, 0) + 1
            if already_audited_domains:
                log(f"[info] loaded {len(already_audited_domains)} previously audited domains from existing report")
        except Exception:
            pass

    existing_rules_paths = [
        Path(f"rules/index.{args.language_code}.json") if args.language_code != "mixed" else None,
        Path("rules/index.json"),
        Path("generated/index.json"),
    ]
    for erp in existing_rules_paths:
        if erp is None or not erp.exists():
            continue
        try:
            er_data = json.loads(erp.read_text(encoding="utf-8"))
            for rule in er_data.get("rules", []):
                sig = _rule_signature_from_dict(rule)
                domain = _rule_domain_from_dict(rule)
                if sig and domain:
                    existing_rule_signatures.setdefault(sig, []).append(domain)
            if existing_rule_signatures:
                log(f"[info] loaded existing rule signatures from {erp}: {len(existing_rule_signatures)} unique patterns covering {sum(len(v) for v in existing_rule_signatures.values())} domain entries")
                break
        except Exception:
            pass

    queries = build_queries(keywords, domains, seeded_domains | already_audited_domains)
    log(f"[info] queries: {len(queries)} (seeded+audited domains excluded from site: queries: {len(seeded_domains | already_audited_domains)})")

    raw_candidates: List[Candidate] = []
    query_stats = []
    search_engine_counts: Dict[str, int] = {}
    search_stopped_by_time_budget = False

    seed_stats: Dict[str, object] = {"enabled": False, "candidateCount": 0}
    if not args.no_seed_discovery:
        seed_candidates, seed_stats = discover_seed_candidates(
            domains=domains,
            explicit_seed_urls=args.seed_url,
            per_seed_limit=args.per_seed_limit,
            max_seed_candidates=args.seed_limit,
            sleep=args.sleep,
            deadline_monotonic=deadline_monotonic,
            language=args.language_code,
        )
        for c in seed_candidates:
            search_engine_counts[c.engine or "unknown"] = search_engine_counts.get(c.engine or "unknown", 0) + 1
        raw_candidates += seed_candidates

    consecutive_search_403 = 0
    consecutive_zero_search = 0
    search_deadline = started_at + args.search_budget_seconds if args.search_budget_seconds > 0 else None
    for q in queries:
        if budget_exceeded():
            search_stopped_by_time_budget = True
            log(f"[stop] time budget reached during search after {elapsed_seconds()}s")
            break
        if search_deadline is not None and time.monotonic() >= search_deadline:
            search_stopped_by_time_budget = True
            log(f"[stop] search budget reached after {elapsed_seconds()}s, moving to audit")
            break
        if consecutive_search_403 >= 5:
            log(f"[stop] search engine consistently returning 403, skipping remaining {len(queries) - len(query_stats)} queries")
            break
        if args.max_consecutive_zero_search > 0 and consecutive_zero_search >= args.max_consecutive_zero_search and len(raw_candidates) > 0:
            log(f"[stop] {consecutive_zero_search} consecutive zero-result searches, moving to audit with {len(raw_candidates)} candidates")
            break
        log(f"[search] {q}")
        found = search_web(q, args.limit, suppress_zero=args.suppress_zero_results)
        if not found and not _has_search_api():
            consecutive_search_403 += 1
        else:
            consecutive_search_403 = 0
        query_stats.append({"query": q, "candidateCount": len(found), "engines": sorted(set(c.engine for c in found if c.engine))})
        for c in found:
            search_engine_counts[c.engine or "unknown"] = search_engine_counts.get(c.engine or "unknown", 0) + 1
        raw_candidates += found
        if found:
            consecutive_zero_search = 0
        else:
            consecutive_zero_search += 1
        time.sleep(args.sleep)

    raw_candidate_count = len(raw_candidates)
    raw_candidates = unique_candidates(raw_candidates)
    log(f"[info] candidates: {len(raw_candidates)}")

    audits: List[PageAudit] = []
    excluded: List[PageAudit] = []
    audit_stats = {
        "skippedNonContentUrl": 0,
        "skippedPerDomainAuditLimit": 0,
        "skippedMaxAuditCandidates": 0,
        "skippedDomainCoveredByExistingRule": 0,
        "auditFailedNoPublicChapterOrImage": 0,
        "auditedCandidateCount": 0,
        "timeBudgetExceeded": False,
        "candidateSamples": [dataclasses.asdict(c) for c in raw_candidates[:30]],
    }
    per_domain_audit_counts: Dict[str, int] = {}
    new_rule_domains_by_sig: Dict[tuple, List[str]] = {}
    for c in raw_candidates:
        if budget_exceeded():
            audit_stats["timeBudgetExceeded"] = True
            log(f"[stop] time budget reached after {elapsed_seconds()}s; writing partial results")
            break
        if not likely_content_url(c.url):
            audit_stats["skippedNonContentUrl"] += 1
            continue
        candidate_domain = domain_of(c.url)
        nd = normalize_domain(candidate_domain)
        if already_generated_per_domain.get(nd, 0) >= args.per_domain_generated_limit:
            audit_stats.setdefault("skippedDomainAtLimit", 0)
            audit_stats["skippedDomainAtLimit"] += 1
            continue
        if existing_rule_signatures:
            covered = False
            for sig, domains in existing_rule_signatures.items():
                if nd in domains or nd in [normalize_domain(d) for d in domains]:
                    covered = True
                    break
            if covered:
                audit_stats["skippedDomainCoveredByExistingRule"] += 1
                continue
        if args.max_audit_candidates > 0 and audit_stats["auditedCandidateCount"] >= args.max_audit_candidates:
            audit_stats["skippedMaxAuditCandidates"] += 1
            log(f"[stop] max audit candidates reached: {args.max_audit_candidates}")
            break
        if args.per_domain_audit_limit > 0 and per_domain_audit_counts.get(candidate_domain, 0) >= args.per_domain_audit_limit:
            audit_stats["skippedPerDomainAuditLimit"] += 1
            continue
        log(f"[audit] {c.url}")
        per_domain_audit_counts[candidate_domain] = per_domain_audit_counts.get(candidate_domain, 0) + 1
        audit_stats["auditedCandidateCount"] += 1
        a = audit_candidate(c, keywords[0])
        if not a:
            audit_stats["auditFailedNoPublicChapterOrImage"] += 1
            continue
        if a.status == "excluded_login_or_pay":
            excluded.append(a)
        else:
            audits.append(a)
            sig = _audit_rule_signature(a)
            new_rule_domains_by_sig.setdefault(sig, []).append(a.domain)
        time.sleep(args.sleep)

    chosen = choose_best_by_domain(audits, args.per_domain_generated_limit, new_rule_domains_by_sig)[: args.max_generated]

    domain_applicability_map: Dict[str, List[str]] = {}
    for a in chosen:
        sig = _audit_rule_signature(a)
        dal = list(dict.fromkeys(new_rule_domains_by_sig.get(sig, []) + existing_rule_signatures.get(sig, [])))
        domain_applicability_map[a.domain] = dal
    stats = {
        "language": {
            "code": args.language_code,
            "name": args.language_name,
        },
        "requestedMaxGenerated": args.max_generated,
        "queryCount": len(queries),
        "executedQueryCount": len(query_stats),
        "searchStoppedByTimeBudget": search_stopped_by_time_budget,
        "rawCandidateCount": raw_candidate_count,
        "uniqueCandidateCount": len(raw_candidates),
        "searchEngineCounts": dict(sorted(search_engine_counts.items())),
        "queryStats": query_stats,
        "seedDiscovery": seed_stats,
        "audit": audit_stats,
        "runtime": {
            "elapsedSeconds": elapsed_seconds(),
            "timeBudgetSeconds": args.time_budget_seconds,
            "searchResultLimit": args.limit,
            "seedLimit": args.seed_limit,
            "perSeedLimit": args.per_seed_limit,
            "maxAuditCandidates": args.max_audit_candidates,
            "perDomainAuditLimit": args.per_domain_audit_limit,
            "perDomainGeneratedLimit": args.per_domain_generated_limit,
            "perDomainAuditCounts": dict(sorted(per_domain_audit_counts.items())),
        },
        "passedAuditBeforeDomainDedupe": len(audits),
        "excludedLoginOrPayCount": len(excluded),
        "chosenDomainRuleCount": len(chosen),
        "manualRulesAreMergedLater": True,
    }
    report = Path(args.report)
    write_report(chosen, excluded, report, queries, stats, domain_applicability_map)
    log(f"[done] generated rules: {len(chosen)} -> {report}")
    log(f"[info] domainApplicabilityList: {sum(len(v) for v in domain_applicability_map.values())} domain entries across {len(domain_applicability_map)} rules")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
