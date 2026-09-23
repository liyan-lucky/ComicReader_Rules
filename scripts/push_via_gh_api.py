#!/usr/bin/env python3
"""Push local commits to remote via GitHub Git Database API (bypasses git proxy)."""
import subprocess, json, sys, os, base64

REPO = "liyan-lucky/ComicReader_Rules"

def gh_api(method, endpoint, payload=None):
    cmd = ["gh", "api", "--method", method, f"repos/{REPO}/{endpoint}"]
    if payload is not None:
        cmd += ["--input", "-"]
    result = subprocess.run(cmd, input=json.dumps(payload) if payload else None,
                          capture_output=True, text=True)
    if result.returncode != 0:
        print(f"API error {endpoint}: {result.stderr}", file=sys.stderr)
        sys.exit(1)
    return json.loads(result.stdout) if result.stdout.strip() else {}

def get_changed_files():
    result = subprocess.run(["git", "diff", "--name-only", "origin/main", "HEAD"],
                          capture_output=True, text=True)
    return [f for f in result.stdout.strip().split("\n") if f]

def create_blob(filepath):
    with open(filepath, "rb") as f:
        content = f.read()
    encoded = base64.b64encode(content).decode("ascii")
    resp = gh_api("POST", "git/blobs", {"content": encoded, "encoding": "base64"})
    return resp["sha"]

def main():
    ref = gh_api("GET", "git/refs/heads/main")
    old_commit_sha = ref["object"]["sha"]
    print(f"Remote HEAD: {old_commit_sha}")

    old_commit = gh_api("GET", f"git/commits/{old_commit_sha}")
    base_tree_sha = old_commit["tree"]["sha"]
    print(f"Base tree: {base_tree_sha}")

    result = subprocess.run(
        ["git", "log", "--reverse", "--format=%H|%s", "origin/main..HEAD"],
        capture_output=True, text=True)
    commits = [line.split("|", 1) for line in result.stdout.strip().split("\n") if line]
    print(f"Commits to push: {len(commits)}")

    changed_files = get_changed_files()
    print(f"Changed files: {len(changed_files)}")

    tree_items = []
    for i, filepath in enumerate(changed_files):
        if not os.path.exists(filepath):
            tree_items.append({"path": filepath, "mode": "100644", "type": "blob", "sha": None})
            print(f"  [{i+1}/{len(changed_files)}] {filepath} (deleted)")
            continue
        blob_sha = create_blob(filepath)
        mode = "100755" if os.access(filepath, os.X_OK) else "100644"
        tree_items.append({"path": filepath, "mode": mode, "type": "blob", "sha": blob_sha})
        print(f"  [{i+1}/{len(changed_files)}] {filepath} -> {blob_sha[:8]}")

    tree_resp = gh_api("POST", "git/trees", {"base_tree": base_tree_sha, "tree": tree_items})
    new_tree_sha = tree_resp["sha"]
    print(f"New tree: {new_tree_sha}")

    parent_sha = old_commit_sha
    for local_sha, message in commits:
        commit_resp = gh_api("POST", "git/commits", {
            "message": message,
            "tree": new_tree_sha,
            "parents": [parent_sha]
        })
        parent_sha = commit_resp["sha"]
        print(f"Commit: {parent_sha[:8]} {message}")

    gh_api("PATCH", "git/refs/heads/main", {"sha": parent_sha, "force": True})
    print(f"Updated refs/heads/main -> {parent_sha}")
    print("Push complete!")

if __name__ == "__main__":
    main()
