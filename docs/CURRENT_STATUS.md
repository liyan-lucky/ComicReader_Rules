# 当前仓库状态

更新时间：2026-07-11

## 定位

`ComicReader_Rules` 是漫画浏览器的公开源规则仓库。App 主仓库 `ComicReader_HarmonyOS` 不直接维护大量漫画站规则，默认从本仓库读取 App 更新总清单、远程规则索引和公开漫画目录。

## App 更新入口

App 推荐固定读取：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json
```

`generated/update_manifest.json` 是唯一推荐总入口，分别包含：

```text
rules    搜索规则更新状态
catalog  公开目录更新状态
```

App 更新判断规则：

```text
本地 rules.version   != 远程 rules.version   → 更新搜索规则
本地 catalog.version != 远程 catalog.version → 更新公开目录
```

标签只用于备份快照和追溯，不作为 App 主更新入口：

```text
search-rules-YYYYMMDD   搜索规则日期标签，同一天重复运行会更新到最新提交。
catalog-YYYYMMDD        公开目录日期标签，同一天重复运行会更新到最新提交。
```

## 当前生成数据

**域名发现流水线重构完成，正在验证中。**

### 域名发现配置（manga_indicator_keywords.json）

核心配置文件，统一管理搜索和验证参数：

| 字段 | 用途 | 阶段 | zh-Hans示例 |
|------|------|------|------------|
| `search_text` | 搜索引擎查询词 | 搜索发现 | 漫, manhua |
| `search_subdomain` | site:子域限定 | 搜索发现 | github.io, vercel.app |
| `domain_label` | 匹配域名标签 | 验证确认 | manhua, mh |
| `validate` | 匹配页面内容/标题 | 验证确认 | 漫画 |
| `secondary` | 暂空 | 验证确认 | [] |
| `anti_patterns` | 屏蔽词 | 验证屏蔽 | 成人, 18+ |

### 域名发现流程

```text
Phase 2: 搜索引擎
  search_text + search_subdomain → 自动组合生成 "漫 site:github.io" 等查询
  → SearXNG/DDG搜索 → 收集URL

Phase 3: 验证
  1. blocked_domains.json 清理（验证前过滤）
  2. anti_patterns 屏蔽（验证时拒绝）
  3. validate 关键词匹配页面内容/标题（验证通过）
  4. domain_label 匹配域名标签（验证通过）
```

### 域名列表状态

| 语种 | 域名数 | 备注 |
|------|--------|------|
| zh-Hans | 待发现 | 已清空，用新配置重新发现中 |
| zh-Hant | 待发现 | 待配置 |
| en | 待发现 | 待配置 |
| ja | 待发现 | 待配置 |
| ko | 待发现 | 待配置 |

### 规则状态

```text
自动生成规则：待生成
手工稳定规则：7 条（含6条搜索规则和1条通用兜底）
总规则：待生成
成功域名：待生成
```

### 目录状态

```text
待生成
```

## 当前目录职责

- `rules/manual/`：手工维护的稳定公开规则（7条，含kaixinman/mgeko/comick/mangafire/manhuaplus/mangahere搜索规则和1条通用兜底规则）。
- `config/keywords/`：搜索关键词配置（zh-Hans/zh-Hant/en 按语种分文件）。
- `config/domains/`：搜索域名配置（按语种分文件，每行 `域名 # matched: 命中词`）。
- `config/queries/`：域名发现搜索词（按语种分文件，已被manga_indicator_keywords.json的search_text+search_subdomain替代，保留做回退）。
- `config/blocked_domains.json`：清理域名模式（discover_domains + generate_rules 两套，验证前过滤）。
- `config/manga_indicator_keywords.json`：核心配置，统一管理搜索词、子域、域名标签、验证词、屏蔽词（按语种）。
- `config/aggregator_sites.json`：聚合站URL列表（按语种，Phase 1已跳过）。
- `config/seed_sites.json`：已知源种子URL列表。
- `config/search.json`：搜索API配置（SearXNG URL）。
- `config/headers.json`：UA/Accept-Language等请求头。
- `config/crawl_skip_keywords.json`：爬取跳过关键词。
- `config/search_endpoints.json`：搜索引擎端点URL和参数。
- `config/catalog_categories.json`：分类定义+溢出集合。
- `config/catalog_tags.json`：标签定义+标签到分类映射。
- `config/catalog_search_keywords.json`：每分类搜索关键词。
- `config/catalog_filters.json`：过滤词/URL/后缀/键名映射/种子标题。
- `generated/update_manifest.json`：App 更新总入口，合并 `rules` 和 `catalog` 两类更新状态。
- `generated/index.json`：App 远程更新使用的标准规则索引。
- `generated/domain_discovery_report.json`：域名发现报告（含matchedByKeyword/antiPatternByKeyword/cleanedByKeyword）。
- `rules/index.json`：App 兼容读取路径，同步规则索引。
- `generated/catalog.json`：公开漫画目录索引。
- `tools/rule_discovery/`：公开源搜索、审计、规则生成和清洗工具。
- `scripts/discover_domains.py`：域名发现脚本（搜索→清理→验证→按命中词分组统计）。
- `scripts/prune_domains.py`：域名修剪脚本（从审计报告提取死亡域名）。
- `scripts/generate_catalog.py`：目录生成。
- `scripts/boost_catalog_targets.py`：目录增强。
- `scripts/update_manifest.py`：合并更新 `generated/update_manifest.json`。
- `docs/`：维护、接口、规范和状态文档。

