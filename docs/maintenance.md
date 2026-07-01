# 仓库维护说明

本文档说明日常维护流程，避免主分支、备份分支、生成产物和清理流程混乱。

## 1. 当前分支策略

```text
main    主工作分支，App 默认读取，所有日常修改和生成结果写入这里。
backup  备份分支，用于保存 main 的同步备份。
develop 旧开发分支，不再作为主要开发、生成或备份分支使用。
```

当前事实入口：`docs/CURRENT_STATUS.md`。

## 2. 日常修改流程

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

## 3. 生成规则

使用 workflow：

```text
生成远程漫画规则
```

默认模式：

```text
quick
```

深度模式：

```text
deep
```

输出位置：

```text
generated/index.json
generated/rulebot_report.json
generated/GeneratedSourceRules.ets
generated/rule_targets.json
rules/index.json
```

提交目标：

```text
main
```

生成数据变化后同步更新：

```text
docs/CURRENT_STATUS.md
README.md
```

## 4. 生成目录

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
```

提交目标：

```text
main
```

目录统计变化后同步更新：

```text
docs/CURRENT_STATUS.md
README.md
```

## 5. 强制覆盖 backup 分支

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

## 6. 清理 Actions / Release / Tags

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

## 7. 文件放置规则

```text
.github/workflows/    GitHub Actions workflow
docs/                 文档和维护说明
rules/manual/         手工规则
generated/            自动生成规则、目录和报告
scripts/              本地或 CI 入口脚本
tools/                规则发现、清洗、生成和审计工具
```

禁止把临时文件、下载缓存、压缩包、调试报告或未清洗输出直接放到仓库根目录。
