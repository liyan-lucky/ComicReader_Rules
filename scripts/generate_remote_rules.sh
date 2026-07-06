#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
python3 -m pip install -r tools/rule_discovery/requirements.txt
KEYWORDS=()
DOMAINS=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --domain)
      DOMAINS+=("--domain" "$2")
      shift 2
      ;;
    *)
      KEYWORDS+=("--keyword" "$1")
      shift
      ;;
  esac
done
if [[ ${#KEYWORDS[@]} -eq 0 ]]; then
  KEYWORDS=("--keyword" "斗罗大陆" "--keyword" "Soul Land" "--keyword" "Douluo Dalu")
fi
python3 tools/rule_discovery/generate_rules.py \
  "${KEYWORDS[@]}" "${DOMAINS[@]}" \
  --max-generated 1000 \
  --report generated/rulebot_report.json
python3 tools/rule_discovery/build_index_from_report.py \
  --report generated/rulebot_report.json \
  --output generated/index.json \
  --language-code zh-Hans --language-name 简体中文
python3 tools/rule_discovery/sanitize_rule_outputs.py \
  --report generated/rulebot_report.json \
  --index generated/index.json \
  --ets generated/GeneratedSourceRules.ets \
  --rules-output rules/index.json
python3 scripts/update_manifest.py \
  --index generated/index.json \
  --language-code zh-Hans
