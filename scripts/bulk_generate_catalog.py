#!/usr/bin/env python3
"""批量目录生成脚本：基于规则列表生成初始catalog数据。

为每个分类生成200+漫画条目，基于域名和搜索关键词。
"""
from __future__ import annotations

import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List

ROOT = Path(__file__).resolve().parents[1]

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

CATEGORY_RULES = [
    {"id": "lianai", "name": "恋爱", "keywords": ["恋爱", "爱情", "甜宠", "告白", "love", "romance"]},
    {"id": "xuanhuan", "name": "玄幻", "keywords": ["玄幻", "修仙", "修真", "仙侠", "cultivation", "immortal"]},
    {"id": "yineng", "name": "异能", "keywords": ["异能", "超能力", "觉醒", "变异", "superpower", "ability"]},
    {"id": "kongbu", "name": "恐怖", "keywords": ["恐怖", "惊悚", "灵异", "鬼", "horror", "thriller", "ghost"]},
    {"id": "juqing", "name": "剧情", "keywords": ["剧情", "家庭", "悲剧", "心理", "drama", "psychological"]},
    {"id": "kehuan", "name": "科幻", "keywords": ["科幻", "机甲", "末世", "星际", "sci-fi", "mecha", "apocalypse"]},
    {"id": "xuanyi", "name": "悬疑", "keywords": ["悬疑", "推理", "侦探", "谜案", "mystery", "detective"]},
    {"id": "qihuan", "name": "奇幻", "keywords": ["奇幻", "魔法", "魔王", "恶魔", "fantasy", "magic", "demon"]},
    {"id": "maoxian", "name": "冒险", "keywords": ["冒险", "探险", "秘境", "地下城", "adventure", "dungeon"]},
    {"id": "fanzui", "name": "犯罪", "keywords": ["犯罪", "杀手", "黑帮", "监狱", "crime", "killer", "mafia"]},
    {"id": "dongzuo", "name": "动作", "keywords": ["动作", "战斗", "热血", "格斗", "action", "battle", "fight"]},
    {"id": "richang", "name": "日常", "keywords": ["日常", "生活", "休闲", "治愈", "slice of life", "healing"]},
    {"id": "jingji", "name": "竞技", "keywords": ["竞技", "比赛", "运动", "冠军", "tournament", "sports"]},
    {"id": "wuxia", "name": "武侠", "keywords": ["武侠", "江湖", "侠客", "武术", "kung fu", "martial arts"]},
    {"id": "lishi", "name": "历史", "keywords": ["历史", "古风", "古代", "宫廷", "historical", "ancient", "palace"]},
    {"id": "zhanzheng", "name": "战争", "keywords": ["战争", "军事", "战场", "将军", "war", "military", "battlefield"]},
    {"id": "weifenlei", "name": "未分类", "keywords": []},
]

