import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from title_normalization import build, clean_title, identity_key
from select_sources import choose
import audit_category_sources as source_audit
from audit_category_sources import BLOCKED_DOMAINS, MIN_IMAGES, NON_COMIC_PATH, chapter_order_audit, clean_chapter_title, images
from domain_ledger import build as build_domain_ledger
from publish_catalog import rule_supports_source
from build_cover_index import build as build_cover_index


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
            "policyVersion": "readability-v5", "chapters": chapter_manifest,
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


def test_reader_images_exclude_thumbnail_strip_when_content_nodes_exist():
    content = ''.join(
        f'<img class="_images" data-url="https://cdn.example/page-{index}.jpg" src="placeholder.png">'
        for index in range(max(MIN_IMAGES, 8))
    )
    html = '<img class="_thumbnailImages" data-url="https://cdn.example/cover.jpg">' + content
    found = images(html, 'https://reader.example/chapter/1')
    assert len(found) == max(MIN_IMAGES, 8)
    assert found[0] == 'https://cdn.example/page-0.jpg'
    assert all('cover.jpg' not in url for url in found)


def test_chapter_title_keeps_source_name_but_drops_page_metadata():
    assert clean_chapter_title('[第1话] 吴一天 2021-10-11 like 0 #1') == '[第1话] 吴一天'


def test_domain_ledger_deduplicates_same_work_proof():
    source = _audit('good.example', 10)
    source.update({'title': '斗破苍穹', 'verifiedChapterCount': 10, 'validationPolicy': 'readability-v5'})
    ledger = build_domain_ledger({'verifiedCandidates': [source, dict(source)]})
    assert ledger['domains'][0]['verifiedWorkCount'] == 1
    assert len(ledger['domains'][0]['works']) == 1
    assert ledger['domains'][0]['policyVersions'] == ['readability-v5']


def test_catalog_requires_same_work_precise_v5_domain_rule():
    source = {'workId': 'work-1'}
    precise = {'readerImageGroups': [1], 'audit': {'status': 'verified', 'policyVersion': 'readability-v5',
               'verifiedWorkIds': ['work-1']}}
    assert rule_supports_source(precise, source)
    assert not rule_supports_source({**precise, 'readerImageGroups': [1, 2]}, source)
    assert not rule_supports_source({**precise, 'audit': {**precise['audit'], 'verifiedWorkIds': ['other']}}, source)


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
                {"url": "https://good.example/comic/unrelated", "title": "完全无关作品"},
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


def test_search_blocked_hosts_filter():
    assert source_audit.search_blocked("https://www.zhihu.com/question/1")
    assert source_audit.search_blocked("https://baike.baidu.com/item/x")
    assert source_audit.search_blocked("https://gat.zj.gov.cn/x")
    assert not source_audit.search_blocked("https://guazimanhua.com/comic/1")
    assert not source_audit.search_blocked("https://www.dongmanmanhua.cn/BOY/x")


def test_search_excludes_blocked_hosts_from_results(monkeypatch):
    class _BlockedSearchResponse:
        def raise_for_status(self): pass
        def json(self): return {"results": [
            {"url": "https://www.zhihu.com/question/target", "title": "目标漫画", "content": ""},
            {"url": "https://ok.example/comic/target", "title": "目标漫画在线阅读", "content": ""},
        ]}
    class _BlockedSearchSession:
        def get(self, url, **kwargs): return _BlockedSearchResponse()
    monkeypatch.setattr(source_audit, "PREFERRED_READABLE_DOMAINS", [])
    monkeypatch.setenv("SEARXNG_URL", "http://search.test")
    urls = source_audit.search(_BlockedSearchSession(), "目标漫画", 8)
    assert urls == ["https://ok.example/comic/target"]


def test_platforms_config_theme_keys_are_valid_categories():
    config = json.loads((ROOT / "config/platforms.json").read_text(encoding="utf-8-sig"))
    valid = {"lianai", "xuanhuan", "yineng", "kongbu", "juqing", "kehuan", "xuanyi", "qihuan",
             "maoxian", "fanzui", "dongzuo", "richang", "jingji", "wuxia", "lishi", "zhanzheng"}
    for key in config["tencentThemeIds"]:
        assert key in valid, f"tencentThemeIds key {key} is not a standard category"
    for key in config["kuaikanThemeIds"]:
        assert key in valid, f"kuaikanThemeIds key {key} is not a standard category"
    for key in config["boluobaoThemeIds"]:
        assert key in valid, f"boluobaoThemeIds key {key} is not a standard category"


def test_boluobao_theme_ids_accept_list_values():
    config = json.loads((ROOT / "config/platforms.json").read_text(encoding="utf-8-sig"))
    for value in config["boluobaoThemeIds"].values():
        tids = value if isinstance(value, list) else [value]
        assert all(isinstance(tid, int) for tid in tids)


def test_validate_release_gates_are_not_bypassed():
    result = subprocess.run(
        [sys.executable, str(ROOT / "scripts/validate_release.py"),
         "--catalog", str(ROOT / "catalog/catalog.zh-Hans.json"),
         "--rules", str(ROOT / "rules/index.zh-Hans.json"),
         "--sources", str(ROOT / "generated/v3/best_sources.zh-Hans.json")],
        capture_output=True, text=True, timeout=120)
    report = json.loads(result.stdout)
    assert report["passed"] is False
    assert any("non-empty categories below minimum" in error for error in report["errors"])


def test_validate_release_reports_category_search_progress(tmp_path):
    states_dir = tmp_path / "states"
    states_dir.mkdir()
    (states_dir / "lianai.json").write_text(json.dumps(
        {"total": 4965, "searched": 500, "pending": 4465, "complete": False}), encoding="utf-8")
    result = subprocess.run(
        [sys.executable, str(ROOT / "scripts/validate_release.py"),
         "--catalog", str(ROOT / "catalog/catalog.zh-Hans.json"),
         "--rules", str(ROOT / "rules/index.zh-Hans.json"),
         "--states", str(states_dir)],
        capture_output=True, text=True, timeout=120)
    report = json.loads(result.stdout)
    assert report["categorySearchProgress"]["lianai"] == {"searched": 500, "total": 4965, "complete": False}


def test_cover_index_only_publishes_title_bound_v5_https_cover():
    catalog = {"categories": {"x": {"items": [
        {"id": "1", "title": "目标漫画", "language": "zh-Hans", "validationPolicy": "readability-v5",
         "sources": [{"domain": "good.example", "detailUrl": "https://good.example/book/1",
                      "coverUrl": "https://img.example/cover.jpg", "chapters": [{"url": "c1"}]}]},
        {"id": "2", "title": "旧规则作品", "validationPolicy": "readability-v4",
         "sources": [{"coverUrl": "https://img.example/wrong.jpg"}]}
    ]}}}
    result = build_cover_index(catalog, online=False)
    assert result["count"] == 1
    assert result["entries"][0]["titleKey"] == "目标漫画"
    assert result["entries"][0]["confidence"] == "verified-title-bound-cover"
