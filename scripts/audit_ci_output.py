#!/usr/bin/env python3
"""Audit CI outputs: domain quality, catalog usability, rules validity."""
import json, re, sys
from pathlib import Path
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parents[1]
lang = "zh-Hans"

rules = json.loads((ROOT / f"rules/index.{lang}.json").read_text("utf-8"))
rule_list = rules.get("rules", [])
cat = json.loads((ROOT / f"catalog/catalog.{lang}.json").read_text("utf-8"))
agg = json.loads((ROOT / "config/aggregator_sites.json").read_text("utf-8"))
kw = json.loads((ROOT / "config/rule_keywords.json").read_text("utf-8"))

# === 1. DOMAIN QUALITY ===
print("=" * 60)
print("1. DOMAIN QUALITY AUDIT")
print("=" * 60)

NON_MANGA_PATTERNS = {
    "shopee": "ecommerce", "penguinrandomhouse": "book publisher",
    "brill.com": "academic publisher", "tumblr.com": "blog platform",
    "rnojournal": "academic journal", "mewatch.sg": "streaming",
    "litv.tv": "streaming", "fandom.com": "wiki",
    "novelupdates": "novel database", "anime-planet": "anime database",
    "myanimelist": "anime database", "anilist": "anime database",
    "comics.org": "comics database", "readnovel": "novel platform",
    "webnovel": "novel platform", "hongxiu": "novel platform",
    "shuqi": "novel platform", "uukanshu": "novel platform",
    "lrts": "audio platform", "ebook": "ebook platform",
    "tp.edu": "education", "shogakukan": "jp publisher",
    "cmoa.jp": "jp manga store", "sunday-webry": "jp publisher",
    "mangago": "en manga reader", "mangahere": "en manga reader",
    "mangafire": "en manga reader", "comick.io": "en manga reader",
    "mangazenkan": "jp manga reader", "inkr": "en comic platform",
    "leagueofcomicgeeks": "en comic db", "kingofshojo": "en scanlation",
    "soullandmanga": "en scanlation", "en-thunderscans": "en scanlation",
    "roliascan": "en scanlation", "foxspiritmatchmaker": "fandom",
    "koreanwebtoons": "fandom", "19-days": "fandom",
}

domain_rules = {}
for r in rule_list:
    hp = r.get("homepage", "")
    m = re.search("://([^/]+)", hp)
    dom = m.group(1).replace("www.", "") if m else "unknown"
    domain_rules.setdefault(dom, []).append(r)

non_manga_domains = []
manga_domains = []
for dom, rlist in sorted(domain_rules.items()):
    is_non = False
    reason = ""
    if re.match(r"\d+\.\d+\.\d+\.\d+", dom):
        is_non, reason = True, "IP address"
    for pat, desc in NON_MANGA_PATTERNS.items():
        if pat in dom:
            is_non, reason = True, desc
            break
    if is_non:
        non_manga_domains.append((dom, reason, len(rlist)))
    else:
        su = sum(1 for r in rlist if r.get("searchUrl"))
        manga_domains.append((dom, len(rlist), su))

print(f"Total domains: {len(domain_rules)}")
print(f"Manga domains: {len(manga_domains)}")
print(f"Non-manga domains: {len(non_manga_domains)}")
print()
print("NON-MANGA (to block):")
for dom, reason, cnt in non_manga_domains:
    print(f"  {dom} ({reason}) - {cnt} rules")
print()
print("MANGA DOMAINS (searchUrl coverage):")
no_su = []
for dom, cnt, su in manga_domains:
    mark = " *** NO SEARCH" if su == 0 else ""
    print(f"  {dom}: {cnt} rules, {su} searchUrl{mark}")
    if su == 0:
        no_su.append(dom)

# === 2. CATALOG USABILITY ===
print()
print("=" * 60)
print("2. CATALOG USABILITY AUDIT")
print("=" * 60)

cats = cat.get("categories", {})
if isinstance(cats, dict):
    cat_list = list(cats.values())
else:
    cat_list = cats
total_in_cats = sum(len(c.get("items", [])) if isinstance(c, dict) else 0 for c in cat_list)
top_items = cat.get("items", [])

print(f"Categories: {len(cats)}")
print(f"Comics in categories: {total_in_cats}")
print(f"Top-level items: {len(top_items) if isinstance(top_items, list) else 'MISSING'}")

bad_titles = []
no_source = []
chapter_titles = []
for item in top_items if isinstance(top_items, list) else []:
    title = item.get("title", "")
    sources = item.get("sources", [])
    if not title or len(title) < 2:
        bad_titles.append(item.get("id", ""))
    if not sources:
        no_source.append(title or item.get("id", ""))
    if re.search(r"第\s*\d+\s*[话話章回]|Chapter\s*\d+", title):
        chapter_titles.append(title[:50])

print(f"Bad titles: {len(bad_titles)}")
print(f"No sources: {len(no_source)}")
print(f"Chapter-like titles: {len(chapter_titles)}")
if chapter_titles:
    print("  Chapter titles sample:")
    for t in chapter_titles[:5]:
        print(f"    {t}")

# Category distribution
print()
print("Category distribution:")
if isinstance(cats, dict):
    for cid, cdata in cats.items():
        cnt = len(cdata.get("items", [])) if isinstance(cdata, dict) else 0
        name = cdata.get("name", cid) if isinstance(cdata, dict) else cid
        pct = cnt / 200 * 100
        bar = "#" * (cnt // 2)
        print(f"  {name:6s}: {cnt:3d}/200 ({pct:5.1f}%) {bar}")

# === 3. RULES VALIDITY ===
print()
print("=" * 60)
print("3. RULES VALIDITY AUDIT")
print("=" * 60)

missing_fields = {}
for r in rule_list:
    for f in ["id", "name", "homepage", "searchUrl", "readerImageRegex", "detailChapterRegex"]:
        if not r.get(f):
            missing_fields[f] = missing_fields.get(f, 0) + 1

print(f"Total rules: {len(rule_list)}")
print("Missing fields:")
for f, cnt in sorted(missing_fields.items()):
    print(f"  {f}: {cnt}")

# Rules with searchUrl
su_rules = [r for r in rule_list if r.get("searchUrl")]
print(f"Rules with searchUrl: {len(su_rules)}/{len(rule_list)} ({len(su_rules)/len(rule_list)*100:.0f}%)")

# Domain per-rule limit check
over_limit = [(d, len(rl)) for d, rl in domain_rules.items() if len(rl) > 3]
if over_limit:
    print(f"Domains with >3 rules: {over_limit}")
else:
    print("All domains <= 3 rules (per-domain limit OK)")

# === 4. KEYWORDS & DOMAINS ===
print()
print("=" * 60)
print("4. KEYWORDS & DOMAINS")
print("=" * 60)
print(f"Aggregator domains ({lang}): {len(agg.get(lang, []))}")
print(f"Keywords ({lang}): {len(kw.get(lang, []))}")
keywords = kw.get(lang, [])
print("Keywords:")
for i, k in enumerate(keywords, 1):
    print(f"  {i}. {k}")

# === 5. SUMMARY ===
print()
print("=" * 60)
print("5. ACTION ITEMS")
print("=" * 60)
print(f"1. Block {len(non_manga_domains)} non-manga domains")
print(f"2. Add searchUrl templates for {len(no_su)} manga domains without search")
print(f"3. Expand keywords from {len(keywords)} to 100+")
print(f"4. Expand domains from {len(agg.get(lang, []))} to 100+")
print(f"5. Target: 2000 rules, 200 comics/category, 100+ domains")
