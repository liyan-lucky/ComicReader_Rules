# 当前仓库状态

更新时间：2026-07-16

## 定位

`ComicReader_Rules` 是漫画浏览器的公开源规则仓库。App 主仓库 `ComicReader_HarmonyOS` 不直接维护大量漫画站规则，默认从本仓库读取 App 更新总清单、远程规则索引和公开漫画目录。

## 核心目标

| 目标 | 数值 | 当前 | 状态 |
|------|------|------|------|
| 规则总数 | 2000条 | ~50条 | 🔴 |
| 书架每分类漫画 | 200个(16分类=3200总) | ~150/分类(2354总) | 🟡 |
| 每语种有效漫画域名 | 100+ | 112 | 🟢 |
| searchUrl覆盖率 | 90%+ | ~80% | 🟡 |

## 全链路流程

```text
Step 1: 域名发现 (discover_domains.py)
  读取: keyword_discovery.json, manga_indicator_keywords.json, blocked_domains.json
  产出: aggregator_sites.json, search_url_templates.json, seed_sites.json
  ↓
Step 2: 关键词发现 (discover_keywords.py)
  读取: keyword_discovery.json, aggregator_sites.json
  产出: rule_keywords.json
  ↓
Step 3: 规则生成 (generate_rules.py)
  读取: aggregator_sites.json, rule_keywords.json, seed_sites.json, search_url_templates.json
  产出: rules/index.{lang}.json, generated/rulebot_report.{lang}.json
  ↓
Step 4: 目录生成 (bulk_generate_catalog.py)
  读取: ranking_pages.json, aggregator_sites.json, rule_keywords.json, rulebot_report.{lang}.json
  产出: catalog/catalog.{lang}.json
  自动发现: 未配置域名的排行榜URL (_auto_discover_ranking)
```

一键触发：`Actions → 全链路更新 → Run workflow`

4步串行job，每步独立检出main（含前步git提交），独立统计输出到Step Summary。

## App 更新入口

- 更新总入口：`https://raw.githubusercontent.com/.../generated/update_manifest.json`
- 正式规则索引：`rules/index.{lang}.json`
- 正式目录索引：`catalog/catalog.{lang}.json`

## 当前生成数据 (zh-Hans, 第14轮CI)

| 指标 | 数值 |
|------|------|
| 域名 | 112 |
| 关键词 | 150 |
| 规则 | ~50 |
| 目录漫画 | 2354 |
| 目录分类 | 16/16 |
| searchUrl覆盖 | ~80% |
| 非漫画域名 | 0 |

分类体系：腾讯17类（恋爱 玄幻 异能 恐怖 剧情 科幻 悬疑 奇幻 冒险 犯罪 动作 日常 竞技 武侠 历史 战争）+ 未分类(内部兜底)

## 配置文件职责

### 流程产出（自动生成，勿手动修改）

| 文件 | 产出步骤 | 说明 |
|------|----------|------|
| `config/aggregator_sites.json` | Step 1 | 聚合站URL列表（按语种） |
| `config/rule_keywords.json` | Step 2 | 热门关键词（按语种，150个zh-Hans） |
| `config/search_url_templates.json` | Step 1后 | 搜索URL模板（从aggregator_sites自动生成） |
| `config/seed_sites.json` | Step 1后 | 种子URL列表（从aggregator_sites自动生成） |

### 流程输入（手动维护的参数配置）

| 文件 | 用途 |
|------|------|
| `config/keyword_discovery.json` | 关键词发现参数（排行榜URL/搜索查询/回退词/噪音模式） |
| `config/manga_indicator_keywords.json` | 域名验证指示词（6参数：search_text/validate/anti_patterns/domain_label/title_match/secondary） |
| `config/blocked_domains.json` | 屏蔽配置（excluded_domains + discover_domains清理词 + generate_rules屏蔽列表） |
| `config/ranking_pages.json` | 排行榜爬取配置（按域名配置URL模板/分页/类型参数），未配置的域名自动发现 |
| `config/catalog_config.json` | 目录统一配置（腾讯17类/tags/tag_to_category_map/filters/search_keywords） |
| `config/search.json` | 搜索引擎配置（SearXNG/DDG/Brave/Serper/Google CSE） |
| `config/compliance.json` | 项目合规字段 |
| `config/regex_patterns.json` | 多语言详情/图片/翻页正则 |
| `config/headers.json` | UA/请求头配置 |

## 关键设计决策

1. **规则索引唯一路径**：`rules/index.{lang}.json`，不在`generated/`存放副本
2. **域名→站点配置自动生成**：新增域名自动覆盖search_url_templates和seed_sites
3. **manga_domains_map自动合并**：从aggregator_sites.json合并域名到搜索域名列表
4. **site:查询限流**：每关键词最多10个域名，避免SearXNG被限流
5. **excluded_domains机制**：域名发现时直接跳过已知非漫画站
6. **分类体系**：腾讯17类，catalog_config.json统一定义
7. **排行榜配置外置**：ranking_pages.json替代硬编码，未配置域名自动发现SSR排行榜页
8. **validate用"漫画"而非"漫"**：更精确；search_text用"漫"（宽泛搜索）
9. **繁体"漫畫"覆盖**：validate同时匹配简体"漫画"和繁体"漫畫"
10. **per-domain规则限制**：build_index_from_report.py限制每域名3条规则
11. **所有验证必须通过CI在线完成**：不做本地验证
12. **rule_keywords.json不手动维护**：由discover_keywords.py自动从排行榜生成

## 当前工作流

| Workflow | 触发方式 | 说明 |
|----------|----------|------|
| `full-pipeline.yml` | 手动 | 全链路4步串行：域名→关键词→规则→目录 |
| `discover-domains.yml` | push/手动 | 单独域名发现 |
| `discover-keywords.yml` | 手动 | 单独关键词发现 |
| `generate-remote-rules.yml` | push/手动 | 单独规则生成 |
| `generate-catalog.yml` | 手动 | 单独目录生成 |

## 分支和备份

- `main`：主工作分支，App 默认读取。
- `backup`：`main` 的快照备份分支。

## 合规边界

本仓库仅维护公开网页读取规则、规则索引和生成脚本。不托管、不上传、不分发漫画图片、章节正文、付费内容、账号数据、密钥、站点 Logo、字体、APK 或其他第三方资源文件。
