#!/usr/bin/env python3
"""Build machine-readable and Actions-friendly pipeline quality statistics."""
from __future__ import annotations

import argparse
import json
import os
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any
from urllib.parse import urlparse

from pipeline_seed import ROOT_TERMS

ROOT = Path(__file__).resolve().parents[1]
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def load(path: Path, default: Any) -> Any:
    try:
        return json.loads(path.read_text(encoding="utf-8-sig"))
    except (OSError, ValueError):
        return default


def dump(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    temporary.replace(path)


def host(value: Any) -> str:
    parsed = urlparse(str(value or "") if "://" in str(value or "") else "https://" + str(value or ""))
    result = (parsed.hostname or "").lower()
    return result[4:] if result.startswith("www.") else result


def related_domain(left: str, right: str) -> bool:
    return left == right or left.endswith("." + right) or right.endswith("." + left)


def covered(domain: str, rule_domains: set[str]) -> bool:
    return any(related_domain(domain, candidate) for candidate in rule_domains)


def build_audit(language: str, min_rules: int, min_per_category: int) -> tuple[dict, dict, dict, str]:
    catalog = load(ROOT / "catalog" / f"catalog.{language}.json", {})
    rules_doc = load(ROOT / "rules" / f"index.{language}.json", {})
    discovery = load(ROOT / "generated" / "domain_discovery_report.json", {})
    rule_report = load(ROOT / "generated" / f"rulebot_report.{language}.json", {})
    aggregators = load(ROOT / "config" / "aggregator_sites.json", {}).get(language, [])
    search_templates = load(ROOT / "config" / "search_url_templates.json", {})
    seed_sites = load(ROOT / "config" / "seed_sites.json", {})
    manual_rules = load(ROOT / "rules" / "manual" / "index.json", {}).get("rules", [])

    category_stats = []
    total = missing_title = missing_detail = missing_cover = incomplete = 0
    for category_id, category in catalog.get("categories", {}).items():
        items = category.get("items", [])
        stats = {"id": category_id, "name": category.get("name", category_id), "count": len(items),
                 "missingTitle": 0, "missingDetailUrl": 0, "missingCoverUrl": 0,
                 "incompleteSource": 0, "meetsMinimum": len(items) >= min_per_category}
        for item in items:
            sources = item.get("sources", [])
            details = [str(s.get("detailUrl", "")) for s in sources if str(s.get("detailUrl", "")).startswith(("http://", "https://"))]
            covers = [str(s.get("coverUrl", "")) for s in sources if str(s.get("coverUrl", "")).startswith(("http://", "https://"))]
            complete = any(
                str(s.get("detailUrl", "")).startswith(("http://", "https://"))
                and str(s.get("coverUrl", "")).startswith(("http://", "https://"))
                for s in sources
            )
            stats["missingTitle"] += not bool(str(item.get("title", "")).strip())
            stats["missingDetailUrl"] += not bool(details)
            stats["missingCoverUrl"] += not bool(covers)
            stats["incompleteSource"] += not complete
        total += len(items)
        missing_title += stats["missingTitle"]
        missing_detail += stats["missingDetailUrl"]
        missing_cover += stats["missingCoverUrl"]
        incomplete += stats["incompleteSource"]
        category_stats.append(stats)

    rules = rules_doc.get("rules", [])
    rule_domains = {host(rule.get("homepage")) for rule in rules} - {""}
    aggregator_domains = {host(value) for value in aggregators} - {""}
    new_domains = {host(value) for value in discovery.get("newDomains", [])} - {""}
    manual_domains = {host(rule.get("homepage")) for rule in manual_rules} - {""}
    validated_domains = aggregator_domains | new_domains | manual_domains
    generated_domains = {host(item.get("domain")) for item in rule_report.get("generated", [])} - {""}
    uncovered = sorted(domain for domain in validated_domains if not covered(domain, rule_domains))
    unexpected = sorted(domain for domain in rule_domains if not covered(domain, validated_domains))
    coverage = {
        "validatedDomains": sorted(validated_domains),
        "aggregatorDomains": sorted(aggregator_domains),
        "newValidatedDomains": sorted(new_domains),
        "manualRuleDomains": sorted(manual_domains),
        "generatedAuditDomains": sorted(generated_domains),
        "ruleDomains": sorted(rule_domains),
        "coveredValidatedDomains": sorted(set(validated_domains) - set(uncovered)),
        "uncoveredValidatedDomains": uncovered,
        "unexpectedRuleDomains": unexpected,
        "coveragePercent": round((len(validated_domains) - len(uncovered)) * 100 / len(validated_domains), 2) if validated_domains else 0,
    }
    provenance = {
        "generatedAt": datetime.now(timezone.utc).isoformat(),
        "rootTerms": [{"value": value, "source": "fixed-code", "path": "scripts/pipeline_seed.py"} for value in ROOT_TERMS],
        "searchTemplates": {domain: {"value": value, "source": "public-form-discovery", "path": "config/search_url_templates.json"}
                            for domain, value in search_templates.items()},
        "seedSites": {domain: {"count": len(values), "source": "public-navigation-discovery", "path": "config/seed_sites.json"}
                      for domain, values in seed_sites.items()},
        "searchEngineProtocol": {"source": "configured-adapter", "path": "config/search.json"},
        "generatedSearchTemplateCoveragePercent": round(len(search_templates) * 100 / len(aggregator_domains), 2) if aggregator_domains else 0,
    }
    audit = {
        "schema": "comic_pipeline_audit_v1",
        "generatedAt": datetime.now(timezone.utc).isoformat(),
        "language": language,
        "fixedQueries": list(ROOT_TERMS),
        "workflowStats": rule_report.get("stats", {}),
        "catalog": {"declaredTotal": catalog.get("totalItems"), "actualTotal": total,
                    "categoryCount": len(category_stats), "minimumPerCategory": min_per_category,
                    "missingTitle": missing_title, "missingDetailUrl": missing_detail,
                    "missingCoverUrl": missing_cover, "incompleteSource": incomplete,
                    "categories": category_stats},
        "rules": {"count": len(rules), "minimum": min_rules, "domainCount": len(rule_domains)},
        "domainCoverage": coverage,
        "parameterProvenance": provenance,
    }
    lines = [
        "## 漫画全链路审计", "",
        f"- 固定查询：`{', '.join(ROOT_TERMS)}`",
        f"- 规则：{len(rules)}（最低 {min_rules}）",
        f"- 目录：{total} 项 / {len(category_stats)} 类",
        f"- 缺详情链接：{missing_detail}", f"- 缺封面链接：{missing_cover}",
        f"- 不完整来源：{incomplete}",
        f"- 验证域名覆盖：{len(validated_domains) - len(uncovered)}/{len(validated_domains)} ({coverage['coveragePercent']}%)",
        f"- 未覆盖验证域名：{', '.join(uncovered) if uncovered else '无'}", "",
        "| 分类 | 数量 | 最低要求 | 缺详情 | 缺封面 | 完整 |", "|---|---:|---:|---:|---:|---|",
    ]
    for item in category_stats:
        lines.append(f"| {item['name']} | {item['count']} | {min_per_category} | {item['missingDetailUrl']} | {item['missingCoverUrl']} | {'是' if item['incompleteSource'] == 0 else '否'} |")
    return audit, coverage, provenance, "\n".join(lines) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--language", default="zh-Hans")
    parser.add_argument("--min-rules", type=int, default=500)
    parser.add_argument("--min-per-category", type=int, default=200)
    args = parser.parse_args()
    audit, coverage, provenance, markdown = build_audit(args.language, args.min_rules, args.min_per_category)
    dump(ROOT / "generated" / f"pipeline_audit.{args.language}.json", audit)
    dump(ROOT / "generated" / f"domain_coverage.{args.language}.json", coverage)
    dump(ROOT / "generated" / "parameter_provenance.json", provenance)
    summary = os.environ.get("GITHUB_STEP_SUMMARY", "").strip()
    if summary:
        with Path(summary).open("a", encoding="utf-8") as handle:
            handle.write(markdown)
    print(markdown, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
