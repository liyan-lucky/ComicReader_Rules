#!/usr/bin/env python3
"""Daily rough collector for one configured platform.

Rough observations may duplicate. They never become catalog entries directly.
Every run emits a status report, including zero-result/unreachable platforms.
"""
from __future__ import annotations

import argparse
import json
import os
import re
import time
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urljoin, urlparse

import requests
from bs4 import BeautifulSoup

ROOT = Path(__file__).resolve().parents[1]
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36"
WORK_PATH = re.compile(r"/(?:comic|comics|manhua|manga|book|topic|detail|works?|title)/|comicInfo/id/", re.I)
BAD_TITLE = re.compile(r"^(?:首页|分类|排行|登录|注册|更多|查看全部|开始阅读|立即阅读|上一页|下一页|漫画|作品)$")


def registry() -> dict:
    return json.loads((ROOT / "config/platforms.json").read_text(encoding="utf-8-sig"))


def fetch(session: requests.Session, url: str, retries: int = 3) -> str:
    for attempt in range(retries):
        try:
            response = session.get(url, timeout=30)
            response.raise_for_status()
            response.encoding = response.apparent_encoding or "utf-8"
            return response.text
        except requests.RequestException:
            if attempt + 1 >= retries:
                raise
            time.sleep(2 * (attempt + 1))


def observation(platform: dict, category: str, title: str, url: str, page: str, observed_at: str,
                cover: str = "", chapter_hint: int | None = None) -> dict:
    # Stage 01 is a text catalog only. URLs, covers and chapter hints are
    # intentionally not persisted or passed to source discovery.
    return {"platform": platform["name"], "platformId": platform["id"], "title": title,
            "category": category, "language": "zh-Hans", "observedAt": observed_at}


def collect_tencent(session, platform, config, pages, observed_at):
    out = []
    limit = pages if pages > 0 else int(config.get("maximumPagesPerCategory", 200))
    for category, theme in config["tencentThemeIds"].items():
        seen_urls = set()
        for page_no in range(1, limit + 1):
            page = f"{platform['baseUrl']}/Comic/all/theme/{theme}/page/{page_no}"
            try:
                soup = BeautifulSoup(fetch(session, page), "lxml")
            except requests.RequestException:
                if page_no > 1 and seen_urls: break
                raise
            rows = soup.select("li.ret-search-item")
            new_on_page = 0
            for row in rows:
                link = row.select_one("h3.ret-works-title a[href]") or row.select_one("a.mod-cover-list-thumb[href]")
                if not link: continue
                title = str(link.get("title") or link.get_text(" ")).strip()
                url = urljoin(page, str(link.get("href", "")))
                if url in seen_urls: continue
                seen_urls.add(url); new_on_page += 1
                image = row.select_one("img[data-original], img[src]")
                cover = urljoin(page, str(image.get("data-original") or image.get("src") or "")) if image else ""
                update = row.select_one("span.mod-cover-list-text")
                match = re.search(r"(\d+)\s*[话話章回集]", update.get_text(" ") if update else "")
                out.append(observation(platform, category, title, url, page, observed_at, cover,
                                       int(match.group(1)) if match else None))
            if not rows or not new_on_page: break
    return out


def collect_kuaikan(session, platform, config, pages, observed_at):
    out = []
    limit = pages if pages > 0 else int(config.get("maximumPagesPerCategory", 200))
    for category, themes in config["kuaikanThemeIds"].items():
        for theme in (themes if isinstance(themes, list) else [themes]):
            seen_urls = set()
            for page_no in range(1, limit + 1):
                page = f"{platform['baseUrl']}/tag/{theme}?region=1&pays=0&state=0&sort=1&page={page_no}"
                try:
                    soup = BeautifulSoup(fetch(session, page), "lxml")
                except requests.RequestException:
                    if page_no > 1 and seen_urls: break
                    raise
                rows = soup.select("div.ItemSpecial")
                new_on_page = 0
                for row in rows:
                    link = row.select_one("a.itemLink[href]")
                    title_node = row.select_one("span.itemTitle")
                    if not link or not title_node: continue
                    title = title_node.get_text(" ", strip=True)
                    url = urljoin(page, str(link.get("href", "")))
                    if url in seen_urls: continue
                    seen_urls.add(url); new_on_page += 1
                    image = row.select_one("img[data-src], img[src]")
                    cover = urljoin(page, str(image.get("data-src") or image.get("src") or "")) if image else ""
                    out.append(observation(platform, category, title, url, page, observed_at, cover))
                if not rows or not new_on_page: break
    return out


