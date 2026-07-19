#!/usr/bin/env python3
from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any, Optional

ROOT = Path(__file__).resolve().parents[2]
CONFIG_DIR = ROOT / "config"


def load_json(path_or_name: Any, default: Any = None, is_config: bool = False) -> Any:
    if is_config or isinstance(path_or_name, str):
        p = CONFIG_DIR / path_or_name
    else:
        p = Path(path_or_name)
    if p.exists():
        try:
            return json.loads(p.read_text(encoding="utf-8"))
        except Exception:
            pass
    return default


def dump_json(path: Any, data: Any, is_config: bool = False) -> None:
    if is_config or isinstance(path, str):
        p = CONFIG_DIR / path
    else:
        p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    tmp = p.with_suffix(".tmp")
    tmp.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    tmp.replace(p)


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    return domain.replace("www.", "")


def safe_str(value: Any) -> str:
    return "" if value is None else str(value).strip()


def safe_id(domain: str, seed: str = "") -> str:
    import hashlib
    core = domain.lower().replace("www.", "")
    core = re.sub(r"[^a-z0-9]+", "_", core).strip("_")
    suffix = ""
    if seed:
        suffix = "_" + hashlib.sha1(seed.encode("utf-8", errors="ignore")).hexdigest()[:8]
    return (core or "generated")[:40] + suffix + "_auto_public"


def searxng_url() -> Optional[str]:
    import os
    url = os.environ.get("SEARXNG_URL", "").strip()
    if url:
        return url.rstrip("/")
    cfg = load_json("search.json", {})
    base = (cfg.get("searxng") or {}).get("url", "")
    return base.rstrip("/") if base else None


def searxng_max_pages() -> int:
    cfg = load_json("search.json", {})
    return (cfg.get("searxng") or {}).get("max_pages", 3)


def load_ua() -> str:
    cfg = load_json("headers.json", {})
    return cfg.get("default_ua", "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/120.0.6099.230 Mobile Safari/537.36")


def load_rule_bot_ua() -> str:
    cfg = load_json("headers.json", {})
    return cfg.get("rule_bot_ua", "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot")


def now_iso() -> str:
    from datetime import datetime, timezone
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")
