#!/usr/bin/env python3
"""Generate filter_words.txt from config sources.

The output file uses a sectioned format:
  [DOMAINS]   — blocked domains (video/education/community)
  [WORDS]     — blocked words (education/training keywords)
  [NOISE]     — noise title words (low-value suffixes in result titles)
  [OFFICIAL]  — official comic domain whitelist
  [PREFERRED] — preferred comic domain hints for looksComicRelated

Usage:
  python scripts/generate_filter_words.py --output generated/filter_words.txt
"""
import argparse
import os
import sys


def load_lines(path: str) -> list[str]:
    if not os.path.isfile(path):
        return []
    with open(path, "r", encoding="utf-8") as f:
        return [line.strip() for line in f if line.strip() and not line.startswith("#")]


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate filter_words.txt")
    parser.add_argument("--output", required=True, help="Output file path")
    parser.add_argument("--config-dir", default="config", help="Config directory")
    args = parser.parse_args()

    domains = load_lines(os.path.join(args.config_dir, "blocked_domains.txt"))
    words = load_lines(os.path.join(args.config_dir, "blocked_words.txt"))
    noise = load_lines(os.path.join(args.config_dir, "noise_words.txt"))
    official = load_lines(os.path.join(args.config_dir, "official_comic_domains.txt"))
    preferred = load_lines(os.path.join(args.config_dir, "preferred_comic_domains.txt"))

    # Fallback defaults if config files are missing
    if not domains:
        domains = [
            "iqiyi.com", "youku.com", "v.qq.com", "sohu.com", "v.baidu.com",
            "bilibili.com/video", "douyin.com", "kuaishou.com", "zhihu.com",
            ".edu.", "coursera", "udemy", "zhangmen.com", "zhangmenbaby.com",
        ]
    if not words:
        words = ["教育", "培训", "课程", "辅导", "网课", "一对一", "考研", "公务员", "职业培训", "英语培训"]
    if not noise:
        noise = ["在线阅读", "全文阅读", "笔趣阁", "漫画网", "最新章节", "无弹窗", "免费阅读", "下载"]
    if not official:
        official = [
            "ac.qq.com/", "kuaikanmanhua.com/", "manga.bilibili.com/",
            "bilibili.com/manga", "bilibilicomics.com/", "u17.com/",
            "manhuadao", "dongmanmanhua.cn/", "acg.sohu.com/",
        ]
    if not preferred:
        preferred = [
            "ac.qq.com", "kuaikanmanhua.com", "manga.bilibili.com",
            "bilibilicomics.com", "u17.com", "acg.sohu.com",
            "manhuadao.cn", "dongmanmanhua.cn", "soullandmanga.com",
            "kaixinman.com", "manhuaus.com", "mangafire.to", "mgeko.cc",
            "happymh.com", "mangaread.org", "mangadna.com", "mh160mh.com",
            "shenlanqiyu.cc", "manga", "manhua", "comic", "webtoon",
        ]

    os.makedirs(os.path.dirname(args.output), exist_ok=True)
    with open(args.output, "w", encoding="utf-8", newline="\n") as f:
        f.write("[DOMAINS]\n")
        f.write("\n".join(domains) + "\n")
        f.write("\n[WORDS]\n")
        f.write("\n".join(words) + "\n")
        f.write("\n[NOISE]\n")
        f.write("\n".join(noise) + "\n")
        f.write("\n[OFFICIAL]\n")
        f.write("\n".join(official) + "\n")
        f.write("\n[PREFERRED]\n")
        f.write("\n".join(preferred) + "\n")

    print(f"Generated {args.output}: {len(domains)} domains, {len(words)} words, "
          f"{len(noise)} noise, {len(official)} official, {len(preferred)} preferred")
    return 0


if __name__ == "__main__":
    sys.exit(main())