## 当前分支和备份

- `main`：主工作分支，App 默认读取。
- `backup`：`main` 的快照备份分支。
- `.github/workflows/force-backup-main.yml`：手动输入 `YES` 后，把 `main` 当前提交强制覆盖到 `backup`。
- 如果确认参数不是 `YES`，workflow 会输出"已跳过"和原因，然后正常成功结束，不标记为失败。
- 如果 `main -> backup` 的差异包含 `.github/workflows/` 文件变化，默认 `GITHUB_TOKEN` 可能无法推送。此时需要在仓库 Actions Secrets 中配置 `BACKUP_PUSH_TOKEN`，令牌需具备当前仓库 Contents 写入和 Workflows 写入能力；未配置时 workflow 会输出"已跳过"和原因，然后正常成功结束。
- `develop`：旧开发分支，不再作为默认开发、生成或备份流程的一部分。

## 当前工作流说明

- **域名发现**（`discover-domains.yml`）：爬取聚合站 + SearXNG搜索 → 提取域名 → 屏蔽非漫画域名 → Phase 3首页爬取验证 → 写入 `config/domains/{lang}.txt`。月度调度（每月1号 02:00 UTC）。可配置参数：language, limit, use_searxng_container, searxng_image。
- **规则生成**（`generate-remote-rules.yml`）：读取 `config/keywords/` + `config/domains/` → SearXNG搜索 → 种子发现 → 候选审计 → 生成规则索引 → 清洗 → 发布Release。半月调度（每月1号和15号 03:00 UTC）。可配置参数：run_mode, max_generated, per_domain_generated_limit, rule_language, time_budget_seconds等。
- **目录生成**（`generate-catalog.yml`）：读取规则索引+域名列表 → 按分类搜索漫画 → 生成目录 → 发布Release。周度调度（每周日 01:00 UTC）。可配置参数：target_count, max_consecutive_no_new, request_delay。
- **强制备份**（`force-backup-main.yml`）：输入 `YES` 后把 `main` 强制覆盖到 `backup`。
- **清理运行记录**（`Clean-Actions-record.yml`）：清理workflow runs/tags/releases。

## 合规边界

本仓库仅维护公开网页读取规则、规则索引和生成脚本。不托管、不上传、不分发漫画图片、章节正文、付费内容、账号数据、密钥、站点 Logo、字体、APK 或其他第三方资源文件。

任何功能、生成数据、目录职责、分支规则或备份流程变化时，必须同步更新本文件、根 README 和相关维护文档。
