#!/usr/bin/env python3
"""从 aggregator_sites.json 自动生成 search_url_templates.json 和 seed_sites.json。

常见搜索URL模式和种子路径模式内置在脚本中，按域名关键词匹配。
域名发现流程后自动调用此脚本，保证新增域名立即可用于规则生成。
"""
from __future__ import annotations

import json
import sys
from pathlib import Path
from typing import Any, Dict, List

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
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def normalize_domain(url: str) -> str:
    d = url.strip().lower()
    d = d.replace("https://", "").replace("http://", "")
    d = d.split("/", 1)[0]
    return d.replace("www.", "")


SEARCH_PATTERNS = [
    {"keywords": ["mangadex"], "template": "https://{domain}/search?q={KEYWORD}"},
    {"keywords": ["bato"], "template": "https://{domain}/search?q={KEYWORD}"},
    {"keywords": ["mangahere", "fanfox"], "template": "https://{domain}/search?keyword={KEYWORD}"},
    {"keywords": ["webtoon"], "template": "https://{domain}/search?keyword={KEYWORD}"},
    {"keywords": ["comic-walker", "comicdays"], "template": "https://{domain}/search?q={KEYWORD}"},
    {"keywords": ["naver", "kakao", "lezhin", "bomtoon", "ridi"], "template": "https://{domain}/search?keyword={KEYWORD}"},
    {"keywords": ["tapas"], "template": "https://{domain}/search?q={KEYWORD}"},
    {"keywords": ["manhuagui", "manhuaren", "kanman", "kuaikan", "colamanga", "dm5", "sfacg", "zymk", "mkzhan",
                   "xinmanhua", "zaimanhua", "happymh", "mojoin", "manmanapp", "guazimanhua", "kalamanhua",
                   "kaixinman", "mycomic", "baozimanhua", "copymanga"],
     "template": "https://{domain}/search?keyword={KEYWORD}"},
    {"keywords": ["manga", "manhwa", "manhua", "comic", "read", "scan", "asura", "flame", "toon"],
     "template": "https://{domain}/search?q={KEYWORD}"},
]

DEFAULT_SEARCH_TEMPLATE = "https://{domain}/search?q={KEYWORD}"

SEED_PATTERNS = [
    {"keywords": ["comick"], "paths": ["/", "/home", "/list?sort=update", "/list?sort=popular"]},
    {"keywords": ["mangadex"], "paths": ["/", "/titles/latest", "/titles/popular"]},
    {"keywords": ["bato"], "paths": ["/", "/browse", "/latest"]},
    {"keywords": ["mangafire"], "paths": ["/", "/filter", "/updated", "/newest"]},
    {"keywords": ["asura"], "paths": ["/", "/comics", "/latest"]},
    {"keywords": ["mangakakalot", "manganato", "chapmanganato", "mangase"], "paths": ["/", "/manga_list/", "/latest/"]},
    {"keywords": ["webtoon"], "paths": ["/en/", "/en/dailySchedule", "/en/originals", "/en/canvas"]},
    {"keywords": ["tapas"], "paths": ["/", "/comics", "/new"]},
    {"keywords": ["mangahere", "fanfox"], "paths": ["/", "/latest/", "/mangalist/"]},
    {"keywords": ["comic-walker", "comicdays"], "paths": ["/", "/series"]},
    {"keywords": ["naver", "kakao", "lezhin", "bomtoon", "ridi"], "paths": ["/", "/list", "/popular"]},
    {"keywords": ["manhua", "manhuagui", "manhuaren", "kanman", "kuaikan", "colamanga", "dm5", "sfacg",
                   "happymh", "mojoin", "manmanapp", "guazimanhua", "kalamanhua", "kaixinman", "mycomic",
                   "baozimanhua", "copymanga", "manhuadb", "pufei8", "manhuacat"],
     "paths": ["/", "/update", "/category", "/list", "/manhua-list"]},
    {"keywords": ["manga", "manhwa", "comic", "read", "scan"], "paths": ["/", "/manga", "/latest", "/manga-list", "/genre"]},
]

DEFAULT_SEED_PATHS = ["/", "/manga", "/latest"]


def _match_pattern(domain: str, patterns: List[Dict], default: str) -> str:
    dl = domain.lower()
    for p in patterns:
        for kw in p["keywords"]:
            if kw in dl:
                return p["template"] if "template" in p else default
    return default


def _match_seed_paths(domain: str) -> List[str]:
    dl = domain.lower()
    for p in SEED_PATTERNS:
        for kw in p["keywords"]:
            if kw in dl:
                return p["paths"]
    return DEFAULT_SEED_PATHS


def generate_search_templates(aggregator_sites: Dict[str, List[str]]) -> Dict[str, str]:
    existing = _load_json(CONFIG_DIR / "search_url_templates.json", {})
    templates: Dict[str, str] = {}
    for lang, urls in aggregator_sites.items():
        for url in urls:
            domain = normalize_domain(url)
            if not domain:
                continue
            if domain in existing:
                templates[domain] = existing[domain]
            else:
                template = _match_pattern(domain, SEARCH_PATTERNS, DEFAULT_SEARCH_TEMPLATE)
                templates[domain] = template.replace("{domain}", domain).replace("{KEYWORD}", "{keyword}")
    for domain, template in existing.items():
        if domain not in templates:
            templates[domain] = template
    return dict(sorted(templates.items()))


def generate_seed_sites(aggregator_sites: Dict[str, List[str]]) -> Dict[str, List[str]]:
    existing = _load_json(CONFIG_DIR / "seed_sites.json", {})
    seeds: Dict[str, List[str]] = {}
    for lang, urls in aggregator_sites.items():
        for url in urls:
            domain = normalize_domain(url)
            if not domain:
                continue
            if domain in existing:
                seeds[domain] = existing[domain]
            else:
                paths = _match_seed_paths(domain)
                base = f"https://{domain}"
                seeds[domain] = [base + p for p in paths]
    for domain, urls in existing.items():
        if domain not in seeds:
            seeds[domain] = urls
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
