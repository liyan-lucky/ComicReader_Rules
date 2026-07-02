#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

export CATALOG_TARGET_COUNT="${CATALOG_TARGET_COUNT:-200}"
export CATALOG_MIN_TARGET_COUNT="${CATALOG_MIN_TARGET_COUNT:-200}"

python3 scripts/generate_catalog.py "$@"
python3 scripts/boost_catalog_targets.py
python3 scripts/summarize_catalog_report.py --target "$CATALOG_TARGET_COUNT"