def collect_bilibili(session, platform, config, pages, observed_at):
    """Probe Bilibili's real classify API instead of parsing its empty JS shell.

    The endpoint may require a short-lived browser-generated ``m2`` token.  In
    that case raising is deliberate: the aggregator records the failed attempt
    and retains the last successful platform snapshot.
    """
    endpoint = f"{platform['baseUrl']}/twirp/comic.v1.Comic/ClassPage"
    headers = {
        "Origin": platform["baseUrl"],
        "Referer": platform["entryUrl"],
        "Accept": "application/json, text/plain, */*",
        "Accept-Language": "zh-CN,zh;q=0.9",
        "Content-Type": "application/json;charset=UTF-8",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
    }
    response = session.post(endpoint, json={"style_id": -1, "area_id": -1,
        "is_finish": -1, "order": 0, "special_tag": -1, "page_num": 1,
        "page_size": max(18, pages * 18), "is_free": -1},
        headers=headers, timeout=30)
    response.raise_for_status()
    payload = response.json()
    if payload.get("code") != 0:
        raise RuntimeError(f"ClassPage business error {payload.get('code')}: {payload.get('msg', '')}")
    items = payload.get("data") or []
    out = []
    for item in items:
        title = str(item.get("title") or "").strip()
        work_id = item.get("season_id") or item.get("id")
        if not title or not work_id:
            continue
        cover = str(item.get("vertical_cover") or item.get("verticalCover") or "")
        if cover.startswith("//"):
            cover = "https:" + cover
        out.append(observation(platform, "unclassified", title,
            f"{platform['baseUrl']}/detail/mc{work_id}", platform["entryUrl"], observed_at, cover))
    return out


def collect_dongman(session, platform, config, pages, observed_at):
    soup = BeautifulSoup(fetch(session, platform["entryUrl"]), "lxml")
    genre_map = {"LOVE":"lianai", "ROMANCE":"lianai", "FANTASY":"qihuan", "BOY":"dongzuo",
        "ACTION":"dongzuo", "SUSPENSE":"xuanyi", "THRILLER":"kongbu", "HORROR":"kongbu",
        "DRAMA":"juqing", "CAMPUS":"richang", "SLICE-OF-LIFE":"richang", "SPORTS":"jingji",
        "HISTORICAL":"lishi", "HISTORY":"lishi", "SCI-FI":"kehuan", "SF":"kehuan"}
    out, seen = [], set()
    for link in soup.select('a.card_item[href*="title_no="]'):
        href = str(link.get("href", "")); url = urljoin(platform["entryUrl"], href)
        if url in seen: continue
        title_node = link.select_one(".subj")
        title = title_node.get_text(" ", strip=True) if title_node else ""
        if len(title) < 2 or BAD_TITLE.search(title): continue
        seen.add(url)
        path_parts = [part.upper() for part in urlparse(url).path.split("/") if part]
        category = next((genre_map[part] for part in path_parts if part in genre_map), "juqing")
        out.append(observation(platform, category, title, url, platform["entryUrl"], observed_at))
    return out


def inferred_category(text: str, aliases: dict) -> str:
    for label, category in aliases.items():
        if label in text:
            return category
    return "unclassified"


def collect_generic(session, platform, config, pages, observed_at):
    # Generic collection is intentionally rough: classification and identity
    # are re-evaluated by the category refinement stage.
    page = platform["entryUrl"]
    soup = BeautifulSoup(fetch(session, page), "lxml")
    out = []
    for link in soup.select("a[href]"):
        url = urljoin(page, str(link.get("href", "")))
        if (urlparse(url).hostname or "").removeprefix("www.") != urlparse(platform["baseUrl"]).hostname.removeprefix("www."):
            continue
        if not WORK_PATH.search(url): continue
        title = str(link.get("title") or link.get_text(" ")).strip()
        title = re.sub(r"\s+", " ", title)
        if len(title) < 2 or len(title) > 100 or BAD_TITLE.search(title): continue
        context = link.parent.get_text(" ", strip=True)[:500] if link.parent else title
        category = inferred_category(context, config["categoryAliases"])
        image = link.select_one("img[data-original], img[data-src], img[src]")
        cover = urljoin(page, str(image.get("data-original") or image.get("data-src") or image.get("src") or "")) if image else ""
        out.append(observation(platform, category, title, url, page, observed_at, cover))
    return out


