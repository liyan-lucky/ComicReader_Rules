#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""清洗 RuleBot 生成的远程漫画规则输出。

目标：
- 最终 index/report/ArkTS 只保留漫画浏览器规则；
- 屏蔽抖音、TikTok、短视频、社媒、百科、论坛、购物等非漫画源；
- 输出清洗统计，方便 Actions Summary 展示。
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, Iterable, List, Tuple
from urllib.parse import urlparse

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

_BLOCKED_CFG_PATH = Path(__file__).resolve().parents[2] / "config" / "blocked_domains.json"
if _BLOCKED_CFG_PATH.exists():
    try:
        _BLOCKED_CFG = json.loads(_BLOCKED_CFG_PATH.read_text("utf-8"))
        BLOCKED_DOMAIN_KEYWORDS = _BLOCKED_CFG.get("generate_rules", _BLOCKED_CFG.get("discover_domains", []))
    except Exception:
        BLOCKED_DOMAIN_KEYWORDS = [
            "douyin", "iesdouyin", "tiktok", "snssdk", "kuaishou", "gifshow", "ixigua", "toutiao",
            "youtube", "youtu.be", "bilibili", "acfun", "facebook", "instagram", "twitter", "x.com",
            "reddit", "pinterest", "weibo", "weixin", "wechat", "qq.com", "zhihu", "baike", "wikipedia",
            "google", "bing", "duckduckgo", "yahoo", "amazon", "taobao", "tmall", "jd.com", "shop",
        ]
else:
    BLOCKED_DOMAIN_KEYWORDS = [
        "douyin", "iesdouyin", "tiktok", "snssdk", "kuaishou", "gifshow", "ixigua", "toutiao",
        "youtube", "youtu.be", "bilibili", "acfun", "facebook", "instagram", "twitter", "x.com",
        "reddit", "pinterest", "weibo", "weixin", "wechat", "qq.com", "zhihu", "baike", "wikipedia",
        "google", "bing", "duckduckgo", "yahoo", "amazon", "taobao", "tmall", "jd.com", "shop",
    ]

BLOCKED_PATH_KEYWORDS = [
    "/video", "/live", "/short", "/reel", "/photo", "/post", "/user", "/profile", "/topic",
    "/news", "/forum", "/bbs", "/comment", "/login", "/register", "/download", "/app",
]

COMIC_POSITIVE_KEYWORDS = [
    "comic", "manga", "manhua", "manhwa", "webtoon", "cartoon", "chapter", "read", "reader",
    "漫画", "章节", "阅读", "连载", "完结",
]


def now_iso() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def safe_str(value: Any) -> str:
    return "" if value is None else str(value).strip()


def load_json(path: Path, default: Any) -> Any:
    if not path.exists():
        return default
    try:
        return json.loads(path.read_text("utf-8"))
    except Exception:
        return default


