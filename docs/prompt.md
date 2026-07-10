# ComicReader_Rules 项目提示词

## 项目概述

漫画浏览器规则仓库（ComicReader_Rules），核心目标：**规则2000条、书架每分类200个漫画、每语种100+有效漫画域名**。

## 核心配置文件

### manga_indicator_keywords.json（统一配置）

按语种管理搜索和验证参数，6个字段：

| 字段 | 用途 | 阶段 | 说明 |
|------|------|------|------|
| `search_text` | 搜索引擎查询词 | 搜索发现 | 宽泛词，如"漫"、"manhua" |
| `search_subdomain` | site:子域限定 | 搜索发现 | 如"github.io"、"vercel.app" |
| `domain_label` | 匹配域名标签 | 验证确认 | 子字符串匹配域名注册域标签部分 |
| `validate` | 匹配页面内容/标题 | 验证确认 | 精确词，如"漫画"（比"漫"更精确） |
| `secondary` | 暂空 | 验证确认 | 预留 |
| `anti_patterns` | 屏蔽词 | 验证屏蔽 | 页面含此词则拒绝 |

搜索词自动组合：`search_text × search_subdomain` → 如"漫 site:github.io"

### blocked_domains.json（清理配置）

- `discover_domains`：验证前清理（子字符串匹配域名）
- `generate_rules`：规则生成时清理

### 概念区分

- **清理（blocked_domains.json）**：验证前直接过滤，不进入验证流程
- **屏蔽（anti_patterns）**：验证阶段发现不符合，拒绝
- **验证（validate）**：页面内容/标题包含关键词，确认是漫画站
- **域名标签（domain_label）**：域名注册域标签包含关键词，确认是漫画站

## 域名发现流程

```text
Phase 2: 搜索引擎
  search_text + search_subdomain → SearXNG/DDG搜索 → 收集URL

Phase 3: 验证
  1. blocked_domains.json 清理（验证前过滤）
  2. anti_patterns 屏蔽（验证时拒绝）
  3. validate 关键词匹配页面内容/标题（验证通过）
  4. domain_label 匹配域名标签（验证通过）
```

## CI统计输出（Step Summary）

三个区块：
1. **验证通过** — 按命中词分组，域名可点击
2. **被屏蔽（anti_patterns）** — 按屏蔽词分组
3. **被清理（blocked_domains）** — 按清理词分组

## 域名列表格式

```text
# 简体中文域名列表
# 每行一个域名，# 开头为注释，空行忽略
# === Auto-discovered ===
manhuato.com  # matched: manhua
baozimh.com  # matched: 漫画
```

## 关键约束

- 搜索API优先级：SearXNG(免费无限制) → DuckDuckGo → Brave → Serper → Google CSE
- 域名归一化到注册域级别（如app.xinhuanet.com → xinhuanet.com）
- 所有含发布动作的workflow默认不发布（publish_release=false, commit_changes=false）
- 规则生成应增量运行：加载已有规则，跳过已有相同规则签名的域名
- zh-Hans列表必须只含简体中文漫画站
- validate用"漫画"而非"漫"（更精确，避免"漫游/漫长"误命中）
- search_text用"漫"（宽泛搜索，覆盖面广）
- workflow中f-string不能用反引号（bash会解释为命令替换）

## 仓库信息

- 规则仓库：https://github.com/liyan-lucky/ComicReader_Rules
- 工作目录：G:\Visual_Studio_Code\15_ComicReader_Rules
- 主分支：main