def collect_kanman(session, platform, config, pages, observed_at):
    """Collect from kanman's mobile API endpoint.
    
    The API returns ~50 popular comics with full category metadata in sort_typelist.
    Category mapping: pinyin,Chinese|pinyin,Chinese|...
    """
    response = session.get(platform["entryUrl"], timeout=30)
    response.raise_for_status()
    payload = response.json()
    if payload.get("status") != 0:
        raise RuntimeError(f"kanman API error: {payload.get('message', '')}")
    items = payload.get("data") or []
    aliases = config["categoryAliases"]
    out = []
    for item in items:
        title = str(item.get("comic_name") or "").strip()
        if not title or len(title) < 2:
            continue
        sort_list = str(item.get("sort_typelist") or "")
        categories = set()
        for pair in sort_list.split("|"):
            parts = pair.split(",")
            if len(parts) >= 2:
                categories.add(inferred_category(parts[1], aliases))
        if not categories:
            categories.add("unclassified")
        for category in categories:
            out.append(observation(platform, category, title,
                f"{platform['baseUrl']}/{item.get('comic_newid', '')}",
                platform["entryUrl"], observed_at))
    return out


def collect_boluobao(session, platform, config, pages, observed_at):
    """Collect from SF漫画 (boluobao) catalog pages.
    
    Catalog URL: /catalog/ with optional tid (category) and PageIndex params.
    Comic links follow /mh/XXX/ pattern.
    """
    limit = pages if pages > 0 else int(config.get("maximumPagesPerCategory", 200))
    theme_ids = config.get("boluobaoThemeIds", {})
    aliases = config["categoryAliases"]
    out = []
    seen_urls = set()
    for category, tids in theme_ids.items():
        for tid in (tids if isinstance(tids, list) else [tids]):
            for page_no in range(1, limit + 1):
                page = f"{platform['baseUrl']}/catalog/?tid={tid}&PageIndex={page_no}"
                try:
                    soup = BeautifulSoup(fetch(session, page), "lxml")
                except requests.RequestException:
                    if page_no > 1: break
                    raise
                rows = soup.select("ul.Comic_Pic_List")
                new_on_page = 0
                for row in rows:
                    link = row.select_one("a[href*='/mh/']")
                    if not link: continue
                    href = str(link.get("href", ""))
                    url = urljoin(page, href)
                    if url in seen_urls: continue
                    title_node = row.select_one("strong a")
                    title = title_node.get_text(" ", strip=True) if title_node else ""
                    if len(title) < 2 or BAD_TITLE.search(title): continue
                    seen_urls.add(url); new_on_page += 1
                    out.append(observation(platform, category, title, url, page, observed_at))
                if not rows or not new_on_page: break
    if not out:
        page = f"{platform['baseUrl']}/catalog/"
        soup = BeautifulSoup(fetch(session, page), "lxml")
        for link in soup.select("a[href*='/mh/']"):
            href = str(link.get("href", ""))
            url = urljoin(page, href)
            if url in seen_urls: continue
            title = str(link.get("title") or link.get_text(" ")).strip()
            if len(title) < 2 or BAD_TITLE.search(title): continue
            seen_urls.add(url)
            context = link.parent.get_text(" ", strip=True)[:500] if link.parent else title
            category = inferred_category(context, aliases)
            out.append(observation(platform, category, title, url, page, observed_at))
    return out


