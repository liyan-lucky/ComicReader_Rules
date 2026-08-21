#!/usr/bin/env python3
"""批量目录生成脚本：从 rulebot_report 提取真实漫画数据，按分类组织目录。

数据源优先级：
  1. rulebot_report.{lang}.json 中的 detail_title（真实漫画名+域名）
  2. config/rule_keywords.json 中的关键词（补充填充，每关键词1条）
  3. config/aggregator_sites.json 中的域名（为关键词条目提供来源域名）

目录条目按标题去重，同一漫画合并多个来源域名到 sources 列表。
"""
from __future__ import annotations

import hashlib
import json
import os
import re
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Set
from urllib.parse import quote_plus

ROOT = Path(__file__).resolve().parents[1]

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def _load_json(name: str, default: Any = None) -> Any:
    p = ROOT / "config" / name
    if p.exists():
        try:
            return json.loads(p.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default


def _load_json_path(path: Path, default: Any = None) -> Any:
    if path.exists():
        try:
            return json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default


CATALOG_CFG = _load_json("catalog_config.json", {})
CATEGORY_RULES: List[Dict[str, Any]] = CATALOG_CFG.get("categories", [])
_TAG_TO_CATEGORY: Dict[str, str] = CATALOG_CFG.get("tag_to_category_map", {})
_TAG_RULES: List[Dict[str, Any]] = CATALOG_CFG.get("tags", [])

RULE_KEYWORDS: Dict[str, List[str]] = _load_json("rule_keywords.json", {})
SEARCH_URL_TEMPLATES: Dict[str, str] = _load_json("search_url_templates.json", {})

AGGREGATOR_SITES: Dict[str, List[str]] = _load_json("aggregator_sites.json", {})

try:
    CATEGORY_MINIMUM = int(os.environ.get("PIPELINE_TARGET_COUNT", "200"))
except ValueError:
    CATEGORY_MINIMUM = 200
try:
    CATEGORY_MAXIMUM = int(os.environ.get("PIPELINE_MAX_CATEGORY_COUNT", "0"))
except ValueError:
    CATEGORY_MAXIMUM = 0

CHAPTER_RE = re.compile(r'(第\s*\d+\s*[话話章回]|Chapter\s*\d+|Ch\.?\s*\d+|EP\s*\d+|Episode\s*\d+)', re.I)
SUFFIX_NOISE_RE = re.compile(r'[_-]第\s*\d+\s*[话話章回].*$|_在线漫画阅读.*$|_漫画人.*$|_免费漫画.*$|_漫画.*$|_最新章节.*$|更新到\d+.*$|更新至\d+.*$', re.I)

_DK_CFG = _load_json("domain_knowledge.json", {})
_GENRE_HINTS = set(_DK_CFG.get("genre_hints", []))
_TAG_WORDS = set(_DK_CFG.get("tag_words", []))
GENRE_KEYWORDS = _GENRE_HINTS | _TAG_WORDS | {"欧美", "韩国", "日本", "国产", "日漫", "韩漫", "国漫", "条漫", "webtoon", "manhwa", "manhua"}

_HEADERS_CFG = _load_json("headers.json", {})
_DEFAULT_UA = _HEADERS_CFG.get("default_ua", "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/120.0.6099.230 Mobile Safari/537.36")


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    if domain.startswith("www."):
        domain = domain[4:]
    return domain


def make_comic_id(title: str) -> str:
    return hashlib.sha256(title.encode("utf-8", errors="ignore")).hexdigest()[:16]


def classify_evidence_all(*values: str) -> Dict[str, Dict[str, str]]:
    """Return every category independently supported by public evidence."""
    combined = " ".join(str(value or "") for value in values).lower()
    matches: Dict[str, Dict[str, str]] = {}
    for cat in CATEGORY_RULES:
        if cat["id"] == "weifenlei":
            continue
        for kw in cat.get("keywords", []):
            folded = kw.lower().strip()
            is_ascii_term = bool(re.fullmatch(r"[a-z0-9][a-z0-9 .+-]*", folded))
            matched = bool(re.search(rf"(?<![a-z0-9]){re.escape(folded)}(?![a-z0-9])", combined)) if is_ascii_term else folded in combined
            if folded and matched:
                matches.setdefault(cat["id"], {"source": "public-page-evidence", "matched": kw})
    for tag in _TAG_RULES:
        for kw in tag.get("keywords", []):
            folded = kw.lower().strip()
            is_ascii_term = bool(re.fullmatch(r"[a-z0-9][a-z0-9 .+-]*", folded))
            matched = bool(re.search(rf"(?<![a-z0-9]){re.escape(folded)}(?![a-z0-9])", combined)) if is_ascii_term else folded in combined
            if folded and matched:
                tag_id = tag.get("id", "")
                if tag_id in _TAG_TO_CATEGORY:
                    matches.setdefault(_TAG_TO_CATEGORY[tag_id], {"source": "public-tag-evidence", "matched": kw})
    return matches


def classify_evidence(*values: str) -> tuple[str, Dict[str, str]]:
    matches = classify_evidence_all(*values)
    if not matches:
        return "", {}
    category = next(cat["id"] for cat in CATEGORY_RULES if cat["id"] in matches)
    return category, matches[category]


def classify_title(title: str) -> str:
    return classify_evidence(title)[0]


def extract_public_category_texts(html_text: str) -> List[str]:
    """Extract visible category/tag facts from a public HTML detail page."""
    if not html_text:
        return []
    try:
        from bs4 import BeautifulSoup
        soup = BeautifulSoup(html_text, "lxml")
    except Exception:
        return []
    selectors = (
        '[itemprop="genre"]', '[itemprop="keywords"]', '[rel="tag"]',
        'a[href*="genre"]', 'a[href*="category"]', 'a[href*="tag"]',
        '[class*="genre"]', '[class*="category"]', '[class*="tag"]',
    )
    values: List[str] = []
    seen: Set[str] = set()
    for node in soup.select(",".join(selectors)):
        value = " ".join(node.stripped_strings).strip()
        if not value or len(value) > 500 or value in seen:
            continue
        seen.add(value)
        values.append(value)
    return values


def load_report(lang: str) -> List[Dict[str, Any]]:
    path = ROOT / "generated" / f"rulebot_report.{lang}.json"
    if not path.exists():
        return []
    data = _load_json_path(path, {})
    return data.get("generated", []) if isinstance(data, dict) else []


def load_domains_from_aggregator(lang: str) -> List[str]:
    sites = AGGREGATOR_SITES.get(lang, [])
    domains = []
    for url in sites:
        d = normalize_domain(url)
        if d and d not in domains:
            domains.append(d)
    return domains


def clean_catalog_title(title: str) -> str:
    import html as _html
    title = _html.unescape(title)
    title = SUFFIX_NOISE_RE.sub('', title)
    title = re.sub(r'[\r\n]+', ' ', title)
    title = re.sub(r'\s{2,}', ' ', title)
    title = title.strip()
    return title

TEMPLATE_GARBAGE_RE = re.compile(r'\{\{.*?\}\}|#.*?#|SITEMAP|PK\s*!+', re.I)
_FILTERS = CATALOG_CFG.get("filters", {})
_BAD_TITLE_WORDS = {str(v).strip().casefold() for v in _FILTERS.get("bad_title_words", []) if str(v).strip()}
_BAD_URL_PARTS = tuple(str(v).casefold() for v in _FILTERS.get("bad_url_parts", []) if str(v))
_IMAGE_SUFFIXES = tuple(str(v).casefold() for v in _FILTERS.get("image_suffixes", []) if str(v))

def is_valid_title(title: str) -> bool:
    if not title or len(title) < 2:
        return False
    if title == "#top_title#":
        return False
    if TEMPLATE_GARBAGE_RE.search(title):
        return False
    folded = title.strip().casefold()
    if folded in _BAD_TITLE_WORDS:
        return False
    if re.search(r'[@{};]|(?:^|\s)(?:charset|display|margin|padding|font|color)\s*:', title, re.I):
        return False
    punctuation = sum(not ch.isalnum() and not ch.isspace() for ch in title)
    if len(title) >= 12 and punctuation / len(title) > 0.22:
        return False
    if not re.search(r'[\u4e00-\u9fff]', title) and not re.search(r'[a-zA-Z]{3,}', title):
        return False
    if CHAPTER_RE.search(title) and not re.search(r'[\u4e00-\u9fff]{2,}', title.split('第')[0].split('Chapter')[0]):
        return False
    if title in GENRE_KEYWORDS:
        return False
    if re.match(r'^[\u4e00-\u9fff]{1,2}$', title) and len(title) <= 2:
        return False
    return True


def is_valid_detail_url(url: str) -> bool:
    if not url.startswith(("http://", "https://")):
        return False
    folded = url.casefold().split("?", 1)[0]
    if any(part in folded for part in _BAD_URL_PARTS):
        return False
    return not folded.endswith(_IMAGE_SUFFIXES + (".css", ".js", ".json", ".xml"))


def has_publishable_source(item: Dict[str, Any]) -> bool:
    """A public catalog item needs one source with both a detail page and cover."""
    for source in item.get("sources", []):
        detail = str(source.get("detailUrl", "")).strip()
        cover = str(source.get("coverUrl", "")).strip()
        if is_valid_detail_url(detail) and cover.startswith(("http://", "https://")):
            return True
    return False


REPORT_BLOCKED = set(b.strip().lower() for b in _load_json("blocked_domains.json", {}).get("generate_rules", []))
EXCLUDED_DOMAINS = set(d.strip().lower() for d in _load_json("blocked_domains.json", {}).get("excluded_domains", []))

def build_items_from_report(report: List[Dict[str, Any]], lang: str) -> Dict[str, Dict[str, Any]]:
    by_title: Dict[str, Dict[str, Any]] = {}
    for entry in report:
        detail_title = clean_catalog_title((entry.get("detail_title") or "").strip())
        domain = (entry.get("domain") or "").strip().lower().replace("www.", "")
        if not is_valid_title(detail_title) or not domain:
            continue
        if any(b in domain for b in REPORT_BLOCKED):
            continue
        if domain in EXCLUDED_DOMAINS:
            continue
        key = detail_title.lower()
        report_evidence = entry.get("evidence") if isinstance(entry.get("evidence"), dict) else {}
        public_values = (
            detail_title,
            entry.get("detail_url", ""),
            report_evidence.get("candidateTitle", ""),
            report_evidence.get("candidateSnippet", ""),
        )
        entry_matches = classify_evidence_all(*public_values)
        if key not in by_title:
            category_matches = entry_matches
            category, evidence = classify_evidence(*public_values)
            by_title[key] = {
                "id": make_comic_id(detail_title),
                "title": detail_title,
                "sources": [],
                "category": category,
                "categoryEvidence": evidence,
                "categoryEvidenceByCategory": category_matches,
                "language": lang,
            }
        else:
            by_title[key].setdefault("categoryEvidenceByCategory", {}).update(entry_matches)
        source = {"domain": domain}
        detail_url = entry.get("detail_url", "")
        if detail_url and is_valid_detail_url(detail_url):
            source["detailUrl"] = detail_url
        cover_url = entry.get("cover_url", "")
        if cover_url:
            source["coverUrl"] = cover_url
        existing_domains = {s["domain"] for s in by_title[key]["sources"]}
        if domain not in existing_domains:
            by_title[key]["sources"].append(source)
    return by_title


def build_items_from_keywords(keywords: List[str], domains: List[str], lang: str, existing_titles: Set[str]) -> Dict[str, Dict[str, Any]]:
    by_title: Dict[str, Dict[str, Any]] = {}
    search_templates = _load_json("search_url_templates.json", {})
    for kw in keywords:
        if not kw:
            continue
        key = kw.lower()
        if key in existing_titles:
            continue
        existing_titles.add(key)
        sources = []
        for d in domains[:10]:
            tpl = search_templates.get(d, "")
            if not tpl:
                continue
            source = {"domain": d, "searchUrl": tpl.replace("{keyword}", kw)}
            sources.append(source)
        if not sources:
            continue
        by_title[key] = {
            "id": make_comic_id(kw),
            "title": kw,
            "sources": sources,
            "category": classify_title(kw),
            "language": lang,
        }
    return by_title


SEED_SITES_CFG: Dict[str, List[str]] = _load_json("seed_sites.json", {})


def _auto_discover_ranking(domain: str) -> List[str]:
    # URL 与分页参数由前序在线站点参数发现流程生成；目录阶段不猜站点路径。
    return list(SEED_SITES_CFG.get(domain, []))


def category_search_entrypoints(domain: str) -> Dict[str, str]:
    """Build public category entrypoints from an online-discovered search form."""
    template = str(SEARCH_URL_TEMPLATES.get(domain, "")).strip()
    if "{keyword}" not in template:
        return {}
    configured = CATALOG_CFG.get("search_keywords", {})
    entrypoints: Dict[str, str] = {}
    for category in CATEGORY_RULES:
        category_id = str(category.get("id", ""))
        if not category_id or category_id == "weifenlei":
            continue
        terms = configured.get(category_id, [])
        keyword = str(terms[0] if terms else category.get("name", "")).strip()
        if not keyword:
            continue
        entrypoints[template.replace("{keyword}", quote_plus(keyword))] = keyword
    return entrypoints


def crawl_ranking_pages(domains: List[str], lang: str, existing_titles: Set[str]) -> Dict[str, Dict[str, Any]]:
    import re as _re
    import urllib.request
    import urllib.error
    from urllib.parse import urljoin, urlparse
    from generate_site_configs import is_catalog_navigation_link
    by_title: Dict[str, Dict[str, Any]] = {}
    blocked = set(b.strip().lower() for b in _load_json("blocked_domains.json", {}).get("generate_rules", []))
    excluded = EXCLUDED_DOMAINS
    link_re = _re.compile(r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,500}?)</a>', _re.I)
    title_attr_re = _re.compile(r'title=["\']([^"\']+)["\']', _re.I)
    img_src_re = _re.compile(r'<img[^>]+(?:data-src|data-original|src)=["\']([^"\']+\.(?:jpg|jpeg|png|webp|gif|avif)(?:\?[^"\']*)?)["\']', _re.I)
    comic_path_re = _re.compile(r'/(comic|manga|manhua|book|title|work|series|detail|webtoon|ComicInfo)/', _re.I)
    ua = _DEFAULT_UA
    for domain in domains:
        if any(b in domain for b in blocked):
            continue
        if domain in excluded:
            continue
        category_entrypoints = category_search_entrypoints(domain)
        # Category searches go first so scarce shelves are explored before
        # broad home/ranking pages consume the crawl time budget.
        urls = list(dict.fromkeys([*category_entrypoints, *_auto_discover_ranking(domain)]))
        if urls:
            print(f"  [{domain}] using {len(urls)} online-discovered catalog URLs")
        if not urls:
            continue
        seen_pages = set(urls)
        navigation_evidence: Dict[str, str] = dict(category_entrypoints)
        for url in urls:
            crawled_count = 0
            try:
                req = urllib.request.Request(url, headers={"User-Agent": ua, "Accept": "text/html"})
                with urllib.request.urlopen(req, timeout=15) as resp:
                    html = resp.read(1_000_000).decode("utf-8", errors="ignore")
            except Exception:
                continue
            page_title_match = _re.search(r'<title[^>]*>([\s\S]{0,300}?)</title>', html, _re.I)
            page_heading_match = _re.search(r'<h[1-3][^>]*>([\s\S]{0,300}?)</h[1-3]>', html, _re.I)
            page_evidence = " ".join(
                _re.sub(r'<[^>]+>', ' ', match.group(1)) if match else ""
                for match in (page_title_match, page_heading_match)
            )
            page_evidence = " ".join((navigation_evidence.get(url, ""), page_evidence)).strip()
            page_matches = classify_evidence_all(url, page_evidence)
            page_category, page_category_evidence = classify_evidence(url, page_evidence)
            if page_category_evidence:
                page_category_evidence = {**page_category_evidence, "pageUrl": url}
                page_matches = {
                    category: {**evidence, "pageUrl": url}
                    for category, evidence in page_matches.items()
                }
            try:
                from bs4 import BeautifulSoup
                soup = BeautifulSoup(html, "lxml")
                anchors_by_href: Dict[str, List[Any]] = {}
                for anchor in soup.find_all("a", href=True):
                    anchors_by_href.setdefault(str(anchor.get("href", "")).strip(), []).append(anchor)
            except Exception:
                anchors_by_href = {}
            # 分类入口和分页都只读取服务端真实链接；路径、参数、分类名均不猜测。
            # 分类标签作为其子页的公开证据，并沿分页继承。
            page_budget = max(CATEGORY_MINIMUM, 1)
            if len(urls) < page_budget:
                for nav in link_re.finditer(html):
                    nav_href = nav.group(1).strip()
                    nav_tag = nav.group(0)
                    nav_label = _re.sub(r'<[^>]+>', '', nav.group(2)).strip()
                    is_pagination = bool(
                        _re.search(r'\brel=["\']next["\']', nav_tag, _re.I)
                        or _re.fullmatch(r'\d{1,5}', nav_label)
                        or _re.search(r'下一页|下页|next|›|»', nav_label, _re.I)
                    )
                    is_navigation = is_catalog_navigation_link(nav_href, nav_label)
                    if not (is_pagination or is_navigation):
                        continue
                    absolute = urljoin(url, nav_href)
                    if normalize_domain(urlparse(absolute).netloc) != domain or absolute in seen_pages:
                        continue
                    seen_pages.add(absolute)
                    urls.append(absolute)
                    inherited = navigation_evidence.get(url, "") if is_pagination else nav_label
                    navigation_evidence[absolute] = inherited or page_evidence
                    if len(urls) >= page_budget:
                        break
            for m in link_re.finditer(html):
                href = m.group(1).strip()
                if not comic_path_re.search(href):
                    continue
                a_tag = m.group(0)
                title_match = title_attr_re.search(a_tag)
                if title_match:
                    raw_title = title_match.group(1).strip()
                else:
                    raw_title = _re.sub(r'<[^>]+>', '', m.group(2)).strip()
                title = clean_catalog_title(raw_title)
                if not is_valid_title(title):
                    continue
                if len(title) > 80:
                    continue
                img_match = img_src_re.search(a_tag)
                if not img_match:
                    a_start = m.start()
                    search_start = max(0, a_start - 500)
                    img_match = img_src_re.search(html[search_start:a_start + len(a_tag)])
                cover_url = ""
                if img_match:
                    cover_url = img_match.group(1).strip()
                    if cover_url.startswith("//"):
                        cover_url = f"https:{cover_url}"
                    elif cover_url.startswith("/"):
                        cover_url = f"https://{domain}{cover_url}"
                key = title.lower()
                if key in existing_titles:
                    if key in by_title:
                        existing_sources = {s["domain"] for s in by_title[key]["sources"]}
                        if domain not in existing_sources:
                            absolute_href = urljoin(url, href)
                            if not is_valid_detail_url(absolute_href):
                                continue
                            src = {"domain": domain, "detailUrl": absolute_href}
                            if cover_url:
                                src["coverUrl"] = cover_url
                            by_title[key]["sources"].append(src)
                    continue
                existing_titles.add(key)
                crawled_count += 1
                href = urljoin(url, href)
                if not is_valid_detail_url(href):
                    continue
                src = {"domain": domain, "detailUrl": href}
                if cover_url:
                    src["coverUrl"] = cover_url
                title_matches = classify_evidence_all(title)
                card_matches: Dict[str, Dict[str, str]] = {}
                for anchor in anchors_by_href.get(m.group(1).strip(), []):
                    for parent in (anchor, *list(anchor.parents)[:4]):
                        context = " ".join(parent.stripped_strings).strip()
                        if not context or len(context) > 600:
                            continue
                        found = classify_evidence_all(context)
                        if found:
                            card_matches.update({
                                category: {**evidence, "pageUrl": url}
                                for category, evidence in found.items()
                            })
                            break
                category_matches = {**page_matches, **card_matches, **title_matches}
                selected_category, selected_evidence = classify_evidence(title)
                if not selected_category and card_matches:
                    selected_category = next(
                        cat["id"] for cat in CATEGORY_RULES if cat["id"] in card_matches
                    )
                    selected_evidence = card_matches[selected_category]
                if not selected_category:
                    selected_category, selected_evidence = page_category, page_category_evidence
                by_title[key] = {
                    "id": make_comic_id(title),
                    "title": title,
                    "sources": [src],
                    "category": selected_category,
                    "categoryEvidence": selected_evidence,
                    "categoryEvidenceByCategory": category_matches,
                    "language": lang,
                }
            if crawled_count > 0:
                print(f"  [{domain}] {url}: +{crawled_count} new titles")
    return by_title


