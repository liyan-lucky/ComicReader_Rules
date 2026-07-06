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
from typing import Dict, Iterable, List, Optional, Sequence, Tuple
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

KNOWN_SOURCE_SEEDS: Dict[str, List[str]] = {
    "kaixinman.com": [
        "https://www.kaixinman.com/",
        "https://www.kaixinman.com/update",
        "https://www.kaixinman.com/category",
        "https://www.kaixinman.com/category/1",
        "https://www.kaixinman.com/category/2",
        "https://www.kaixinman.com/category/3",
        "https://www.kaixinman.com/category/4",
        "https://www.kaixinman.com/category/5",
        "https://www.kaixinman.com/category/6",
        "https://www.kaixinman.com/category/7",
        "https://www.kaixinman.com/category/8",
    ],
    "mgeko.cc": [
        "https://www.mgeko.cc/",
        "https://www.mgeko.cc/manga",
        "https://www.mgeko.cc/latest",
        "https://www.mgeko.cc/category/action",
        "https://www.mgeko.cc/category/adventure",
        "https://www.mgeko.cc/category/comedy",
        "https://www.mgeko.cc/category/drama",
        "https://www.mgeko.cc/category/fantasy",
        "https://www.mgeko.cc/category/romance",
    ],
    "comick.io": [
        "https://comick.io/",
        "https://comick.io/home",
        "https://comick.io/search",
        "https://comick.io/list?sort=update",
        "https://comick.io/list?sort=popular",
        "https://comick.io/list?sort=create",
        "https://comick.io/genre/Action",
        "https://comick.io/genre/Adventure",
        "https://comick.io/genre/Comedy",
        "https://comick.io/genre/Drama",
        "https://comick.io/genre/Fantasy",
        "https://comick.io/genre/Romance",
    ],
    "manhuaus.com": [
        "https://manhuaus.com/",
        "https://manhuaus.com/manga/",
        "https://manhuaus.com/latest/",
    ],
    "happymh.com": [
        "https://www.happymh.com/",
        "https://www.happymh.com/update",
        "https://www.happymh.com/category",
    ],
    "chapmanganato.to": [
        "https://chapmanganato.to/",
        "https://chapmanganato.to/manga-list/",
        "https://chapmanganato.to/latest/",
    ],
    "mangabuddy.com": [
        "https://mangabuddy.com/",
        "https://mangabuddy.com/latest",
        "https://mangabuddy.com/genre/",
    ],
    "mangapark.net": [
        "https://mangapark.net/",
        "https://mangapark.net/latest",
        "https://mangapark.net/genre/",
    ],
    "mangadex.org": [
        "https://mangadex.org/",
        "https://mangadex.org/titles/latest",
        "https://mangadex.org/titles/popular",
    ],
    "mangahere.cc": [
        "https://www.mangahere.cc/",
        "https://www.mangahere.cc/latest/",
        "https://www.mangahere.cc/mangalist/",
    ],
    "mangase123.com": [
        "https://mangase123.com/",
        "https://mangase123.com/manga-list/",
        "https://mangase123.com/latest/",
    ],
    "readm.org": [
        "https://readm.org/",
        "https://readm.org/latest-releases",
        "https://readm.org/manga-list",
    ],
    "mangakakalot.com": [
        "https://mangakakalot.com/",
        "https://mangakakalot.com/manga_list/",
        "https://mangakakalot.com/latest/",
    ],
    "manganato.com": [
        "https://manganato.com/",
        "https://manganato.com/manga-list/",
        "https://manganato.com/latest/",
    ],
    "bato.to": [
        "https://bato.to/",
        "https://bato.to/browse",
        "https://bato.to/latest",
    ],
    "mangafire.to": [
        "https://mangafire.to/",
        "https://mangafire.to/filter",
        "https://mangafire.to/updated",
        "https://mangafire.to/newest",
    ],
    "soullandmanga.com": [
        "https://soullandmanga.com/",
        "https://www.soullandmanga.com/",
    ],
    "asuracomic.net": [
        "https://asuracomic.net/",
        "https://asuracomic.net/comics",
        "https://asuracomic.net/latest",
    ],
    "asuratoon.com": [
        "https://asuratoon.com/",
        "https://asuratoon.com/comics",
        "https://asuratoon.com/latest",
    ],
    "mangaread.org": [
        "https://mangaread.org/",
        "https://mangaread.org/manga/",
        "https://mangaread.org/latest/",
    ],
    "mangadna.com": [
        "https://mangadna.com/",
        "https://mangadna.com/manga/",
        "https://mangadna.com/latest/",
    ],
    "webtoons.com": [
        "https://www.webtoons.com/en/",
        "https://www.webtoons.com/en/dailySchedule",
        "https://www.webtoons.com/en/originals",
        "https://www.webtoons.com/en/canvas",
    ],
    "tapas.io": [
        "https://tapas.io/",
        "https://tapas.io/comics",
        "https://tapas.io/novels",
        "https://tapas.io/new",
    ],
    "manhuagui.com": [
        "https://www.manhuagui.com/",
        "https://www.manhuagui.com/list/",
        "https://www.manhuagui.com/update/",
    ],
    "manhuadb.com": [
        "https://www.manhuadb.com/",
        "https://www.manhuadb.com/manhua-list",
        "https://www.manhuadb.com/update",
    ],
    "pufei8.com": [
        "https://www.pufei8.com/",
        "https://www.pufei8.com/manhua-list/",
        "https://www.pufei8.com/update/",
    ],
    "manhuacat.com": [
        "https://www.manhuacat.com/",
        "https://www.manhuacat.com/update",
        "https://www.manhuacat.com/category",
    ],
    "comicextra.com": [
        "https://www.comicextra.com/",
        "https://www.comicextra.com/comic-list",
        "https://www.comicextra.com/popular-comic",
    ],
    "readcomicsonline.ru": [
        "https://readcomicsonline.ru/",
        "https://readcomicsonline.ru/comic-list",
        "https://readcomicsonline.ru/popular-comic",
    ],
}


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


