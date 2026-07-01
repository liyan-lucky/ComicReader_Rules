# 仓库维护说明

本文档说明日常维护流程，避免主分支、备份分支、生成产物和清理流程混乱。

## 1. 当前分支策略

```text
main    主工作分支，App 默认读取，所有日常修改和生成结果写入这里。
backup  备份分支，用于保存 main 的同步备份。
develop 旧开发分支，不再作为主要开发分支使用。
```

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
rules/index.json
```

提交目标：

```text
main
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

## 5. 备份 main 到 backup

使用 workflow：

```text
备份 main 到 backup
```

默认：

```text
dry_run=true
```

只预览，不覆盖。

真正覆盖时填写：

```text
dry_run=false
confirm=BACKUP_BRANCH_FROM_MAIN
```

执行效果：

```text
backup = main
```

内部使用：

```bash
git push origin "origin/main:refs/heads/backup" --force-with-lease
```

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
rules/manual/         手工稳定规则
generated/            自动生成产物
scripts/              本地和 CI 入口脚本
tools/                复杂工具实现
```

禁止：

```text
根目录乱放脚本
根目录乱放 JSON 报告
提交 dist/
提交 zip/log/tmp 文件
提交账号、Cookie、Token、密钥
```

## 8. 修改前检查

```text
1. 文件是否放在正确目录？
2. 是否会影响 App 读取 main？
3. 是否误把临时文件提交到仓库？
4. 是否包含账号、Cookie、Token、密钥？
5. 清理类 workflow 是否默认 dry_run=true？
6. 生成类 workflow 是否提交到 main？
```
