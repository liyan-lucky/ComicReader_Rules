import sys
import unittest
import json
from types import SimpleNamespace
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from bulk_generate_catalog import classify_evidence, classify_evidence_all, extract_public_category_texts, has_publishable_source, is_valid_detail_url, is_valid_title
from pipeline_seed import ROOT_TERMS
from audit_pipeline_outputs import related_domain
from generate_site_configs import is_catalog_navigation_link
from validate_pipeline_outputs import duplicate_rule_domains


class CatalogQualityTests(unittest.TestCase):
    def test_fixed_root_terms(self):
        self.assertEqual(ROOT_TERMS, ("漫画", "漫书"))

    def test_search_adapters_come_from_config(self):
        config = json.loads((ROOT / "config" / "search.json").read_text(encoding="utf-8"))
        self.assertTrue(config["searxng"]["default_url"].startswith(("http://", "https://")))
        self.assertTrue(config["duckduckgo"]["html_url"].startswith("https://"))

    def test_domain_coverage_accepts_subdomains_only(self):
        self.assertTrue(related_domain("m.example.com", "example.com"))
        self.assertFalse(related_domain("notexample.com", "example.com"))

    def test_rejects_stylesheet_as_title(self):
        self.assertFalse(is_valid_title('@charset "UTF-8";.card { display: table;}'))

    def test_accepts_normal_title(self):
        self.assertTrue(is_valid_title("这一世我要开后宫"))

    def test_rejects_assets_and_chapters_as_details(self):
        self.assertFalse(is_valid_detail_url("https://example.com/app.css"))
        self.assertFalse(is_valid_detail_url("https://example.com/chapter/12"))
        self.assertTrue(is_valid_detail_url("https://example.com/comic/12"))

    def test_publishable_catalog_source_requires_detail_and_cover(self):
        self.assertFalse(has_publishable_source({"sources": [{"detailUrl": "https://example.com/comic/1"}]}))
        self.assertTrue(has_publishable_source({"sources": [{
            "detailUrl": "https://example.com/comic/1",
            "coverUrl": "https://img.example.com/1.webp",
        }]}))

    def test_category_uses_public_page_evidence(self):
        category, evidence = classify_evidence(
            "普通书名", "https://example.com/genres/mystery", "侦探与谜案作品"
        )
        self.assertEqual(category, "xuanyi")
        self.assertTrue(evidence.get("matched"))

    def test_ascii_category_terms_require_boundaries(self):
        category, _ = classify_evidence("Rewarded by the king")
        self.assertNotEqual(category, "zhanzheng")

    def test_multiple_categories_each_keep_evidence(self):
        matches = classify_evidence_all("科幻异能侦探漫画")
        self.assertIn("kehuan", matches)
        self.assertIn("yineng", matches)
        self.assertIn("xuanyi", matches)

    def test_visible_genre_and_tag_elements_are_public_evidence(self):
        html = '''
        <div class="book-genres"><a href="/genre/scifi">科幻</a></div>
        <span itemprop="genre">悬疑</span><a rel="tag">犯罪</a>
        '''
        values = extract_public_category_texts(html)
        matches = classify_evidence_all(*values)
        self.assertIn("kehuan", matches)
        self.assertIn("xuanyi", matches)
        self.assertIn("fanzui", matches)

    def test_generated_seed_parameters_only_keep_catalog_navigation(self):
        self.assertTrue(is_catalog_navigation_link("/genre/scifi", "科幻"))
        self.assertTrue(is_catalog_navigation_link("/sort/3", "科幻"))
        self.assertTrue(is_catalog_navigation_link("/works", "热门排行"))
        self.assertFalse(is_catalog_navigation_link("/chapter/42", "科幻漫画 第42话"))
        self.assertFalse(is_catalog_navigation_link("/comic/a-book", "某部漫画"))
        self.assertFalse(is_catalog_navigation_link("/manga/a-book/", "最新漫画"))

    def test_rule_selection_round_robins_domains_before_second_rule(self):
        tool_path = str(ROOT / "tools" / "rule_discovery")
        if tool_path not in sys.path:
            sys.path.insert(0, tool_path)
        from generate_rules import choose_best_by_domain
        audits = []
        for domain in ("a.example", "b.example", "c.example"):
            for index in range(3):
                audits.append(SimpleNamespace(
                    domain=domain, detail_url=f"https://{domain}/comic/{index}",
                    status="native_scroll_ok", static_image_count=10 - index,
                    chapter_count=5,
                ))
        chosen = choose_best_by_domain(audits, per_domain_limit=3)
        self.assertEqual([item.domain for item in chosen[:3]], ["a.example", "b.example", "c.example"])

    def test_full_pipeline_defaults_to_one_rule_per_domain(self):
        source = (ROOT / "scripts" / "run_full_pipeline.py").read_text(encoding="utf-8")
        self.assertIn('"--per-domain-rules", type=int, default=1', source)
        self.assertIn('--per-domain-rules must be 1', source)

    def test_duplicate_site_rules_are_rejected_even_with_www_alias(self):
        duplicates = duplicate_rule_domains([
            {"homepage": "https://example.com"},
            {"homepage": "https://www.example.com/catalog"},
            {"homepage": "https://other.example"},
        ])
        self.assertEqual(duplicates, ["example.com"])

    def test_full_workflow_uses_its_local_search_service(self):
        workflow = (ROOT / ".github" / "workflows" / "full-pipeline.yml").read_text(encoding="utf-8")
        self.assertIn("SEARXNG_URL: http://localhost:8080", workflow)
        self.assertNotIn("SEARXNG_URL: ${{ secrets.SEARXNG_URL", workflow)


if __name__ == "__main__":
    unittest.main()
