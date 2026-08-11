#!/usr/bin/env python3
"""从 aggregator_sites.json 在线生成搜索模板和种子入口。

脚本读取各站首页的搜索表单与导航链接，不内置站点路径、查询参数或分页格式。
"""
from __future__ import annotations

import json
import re
import sys
import urllib.request
from pathlib import Path
from typing import Any, Dict, List
from urllib.parse import parse_qsl, urlencode, urljoin, urlparse, urlunparse

ROOT = Path(__file__).resolve().parents[1]
CONFIG_DIR = ROOT / "config"

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def _load_json(path: Path, default: Any = None) -> Any:
    if path.exists():
        try:
            return json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default


def _dump_json(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_suffix(".tmp")
    tmp.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    tmp.replace(path)


def normalize_domain(url: str) -> str:
    d = url.strip().lower()
    d = d.replace("https://", "").replace("http://", "")
    d = d.split("/", 1)[0]
    return d.replace("www.", "")


def _fetch_home(domain: str) -> tuple[str, str]:
    url = f"https://{domain}/"
    req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0", "Accept": "text/html"})
    with urllib.request.urlopen(req, timeout=15) as resp:
        return resp.geturl(), resp.read(500_000).decode("utf-8", errors="ignore")


_DISCOVERY_CACHE: Dict[str, tuple[str, List[str]]] = {}


def _page_signal_pattern() -> re.Pattern[str]:
    config = _load_json(CONFIG_DIR / "manga_indicator_keywords.json", {})
    words: List[str] = []
    for language in config.values() if isinstance(config, dict) else []:
        if not isinstance(language, dict):
            continue
        words.extend(str(v) for v in language.get("validate", []) if str(v).strip())
        words.extend(str(v) for v in language.get("secondary", []) if str(v).strip())
    generic = ["search", "搜索", "搜尋", "排行", "分类", "分類", "更新", "最新", "热门", "熱門", "榜"]
    return re.compile("|".join(re.escape(v) for v in dict.fromkeys(generic + words)), re.I)


_CATALOG_PATH_RE = re.compile(
    r"/(?:genre|genres|category|categories|tag|tags|list|rank|ranking|sort|browse|directory|"
    r"updates?|latest|new|popular|completed?)(?:[/_.?=-]|$)", re.I
)
_CONTENT_PATH_RE = re.compile(r"/(?:chapter|chapters|episode|episodes|reader|read)(?:[/_.?=-]|$)", re.I)
_NAVIGATION_LABEL_RE = re.compile(
    r"排行|榜单|分类|類別|目录|目錄|更新|最新|热门|熱門|完结|完結|"
    r"rank|ranking|genre|category|browse|directory|updates?|latest|popular|completed?", re.I
)


def is_catalog_navigation_link(href: str, label: str) -> bool:
    """Accept generated catalog/navigation parameters, never work/chapter URLs."""
    parsed = urlparse(urljoin("https://discovery.invalid/", href))
    path_and_query = parsed.path + ("?" + parsed.query if parsed.query else "")
    if _CONTENT_PATH_RE.search(path_and_query):
        return False
    return bool(_CATALOG_PATH_RE.search(path_and_query) or _NAVIGATION_LABEL_RE.search(label))


def _discover_site_parameters(domain: str) -> tuple[str, List[str]]:
    """从站点首页的 form/nav 在线推导搜索模板和入口，不猜路径或参数名。"""
    if domain in _DISCOVERY_CACHE:
        return _DISCOVERY_CACHE[domain]
    try:
        home_url, html = _fetch_home(domain)
    except Exception as exc:
        print(f"[warn] {domain}: online parameter discovery failed: {exc}", file=sys.stderr)
        result = ("", [])
        _DISCOVERY_CACHE[domain] = result
        return result

    signal_pattern = _page_signal_pattern()
    search_template = ""
    for form in re.finditer(r"<form\b([^>]*)>([\s\S]*?)</form>", html, re.I):
        attrs, body = form.groups()
        if not signal_pattern.search(attrs + body):
            continue
        action_m = re.search(r"action=[\"']([^\"']*)", attrs, re.I)
        names = re.findall(r"<input\b[^>]*name=[\"']([^\"']+)", body, re.I)
        if not names:
            continue
        action = urljoin(home_url, action_m.group(1) if action_m else home_url)
        parsed = urlparse(action)
        params = dict(parse_qsl(parsed.query, keep_blank_values=True))
        params[names[0]] = "{keyword}"
        search_template = urlunparse(parsed._replace(query=urlencode(params))).replace("%7Bkeyword%7D", "{keyword}")
        break

    links: List[str] = [home_url]
    for m in re.finditer(r"<a\b[^>]*href=[\"']([^\"'#]+)[\"'][^>]*>([\s\S]{0,200}?)</a>", html, re.I):
        href, label = m.groups()
        label = re.sub(r"<[^>]+>", "", label).strip()
        if not is_catalog_navigation_link(href, label):
            continue
        absolute = urljoin(home_url, href)
        if normalize_domain(absolute) == normalize_domain(home_url) and absolute not in links:
            links.append(absolute)
    result = (search_template, links)
    _DISCOVERY_CACHE[domain] = result
    return result


def generate_search_templates(aggregator_sites: Dict[str, List[str]]) -> Dict[str, str]:
    templates: Dict[str, str] = {}
    for lang, urls in aggregator_sites.items():
        for url in urls:
            domain = normalize_domain(url)
            if not domain:
                continue
            template, _ = _discover_site_parameters(domain)
            if template:
                templates[domain] = template
    return dict(sorted(templates.items()))


def generate_seed_sites(aggregator_sites: Dict[str, List[str]]) -> Dict[str, List[str]]:
    seeds: Dict[str, List[str]] = {}
    for lang, urls in aggregator_sites.items():
        for url in urls:
            domain = normalize_domain(url)
            if not domain:
                continue
            _, discovered = _discover_site_parameters(domain)
            if discovered:
                seeds[domain] = discovered
    return dict(sorted(seeds.items()))


def main() -> int:
    aggregator_sites = _load_json(CONFIG_DIR / "aggregator_sites.json", {})
    if not aggregator_sites:
        print("[info] aggregator_sites.json is empty, skipping site config generation")
        return 0

    templates = generate_search_templates(aggregator_sites)
    _dump_json(CONFIG_DIR / "search_url_templates.json", templates)
    print(f"[search_url_templates] {len(templates)} domains")

    seeds = generate_seed_sites(aggregator_sites)
    _dump_json(CONFIG_DIR / "seed_sites.json", seeds)
    print(f"[seed_sites] {len(seeds)} domains")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
