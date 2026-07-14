import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

with open(ROOT / "rules" / "index.zh-Hans.json", "r", encoding="utf-8") as f:
    idx = json.load(f)

domains = set()
for r in idx.get("rules", []):
    hp = r.get("homepage", "")
    d = hp.replace("https://", "").replace("http://", "").split("/")[0].replace("www.", "")
    if d:
        domains.add(d)

aggregator = {"zh-Hans": sorted([f"https://{d}/" for d in domains])}

with open(ROOT / "config" / "aggregator_sites.json", "w", encoding="utf-8") as f:
    json.dump(aggregator, f, ensure_ascii=False, indent=2)

print(f"Updated aggregator_sites.json with {len(domains)} zh-Hans domains")
