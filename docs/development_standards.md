# 仓库开发规范

本文档约束 `ComicReader_Rules` 仓库的目录、文件命名、生成产物和分支流程。

## 目录结构白名单

根目录只允许以下文件和目录：

```text
.agents/           AI上下文
.github/           Workflow 和模板
catalog/           正式目录索引 (catalog.{lang}.json)
config/            配置文件
docs/              文档（所有非必要文档必须放此目录）
  legal/           法律文档（COMPLIANCE/DISCLAIMER/NOTICE/SECURITY/THIRD_PARTY_NOTICES）
  specs/           规范文档（CONTRIBUTING/MAINTAINERS/development_standards等）
generated/         中间产物和报告
rules/             正式规则索引 (index.{lang}.json) + 手工规则
scripts/           入口脚本
tools/             工具
LICENSE            许可证
README.md          项目说明
```

不允许在根目录新增脚本、JSON、临时文件、报告或文档。所有非必要文档必须放入 `docs/` 对应子目录。

## 正式发布路径

| 类型 | 路径 | 说明 |
|------|------|------|
| 规则索引 | `rules/index.{lang}.json` | 唯一正式路径 |
| 目录索引 | `catalog/catalog.{lang}.json` | 唯一正式路径 |
| 更新清单 | `generated/update_manifest.json` | App 更新总入口 |

`generated/` 下的文件是中间产物，不应被 App 直接读取。

## 配置文件分类

### 流程产出（自动生成，勿手动修改）

- `config/aggregator_sites.json` — 域名发现产出
- `config/rule_keywords.json` — 关键词发现产出
- `config/search_url_templates.json` — 从 aggregator_sites 自动生成
- `config/seed_sites.json` — 从 aggregator_sites 自动生成

### 流程输入（手动维护的参数）

- `config/keyword_discovery.json` — 关键词发现参数
- `config/manga_indicator_keywords.json` — 域名验证指示词
- `config/blocked_domains.json` — 清理配置
- `config/catalog_config.json` — 目录配置（腾讯17类）
- `config/search.json` — 搜索引擎配置
- `config/compliance.json` — 合规字段
- `config/regex_patterns.json` — 正则模板
- `config/headers.json` — UA 配置

## 全链路流程

```text
域名发现 → aggregator_sites.json
  ↓ generate_site_configs.py → search_url_templates.json + seed_sites.json
关键词发现 → rule_keywords.json
  ↓
规则生成 → rules/index.{lang}.json
  ↓
目录生成 → catalog/catalog.{lang}.json
```

一键触发：`Actions → 全链路更新`

## generated/ 允许跟踪的文件

```text
update_manifest.json              App 更新总入口
domain_discovery_report.json      域名发现报告
keyword_discovery_report.json     关键词发现报告
rulebot_report.{lang}.json        规则审计报告
GeneratedSourceRules.{lang}.ets   ArkTS 规则文件
```

以下文件是中间产物，不跟踪（.gitignore 排除）：

```text
generated/index.*.json            build_index_from_report.py 输出
generated/GeneratedSourceRules.ets 无后缀旧版
```

## 分支策略

- `main`：主工作分支，App 默认读取
- `backup`：main 的快照备份
- `develop`：旧分支，不再使用

## 命名规范

- 配置文件：小写+下划线，如 `catalog_config.json`
- 规则索引：`rules/index.{lang}.json`（lang = zh-Hans/zh-Hant/en/ja/ko）
- 目录索引：`catalog/catalog.{lang}.json`
- 报告文件：`generated/{report_name}.{lang}.json`
- 脚本文件：`scripts/{verb}_{noun}.py`