def search_duckduckgo_html(query: str, limit: int) -> List[Candidate]:
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


def search_web(query: str, limit: int) -> List[Candidate]:
    candidates = []
    candidates += search_brave(query, limit)
    candidates += search_google_cse(query, limit)
    if len(candidates) < limit:
        candidates += search_duckduckgo_html(query, limit)
    return unique_candidates(candidates)[:limit]


def likely_content_url(url: str) -> bool:
    if not url.startswith(("http://", "https://")):
        return False
    if EXCLUDE_URL_RE.search(url):
        return False
    host = domain_of(url)
    if any(bad in host for bad in ["youtube.", "bilibili.", "facebook.", "twitter.", "x.com", "reddit.", "wikipedia.", "baike."]):
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
    if PUBLIC_WORK_URL_RE.search(url) or likely_content_url(url):
        return True
    if seed_domain and same_site(url, seed_domain):
        path = urlparse(url).path.lower()
        if re.search(r"/\d+|/title/|/work/|/story/|/comic/|/manga/|/manhua/|/read/|/chapter/|/episode/|/webtoon/", path):
            return True
        if path.count("/") >= 2 and not path.endswith(("/", ".html", ".htm", ".php")):
            return True
    return False


def seed_urls_for_domains(domains: Sequence[str], explicit_seed_urls: Sequence[str]) -> List[str]:
    urls: List[str] = []
    for u in explicit_seed_urls:
        if u.strip():
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


