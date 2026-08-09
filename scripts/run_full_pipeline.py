#!/usr/bin/env python3
"""One canonical local/CI entrypoint from the query 漫画 to final artifacts."""
from __future__ import annotations

import argparse
import os
import subprocess
import sys
from pathlib import Path

from pipeline_seed import ROOT_TERM

ROOT = Path(__file__).resolve().parents[1]
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")
LANG_NAMES = {
    "zh-Hans": "简体中文", "zh-Hant": "繁體中文", "en": "English",
    "ja": "日本語", "ko": "한국어",
}


def run(*parts: str, env: dict[str, str]) -> None:
    command = [sys.executable, *parts]
    print("\n+", " ".join(command), flush=True)
    subprocess.run(command, cwd=ROOT, env=env, check=True)


def main() -> int:
    parser = argparse.ArgumentParser(description="漫画 -> domains -> rules -> catalog -> gate")
    parser.add_argument("--language", default="zh-Hans", choices=LANG_NAMES)
    parser.add_argument("--min-rules", type=int, default=500)
    parser.add_argument("--max-rules", type=int, default=1000)
    parser.add_argument("--per-domain-rules", type=int, default=50)
    parser.add_argument("--per-category", type=int, default=200)
    parser.add_argument("--time-budget", type=int, default=19800)
    parser.add_argument("--search-budget", type=int, default=3600)
    parser.add_argument("--resume-from", choices=("domains", "parameters", "keywords", "rules", "catalog", "gate"), default="domains")
    args = parser.parse_args()
    if args.max_rules < args.min_rules:
        parser.error("--max-rules must be >= --min-rules")

    env = os.environ.copy()
    env.update({
        "PIPELINE_LANGUAGE": args.language,
        "PIPELINE_TARGET_COUNT": str(args.per_category),
        "PIPELINE_SEARCH_TEXT": ROOT_TERM,
    })
    stages = ("domains", "parameters", "keywords", "rules", "catalog", "gate")
    start = stages.index(args.resume_from)
    search_result_limit = args.max_rules * 2
    seed_limit = args.max_rules * max(args.per_domain_rules, 1)
    per_seed_limit = max(args.per_category, args.per_domain_rules)
    per_domain_audit_limit = args.per_domain_rules * 3

    if start <= stages.index("domains"):
        run("scripts/bootstrap_config.py", "--language", args.language, env=env)
        run("scripts/discover_domains.py", "--language", args.language, "--limit", "0",
            "--report", "generated/domain_discovery_report.json", env=env)
    if start <= stages.index("parameters"):
        run("scripts/generate_site_configs.py", env=env)
    if start <= stages.index("keywords"):
        run("scripts/discover_keywords.py", "--language", args.language, "--top", str(max(args.max_rules, args.per_category)), env=env)
    if start <= stages.index("rules"):
        report = f"generated/rulebot_report.{args.language}.json"
        index = f"generated/index.{args.language}.json"
        ets = f"generated/GeneratedSourceRules.{args.language}.ets"
        rules = f"rules/index.{args.language}.json"
        run(
            "tools/rule_discovery/generate_rules.py",
            "--keyword", ROOT_TERM, "--language-code", args.language,
            "--language-name", LANG_NAMES[args.language], "--limit", str(search_result_limit),
            "--seed-limit", str(seed_limit), "--per-seed-limit", str(per_seed_limit),
            "--max-audit-candidates", "0", "--per-domain-audit-limit", str(per_domain_audit_limit),
            "--per-domain-generated-limit", str(args.per_domain_rules),
            "--max-generated", str(args.max_rules), "--sleep", "0.15",
            "--time-budget-seconds", str(args.time_budget),
            "--search-budget-seconds", str(args.search_budget),
            "--max-consecutive-zero-search", "0", "--report", report, env=env,
        )
        run("tools/rule_discovery/build_index_from_report.py", "--report", report,
            "--output", index, "--language-code", args.language,
            "--language-name", LANG_NAMES[args.language],
            "--per-domain-limit", str(args.per_domain_rules), env=env)
        run("tools/rule_discovery/sanitize_rule_outputs.py", "--report", report,
            "--index", index, "--ets", ets, "--rules-output", rules,
            "--language-code", args.language, env=env)
    if start <= stages.index("catalog"):
        run("scripts/bulk_generate_catalog.py", "--max-crawl-domains", "0", env=env)
    run("scripts/validate_pipeline_outputs.py", "--language", args.language,
        "--min-rules", str(args.min_rules), "--min-per-category", str(args.per_category), env=env)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