def collect_manhuaxq(session, platform, config, pages, observed_at):
    """Collect from manhuaxq category pages.

    URL: /genre/cate/{category}.html?page={n}
    Comic links: a[href*="/manhua/"] with title attributes.
    """
    out = []
    limit = pages if pages > 0 else int(config.get("maximumPagesPerCategory", 200))
    category_map = config.get("manhuaxqCategories", {})
    seen_urls = set()
    for category, labels in category_map.items():
        for label in (labels if isinstance(labels, list) else [labels]):
            for page_no in range(1, limit + 1):
                page = f"{platform['baseUrl']}/genre/cate/{label}.html?page={page_no}"
                try:
                    soup = BeautifulSoup(fetch(session, page), "lxml")
                except requests.RequestException:
                    if page_no > 1: break
                    raise
                rows = soup.select("a[href*='/manhua/']")
                new_on_page = 0
                for row in rows:
                    href = str(row.get("href", ""))
                    if not href.startswith("/manhua/") or not href.endswith(".html"): continue
                    url = urljoin(page, href)
                    if url in seen_urls: continue
                    title = str(row.get("title") or row.get_text(" ")).strip()
                    title = re.sub(r"^.*漫画《", "", title)
                    title = re.sub(r"》,.*$", "", title)
                    if len(title) < 2 or len(title) > 100 or BAD_TITLE.search(title): continue
                    seen_urls.add(url); new_on_page += 1
                    out.append(observation(platform, category, title, url, page, observed_at))
                if not rows or not new_on_page: break
    return out


def collect_dm5(session, platform, config, pages, observed_at):
    """Collect from dm5 (动漫屋) category pages.

    URL: /manhua-{category}/ (page 1), /manhua-{category}-p{n}/ (page n>1)
    Comic links: a[href^="/manhua-"] with long slugs.
    """
    out = []
    limit = pages if pages > 0 else int(config.get("maximumPagesPerCategory", 200))
    category_map = config.get("dm5Categories", {})
    seen_urls = set()
    for category, slugs in category_map.items():
        for slug in (slugs if isinstance(slugs, list) else [slugs]):
            for page_no in range(1, limit + 1):
                page = f"{platform['baseUrl']}/manhua-{slug}-p{page_no}/" if page_no > 1 else f"{platform['baseUrl']}/manhua-{slug}/"
                try:
                    soup = BeautifulSoup(fetch(session, page), "lxml")
                except requests.RequestException:
                    if page_no > 1: break
                    continue
                new_on_page = 0
                for a in soup.select("a[href]"):
                    href = str(a.get("href", ""))
                    if not href.startswith("/manhua-"): continue
                    comic_slug = href.replace("/manhua-", "").strip("/")
                    if len(comic_slug) <= 10: continue
                    if re.match(r"^[a-z0-9]$", comic_slug): continue
                    if re.match(r"^p\d+$", comic_slug): continue
                    if "pay" in comic_slug or "st" in comic_slug: continue
                    url = urljoin(page, href)
                    if url in seen_urls: continue
                    title = str(a.get("title") or a.get_text(" ")).strip()
                    title = re.sub(r"\s+", " ", title)
                    if len(title) < 2 or len(title) > 100 or BAD_TITLE.search(title): continue
                    seen_urls.add(url); new_on_page += 1
                    out.append(observation(platform, category, title, url, page, observed_at))
                if not new_on_page: break
    return out


def collect_manhuaba(session, platform, config, pages, observed_at):
    """Collect from manhuaba (漫画吧) category list pages.

    URL: /category/list/{cat_id} (page 1), /category/list/{cat_id}/page/{n} (page n>1)
    Comic links: a[href*="/comic/"] with title attributes.
    """
    out = []
    limit = pages if pages > 0 else int(config.get("maximumPagesPerCategory", 200))
    aliases = config["categoryAliases"]
    seen_urls = set()
    for cat_id in [1, 2, 3, 4]:
        for page_no in range(1, limit + 1):
            page = f"{platform['baseUrl']}/category/list/{cat_id}/page/{page_no}" if page_no > 1 else f"{platform['baseUrl']}/category/list/{cat_id}"
            try:
                soup = BeautifulSoup(fetch(session, page), "lxml")
            except requests.RequestException:
                if page_no > 1: break
                continue
            rows = soup.select("a[href*='/comic/']")
            new_on_page = 0
            for row in rows:
                href = str(row.get("href", ""))
                if not href.startswith("/comic/"): continue
                url = urljoin(page, href)
                if url in seen_urls: continue
                title = str(row.get("title") or row.get_text(" ")).strip()
                if len(title) < 2 or len(title) > 100 or BAD_TITLE.search(title): continue
                seen_urls.add(url); new_on_page += 1
                context = row.parent.get_text(" ", strip=True)[:500] if row.parent else title
                category = inferred_category(context, aliases)
                out.append(observation(platform, category, title, url, page, observed_at))
            if not rows or not new_on_page: break
    return out


