import sys
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from bulk_generate_catalog import is_valid_detail_url, is_valid_title
from pipeline_seed import ROOT_TERM


class CatalogQualityTests(unittest.TestCase):
    def test_single_root_term(self):
        self.assertEqual(ROOT_TERM, "漫画")

    def test_rejects_stylesheet_as_title(self):
        self.assertFalse(is_valid_title('@charset "UTF-8";.card { display: table;}'))

    def test_accepts_normal_title(self):
        self.assertTrue(is_valid_title("这一世我要开后宫"))

    def test_rejects_assets_and_chapters_as_details(self):
        self.assertFalse(is_valid_detail_url("https://example.com/app.css"))
        self.assertFalse(is_valid_detail_url("https://example.com/chapter/12"))
        self.assertTrue(is_valid_detail_url("https://example.com/comic/12"))


if __name__ == "__main__":
    unittest.main()
