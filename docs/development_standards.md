# 仓库开发规范

本文档用于约束 `ComicReader_Rules` 仓库的目录、文件命名、生成产物和分支流程，避免后续文件到处放、脚本重复、生成文件混乱。

当前事实入口：`docs/CURRENT_STATUS.md`。

## 1. 分支原则

```text
main     主工作分支、正式稳定分支，App 默认读取，后续功能和生成结果直接维护在这里。
backup   备份分支，只用于备份 main。
develop  旧开发分支，不再作为主要开发、生成或备份分支使用。
```

默认要求：

- 新功能、新脚本、新规则、新 workflow 直接提交到 `main`。
- `backup` 只用于备份 `main`。
- `develop` 不再作为默认开发分支，也不再作为默认备份分支。
- 大改之前应先确认 `main` 当前状态，必要时运行“强制覆盖 backup 分支”。
- 生成类 workflow 默认只提交到 `main`。

## 2. 顶层目录职责

### 2.1 根目录白名单

根目录只允许以下文件：

```text
README.md
LICENSE
.gitignore
.editorconfig
```

根目录只允许以下目录：

```text
.github/
docs/
generated/
rules/
scripts/
tools/
config/
```

说明：

- `README.md` 是仓库入口，必须留在根目录。
- `LICENSE` 是许可证文件，必须留在根目录。
- `.gitignore` 是 Git 忽略规则，必须留在根目录。
- `.editorconfig` 是编辑器统一格式配置，必须留在根目录。
- 其他脚本、JSON、临时文件、压缩包、报告文件不得放在根目录。

### 2.2 目录职责

```text
.github/workflows/               GitHub Actions 流程，只放 workflow yml/yaml
.github/ISSUE_TEMPLATE/          Issue 模板
.github/pull_request_template.md PR 模板
.github/release_templates/       Release Notes 模板
docs/                            文档、接口说明、开发规范、维护说明
rules/                           App 当前可读取规则索引和手工稳定规则
rules/manual/                    手工维护的稳定公开规则（7条）
rules/templates/                 规则模板，只有模板文件才放这里
generated/                       自动生成产物，禁止手工维护业务内容
scripts/                         本地/CI 入口脚本，负责调度生成任务
tools/rule_discovery/            RuleBot 搜索、审计、规则生成、规则清洗工具
tools/catalog/                   预留：目录生成工具拆分后放这里
config/keywords/                 搜索关键词配置（zh-Hans/zh-Hant/en）
config/domains/                  搜索域名配置（zh-Hans/zh-Hant/en）
config/search.json               搜索API配置（SearXNG/Brave/Serper/Google CSE）
```

禁止在仓库根目录随意新增脚本、JSON、临时文件、压缩包或报告文件。

## 3. 文件放置规则

### 3.1 Workflow

所有 GitHub Actions 文件只放：

```text
.github/workflows/
```

当前固定 workflow：

```text
generate-catalog.yml             生成公开漫画目录
generate-remote-rules.yml        生成远程漫画规则
force-backup-main.yml            手动把 main 当前提交强制覆盖到 backup
Clean-Actions-record.yml         清理 Actions / Release / Tags
check-repository-structure.yml   检查仓库结构和根目录白名单
```

要求：

- workflow 名称可以中文，文件名必须稳定、清楚、和用途一致。
- 生成类 workflow 默认写入 `main`。
- 备份类 workflow 使用手动触发；当前 `force-backup-main.yml` 必须输入 `YES` 才会执行。
- 清理类 workflow 必须默认 `dry_run=true`，先预览再删除。
- 删除 Release、Tag、运行记录必须手动触发，不允许 schedule 自动执行。

### 3.2 文档

文档只放：

```text
docs/
```

当前文档：

```text
CURRENT_STATUS.md                当前仓库状态
catalog_api.md                   公开漫画目录接口说明
development_standards.md         仓库开发规范
maintenance.md                   日常维护说明
rule_generation.md               规则生成说明
cleanup_workflows.md             清理流程说明
```

README 只写入口说明，不堆大量细节；详细规范放 `docs/`。

### 3.3 手工规则

手工稳定规则只放：

```text
rules/manual/index.json
```

要求：

- 手工规则必须是公开网页规则。
- 不允许保存账号、Cookie、Token、密钥。
- 不允许加入绕登录、绕付费、绕验证码、绕 DRM、破解客户端协议的规则。
- 每条规则必须有稳定 `id`、`name`、`homepage`、`searchUrl` 或明确 `url-only` 说明。

### 3.4 App 读取规则

App 标准规则索引：

```text
generated/index.json
rules/index.json
```

要求：

- `generated/index.json` 是自动构建产物。
- `rules/index.json` 是同步给 App 或旧路径兼容使用的规则索引。
- 两者由生成流程输出，不手工编辑。

### 3.5 自动生成产物

自动生成内容统一放：

```text
generated/
```

当前允许文件：

```text
generated/index.json
generated/rulebot_report.json
generated/GeneratedSourceRules.ets
generated/rule_targets.json
generated/catalog.json
generated/catalog_categories.json
generated/catalog_delta.json
generated/catalog_report.json
generated/catalog_target_gaps.json
generated/catalog_discovery_sources.json
```

要求：

- 生成报告、统计、索引都放 `generated/`。
- `dist/` 只允许在 Actions 运行环境临时出现，不提交到仓库。
- `.zip`、`.log`、临时报告、下载附件不得提交到仓库。

### 3.6 脚本

入口脚本放：

```text
scripts/
```

工具实现放：

```text
tools/<模块名>/
```

当前约定：

```text
scripts/generate_catalog.py              目录生成入口
scripts/boost_catalog_targets.py         目录分类补强入口
tools/rule_discovery/generate_rules.py   规则发现和审计
tools/rule_discovery/build_index_from_report.py
tools/rule_discovery/sanitize_rule_outputs.py
```

## 4. 文档同步要求

以下内容变化时，必须同步更新 `docs/CURRENT_STATUS.md`、`README.md` 和相关专项文档：

- 生成数据版本、目录统计或分类策略。
- workflow 文件名、触发方式或确认参数。
- 分支策略和备份策略。
- 目录职责、根目录白名单或生成产物清单。
- 合规边界、规则边界或权利人处理流程。