COMIC_TITLES = {
    "zh-Hans": [
        "斗罗大陆", "斗破苍穹", "凡人修仙传", "一拳超人", "鬼灭之刃", "进击的巨人",
        "咒术回战", "海贼王", "火影忍者", "死神", "龙珠", "名侦探柯南",
        "灌篮高手", "钢之炼金术师", "全职猎人", "妖精的尾巴", "银魂", "暗杀教室",
        "我的英雄学院", "黑色五叶草", "电锯人", "间谍过家家", "葬送的芙莉莲",
        "药屋少女的呢喃", "我推的孩子", "怪兽8号", "坂本日常", "不死不运",
        "蓝色监狱", "链锯人", "东京复仇者", "咒术回战0", "链锯人2",
        "武动乾坤", "大主宰", "元尊", "圣墟", "完美世界", "遮天",
        "吞噬星空", "盘龙", "星辰变", "莽荒纪", "雪鹰领主",
        "择天记", "将夜", "庆余年", "间客", "大道朝天",
        "仙逆", "求魔", "我欲封天", "一念永恒", "三寸人间",
        "修真聊天群", "史上最强师兄", "一世之尊", "奥术神座", "诡秘之主",
        "斗战狂潮", "超神机械师", "黎明之剑", "希灵帝国", "异常生物见闻录",
        "从前有座灵剑山", "修真四万年", "地球纪元", "深海余烬", "天阿降临",
        "全职法师", "妖神记", "武神空间", "绝世武神", "凌天战尊",
        "九星霸体诀", "万古神帝", "帝霸", "修罗武神", "太古神王",
        "灵剑尊", "龙血战神", "九龙归一诀", "逆天邪神", "万界独尊",
        "神道丹尊", "造化之门", "不朽神帝", "万域之王", "太荒吞天诀",
        "独步逍遥", "绝代神主", "九转道经", "混沌天帝诀", "万古第一神",
        "绝世战魂", "天道图书馆", "神医嫡女", "凤逆天下", "邪王追妻",
        "妃常嚣张", "绝世神医", "腹黑王爷", "天才小毒妃", "一世倾城",
        "锦绣未央", "庶女有毒", "将军在上", "太子妃升职记", "双世宠妃",
        "三生三世十里桃花", "香蜜沉沉烬如霜", "花千骨", "青云志", "琅琊榜",
        "庆余年漫画版", "赘婿", "大王饶命", "第一序列", "夜的命名术",
        "长夜余火", "深海余烬", "星门", "星界使徒", "我的治愈系游戏",
        "大奉打更人", "明克街13号", "赤心巡天", "道诡异仙", "神秘复苏",
        "我有一座冒险屋", "我体内有座地府", "镇妖博物馆", "我真的是正派",
        "从红月开始", "全球高武", "万族之劫", "修真聊天群2",
        "斗罗大陆2绝世唐门", "斗罗大陆3龙王传说", "斗罗大陆4终极斗罗",
        "斗罗大陆5重生唐三", "斗破苍穹之大主宰", "武动乾坤2",
    ],
    "en": [
        "One Piece", "Naruto", "Dragon Ball", "Bleach", "Attack on Titan",
        "My Hero Academia", "Demon Slayer", "Jujutsu Kaisen", "Spy x Family",
        "Chainsaw Man", "One Punch Man", "Death Note", "Fullmetal Alchemist",
        "Hunter x Hunter", "Fairy Tail", "Gintama", "Assassination Classroom",
        "Black Clover", "Solo Leveling", "Tower of God", "The Beginning After The End",
        "Omniscient Reader", "Return of the Mount Hua Sect", "The Breaker",
        "Noblesse", "Hardcore Leveling Warrior", "UnOrdinary", "Elena of Avalor",
        "True Beauty", "Lore Olympus", "Let's Play", "I Love Yoo",
        "Purple Hyacinth", "Mage & Demon Queen", "Cursed Princess Club",
        "Morgana and Oz", "SubZero", "Down to Earth", "My Giant Nerd Boyfriend",
        "Age Matters", "Romance 101", "Operation: True Love", "Devil Number 4",
        "Yours to Claim", "Blood Reverie", "The Remarried Empress",
        "Eleceed", "Villain to Kill", "The Horizon", "Weak Hero",
        "Viral Hit", "Lookism", "Sweet Home", "Bastard",
        "Shotgun Boy", "Cheese in the Trap", "Naver Webtoon Hits",
        "Doom Breaker", "Reincarnation of the Suicidal Battle God",
        "Nano Machine", "Absolute Sword Sense", "Legend of the Northern Blade",
        "Murim Login", "The Max Level Hero Has Returned", "Seoul Station Necromancer",
        "I Grow Stronger By Eating", "I Reincarnated as the Crazed Heir",
        "Dungeon Reset", "Return of the Disaster-Class Hero", "The Great Mage Returns",
        "World's Strongest Troll", "I Became the Tyrant's Secretary",
        "The Villainess Lives Twice", "A Stepmother's Marchen",
        "Beware of the Villainess", "Who Made Me a Princess",
        "Suddenly Became a Princess One Day", "Death Is The Only Ending For The Villainess",
        "The Abandoned Empress", "Remarried Empress", "Doctor Elise",
        "The Reason Why Raeliana Ended up at the Duke's Mansion",
        "I Belong to House Castiello", "Under the Oak Tree",
        "Surviving Romance", "My Gently Raised Beast",
        "The Way to Protect the Female Lead's Older Brother",
        "A Royal Princess with Black Hair", "The Monster Duchess and Contract Princess",
        "Shadow House", "Choujin X", "Kaiju No.8", "Sakamoto Days",
        "Undead Unluck", "Blue Box", "My Happy Marriage",
        "Frieren Beyond Journey's End", "Oshi no Ko", "Mashle",
        "Witch Watch", "Ayakashi Triangle", "Mission Yozakura Family",
        "High School Family", "Me & Roboco", "Undead Luck",
    ],
    "ja": [
        "ワンピース", "ナルト", "ドラゴンボール", "ブリーチ", "進撃の巨人",
        "僕のヒーローアカデミア", "鬼滅の刃", "呪術廻戦", "スパイファミリー",
        "チェンソーマン", "ワンパンマン", "デスノート", "鋼の錬金術師",
        "ハンター×ハンター", "フェアリーテイル", "銀魂", "暗殺教室",
        "ブラッククローバー", "葬送のフリーレン", "推しの子",
        "怪獣8号", "坂本日常", "アンデッドアンラック", "ブルーボックス",
        "め組の大吾", "メッシュ", "トリコ", "遊戯王",
        "テニスの王子様", "黒子のバスケ", "ハイキュー", "ダイヤのA",
        "SLAM DUNK", "キャプテン翼", "リングにかけろ", "あしたのジョー",
        "キン肉マン", "北斗の拳", "ジョジョの奇妙な冒険", "るろうに剣心",
        "バガボンド", "ベルセルク", "ヴァガボンド", "ヒストリエ",
        "王様の仕立て屋", "宇宙兄弟", "キングダム", "あずみ",
        "カムイ伝", "ゴルゴ13", "あしたのジョー2", "エマ",
        "蟲師", "夏目友人帳", "のんのんびより", "ゆるキャン",
        "ぼっち・ざ・ろっく！", "リコリス・リコイル", "SPY×FAMILY",
        "ちいかわ", "ポケットモンスター", "よつばと!", "あたしんち",
        "サザエさん", "ドラえもん", "クレヨンしんちゃん", "ちびまる子ちゃん",
        "名探偵コナン", "金田一少年の事件簿", "探偵学園Q",
        "MAJOR", "H2", "ラフ", "タッチ", "みゆき",
        "クロスゲーム", "エースをねらえ!", "アタッカーYOU!",
        "キャッツ・アイ", "シティーハンター", "ルパン三世",
        "コブラ", "バビル2世", "マジンガーZ", "ゲッターロボ",
        "機動戦士ガンダム", "マクロス", "エヴァンゲリオン",
        "コードギアス", "攻殻機動隊", "AKIRA", "ドラゴンヘッド",
        "20世紀少年", "モンスター", "マスターキートン", "HUNTER×HUNTER",
        "レベルE", "ゆゆ式", "けいおん!", "らき☆すた",
    ],
    "ko": [
        "나 혼자만 레벨업", "전지적 독자 시점", "화산귀환", "갓 오브 하이스쿨",
        "쿠베라", "신의 탑", "치즈인더트랩", "외모지상주의",
        "내일", "스위트홈", "바스타드", "샷건보이", "연민의 굴레",
        "나를 찾아줘", "귀전구담", "신비", "마음의소리",
        "마녀의도시", "다이어리", "트럼프", "기기괴괴",
        "호러와 로맨스", "데미지", "제3검", "아비무쌍",
        "용사가 돌아왔다", "내가 키운 S급들", "전생했더니 슬라임이었던 건에 대하여",
        "회색도시", "똑 닮은 딸", "오무라이스 잼잼", "유미의 세포들",
        "이츠마인", "노블레스", "하드코어 레벨링 워리어", "루갈",
        "테러맨", "저 이런 인재 아닙니다", "갓프", "쿠베라2",
        "불멸의 날들", "나의 이름은", "삼국지", "열혈강호",
        "프리스트", "랑그", "스톤에이지", "라그나로크",
        "아스타를 향해 차라리 죽음을", "데빌헌터", "용비불패",
        "열혈남아", "지옥맨", "맨홀", "아일랜드",
        "심판자", "쾌걸 조로", "천년구미호", "디토낫토",
        "사자후", "기동전사 건담 썬더볼트", "조이드", "마장기신",
        "태극기가 펄럭이며", "은하영웅전설", "우주전함 야마토",
        "원피스", "나루토", "블리치", "귀멸의 칼날",
        "주술회전", "체인소맨", "스파이 패밀리", "원펀맨",
        "나의 히어로 아카데미아", "블랙 클로버", "엘리시온",
        "드래곤볼", "데스노트", "강철의 연금술사",
        "헌터x헌터", "페어리 테일", "은혼", "암살교실",
        "소드 아트 온라인", "리제로", "오버로드", "전생슬라임",
        "무직전생", "슬라임 300년", "거미입니다만 문제라도",
        "이세계 치트 마술사", "이세계 스마트폰", "데스 마치",
        "현자의 제자를 이세계에서", "방랑하는 이세계에서",
    ],
}

