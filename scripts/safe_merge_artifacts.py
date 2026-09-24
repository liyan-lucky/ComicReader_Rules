#!/usr/bin/env python3
"""Safely merge category artifacts without overwriting better local data."""
import json
import os
import sys
from pathlib import Path

def load_json(path):
    try:
        return json.loads(Path(path).read_text(encoding="utf-8-sig"))
    except Exception:
        return None

def get_updated_at(path):
    d = load_json(path)
    if d and isinstance(d, dict):
        return d.get("updatedAt", "")
    return ""

def merge_file(src, dst):
    """Copy src to dst only if dst doesn't exist or src is newer."""
    if not os.path.exists(src):
        return False
    if not os.path.exists(dst):
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        os.replace(src, dst)
        print(f"  {dst}: new (copied)")
        return True
    src_mtime = os.path.getmtime(src)
    dst_mtime = os.path.getmtime(dst)
    if src_mtime > dst_mtime:
        os.replace(src, dst)
        print(f"  {dst}: updated (src newer)")
        return True
    print(f"  {dst}: skipped (dst newer or same)")
    return False

def merge_state(merged_dir, repo_dir):
    """Merge state files with entry-level field merge to avoid cross-run state loss."""
    merged_state = Path(merged_dir) / "state" / "search" / "zh-Hans"
    repo_state = Path(repo_dir) / "state" / "search" / "zh-Hans"
    if not merged_state.exists():
        return
    repo_state.mkdir(parents=True, exist_ok=True)
    import shutil
    for f in merged_state.glob("*.json"):
        dst = repo_state / f.name
        src_doc = load_json(f)
        if not src_doc or not isinstance(src_doc, dict):
            continue
        if not dst.exists():
            shutil.copy2(f, dst)
            print(f"  state/{f.name}: new")
            continue
        dst_doc = load_json(dst)
        if not isinstance(dst_doc, dict):
            shutil.copy2(f, dst)
            print(f"  state/{f.name}: replaced (dst unreadable)")
            continue
        src_entries = src_doc.get("entries", {})
        dst_entries = dst_doc.get("entries", {})
        merged_entries = dict(dst_entries)
        for wid, src_entry in src_entries.items():
            dst_entry = dst_entries.get(wid)
            if not dst_entry:
                merged_entries[wid] = src_entry
            elif str(src_entry.get("searchedAt", "")) > str(dst_entry.get("searchedAt", "")):
                merged_entries[wid] = src_entry
        searched = sum(1 for e in merged_entries.values() if e.get("status") == "searched")
        total = len(merged_entries)
        merged_doc = {
            **dst_doc,
            **{k: src_doc[k] for k in ("schema", "language", "category") if k in src_doc},
            "entries": merged_entries,
            "total": total,
            "searched": searched,
            "pending": total - searched,
            "complete": searched == total,
            "updatedAt": max(str(src_doc.get("updatedAt", "")), str(dst_doc.get("updatedAt", ""))),
        }
        dst.write_text(json.dumps(merged_doc, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(f"  state/{f.name}: merged entries ({total} total, {searched} searched)")

def merge_audits(merged_dir, repo_dir):
    """Merge audit files safely - only overwrite if new file has more lines."""
    merged_audits = Path(merged_dir) / "generated" / "v3" / "audits"
    repo_audits = Path(repo_dir) / "generated" / "v3" / "audits"
    if not merged_audits.exists():
        return
    repo_audits.mkdir(parents=True, exist_ok=True)
    for f in merged_audits.glob("*.jsonl"):
        dst = repo_audits / f.name
        if not dst.exists():
            import shutil
            shutil.copy2(f, dst)
            print(f"  audits/{f.name}: new ({f.stat().st_size} bytes)")
        else:
            src_lines = sum(1 for _ in open(f, encoding="utf-8-sig"))
            dst_lines = sum(1 for _ in open(dst, encoding="utf-8-sig"))
            if src_lines > dst_lines:
                import shutil
                shutil.copy2(f, dst)
                print(f"  audits/{f.name}: updated ({src_lines} > {dst_lines} lines)")
            else:
                print(f"  audits/{f.name}: kept local ({dst_lines} lines)")

def main():
    merged_dir = sys.argv[1] if len(sys.argv) > 1 else "merged"
    repo_dir = sys.argv[2] if len(sys.argv) > 2 else "."
    print("Merging state files...")
    merge_state(merged_dir, repo_dir)
    print("Merging audit files...")
    merge_audits(merged_dir, repo_dir)
    print("Merge complete!")

if __name__ == "__main__":
    main()