def crawl_domains_parallel(domains: List[str], lang: str, existing_titles: Set[str]) -> Dict[str, Dict[str, Any]]:
    """Crawl different public domains concurrently while keeping each domain sequential."""
    merged: Dict[str, Dict[str, Any]] = {}
    if not domains:
        return merged
    workers = min(12, max(2, len(domains)))
    with ThreadPoolExecutor(max_workers=workers) as pool:
        future_domains = {
            pool.submit(crawl_ranking_pages, [domain], lang, set(existing_titles)): domain
            for domain in domains
        }
        for future in as_completed(future_domains):
            domain_items = future.result()
            for key, item in domain_items.items():
                if key not in merged:
                    merged[key] = item
                    continue
                known = {source.get("domain") for source in merged[key].get("sources", [])}
                merged[key].setdefault("sources", []).extend(
                    source for source in item.get("sources", []) if source.get("domain") not in known
                )
                if not merged[key].get("category") and item.get("category"):
                    merged[key]["category"] = item["category"]
                    merged[key]["categoryEvidence"] = item.get("categoryEvidence", {})
                merged[key].setdefault("categoryEvidenceByCategory", {}).update(
                    item.get("categoryEvidenceByCategory", {})
                )
    return merged


def enrich_catalog_evidence(items: Dict[str, Dict[str, Any]]) -> Dict[str, int]:
    """Use public detail metadata to recover category and cover evidence."""
    import html as _html
    import urllib.request
    from urllib.parse import urljoin

    pending_by_category: Dict[str, List[tuple[str, Dict[str, Any], Dict[str, Any]]]] = {}
    for key, item in items.items():
        # A complete source only proves that the item is publishable.  It does
        # not prove that the first category found is its only public category.
        # Fetch detail metadata until multiple category facts are available.
        if len(item.get("categoryEvidenceByCategory", {})) > 1 and has_publishable_source(item):
            continue
        source = next((s for s in item.get("sources", []) if is_valid_detail_url(str(s.get("detailUrl", "")))), None)
        if source:
            bucket = str(item.get("category") or "unclassified")
            pending_by_category.setdefault(bucket, []).append((key, item, source))
    # Budget is derived from the requested minimum, not a hidden fixed crawl count.
    budget = max(CATEGORY_MINIMUM * len(CATEGORY_RULES), CATEGORY_MINIMUM)
    pending = []
    buckets = [pending_by_category[key] for key in sorted(pending_by_category)]
    while buckets and len(pending) < budget:
        remaining = []
        for bucket in buckets:
            if bucket and len(pending) < budget:
                pending.append(bucket.pop(0))
            if bucket:
                remaining.append(bucket)
        buckets = remaining

    def fetch_one(record: tuple[str, Dict[str, Any], Dict[str, Any]]):
        key, item, source = record
        url = str(source["detailUrl"])
        try:
            req = urllib.request.Request(url, headers={"User-Agent": _DEFAULT_UA, "Accept": "text/html"})
            with urllib.request.urlopen(req, timeout=10) as response:
                body = response.read(600_000).decode("utf-8", errors="ignore")
        except Exception as exc:
            return key, "fetch_failed", str(exc)[:160]
        metadata = []
        for pattern in (
            r'<meta[^>]+(?:name|property)=["\'](?:keywords|description|og:description|book:tag)["\'][^>]+content=["\']([^"\']+)',
            r'<meta[^>]+content=["\']([^"\']+)["\'][^>]+(?:name|property)=["\'](?:keywords|description|og:description|book:tag)["\']',
            r'"(?:genre|genres|category|tags)"\s*:\s*(?:"([^"]+)"|\[([^\]]+)\])',
        ):
            for match in re.finditer(pattern, body, re.I):
                metadata.extend(value for value in match.groups() if value)
        metadata.extend(extract_public_category_texts(body))
        category_matches = classify_evidence_all(item.get("title", ""), url, *metadata)
        item.setdefault("categoryEvidenceByCategory", {}).update(category_matches)
        category, evidence = classify_evidence(item.get("title", ""), url, *metadata)
        if category and not item.get("category"):
            item["category"] = category
            item["categoryEvidence"] = {**evidence, "detailUrl": url}
        if not str(source.get("coverUrl", "")).startswith(("http://", "https://")):
            cover = re.search(r'<meta[^>]+property=["\']og:image["\'][^>]+content=["\']([^"\']+)', body, re.I)
            if cover:
                source["coverUrl"] = urljoin(url, _html.unescape(cover.group(1).strip()))
        return key, "enriched", ""

    stats = {"attempted": len(pending), "enriched": 0, "fetchFailed": 0}
    with ThreadPoolExecutor(max_workers=min(16, max(2, len(pending)))) as pool:
        futures = [pool.submit(fetch_one, record) for record in pending]
        for future in as_completed(futures):
            _, status, _ = future.result()
            if status == "enriched":
                stats["enriched"] += 1
            else:
                stats["fetchFailed"] += 1
    return stats


