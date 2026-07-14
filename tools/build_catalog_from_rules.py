import json
import hashlib
import re
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

CATEGORIES = [
    {"id": "lianai", "name": "恋爱", "keywords": ["恋爱", "爱情", "甜宠", "告白", "婚约", "新娘", "妻子", "老婆", "老公", "BL", "bl", "耽美", "百合", "GL"]},
    {"id": "xuanhuan", "name": "玄幻", "keywords": ["玄幻", "修仙", "修真", "仙侠", "仙尊", "仙帝", "仙王", "飞升", "斗破", "斗罗", "吞噬", "凡人", "武动", "元婴", "金丹", "道诡", "徒弟", "大反派"]},
    {"id": "yineng", "name": "异能", "keywords": ["异能", "超能力", "异变", "觉醒", "变异", "超能"]},
    {"id": "kongbu", "name": "恐怖", "keywords": ["恐怖", "惊悚", "灵异", "鬼", "诡异", "恶婴"]},
    {"id": "juqing", "name": "剧情", "keywords": ["剧情", "家庭", "悲剧", "心理", "成长", "命运", "不健全", "绍宋", "诱敌"]},
    {"id": "kehuan", "name": "科幻", "keywords": ["科幻", "机甲", "末世", "星际", "机器人"]},
    {"id": "xuanyi", "name": "悬疑", "keywords": ["悬疑", "推理", "侦探", "谜案"]},
    {"id": "qihuan", "name": "奇幻", "keywords": ["奇幻", "魔法", "魔王", "恶魔", "龙", "精灵"]},
    {"id": "maoxian", "name": "冒险", "keywords": ["冒险", "探险", "秘境", "地下城"]},
    {"id": "fanzui", "name": "犯罪", "keywords": ["犯罪", "杀手", "黑帮", "监狱"]},
    {"id": "dongzuo", "name": "动作", "keywords": ["动作", "战斗", "热血", "格斗", "星甲", "一人之下", "大师兄"]},
    {"id": "richang", "name": "日常", "keywords": ["日常", "生活", "治愈", "美食", "宠物", "19天", "心动"]},
    {"id": "jingji", "name": "竞技", "keywords": ["竞技", "比赛", "运动", "冠军"]},
    {"id": "wuxia", "name": "武侠", "keywords": ["武侠", "江湖", "侠客", "武术", "狐妖"]},
    {"id": "lishi", "name": "历史", "keywords": ["历史", "古风", "古代", "宫廷", "王爷"]},
    {"id": "zhanzheng", "name": "战争", "keywords": ["战争", "军事", "战场", "将军"]},
    {"id": "weifenlei", "name": "未分类", "keywords": []},
]

TAGS = [
    {"id": "chuanyue", "name": "穿越", "keywords": ["穿越"]},
    {"id": "chongsheng", "name": "重生", "keywords": ["重生"]},
    {"id": "yishijie", "name": "异世界", "keywords": ["异世界"]},
    {"id": "xitong", "name": "系统", "keywords": ["系统"]},
    {"id": "fuchou", "name": "复仇", "keywords": ["复仇"]},
    {"id": "shuangwen", "name": "爽文", "keywords": ["爽文"]},
    {"id": "danmei", "name": "耽美", "keywords": ["耽美", "BL", "bl"]},
    {"id": "baihe", "name": "百合", "keywords": ["百合", "GL"]},
]

TAG_TO_CATEGORY = {
    "chuanyue": "maoxian",
    "chongsheng": "qihuan",
    "yishijie": "qihuan",
    "xitong": "qihuan",
    "fuchou": "juqing",
    "shuangwen": "dongzuo",
    "danmei": "lianai",
    "baihe": "lianai",
}

SITE_NAMES = {
    "包子漫画", "包子漫畫", "包子", "漫蛙漫画", "漫蛙", "豆包漫画", "开心漫画",
    "和图书", "卡拉漫画", "漫画柜", "蛙漫画", "漫蛙MH5", "开心漫公开访问源",
    "公开访问源", "远程公开源",
}

CHAPTER_PATTERN = re.compile(r'第\s*\d+\s*话|第\s*\d+\s*章|chapter\s*\d+', re.I)

COMIC_ALIASES = {
    "19天": ["19 days", "19 days (old xian)"],
    "一人之下": ["the outcast", "hitori no shita"],
    "斗破苍穹": ["battle through the heavens"],
    "斗罗大陆": ["soul land", "douluo dalu"],
    "狐妖小红娘": ["fox spirit matchmaker"],
    "我家大师兄脑子有坑": ["my big brother is a big idiot"],
    "我家老婆来自一千年前": ["my wife is from a thousand years ago"],
    "我的徒弟都是大反派": ["my disciples are all villains"],
    "道诡异仙": ["dao of the bizarre immortal", "abnormal immortal record of spooky daoist"],
    "万渣朝凰": ["cheating men must die"],
    "日月同错": ["sun and moon mismatch"],
    "心动的声音": ["sound of heartbeat"],
    "星甲魂将传": ["legend of star general"],
}


def slugify(title: str) -> str:
    text = title.lower().strip()
    text = re.sub(r"[^0-9a-zA-Z\u4e00-\u9fff]+", "-", text).strip("-")
    if re.search(r"[\u4e00-\u9fff]", text):
        return f"comic-{hashlib.sha1(title.encode('utf-8')).hexdigest()[:10]}"
    return text or hashlib.sha1(title.encode('utf-8')).hexdigest()[:12]


