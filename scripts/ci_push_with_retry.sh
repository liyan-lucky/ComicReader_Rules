#!/usr/bin/env bash
set -euo pipefail

# Several incremental jobs legitimately publish different generated files at
# the same time. A successful rebase can become stale milliseconds later, so
# retry the fetch/rebase/push transaction instead of reporting a false failure.
for attempt in 1 2 3 4 5; do
  git add -A 2>/dev/null || true
  git diff --cached --quiet 2>/dev/null || git commit --amend --no-edit --allow-empty 2>/dev/null || true
  git pull --rebase origin main
  if git push origin HEAD:main; then
    exit 0
  fi
  echo "Concurrent publisher won attempt ${attempt}; retrying."
  sleep $((attempt * 2))
done

echo "Unable to publish after five concurrency retries." >&2
exit 1
