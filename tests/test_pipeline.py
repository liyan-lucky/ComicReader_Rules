import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from title_normalization import build, clean_title, identity_key
from select_sources import choose
import audit_category_sources as source_audit
from audit_category_sources import BLOCKED_DOMAINS, MIN_IMAGES, NON_COMIC_PATH, chapter_order_audit


def test_chapter_suffix_is_not_a_separate_work():
    assert clean_title("斗破苍穹 第1话") == "斗破苍穹"
    assert clean_title("斗破苍穹 第一集 在线阅读") == "斗破苍穹"
    assert identity_key(clean_title("斗破苍穹 第1话"), "zh-Hans") == identity_key("斗破苍穹", "zh-Hans")


def test_season_and_side_story_remain_distinct():
    assert identity_key(clean_title("某某 第一季"), "zh-Hans") != identity_key(clean_title("某某 第二季"), "zh-Hans")
    assert identity_key(clean_title("某某"), "zh-Hans") != identity_key(clean_title("某某 外传"), "zh-Hans")


def test_platform_observations_are_deduplicated_with_evidence():
    observations = [
        {"platform": "A", "url": "https://a.example/work/1", "title": "斗破苍穹", "category": "xuanhuan", "language": "zh-Hans"},
        {"platform": "B", "url": "https://b.example/work/2", "title": "斗破苍穹 第1话", "category": "xuanhuan", "language": "zh-Hans"},
    ]
    result = build(observations, "zh-Hans", "xuanhuan")
    assert len(result["works"]) == 1
    assert len(result["works"][0]["platformEvidence"]) == 2


def test_simplified_chinese_catalog_excludes_english_only_titles():
    observations = [{"platform": "A", "title": "Hero Killer", "category": "dongzuo", "language": "zh-Hans"},
                    {"platform": "A", "title": "英雄杀手 Hero Killer", "category": "dongzuo", "language": "zh-Hans"}]
    result = build(observations, "zh-Hans", "dongzuo")
    assert [work["canonicalTitle"] for work in result["works"]] == ["英雄杀手 Hero Killer"]


def _audit(domain: str, chapters: int, title: str = "斗破苍穹", readable: bool = True):
    chapter_manifest = [
        {"title": f"第{index + 1}话", "url": f"https://{domain}/chapter/{index + 1}"}
        for index in range(chapters)
    ]
    return {"workId": "work-1", "language": "zh-Hans", "category": "xuanhuan",
            "queryTitle": "斗破苍穹", "matchedTitle": title,
            "detailUrl": f"https://{domain}/comic/1", "domain": domain, "chapterCount": chapters,
            "policyVersion": "readability-v4", "chapters": chapter_manifest,
            "status": "verified", "samples": [
                {"position": position, "chapterUrl": f"https://{domain}/chapter/{position}",
                 "imageCount": 20 if readable else 1, "readable": readable}
                for position in ("first", "middle", "latest")
            ]}


def test_best_source_uses_highest_verified_chapter_count():
    result = choose([_audit("a.example", 100), _audit("b.example", 250)])
    assert result["selected"][0]["domain"] == "b.example"
    assert result["selected"][0]["verifiedChapterCount"] == 250
    assert result["selected"][0]["category"] == "xuanhuan"
    assert {x["domain"] for x in result["verifiedCandidates"]} == {"a.example", "b.example"}


def test_unreadable_or_wrong_title_source_cannot_win():
    result = choose([_audit("bad.example", 999, readable=False), _audit("wrong.example", 888, title="斗罗大陆"),
                     _audit("good.example", 120)])
    assert result["selected"][0]["domain"] == "good.example"
    assert len(result["rejected"]) == 2


def test_readability_policy_rejects_sparse_or_novel_sources():
    assert MIN_IMAGES >= 8
    assert "ffppt.com" in BLOCKED_DOMAINS
    assert NON_COMIC_PATH.search("https://example.com/novel16827/")


def test_descending_source_chapter_order_is_detected_before_publication():
    audit = chapter_order_audit([('第10话', 'https://example.com/10'),
                                 ('第9话', 'https://example.com/9'),
                                 ('第8话', 'https://example.com/8')])
    assert audit["direction"] == "descending"
    assert audit["monotonic"] is True


class _SearchResponse:
    def __init__(self, rows):
        self.rows = rows

    def raise_for_status(self):
        return None

    def json(self):
        return {"results": self.rows}


class _SearchSession:
    def get(self, url, params=None, headers=None, timeout=None):
        query = (params or {}).get("q", "")
        if query.startswith("site:good.example"):
            return _SearchResponse([
                {"url": "https://noise.example/shop", "title": "目标漫画"},
                {"url": "https://good.example/comic/1", "title": "目标漫画"},
            ])
        return _SearchResponse([
            {"url": "https://noise.example/unrelated", "title": "无关页面"},
            {"url": "https://new.example/comic/target", "title": "目标漫画在线阅读"},
        ])


def test_search_enforces_site_bucket_and_title_evidence(monkeypatch):
    monkeypatch.setattr(source_audit, "PREFERRED_READABLE_DOMAINS", ["good.example"])
    monkeypatch.setenv("SEARXNG_URL", "http://search.test")
    urls = source_audit.search(_SearchSession(), "目标漫画", 8)
    assert urls == ["https://good.example/comic/1", "https://new.example/comic/target"]
