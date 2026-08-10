import sys
import unittest
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from bulk_generate_catalog import has_publishable_source, is_valid_detail_url, is_valid_title
from pipeline_seed import ROOT_TERMS
from audit_pipeline_outputs import related_domain


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


if __name__ == "__main__":
    unittest.main()