def discover_seed_candidates(
    domains: Sequence[str],
    explicit_seed_urls: Sequence[str],
    per_seed_limit: int,
    max_seed_candidates: int,
    sleep: float,
    deadline_monotonic: Optional[float] = None,
) -> Tuple[List[Candidate], Dict[str, object]]:
    seed_urls = seed_urls_for_domains(domains, explicit_seed_urls)
    out: List[Candidate] = []
    seed_stats = []
    stopped_by_deadline = False
    target_domain_count = len({normalize_domain(domain_of(u) or urlparse(u).netloc) for u in seed_urls}) or 1
    per_domain_seed_limit = max(per_seed_limit, max_seed_candidates // target_domain_count)
    seed_candidate_counts: Dict[str, int] = {}
    for seed_url in seed_urls:
        if deadline_monotonic is not None and time.monotonic() >= deadline_monotonic:
            stopped_by_deadline = True
            log("[stop] time budget reached during seed discovery")
            break
        target_domain = normalize_domain(domain_of(seed_url) or urlparse(seed_url).netloc)
        log(f"[seed] {seed_url}")
        txt = fetch(seed_url, timeout=20)
        if not txt:
            seed_stats.append({"seedUrl": seed_url, "status": "fetch_failed", "candidateCount": 0})
            time.sleep(sleep)
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
        time.sleep(sleep)
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


def choose_best_by_domain(audits: List[PageAudit], per_domain_limit: int = 1) -> List[PageAudit]:
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


def ets_rule_for_audit(a: PageAudit) -> str:
    rid = safe_id(a.domain, a.detail_url)
    title = clean_text(a.detail_title or a.first_chapter_title or a.domain)[:48]
    name = f"{title} - {a.domain} 自动公开规则"
    detail_chapter_regex = r"<a[^>]+href=[\"']([^\"']*(?:/chapter/|/chap/|/read/|/viewer|chapter|episode|cid=)[^\"']*)[\"'][^>]*>([\s\S]{0,220}?(?:第\s*\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\s\S]{0,120}?)<\/a>"
    reader_image_regex = r"<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|<source[^>]+srcset=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\/\/[^\"']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\s*[:=]\s*(\[[\s\S]{0,9000}?\])"
    next_regex = r"<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\s*下一页\s*|\s*下页\s*|\s*Next\s*|\s*next\s*|\s*&gt;\s*|\s*›\s*)<\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']"
    desc = (
        f"GitHub RuleBot 自动发现公开访问规则。审计详情：章节数 {a.chapter_count}，"
        f"静态图片数 {a.static_image_count}，渲染兜底 {'需要' if a.needs_render_fallback else '可选'}；"
        "只处理公开页面，不登录、不付费、不绕验证码/反爬。"
    )
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
    maxReaderPages: 12
  }}"""


def write_ets(audits: List[PageAudit], out: Path) -> None:
    body = ",\n".join(ets_rule_for_audit(a) for a in audits)
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


def write_report(audits: List[PageAudit], excluded: List[PageAudit], out: Path, queries: List[str], stats: Dict[str, object]) -> None:
    data = {
        "tool": "ComicReaderHarmony RuleBot",
        "version": "1.1.0",
        "queries": queries,
        "generatedCount": len(audits),
        "excludedCount": len(excluded),
        "generated": [dataclasses.asdict(a) for a in audits],
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


def build_queries(keywords: List[str], domains: List[str]) -> List[str]:
    queries: List[str] = []
    for kw in keywords:
        kw = kw.strip()
        if not kw:
            continue
        bases = [kw, f"{kw} 漫画 在线阅读", f"{kw} manga chapter read", f"{kw} manhua read online"]
        for b in bases:
            if domains:
                for d in domains:
                    queries.append(f"site:{d} {b}")
            else:
                queries.append(b)
    return list(dict.fromkeys(queries))


def main() -> int:
    started_at = time.monotonic()
    ap = argparse.ArgumentParser(description="自动搜索公开漫画页面并生成漫画浏览器规则")
    ap.add_argument("--keyword", action="append", default=[], help="搜索关键词，可重复，如：--keyword 斗罗大陆 --keyword 'Soul Land'")
    ap.add_argument("--domain", action="append", default=[], help="限定域名，可重复，如：--domain kaixinman.com")
    ap.add_argument("--seed-url", action="append", default=[], help="公开站点入口种子页，可重复；脚本会从页面抓取站内漫画候选链接")
    ap.add_argument("--no-seed-discovery", action="store_true", help="关闭公开站点种子抓取，只使用搜索引擎候选")
    ap.add_argument("--seed-limit", type=int, default=300, help="最多保留多少个种子候选链接")
    ap.add_argument("--per-seed-limit", type=int, default=80, help="每个种子页最多抓取多少个候选链接")
    ap.add_argument("--limit", type=int, default=20, help="每个查询最多取多少搜索结果")
    ap.add_argument("--max-audit-candidates", type=int, default=0, help="最多审计多少个候选页；0 表示不限制")
    ap.add_argument("--per-domain-audit-limit", type=int, default=0, help="每个域名最多审计多少个候选页；0 表示不限制")
    ap.add_argument("--per-domain-generated-limit", type=int, default=1, help="每个域名最多保留多少条通过审计的规则")
    ap.add_argument("--max-generated", type=int, default=30, help="最多生成多少个域名规则")
    ap.add_argument("--output-ets", default="entry/src/main/ets/common/GeneratedSourceRules.ets")
    ap.add_argument("--report", default="entry/src/main/resources/rawfile/audit/generated_rulebot_report.json")
    ap.add_argument("--language-code", default="mixed", help="本次生成使用的语种代码，如 zh-Hans / zh-Hant / en")
    ap.add_argument("--language-name", default="Mixed", help="本次生成使用的语种名称")
    ap.add_argument("--sleep", type=float, default=0.6, help="请求间隔，避免压测公开站点")
    ap.add_argument("--time-budget-seconds", type=int, default=0, help="最多运行秒数；达到后写出已有结果并正常结束，0 表示不限制")
    args = ap.parse_args()

    def elapsed_seconds() -> int:
        return int(time.monotonic() - started_at)

    def budget_exceeded() -> bool:
        return args.time_budget_seconds > 0 and elapsed_seconds() >= args.time_budget_seconds

    deadline_monotonic = started_at + args.time_budget_seconds if args.time_budget_seconds > 0 else None

    keywords = args.keyword or ["斗罗大陆", "Soul Land", "Douluo Dalu"]
    domains = args.domain or []
    queries = build_queries(keywords, domains)
    log(f"[info] queries: {len(queries)}")

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
        )
        for c in seed_candidates:
            search_engine_counts[c.engine or "unknown"] = search_engine_counts.get(c.engine or "unknown", 0) + 1
        raw_candidates += seed_candidates

    consecutive_search_403 = 0
    for q in queries:
        if budget_exceeded():
            search_stopped_by_time_budget = True
            log(f"[stop] time budget reached during search after {elapsed_seconds()}s")
            break
        if consecutive_search_403 >= 5:
            log(f"[stop] search engine consistently returning 403, skipping remaining {len(queries) - len(query_stats)} queries")
            break
        log(f"[search] {q}")
        found = search_web(q, args.limit)
        if not found and not os.getenv("BRAVE_SEARCH_API_KEY", "").strip() and not os.getenv("GOOGLE_API_KEY", "").strip():
            consecutive_search_403 += 1
        else:
            consecutive_search_403 = 0
        query_stats.append({"query": q, "candidateCount": len(found), "engines": sorted(set(c.engine for c in found if c.engine))})
        for c in found:
            search_engine_counts[c.engine or "unknown"] = search_engine_counts.get(c.engine or "unknown", 0) + 1
        raw_candidates += found
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
        "auditFailedNoPublicChapterOrImage": 0,
        "auditedCandidateCount": 0,
        "timeBudgetExceeded": False,
        "candidateSamples": [dataclasses.asdict(c) for c in raw_candidates[:30]],
    }
    per_domain_audit_counts: Dict[str, int] = {}
    for c in raw_candidates:
        if budget_exceeded():
            audit_stats["timeBudgetExceeded"] = True
            log(f"[stop] time budget reached after {elapsed_seconds()}s; writing partial results")
            break
        if not likely_content_url(c.url):
            audit_stats["skippedNonContentUrl"] += 1
            continue
        if args.max_audit_candidates > 0 and audit_stats["auditedCandidateCount"] >= args.max_audit_candidates:
            audit_stats["skippedMaxAuditCandidates"] += 1
            log(f"[stop] max audit candidates reached: {args.max_audit_candidates}")
            break
        candidate_domain = domain_of(c.url)
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
        time.sleep(args.sleep)

    chosen = choose_best_by_domain(audits, args.per_domain_generated_limit)[: args.max_generated]
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
    out_ets = Path(args.output_ets)
    report = Path(args.report)
    write_ets(chosen, out_ets)
    write_report(chosen, excluded, report, queries, stats)
    log(f"[done] generated rules: {len(chosen)} -> {out_ets}")
    log(f"[done] report -> {report}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