def generate_catalog_for_lang(lang: str, max_crawl_domains: int = 20) -> Dict[str, Any]:
    report = load_report(lang)
    domains = load_domains_from_aggregator(lang)
    keywords = RULE_KEYWORDS.get(lang, [])

    if not report and not domains and not keywords:
        print(f"[warn] No report, domains or keywords for {lang}, skipping", file=sys.stderr)
        return {}

    existing_titles: Set[str] = set()

    report_items = build_items_from_report(report, lang)
    existing_titles.update(report_items.keys())

    # Prefer sites for which online parameter discovery found the broadest
    # public catalog navigation.  One high-capacity site can fill the shelf;
    # the remaining sites are still crawled as category supplements/fallbacks.
    crawl_domains = sorted(
        domains,
        key=lambda domain: (-len(SEED_SITES_CFG.get(domain, [])), domain),
    )
    if max_crawl_domains > 0:
        crawl_domains = crawl_domains[:max_crawl_domains]
    if max_crawl_domains > 0 and len(domains) > max_crawl_domains:
        print(f"[{lang}] Limiting crawl to {max_crawl_domains}/{len(domains)} domains")
    crawled_items = crawl_domains_parallel(crawl_domains, lang, existing_titles)
    existing_titles.update(crawled_items.keys())

    kw_items = build_items_from_keywords(keywords, domains, lang, existing_titles)

    candidate_items = {**report_items, **crawled_items, **kw_items}
    enrichment_stats = enrich_catalog_evidence(candidate_items)
    print(f"[{lang}] detail evidence enrichment: {enrichment_stats}")
    all_items = {
        key: item for key, item in candidate_items.items()
        if has_publishable_source(item)
    }

    classified: Dict[str, List[Dict[str, Any]]] = {}
    unclassified: List[Dict[str, Any]] = []
    for item in all_items.values():
        evidence_by_category = item.get("categoryEvidenceByCategory", {})
        if evidence_by_category:
            for cat, evidence in evidence_by_category.items():
                categorized_item = {**item, "category": cat, "categoryEvidence": evidence}
                classified.setdefault(cat, []).append(categorized_item)
        elif item.get("category") and item.get("categoryEvidence"):
            classified.setdefault(item["category"], []).append(item)
        else:
            unclassified.append(item)

    if unclassified:
        print(f"[{lang}] excluded {len(unclassified)} items without category evidence", file=sys.stderr)

    catalog = {}
    for cat in CATEGORY_RULES:
        cat_id = cat["id"]
        cat_name = cat["name"]
        if cat_id == "weifenlei":
            continue
        cat_items = classified.get(cat_id, [])
        if CATEGORY_MAXIMUM > 0:
            cat_items = cat_items[:CATEGORY_MAXIMUM]
        catalog[cat_id] = {
            "id": cat_id,
            "name": cat_name,
            "count": len(cat_items),
            "items": cat_items,
        }

    return catalog


