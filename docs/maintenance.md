# 仓库维护说明

本文档说明日常维护流程，避免主分支、备份分支、生成产物、App 更新入口和清理流程混乱。

## 1. 当前分支策略

```text
main    主工作分支，App 默认读取，所有日常修改和生成结果写入这里。
backup  备份分支，用于保存 main 的同步备份。
develop 旧开发分支，不再作为主要开发、生成或备份分支使用。
```

当前事实入口：`docs/CURRENT_STATUS.md`。

## 2. App 更新总入口

App 推荐固定读取：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json
```

清单结构：

```text
rules    搜索规则版本、更新时间、标签和下载地址
catalog  公开目录版本、更新时间、标签和下载地址
```

App 判断方式：

```text
本地 rules.version   != 远程 rules.version   → 更新搜索规则
本地 catalog.version != 远程 catalog.version → 更新公开目录
```

不要让 App 直接依赖 tag 作为主更新入口。tag 只用于备份快照和人工追溯。

## 3. 日常修改流程

默认直接修改：

```text
main
```

修改内容包括：

```text
README.md
docs/
.github/workflows/
scripts/
tools/
rules/manual/
```

不再把 `develop` 作为默认开发分支。

## 4. 生成规则

使用 workflow：

```text
生成远程漫画规则
```

默认模式：

```text
deep
```

快速模式：

```text
quick
```

所有运行参数均有默认值，可在 Run workflow 时自定义：

```text
max_generated=2000, per_domain_generated_limit=500, time_budget_seconds=19800 等
```

输出位置：

```text
generated/index.json
generated/rulebot_report.json
generated/GeneratedSourceRules.ets
rules/index.json
generated/update_manifest.json
```

提交目标：

```text
main
```

规则 workflow 会执行：

```bash
python scripts/update_manifest.py --section rules --tag search-rules-YYYYMMDD
```

然后发布或更新当天标签和 Release：

```text
search-rules-YYYYMMDD
```

同一天重复运行时，标签会强制更新到最新提交。

## 5. 生成目录

使用 workflow：

```text
生成公开漫画目录
```

输出位置：

```text
generated/catalog.json
generated/catalog_categories.json
generated/catalog_delta.json
generated/catalog_report.json
generated/catalog_target_gaps.json
generated/update_manifest.json
```

提交目标：

```text
main
```

目录 workflow 会执行：

```bash
python scripts/update_manifest.py --section catalog --tag catalog-YYYYMMDD
```

然后发布或更新当天标签和 Release：

```text
catalog-YYYYMMDD
```

同一天重复运行时，标签会强制更新到最新提交。

## 6. Manifest 维护规则

`generated/update_manifest.json` 由 `scripts/update_manifest.py` 合并维护。

规则：

```text
规则 workflow 只更新 rules 区块。
目录 workflow 只更新 catalog 区块。
两个 workflow 运行频率可以不同。
任一 workflow 运行后，manifest 都保留另一方上次成功生成的版本信息。
```

手动本地维护示例：

```bash
python scripts/update_manifest.py --section rules --tag search-rules-20260702
python scripts/update_manifest.py --section catalog --tag catalog-20260702
```

## 7. 强制覆盖 backup 分支

使用 workflow：

```text
强制覆盖 backup 分支
```

真正覆盖时填写：

```text
confirm=YES
```

执行效果：

```text
backup = main 当前提交
```

内部使用：

```bash
git push --force origin HEAD:backup
```

注意：当前强制备份 workflow 没有 dry-run 模式；未输入 `YES` 会直接失败并取消执行。

## 8. 清理 Actions / Release / Tags

使用 workflow：

```text
清理 Actions 运行记录
```

安全规则：

```text
默认 dry_run=true
默认 clean_tags=false
默认 clean_releases=false
```

真正删除前必须先运行一次预览。

推荐顺序：

```text
1. 先 dry_run=true 预览
2. 确认要删除的对象正确
3. 再 dry_run=false 执行
```

如果需要同时清理 Release 和 Tag，建议先清 Release，再清 Tag，避免 Release 残留成异常草稿状态。

## 9. 文件放置规则

```text
.github/workflows/    GitHub Actions workflow
docs/                 文档和维护说明
rules/manual/         手工规则（7条）
generated/            自动生成规则、目录、manifest 和报告
scripts/              本地或 CI 入口脚本
tools/                规则发现、清洗、生成和审计工具
config/               关键词、域名、搜索API配置
```

禁止把临时文件、下载缓存、压缩包、调试报告或未清洗输出直接放到仓库根目录。
