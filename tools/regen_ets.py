import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def main():
    index_path = ROOT / "rules" / "index.zh-Hans.json"
    ets_path = ROOT / "generated" / "GeneratedSourceRules.zh-Hans.ets"

    with open(index_path, "r", encoding="utf-8") as f:
        idx = json.load(f)

    rules = idx.get("rules", [])
    payload = json.dumps(rules, ensure_ascii=False, indent=2)
    text = (
        "import { ComicSourceRule } from '../model/ComicModels';\n"
        "\n"
        "/**\n"
        " * 自动生成文件：请不要手工修改。\n"
        " * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。\n"
        " * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。\n"
        " */\n"
        "export const GENERATED_SOURCES: ComicSourceRule[] = " + payload + ";\n"
    )

    ets_path.parent.mkdir(parents=True, exist_ok=True)
    ets_path.write_text(text, "utf-8")
    print(f"ETS generated with {len(rules)} rules")


if __name__ == "__main__":
    main()