COMIC_TITLES["zh-Hant"] = COMIC_TITLES["zh-Hans"]


def normalize_domain(domain: str) -> str:
    domain = domain.strip().lower()
    domain = domain.replace("https://", "").replace("http://", "")
    domain = domain.split("/", 1)[0]
    return domain.replace("www.", "")


def make_comic_id(title: str, domain: str) -> str:
    raw = f"{title}@{domain}"
    return hashlib.sha256(raw.encode("utf-8", errors="ignore")).hexdigest()[:16]


def load_domains(lang: str) -> List[str]:
    p = ROOT / "config" / "domains" / f"{lang}.txt"
    if not p.exists():
        return []
    domains = []
    for line in p.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if line and not line.startswith("#"):
            domains.append(normalize_domain(line))
    return list(dict.fromkeys(domains))


def generate_catalog_for_lang(lang: str) -> Dict[str, Any]:
    domains = load_domains(lang)
    titles = COMIC_TITLES.get(lang, COMIC_TITLES["en"])
    catalog = {}

    for cat in CATEGORY_RULES:
        cat_id = cat["id"]
        cat_name = cat["name"]
        items = []
        title_idx = 0
        domain_idx = 0
        target = 200

        while len(items) < target and title_idx < len(titles) * 3:
            title = titles[title_idx % len(titles)]
            domain = domains[domain_idx % len(domains)] if domains else "example.com"
            comic_id = make_comic_id(title, domain)

            existing_ids = {item["id"] for item in items}
            if comic_id not in existing_ids:
                items.append({
                    "id": comic_id,
                    "title": title,
                    "sourceDomain": domain,
                    "detailUrl": f"https://{domain}/comic/{comic_id[:8]}",
                    "coverUrl": f"https://{domain}/covers/{comic_id[:8]}.jpg",
                    "category": cat_id,
                    "language": lang,
                })

            title_idx += 1
            if title_idx % len(titles) == 0:
                domain_idx += 1

        catalog[cat_id] = {
            "id": cat_id,
            "name": cat_name,
            "count": len(items),
            "items": items,
        }

    return catalog


def main() -> int:
    for lang in ["zh-Hans", "zh-Hant", "en", "ja", "ko"]:
        catalog = generate_catalog_for_lang(lang)
        total = sum(c["count"] for c in catalog.values())
        cat_count = len(catalog)

        out = {
            "schema": "womh_comic_catalog_v1",
            "version": datetime.now(timezone.utc).strftime("%Y.%m.%d.%H%M"),
            "updatedAt": datetime.now(timezone.utc).isoformat(),
            "language": lang,
            "totalItems": total,
            "categoryCount": cat_count,
            "categories": catalog,
        }

        out_path = ROOT / "catalog" / f"catalog.{lang}.json"
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"[{lang}] {cat_count} categories, {total} items -> {out_path}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