def dump_json(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_suffix(".tmp")
    tmp.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", "utf-8")
    tmp.replace(path)


def host_of(value: str) -> str:
    text = safe_str(value)
    if not text:
        return ""
    parsed = urlparse(text if "://" in text else "https://" + text)
    return (parsed.netloc or parsed.path).lower().replace("www.", "").strip("/")


def path_of(value: str) -> str:
    text = safe_str(value)
    if not text:
        return ""
    parsed = urlparse(text if "://" in text else "https://" + text)
    return parsed.path.lower()


def value_urls_from_rule(rule: Dict[str, Any]) -> List[str]:
    values = []
    for key in ("homepage", "searchUrl", "referer", "url", "detailUrl", "sourceUrl"):
        value = safe_str(rule.get(key))
        if value:
            values.append(value)
    return values


def value_urls_from_audit(audit: Dict[str, Any]) -> List[str]:
    values = []
    for key in ("base_url", "detail_url", "first_chapter_url", "first_image_url", "cover_url"):
        value = safe_str(audit.get(key))
        if value:
            values.append(value)
    return values


def is_blocked_url(value: str) -> bool:
    host = host_of(value)
    path = path_of(value)
    joined = f"{host}{path}".lower()
    if any(bad in host for bad in BLOCKED_DOMAIN_KEYWORDS):
        return True
    return any(bad in joined for bad in BLOCKED_PATH_KEYWORDS)


def has_comic_signal(text: str) -> bool:
    lowered = safe_str(text).lower()
    return any(keyword.lower() in lowered for keyword in COMIC_POSITIVE_KEYWORDS)


def audit_has_comic_evidence(audit: Dict[str, Any]) -> bool:
    text = " ".join([
        safe_str(audit.get("domain")),
        safe_str(audit.get("base_url")),
        safe_str(audit.get("detail_url")),
        safe_str(audit.get("detail_title")),
        safe_str(audit.get("first_chapter_title")),
        json.dumps(audit.get("evidence", {}), ensure_ascii=False),
    ])
    if has_comic_signal(text):
        return True
    return int(audit.get("chapter_count") or 0) > 0 and int(audit.get("static_image_count") or 0) > 0


def is_allowed_audit(audit: Dict[str, Any]) -> Tuple[bool, str]:
    urls = value_urls_from_audit(audit)
    if any(is_blocked_url(url) for url in urls):
        return False, "blocked_non_comic_domain_or_path"
    if not audit_has_comic_evidence(audit):
        return False, "missing_comic_evidence"
    if bool(audit.get("requires_login_or_pay")) and int(audit.get("static_image_count") or 0) <= 0:
        return False, "login_or_pay_without_public_images"
    return True, ""


_BAD_RULE_NAME_RE = re.compile(r"^(登录|注册|漫画$|Manga$|//|/\*|<!|var |let |const |function |window\.|document\.|{\s*$|404|403|500|Error|Forbidden|Not Found)", re.I)


def is_allowed_rule(rule: Dict[str, Any]) -> Tuple[bool, str]:
    urls = value_urls_from_rule(rule)
    if any(is_blocked_url(url) for url in urls):
        return False, "blocked_non_comic_domain_or_path"
    name = safe_str(rule.get("name", ""))
    if _BAD_RULE_NAME_RE.match(name.split(" - ")[0].strip()):
        return False, "bad_rule_name"
    text = " ".join([
        safe_str(rule.get("id")),
        name,
        safe_str(rule.get("description")),
        safe_str(rule.get("homepage")),
        safe_str(rule.get("searchUrl")),
        safe_str(rule.get("detailChapterRegex")),
        safe_str(rule.get("readerImageRegex")),
    ])
    if not has_comic_signal(text) and not safe_str(rule.get("readerImageRegex")):
        return False, "missing_comic_evidence"
    return True, ""


def sanitize_report(report: Dict[str, Any]) -> Tuple[Dict[str, Any], Dict[str, int]]:
    stats = {"reportGeneratedBefore": 0, "reportGeneratedAfter": 0, "reportExcludedBefore": 0, "reportExcludedAfter": 0, "reportRemoved": 0}
    generated = report.get("generated", []) if isinstance(report, dict) else []
    excluded = report.get("excluded", []) if isinstance(report, dict) else []
    stats["reportGeneratedBefore"] = len(generated)
    stats["reportExcludedBefore"] = len(excluded)

    clean_generated = []
    removed = []
    for audit in generated:
        ok, reason = is_allowed_audit(audit if isinstance(audit, dict) else {})
        if ok:
            clean_generated.append(audit)
        else:
            audit = dict(audit or {})
            audit["sanitizeReason"] = reason
            removed.append(audit)

    clean_excluded = []
    for audit in excluded:
        ok, reason = is_allowed_audit(audit if isinstance(audit, dict) else {})
        audit = dict(audit or {})
        if ok:
            clean_excluded.append(audit)
        else:
            audit["sanitizeReason"] = reason
            removed.append(audit)

    out = dict(report or {})
    out["generated"] = clean_generated
    out["excluded"] = clean_excluded
    out["generatedCount"] = len(clean_generated)
    out["excludedCount"] = len(clean_excluded)
    out["sanitize"] = {
        "updatedAt": now_iso(),
        "comicOnly": True,
        "blockedDomainKeywords": BLOCKED_DOMAIN_KEYWORDS,
        "blockedPathKeywords": BLOCKED_PATH_KEYWORDS,
        "removedCount": len(removed),
        "removedSamples": removed[:20],
    }
    stats["reportGeneratedAfter"] = len(clean_generated)
    stats["reportExcludedAfter"] = len(clean_excluded)
    stats["reportRemoved"] = len(removed)
    return out, stats


def sanitize_index(index: Dict[str, Any]) -> Tuple[Dict[str, Any], Dict[str, int]]:
    stats = {"indexRulesBefore": 0, "indexRulesAfter": 0, "indexRulesRemoved": 0}
    rules = index.get("rules", []) if isinstance(index, dict) else []
    stats["indexRulesBefore"] = len(rules)
    clean_rules = []
    removed = []
    for rule in rules:
        ok, reason = is_allowed_rule(rule if isinstance(rule, dict) else {})
        if ok:
            clean_rules.append(rule)
        else:
            removed.append({"id": safe_str((rule or {}).get("id")), "name": safe_str((rule or {}).get("name")), "reason": reason})
    out = dict(index or {})
    out["rules"] = clean_rules
    audit = dict(out.get("audit", {}) or {})
    audit["totalCount"] = len(clean_rules)
    audit["sanitizeComicOnly"] = True
    audit["sanitizeRemovedRules"] = len(removed)
    audit["sanitizeRemovedSamples"] = removed[:20]
    out["audit"] = audit
    stats["indexRulesAfter"] = len(clean_rules)
    stats["indexRulesRemoved"] = len(removed)
    return out, stats


def write_ets_from_index(index: Dict[str, Any], output: Path) -> None:
    rules = index.get("rules", []) if isinstance(index, dict) else []
    payload = json.dumps(rules, ensure_ascii=False, indent=2)
    text = """import { ComicSourceRule } from '../model/ComicModels';

/**
 * 自动生成文件：请不要手工修改。
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。
 * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = """ + payload + ";\n"
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(text, "utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description="清洗 RuleBot 输出，确保最终只发布漫画浏览器规则")
    parser.add_argument("--index", default="generated/index.json")
    parser.add_argument("--report", default="generated/rulebot_report.json")
    parser.add_argument("--ets", default="generated/GeneratedSourceRules.ets")
    parser.add_argument("--rules-output", default="rules/index.json")
    parser.add_argument("--summary", default="dist/rule-sanitize-summary.md")
    args = parser.parse_args()

    index_path = Path(args.index)
    report_path = Path(args.report)
    ets_path = Path(args.ets)
    rules_output_path = Path(args.rules_output)
    summary_path = Path(args.summary)

    report = load_json(report_path, {})
    index = load_json(index_path, {})

    clean_report, report_stats = sanitize_report(report)
    clean_index, index_stats = sanitize_index(index)

    dump_json(report_path, clean_report)
    dump_json(index_path, clean_index)
    dump_json(rules_output_path, clean_index)
    write_ets_from_index(clean_index, ets_path)

    lines = [
        "## 规则清洗结果",
        "",
        "- 清洗目标：只保留漫画浏览器规则",
        f"- 报告生成规则：{report_stats['reportGeneratedBefore']} → {report_stats['reportGeneratedAfter']}",
        f"- 报告排除记录：{report_stats['reportExcludedBefore']} → {report_stats['reportExcludedAfter']}",
        f"- 报告清理记录：{report_stats['reportRemoved']}",
        f"- 索引规则：{index_stats['indexRulesBefore']} → {index_stats['indexRulesAfter']}",
        f"- 索引清理规则：{index_stats['indexRulesRemoved']}",
        "- 已屏蔽：douyin / tiktok / youtube / bilibili / 社媒 / 百科 / 购物 / 登录下载等非漫画路径",
    ]
    summary_path.parent.mkdir(parents=True, exist_ok=True)
    summary_path.write_text("\n".join(lines) + "\n", "utf-8")
    print("\n".join(lines))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
