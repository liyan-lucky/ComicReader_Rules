import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

with open(ROOT / "config" / "search_url_templates.json", "r", encoding="utf-8") as f:
    templates = json.load(f)

with open(ROOT / "rules" / "index.zh-Hans.json", "r", encoding="utf-8") as f:
    idx = json.load(f)

updated = 0
for rule in idx.get("rules", []):
    if rule.get("searchUrl"):
        continue
    homepage = rule.get("homepage", "")
    domain = homepage.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "")
    if domain in templates:
        rule["searchUrl"] = templates[domain]
        rule["searchMethod"] = "url-only"
        rule["searchItemRegex"] = r"<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\s\S]{0,260}?)<\/a>"
        rule["searchTitleGroups"] = [2]
        rule["searchUrlGroups"] = [1]
        rule["searchCoverGroups"] = []
        rule["searchResultIsChapter"] = False
        rule["searchFilterByKeyword"] = True
        updated += 1

with open(ROOT / "rules" / "index.zh-Hans.json", "w", encoding="utf-8") as f:
    json.dump(idx, f, ensure_ascii=False, indent=2)

print(f"Updated {updated} rules with searchUrl templates")