def clean_comic_title(raw: str) -> str:
    title = raw.strip()
    title = re.sub(r'\s*[-–—|·•]\s*.*$', '', title).strip()
    title = re.sub(r'\s*9\.9\s*$', '', title).strip()
    title = re.sub(r'^《(.+)》$', r'\1', title)
    title = re.sub(r'\s*(漫画|manhua|manga|online|阅读|免费|漫画网).*$', '', title, flags=re.I).strip()
    title = title.strip('-_|·•[]【】()（）')
    return title


def normalize_comic_name(title: str) -> str:
    lower = title.lower().strip()
    for zh_name, en_names in COMIC_ALIASES.items():
        if lower == zh_name.lower():
            return zh_name
        for en in en_names:
            if lower == en.lower():
                return zh_name
    return title


def classify(title: str) -> str:
    for cat in CATEGORIES:
        if cat["id"] == "weifenlei":
            continue
        for kw in cat["keywords"]:
            if kw in title:
                return cat["id"]
    for tag in TAGS:
        for kw in tag["keywords"]:
            if kw in title:
                return TAG_TO_CATEGORY.get(tag["id"], "weifenlei")
    return "weifenlei"


def match_tags(title: str) -> list:
    result = []
    for tag in TAGS:
        for kw in tag["keywords"]:
            if kw in title:
                result.append(tag["id"])
                break
    return result


def main():
    timestamp = datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")

    with open('generated/rulebot_report.zh-Hans.json', 'r', encoding='utf-8') as f:
        report = json.load(f)

    with open('rules/index.zh-Hans.json', 'r', encoding='utf-8') as f:
        index = json.load(f)

    items_by_key = {}

    def add_item(raw_title: str, domain: str, detail_url: str = "", cover_url: str = ""):
        cleaned = clean_comic_title(raw_title)
        if not cleaned or len(cleaned) < 2:
            return
        if cleaned in SITE_NAMES:
            return
        if CHAPTER_PATTERN.search(cleaned):
            return

        normalized = normalize_comic_name(cleaned)
        key = normalized.lower()

        if key not in items_by_key:
            cat = classify(normalized)
            tags = match_tags(normalized)
            items_by_key[key] = {
                "id": slugify(normalized),
                "title": normalized,
                "aliases": [],
                "categories": [cat],
                "tags": tags,
                "status": "unknown",
                "cover": cover_url,
                "sources": [],
                "links": [],
                "primaryUrl": detail_url,
                "firstSeenAt": timestamp,
                "lastSeenAt": timestamp,
                "sourceCount": 0,
                "linkCount": 0,
                "primaryCategory": cat,
                "classificationSource": "titleKeyword" if cat != "weifenlei" else "unclassified",
            }
            if cleaned.lower() != normalized.lower():
                items_by_key[key]["aliases"].append(cleaned)

        item = items_by_key[key]
        source = {"ruleId": domain, "siteName": domain}
        if detail_url:
            source["detailUrl"] = detail_url
        existing = {(s.get("ruleId"), s.get("detailUrl", s.get("siteUrl", ""))) for s in item["sources"]}
        source_key = (source["ruleId"], source.get("detailUrl", source.get("siteUrl", "")))
        if source_key not in existing:
            item["sources"].append(source)
        item["sourceCount"] = len(item["sources"])
        item["linkCount"] = len(item["sources"])
        item["lastSeenAt"] = timestamp
        if not item["primaryUrl"] and detail_url:
            item["primaryUrl"] = detail_url
        if not item["cover"] and cover_url:
            item["cover"] = cover_url

    for r in report.get('generated', []):
        add_item(
            r.get('detail_title', ''),
            r.get('domain', ''),
            r.get('detail_url', ''),
            r.get('cover_url', ''),
        )

    for r in index.get('rules', []):
        domain = r.get('homepage', '').replace('https://', '').replace('http://', '').split('/')[0]
        add_item(r.get('name', ''), domain, r.get('homepage', ''))

    items = sorted(items_by_key.values(), key=lambda x: x["title"])

    cat_counts = {}
    for cat in CATEGORIES:
        cat_counts[cat["id"]] = sum(1 for i in items if i["primaryCategory"] == cat["id"])

    categories_summary = [{"id": c["id"], "name": c["name"], "count": cat_counts.get(c["id"], 0)} for c in CATEGORIES]

    catalog = {
        "schema": "womh_comic_catalog_v1",
        "version": timestamp.replace("-", "").replace(":", "").replace("Z", ""),
        "updatedAt": timestamp,
        "language": "zh-Hans",
        "totalItems": len(items),
        "categoryCount": len(CATEGORIES),
        "categories": {},
        "items": items,
    }

    for cat in CATEGORIES:
        cat_items = [i for i in items if i["primaryCategory"] == cat["id"]]
        catalog["categories"][cat["id"]] = {
            "id": cat["id"],
            "name": cat["name"],
            "count": len(cat_items),
            "items": cat_items,
        }

    with open('catalog/catalog.zh-Hans.json', 'w', encoding='utf-8') as f:
        json.dump(catalog, f, ensure_ascii=False, indent=2)

    print(f"Catalog: {len(items)} items across {len(CATEGORIES)} categories")
    for c in categories_summary:
        if c["count"] > 0:
            print(f"  {c['name']}: {c['count']}")
    unclassified = cat_counts.get("weifenlei", 0)
    print(f"\nClassified: {len(items) - unclassified}, Unclassified: {unclassified}")


if __name__ == "__main__":
    main()