def main() -> int:
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-crawl-domains", type=int, default=0, help="最多爬取多少个域名的排行榜(0=不限)")
    args = ap.parse_args()

    env_lang = os.environ.get("PIPELINE_LANGUAGE", "").strip()
    langs = [env_lang] if env_lang else ["zh-Hans", "zh-Hant", "en", "ja", "ko"]
    for lang in langs:
        catalog = generate_catalog_for_lang(lang, max_crawl_domains=args.max_crawl_domains)
        if not catalog:
            print(f"[{lang}] skipped (no data)")
            continue
        total = sum(c["count"] for c in catalog.values())
        cat_count = len(catalog)

        all_items_list = []
        for cat_data in catalog.values():
            all_items_list.extend(cat_data.get("items", []))

        lang_names = {"zh-Hans": "简体中文", "zh-Hant": "繁體中文", "en": "English", "ja": "日本語", "ko": "한국어"}
        out = {
            "schema": "womh_comic_catalog_v1",
            "version": datetime.now(timezone.utc).strftime("%Y.%m.%d.%H%M"),
            "updatedAt": datetime.now(timezone.utc).isoformat(),
            "language": {"code": lang, "name": lang_names.get(lang, lang)},
            "totalItems": total,
            "categoryCount": cat_count,
            "categories": catalog,
            "items": all_items_list,
        }

        out_path = ROOT / "catalog" / f"catalog.{lang}.json"
        out_path.parent.mkdir(parents=True, exist_ok=True)
        tmp = out_path.with_suffix(".tmp")
        tmp.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8")
        tmp.replace(out_path)
        print(f"[{lang}] {cat_count} categories, {total} items -> {out_path}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
