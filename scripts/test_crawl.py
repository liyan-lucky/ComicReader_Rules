#!/usr/bin/env python3
"""Test ranking page crawling."""
import sys
sys.path.insert(0, ".")
from scripts.bulk_generate_catalog import crawl_ranking_pages, load_domains_from_aggregator

domains = load_domains_from_aggregator("zh-Hans")
existing = set()
result = crawl_ranking_pages(domains, "zh-Hans", existing)
print(f"Crawled: {len(result)} unique manga titles")
for i, (k, v) in enumerate(list(result.items())[:20]):
    title = v["title"]
    dom = v["sources"][0]["domain"]
    url = v["sources"][0].get("detailUrl", "")[:60]
    print(f"  {i+1}. {title} ({dom}: {url})")
