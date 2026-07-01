# 仓库开发规范

本文档用于约束 `ComicReader_Rules` 仓库的目录、文件命名、生成产物和分支流程，避免后续文件到处放、脚本重复、生成文件混乱。

## 1. 分支原则

```text
main     主工作分支、正式稳定分支，App 默认读取，后续功能和生成结果直接维护在这里。
backup   备份分支，只用于备份 main。
develop  旧开发分支，不再作为主要开发分支使用。
```

默认要求：

- 新功能、新脚本、新规则、新 workflow 直接提交到 `main`。
- `backup` 只用于备份 `main`。
- `develop` 不再作为默认开发分支，也不再作为默认备份分支。
- 大改之前应先确认 `main` 当前状态，必要时运行“备份 main 到 backup”。
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
docs/                            文档、接口说明、开发规范、维护说明
rules/                           App 当前可读取规则索引和手工稳定规则
rules/manual/                    手工维护的稳定公开规则
rules/templates/                 规则模板，只有模板文件才放这里
generated/                       自动生成产物，禁止手工维护业务内容
scripts/                         本地/CI 入口脚本，负责调度生成任务
tools/rule_discovery/            RuleBot 搜索、审计、规则生成、规则清洗工具
tools/catalog/                   预留：目录生成工具拆分后放这里
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
backup-main-to-backup.yml        将 main 强制备份到 backup
Clean-Actions-record.yml         清理 Actions / Release / Tags
check-repository-structure.yml   检查仓库结构和根目录白名单
```

要求：

- workflow 名称可以中文，文件名必须稳定、清楚、和用途一致。
- 生成类 workflow 默认写入 `main`。
- 备份类 workflow 默认 `dry_run=true`，真正覆盖必须填写确认文本。
- 清理类 workflow 必须默认 `dry_run=true`，先预览再删除。
- 删除 Release、Tag、运行记录必须手动触发，不允许 schedule 自动执行。

### 3.2 文档

文档只放：

```text
docs/
```

当前文档：

```text
catalog_api.md                  公开漫画目录接口说明
development_standards.md        仓库开发规范
maintenance.md                  日常维护说明
rule_generation.md              规则生成说明
cleanup_workflows.md            清理流程说明
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

要求：

- `scripts/` 只放入口脚本，不堆复杂业务逻辑。
- 复杂逻辑应拆到 `tools/模块名/`。
- 新增 Python 脚本必须能被 `python -m py_compile` 校验。
- 新增脚本要写清楚输入、输出和合规边界。

## 4. 生成流程规范

### 4.1 规则生成

workflow：

```text
.github/workflows/generate-remote-rules.yml
```

默认模式：

```text
quick：快速冲 10 条规则，默认运行
```

手动深度模式：

```text
deep：深度冲 100 条规则，只手动选择
```

输出：

```text
generated/index.json
generated/rulebot_report.json
generated/GeneratedSourceRules.ets
generated/rule_targets.json
rules/index.json
```

要求：

- 默认提交到 `main`。
- 默认不发布 Release。
- Release 只在明确许可后执行。
- 自动生成后必须执行 `sanitize_rule_outputs.py` 清洗非漫画源。

### 4.2 公开漫画目录生成

workflow：

```text
.github/workflows/generate-catalog.yml
```

输出：

```text
generated/catalog.json
generated/catalog_categories.json
generated/catalog_delta.json
generated/catalog_report.json
generated/catalog_target_gaps.json
```

要求：

- 只保存公开元数据、标题、分类、标签、来源规则 ID 和公开链接。
- 不保存图片、章节正文、付费内容、账号数据。
- 默认提交到 `main`。

### 4.3 main 备份到 backup

workflow：

```text
.github/workflows/backup-main-to-backup.yml
```

要求：

- 必须手动触发。
- 默认 `dry_run=true`，只预览。
- 真正覆盖必须设置 `dry_run=false`。
- 真正覆盖必须填写确认文本：`BACKUP_BRANCH_FROM_MAIN`。
- 覆盖目标为 `backup`，不再覆盖 `develop`。

### 4.4 仓库结构检查

workflow：

```text
.github/workflows/check-repository-structure.yml
```

作用：

- 检查根目录是否只包含白名单文件和目录。
- 检查必要规范文件是否存在。
- 检查是否提交了 zip、log、tmp、bak 等临时文件。
- 检查 `generated/` 下是否混入非 JSON/ETS 文件。

### 4.5 清理流程

workflow：

```text
.github/workflows/Clean-Actions-record.yml
```

要求：

- 必须手动触发。
- 默认 `dry_run=true`，只预览。
- 默认不清理 Release。
- 默认不清理 tag。
- 清理 tag 和 Release 必须分别由选项开启。
- 不允许 schedule 自动清理。

## 5. 命名规范

### 5.1 规则 ID

格式：

```text
<domain_slug>_public_access
<domain_slug>_public_search
```

示例：

```text
kaixinman_public_access
mgeko_public_access
```

要求：

- 小写英文、数字、下划线。
- 不使用空格、中文、特殊符号。
- 域名变更时新增规则，不直接复用旧 ID 表示不同站点。

### 5.2 生成文件

格式：

```text
<业务>_<用途>.json
```

示例：

```text
catalog_report.json
catalog_target_gaps.json
rule_targets.json
```

### 5.3 Workflow 名称

UI 名称可以中文，文件名建议稳定：

```text
generate-catalog.yml
generate-remote-rules.yml
backup-main-to-backup.yml
check-repository-structure.yml
Clean-Actions-record.yml
```

## 6. 合规边界

允许：

- 公开网页规则。
- 公开搜索页、公开详情页、公开章节列表、公开图片链接解析规则。
- 公开漫画元数据目录。

禁止：

- 账号、Cookie、Token、密钥。
- 登录、付费、验证码、DRM、加密接口绕过。
- 漫画图片、章节正文、打包资源。
- 站点 Logo、字体、APK、第三方版权资源。
- 短视频、社媒、百科、购物、论坛等非漫画源混入规则。

## 7. 提交前检查

修改前先确认：

```text
1. 文件是否放在正确目录？
2. 根目录是否只保留 README.md、LICENSE、.gitignore、.editorconfig？
3. 是否新增了 generated 之外的自动产物？不允许。
4. 是否含账号、Cookie、Token、密钥？不允许。
5. 是否需要更新 README 或 docs？需要。
6. 生成类 workflow 是否默认写 main？需要。
7. 备份 workflow 是否只覆盖 backup？需要。
8. 删除类 workflow 是否默认 dry_run=true？需要。
```

Python 脚本至少通过：

```bash
python -m py_compile scripts/*.py
python -m py_compile tools/rule_discovery/*.py
```

## 8. 后续整理建议

当前可继续优化：

```text
1. 将 scripts/generate_catalog.py 拆到 tools/catalog/，scripts 只保留入口。
2. 将 boost_catalog_targets.py 拆为 tools/catalog/boost_targets.py。
3. 继续补充更多手工稳定公开规则，提高可搜索规则数量。
4. 定期运行“备份 main 到 backup”，保持 backup 与 main 同步。
```
