#!/usr/bin/env python3
"""规则去重整理器。

对每个域名只保留最佳规则（优先有searchUrl的，其次章节最多的），
移除完全重复的规则，输出去重统计报告。
"""

import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any, Dict, List, Tuple

ROOT = Path(__file__).resolve().parents[1]


def load_json(path: Path, default: Any = None) -> Any:
    if not path.exists():
        return default
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception:
        return default


def dump_json(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def rule_domain(rule: Dict[str, Any]) -> str:
    h = rule.get("homepage", "")
    return h.replace("https://", "").replace("http://", "").replace("www.", "").split("/")[0]


def rule_signature(rule: Dict[str, Any]) -> tuple:
    return (
        rule.get("searchItemRegex", ""),
        rule.get("detailChapterRegex", ""),
        rule.get("readerImageRegex", ""),
        rule.get("readerNextPageRegex", ""),
        rule.get("searchUrl", ""),
    )


def rule_score(rule: Dict[str, Any]) -> Tuple[int, int, int]:
    has_search = 1 if rule.get("searchUrl", "").strip() else 0
    has_chapter = 1 if rule.get("detailChapterRegex", "").strip() else 0
    has_image = 1 if rule.get("readerImageRegex", "").strip() else 0
    return (has_search, has_chapter, has_image)


def deduplicate_rules(rules: List[Dict[str, Any]]) -> Tuple[List[Dict[str, Any]], Dict[str, Any]]:
    by_domain: Dict[str, List[Dict[str, Any]]] = defaultdict(list)
    for rule in rules:
        d = rule_domain(rule)
        if d:
            by_domain[d].append(rule)

    kept: List[Dict[str, Any]] = []
    stats: Dict[str, Any] = {
        "inputCount": len(rules),
        "outputCount": 0,
        "removedCount": 0,
        "domainCount": len(by_domain),
        "domainDetails": [],
    }

    for domain, domain_rules in sorted(by_domain.items()):
        by_sig: Dict[tuple, List[Dict[str, Any]]] = defaultdict(list)
        for r in domain_rules:
            by_sig[rule_signature(r)].append(r)

        domain_kept = []
        for sig, sig_rules in by_sig.items():
            sig_rules.sort(key=lambda r: rule_score(r), reverse=True)
            best = dict(sig_rules[0])
            dal = list(dict.fromkeys(
                best.get("domainApplicabilityList", [])
                + [d for r in sig_rules[1:] for d in r.get("domainApplicabilityList", [])]
                + [rule_domain(r) for r in sig_rules]
            ))
            if dal:
                best["domainApplicabilityList"] = dal
            domain_kept.append(best)

        removed = len(domain_rules) - len(domain_kept)
        stats["domainDetails"].append({
            "domain": domain,
            "inputRules": len(domain_rules),
            "uniquePatterns": len(by_sig),
            "keptRules": len(domain_kept),
            "removedRules": removed,
        })
        stats["removedCount"] += removed
        kept.extend(domain_kept)

    stats["outputCount"] = len(kept)
    return kept, stats


def main() -> int:
    rules_file = ROOT / "rules" / "index.zh-Hans.json"
    report_file = ROOT / "generated" / "rule_dedup_report.json"

    data = load_json(rules_file, {})
    rules = data.get("rules", [])
    print(f"Input rules: {len(rules)}")

    kept, stats = deduplicate_rules(rules)
    print(f"Output rules: {len(kept)}")
    print(f"Removed: {stats['removedCount']}")
    print(f"Domains: {stats['domainCount']}")

    data["rules"] = kept
    dump_json(rules_file, data)
    dump_json(report_file, stats)

    for lang_file in ROOT.glob("rules/index.*.json"):
        if lang_file.name == "index.json":
            continue
        lang_data = load_json(lang_file, {})
        lang_rules = lang_data.get("rules", [])
        if len(lang_rules) == len(rules):
            lang_data["rules"] = kept
            dump_json(lang_file, lang_data)
            print(f"Updated {lang_file.name}")

    index_file = ROOT / "rules" / "index.json"
    idx_data = load_json(index_file, {})
    idx_rules = idx_data.get("rules", [])
    if len(idx_rules) == len(rules):
        idx_data["rules"] = kept
        dump_json(index_file, idx_data)
        print("Updated rules/index.json")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