def write_status(report_path: Path, platform: dict, status: str, rows: list, error: str,
                 observed_at: str, started: float) -> dict:
    category_counts = dict(sorted(Counter(row.get("category", "unclassified") for row in rows).items()))
    payload = {"schema": "platform_collection_status_v1", "platform": platform,
        "status": status, "itemCount": len(rows), "error": error, "startedAt": observed_at,
        "categoryCounts": category_counts, "elapsedSeconds": round(time.monotonic() - started, 2)}
    report_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return payload


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--platform", required=True)
    parser.add_argument("--pages", type=int, default=0, help="0 means crawl until an empty/repeated page")
    parser.add_argument("--output-dir", type=Path, default=ROOT / "observations/rough/zh-Hans")
    args = parser.parse_args()
    config = registry()
    platform = next((p for p in config["platforms"] if p["id"] == args.platform), None)
    if not platform: raise SystemExit(f"unknown platform: {args.platform}")
    observed_at = datetime.now(timezone.utc).isoformat()
    started = time.monotonic()
    status = "ok"
    error = ""
    rows = []
    if not platform.get("enabled", True):
        reason = platform.get("disableReason", "disabled in config/platforms.json")
        args.output_dir.mkdir(parents=True, exist_ok=True)
        write_status(args.output_dir / f"{platform['id']}.status.json", platform,
                     "skipped", [], reason, observed_at, started)
        print(f"{platform['id']}: skipped ({reason})")
        return 0
    try:
        session = requests.Session()
        session.headers.update({"User-Agent": UA, "Accept-Language": "zh-CN,zh;q=0.9"})
        adapter = platform["adapter"]
        if adapter == "tencent": rows = collect_tencent(session, platform, config, args.pages, observed_at)
        elif adapter == "bilibili": rows = collect_bilibili(session, platform, config, args.pages, observed_at)
        elif adapter == "dongman": rows = collect_dongman(session, platform, config, args.pages, observed_at)
        elif adapter == "kuaikan": rows = collect_kuaikan(session, platform, config, args.pages, observed_at)
        elif adapter == "kanman": rows = collect_kanman(session, platform, config, args.pages, observed_at)
        elif adapter == "boluobao": rows = collect_boluobao(session, platform, config, args.pages, observed_at)
        elif adapter == "manhuaxq": rows = collect_manhuaxq(session, platform, config, args.pages, observed_at)
        elif adapter == "dm5": rows = collect_dm5(session, platform, config, args.pages, observed_at)
        elif adapter == "manhuaba": rows = collect_manhuaba(session, platform, config, args.pages, observed_at)
        else: rows = collect_generic(session, platform, config, args.pages, observed_at)
        if not rows: status = "no_items"
    except Exception as exc:
        status, error = "failed", f"{type(exc).__name__}: {exc}"
        print(f"  ERROR: {error}", flush=True)
    args.output_dir.mkdir(parents=True, exist_ok=True)
    data_path = args.output_dir / f"{platform['id']}.jsonl"
    data_path.write_text("".join(json.dumps(row, ensure_ascii=False) + "\n" for row in rows), encoding="utf-8")
    payload = write_status(args.output_dir / f"{platform['id']}.status.json", platform,
                           status, rows, error, observed_at, started)
    category_counts = payload["categoryCounts"]
    if os.getenv("GITHUB_STEP_SUMMARY"):
        lines=[f"## {platform['name']} 采集表", "", f"- 状态：**{status}**", f"- 总数：**{len(rows)} 条**", "", "| 分类 | 数量 |", "|---|---:|"]
        lines += [f"| {key} | {value} |" for key,value in category_counts.items()]
        if error: lines += ["", f"- 错误：`{error}`"]
        Path(os.environ["GITHUB_STEP_SUMMARY"]).open("a",encoding="utf-8").write("\n".join(lines)+"\n")
    print(f"{platform['id']}: {status}, {len(rows)} items")
    return 0 if status != "failed" else 2


if __name__ == "__main__":
    raise SystemExit(main())
