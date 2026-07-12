# 当前仓库状态

更新时间：2026-07-12

## 定位

`ComicReader_Rules` 是漫画浏览器的公开源规则仓库。App 主仓库 `ComicReader_HarmonyOS` 不直接维护大量漫画站规则，默认从本仓库读取 App 更新总清单、远程规则索引和公开漫画目录。

## 全链路流程

```text
Step 1: 域名发现 (discover_domains.py)
  读取: keyword_discovery.json, manga_indicator_keywords.json, blocked_domains.json
  产出: aggregator_sites.json
  自动调用: generate_site_configs.py → search_url_templates.json + seed_sites.json
  ↓
Step 2: 关键词发现 (discover_keywords.py)
  读取: keyword_discovery.json, aggregator_sites.json (manga_domains_map自动合并)
  产出: rule_keywords.json
  ↓
Step 3: 规则生成 (generate_rules.py)
  读取: aggregator_sites.json (域名), rule_keywords.json (关键词),
        seed_sites.json (种子URL), search_url_templates.json (搜索模板)
  产出: rules/index.{lang}.json
  ↓
Step 4: 目录生成 (bulk_generate_catalog.py)
  读取: catalog_config.json, aggregator_sites.json, rule_keywords.json
  产出: catalog/catalog.{lang}.json
```

一键触发：`Actions → 全链路更新 → Run workflow`

所有步骤在同一 job 内顺序执行，数据通过共享文件系统自然传递。

## App 更新入口

更新总入口：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json
```

正式规则索引（唯一路径）：

```text
rules/index.{lang}.json
```

正式目录索引：

```text
catalog/catalog.{lang}.json
```

## 当前生成数据

| 语种 | 域名 | 关键词 | 规则 | 目录分类 |
|------|------|--------|------|----------|
| zh-Hans | 73 | 20 | 99 | 17 |
| zh-Hant | 0 | 20 | 0 | 17 |
| en | 0 | 20 | 13 | 17 |
| ja | 0 | 20 | 0 | 17 |
| ko | 0 | 20 | 3 | 17 |

手工稳定规则（`rules/manual/`）：7 条

分类体系：腾讯17类（恋爱 玄幻 异能 恐怖 剧情 科幻 悬疑 奇幻 冒险 犯罪 动作 日常 竞技 武侠 历史 战争）+ 未分类(内部兜底)

## 配置文件职责

### 流程产出（自动生成，勿手动修改）

| 文件 | 产出步骤 | 说明 |
|------|----------|------|
| `config/aggregator_sites.json` | Step 1 | 聚合站URL列表（按语种） |
| `config/rule_keywords.json` | Step 2 | 热门关键词（按语种，各20个） |
| `config/search_url_templates.json` | Step 1后 | 搜索URL模板（从aggregator_sites自动生成） |
| `config/seed_sites.json` | Step 1后 | 种子URL列表（从aggregator_sites自动生成） |

### 流程输入（手动维护的参数配置）

| 文件 | 用途 |
|------|------|
| `config/keyword_discovery.json` | 关键词发现参数（排行榜URL/搜索查询/回退词/噪音模式） |
| `config/manga_indicator_keywords.json` | 域名验证指示词（5语种：search_text/validate/anti_patterns/domain_label） |
| `config/blocked_domains.json` | 清理配置（excluded_domains + discover_domains清理词 + blocked_path_keywords） |
| `config/catalog_config.json` | 目录统一配置（腾讯17类/tags/tag_to_category_map/filters/search_keywords） |
| `config/search.json` | 搜索引擎配置（SearXNG/DDG/Brave/Serper/Google CSE） |
| `config/compliance.json` | 项目合规字段 |
| `config/regex_patterns.json` | 多语言详情/图片/翻页正则 |
| `config/headers.json` | UA/请求头配置 |

## 关键设计决策

1. **规则索引唯一路径**：`rules/index.{lang}.json`，不再在`generated/`存放副本
2. **域名→站点配置自动生成**：`generate_site_configs.py`从`aggregator_sites.json`自动生成`search_url_templates.json`和`seed_sites.json`，新增域名自动覆盖
3. **manga_domains_map自动合并**：`discover_keywords.py`从`aggregator_sites.json`合并域名到搜索域名列表
4. **site:查询限流**：每关键词最多10个域名，避免SearXNG被限流
5. **excluded_domains机制**：`blocked_domains.json`中的`excluded_domains`列表，域名发现时直接跳过已知非漫画站
6. **分类体系**：腾讯17类，`catalog_config.json`统一定义

## 当前工作流

| Workflow | 触发方式 | 说明 |
|----------|----------|------|
| `full-pipeline.yml` | 手动/月度 | 全链路：域名→关键词→规则→目录 |
| `discover-domains.yml` | 手动/月度 | 单独域名发现 |
| `discover-keywords.yml` | 手动/月度 | 单独关键词发现 |
| `generate-remote-rules.yml` | 手动/半月 | 单独规则生成 |
| `generate-catalog.yml` | 手动/周度 | 单独目录生成 |

## 分支和备份

- `main`：主工作分支，App 默认读取。
- `backup`：`main` 的快照备份分支。
- `develop`：旧开发分支，不再使用。

## 合规边界

本仓库仅维护公开网页读取规则、规则索引和生成脚本。不托管、不上传、不分发漫画图片、章节正文、付费内容、账号数据、密钥、站点 Logo、字体、APK 或其他第三方资源文件。

任何功能、生成数据、目录职责、分支规则或备份流程变化时，必须同步更新本文件和根 README。
