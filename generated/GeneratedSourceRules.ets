import { ComicSourceRule } from '../model/ComicModels';

const COMMON_USER_AGENT = 'Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot';

/**
 * 自动生成文件：请不要手工修改。
 * 生成命令：python3 tools/rule_discovery/generate_rules.py --keyword "斗罗大陆"
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 生成 ComicSourceRule。
 * 合规边界：仅用于公开网页读取规则，不包含漫画图片、章节正文、账号数据、密钥或站点资源。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
];
