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

## 规则与目录质量模型

- 固定语义入口为 `漫画`、`漫书`；URL 中的 `manhua` 等拼写只作为站点结构信号，不扩展根查询。
- 一个平台域名只发布一条可复用站点解析规则，禁止按漫画详情页复制规则凑数量。
- 规则完成度以所有可生成域名 100% 覆盖为准；登录、付费或无法公开审计的域名必须记录明确终态。
- 书架数量来自公开分类页、分页和详情元数据；允许单个高容量站点完成每分类 200 条，多站仅用于补类与容灾。
- 目录阶段必须用在线发现的站内搜索模板展开各分类入口并跟随真实分页；不得为站点硬编码搜索路径或参数名。
- 目录补齐采用反馈迭代：首轮运行后必须按真实可发布条目计算分类缺口，下一轮只为缺口分类生成下一批参数；不得把某次失败的分类、域名、路径或数量补丁硬编码进流程。
- 允许在研发阶段维护过渡参数池，但每次迭代都应把人工验证有效的策略收敛为参数生成流程。最终验收状态是从空生成产物开始，仅以根搜索词 `漫画`、`漫书` 启动，自动完成域名、站点参数、补充关键词、规则与 200+ 分类目录生成。
- 每轮参数、来源、候选计数和剩余缺口必须写入 `generated/catalog_parameter_iterations.<lang>.json`，确保失败也能驱动下一次流程改进。
- 每个分类至少 200 条真实条目；不得复制条目、轮询填类或用搜索占位项补足数量。
- 每条目录必须同时具备有效详情链接、封面链接和公开分类证据，并在发布前完成标题及 URL 去重清洗。

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
- 所有修改和全链路运行只允许在 `main` 进行
- 仓库只保留 `main`、`backup`，不得创建功能分支

## 命名规范

- 配置文件：小写+下划线，如 `catalog_config.json`
- 规则索引：`rules/index.{lang}.json`（lang = zh-Hans/zh-Hant/en/ja/ko）
- 目录索引：`catalog/catalog.{lang}.json`
- 报告文件：`generated/{report_name}.{lang}.json`
- 脚本文件：`scripts/{verb}_{noun}.py`

## 稀缺分类的自适应补齐

- 首轮每分类使用一个宽泛公开搜索参数，避免无差别扩大请求量。
- 后续轮次只处理未达到质量门槛的分类，并按不重叠窗口推进多个搜索参数。
- 搜索参数只能用于发现候选；条目仍必须具备公开标题、详情链接、封面和分类证据才能发布。
- 禁止通过复制条目、跨分类伪造数量或降低质量门槛补齐分类。
