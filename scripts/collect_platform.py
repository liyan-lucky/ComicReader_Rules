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


def fetch(session: requests.Session, url: str) -> str:
    response = session.get(url, timeout=30)
    response.raise_for_status()
    response.encoding = response.apparent_encoding or "utf-8"
    return response.text


def observation(platform: dict, category: str, title: str, url: str, page: str, observed_at: str,
                cover: str = "", chapter_hint: int | None = None) -> dict:
    return {"platform": platform["name"], "platformId": platform["id"], "url": url, "title": title,
            "coverUrl": cover, "category": category, "language": "zh-Hans", "platformChapterHint": chapter_hint,
            "categoryPage": page, "observedAt": observed_at}


def collect_tencent(session, platform, config, pages, observed_at):
    out = []
    limit = pages if pages > 0 else int(config.get("maximumPagesPerCategory", 200))
    for category, theme in config["tencentThemeIds"].items():
        seen_urls = set()
        for page_no in range(1, limit + 1):
            page = f"{platform['baseUrl']}/Comic/all/theme/{theme}/page/{page_no}"
            soup = BeautifulSoup(fetch(session, page), "lxml")
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
    for category, theme in config["kuaikanThemeIds"].items():
        seen_urls = set()
        for page_no in range(1, limit + 1):
            page = f"{platform['baseUrl']}/tag/{theme}?region=1&pays=0&state=0&sort=1&page={page_no}"
            soup = BeautifulSoup(fetch(session, page), "lxml")
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
    response = session.post(endpoint, json={"style_id": -1, "area_id": -1,
        "is_finish": -1, "order": 0, "special_tag": -1, "page_num": 1,
        "page_size": max(18, pages * 18), "is_free": -1},
        headers={"Origin": platform["baseUrl"], "Referer": platform["entryUrl"]}, timeout=30)
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
    try:
        session = requests.Session()
        session.headers.update({"User-Agent": UA, "Accept-Language": "zh-CN,zh;q=0.9"})
        adapter = platform["adapter"]
        if adapter == "tencent": rows = collect_tencent(session, platform, config, args.pages, observed_at)
        elif adapter == "bilibili": rows = collect_bilibili(session, platform, config, args.pages, observed_at)
        elif adapter == "kuaikan": rows = collect_kuaikan(session, platform, config, args.pages, observed_at)
        else: rows = collect_generic(session, platform, config, args.pages, observed_at)
        if not rows: status = "no_items"
    except Exception as exc:
        status, error = "failed", f"{type(exc).__name__}: {exc}"
    args.output_dir.mkdir(parents=True, exist_ok=True)
    data_path = args.output_dir / f"{platform['id']}.jsonl"
    report_path = args.output_dir / f"{platform['id']}.status.json"
    data_path.write_text("".join(json.dumps(row, ensure_ascii=False) + "\n" for row in rows), encoding="utf-8")
    category_counts=dict(sorted(Counter(row.get("category", "unclassified") for row in rows).items()))
    report_path.write_text(json.dumps({"schema":"platform_collection_status_v1","platform":platform,
        "status":status,"itemCount":len(rows),"error":error,"startedAt":observed_at,
        "categoryCounts":category_counts,"elapsedSeconds":round(time.monotonic()-started,2)}, ensure_ascii=False, indent=2)+"\n", encoding="utf-8")
    if os.getenv("GITHUB_STEP_SUMMARY"):
        lines=[f"## {platform['name']} 采集表", "", f"- 状态：**{status}**", f"- 总数：**{len(rows)} 条**", "", "| 分类 | 数量 |", "|---|---:|"]
        lines += [f"| {key} | {value} |" for key,value in category_counts.items()]
        if error: lines += ["", f"- 错误：`{error}`"]
        Path(os.environ["GITHUB_STEP_SUMMARY"]).open("a",encoding="utf-8").write("\n".join(lines)+"\n")
    print(f"{platform['id']}: {status}, {len(rows)} items")
    return 0 if status != "failed" else 2


if __name__ == "__main__":
    raise SystemExit(main())
