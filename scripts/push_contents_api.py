#!/usr/bin/env python3
"""Push files via GitHub Contents API (supports resume on timeout)."""
import subprocess, json, sys, os, base64, time

REPO = "liyan-lucky/ComicReader_Rules"

def gh_api(method, endpoint, payload=None, retries=5):
    for attempt in range(retries):
        cmd = ["gh", "api", "--method", method, f"repos/{REPO}/{endpoint}"]
        if payload is not None:
            cmd += ["--input", "-"]
        result = subprocess.run(cmd, input=json.dumps(payload) if payload else None,
                              capture_output=True, text=True)
        if result.returncode == 0:
            return json.loads(result.stdout) if result.stdout.strip() else {}
        if attempt < retries - 1:
            wait = (attempt + 1) * 3
            print(f"  retry {attempt+1}/{retries} after {wait}s")
            time.sleep(wait)
    print(f"API error: {result.stderr.strip()[:100]}", file=sys.stderr)
    return None

def get_remote_sha(filepath):
    result = subprocess.run(
        ["gh", "api", f"repos/{REPO}/contents/{filepath}", "--jq", ".sha"],
        capture_output=True, text=True)
    if result.returncode == 0 and result.stdout.strip():
        return result.stdout.strip().strip('"')
    return None

def main():
    result = subprocess.run(["git", "diff", "--name-only", "origin/main", "HEAD"],
                          capture_output=True, text=True)
    changed_files = [f for f in result.stdout.strip().split("\n") if f]
    print(f"Changed files: {len(changed_files)}")

    for i, filepath in enumerate(changed_files):
        if not os.path.exists(filepath):
            print(f"  [{i+1}/{len(changed_files)}] {filepath} (deleted, skip)")
            continue

        with open(filepath, "rb") as f:
            content = base64.b64encode(f.read()).decode("ascii")

        remote_sha = get_remote_sha(filepath)
        payload = {"message": f"update {filepath}", "content": content, "branch": "main"}
        if remote_sha:
            payload["sha"] = remote_sha

        resp = gh_api("PUT", f"contents/{filepath}", payload)
        if resp:
            print(f"  [{i+1}/{len(changed_files)}] {filepath} OK")
        else:
            print(f"  [{i+1}/{len(changed_files)}] {filepath} FAILED")

    print("Done!")

if __name__ == "__main__":
    main()
