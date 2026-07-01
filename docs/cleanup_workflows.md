# 清理流程说明

本文档记录 Actions 运行记录、Release、Tag 清理流程的安全规则和使用方法。

## 1. Workflow

```text
.github/workflows/Clean-Actions-record.yml
```

GitHub Actions 显示名称：

```text
清理 Actions 运行记录
```

## 2. 默认安全策略

默认值：

```text
dry_run=true
clean_tags=false
clean_releases=false
```

含义：

```text
默认只预览，不删除任何内容。
默认不清理 Git tag。
默认不清理 GitHub Release。
```

真正删除前必须先运行一次预览。

## 3. Actions 运行记录清理

相关选项：

```text
dry_run
keep_latest_runs
workflow_name_filter
```

说明：

```text
dry_run=true              只预览，不删除
keep_latest_runs=N        每个 workflow 保留最近 N 条
workflow_name_filter=all  清理全部 workflow
workflow_name_filter=xxx  只清理名称包含 xxx 的 workflow
```

当前正在运行的清理流程会自动跳过，不删除自己。

## 4. Release 清理

相关选项：

```text
clean_releases
release_tag_prefix
```

说明：

```text
clean_releases=false      不清理 Release
clean_releases=true       启用 Release 清理
release_tag_prefix=xxx    只清理 tagName 以 xxx 开头的 Release
release_tag_prefix=all    清理全部 Release，危险
```

建议：

```text
先 dry_run=true 预览
确认列表无误
再 dry_run=false 执行
```

## 5. Tag 清理

相关选项：

```text
clean_tags
tag_prefix
```

说明：

```text
clean_tags=false          不清理 tag
clean_tags=true           启用 tag 清理
tag_prefix=xxx            只清理 xxx 前缀的 tag
tag_prefix=all            清理全部 tag，危险
```

## 6. Release 和 Tag 的清理顺序

如果同时清理 Release 和 Tag，建议顺序：

```text
1. 先清理 Release
2. 再清理 Tag
```

原因：

```text
Release 依赖 tag 作为锚点。
如果只删除 tag，不删除 Release，Release 可能残留为异常或草稿状态。
```

## 7. 推荐操作流程

第一次运行：

```text
dry_run=true
clean_tags=false
clean_releases=false
```

确认预览后，如果只清理运行记录：

```text
dry_run=false
clean_tags=false
clean_releases=false
```

如果需要清理规则发布相关 Release：

```text
dry_run=false
clean_releases=true
release_tag_prefix=规则发布使用的前缀
clean_tags=false
```

如果确认 Release 已清理，再清理对应 Tag：

```text
dry_run=false
clean_tags=true
tag_prefix=规则发布使用的前缀
clean_releases=false
```

## 8. 禁止事项

```text
禁止把清理 workflow 做成 schedule 自动执行
禁止默认 dry_run=false
禁止默认 clean_tags=true
禁止默认 clean_releases=true
禁止未预览就使用 tag_prefix=all 或 release_tag_prefix=all
```

## 9. 出现异常时

如果清理后发现 Release 残留异常：

```text
1. 检查是否只删了 tag 没删 Release
2. 重新运行清理流程，clean_releases=true
3. 使用对应 release_tag_prefix 或 all 预览
4. 确认后再执行真实删除
```
