# 当前仓库状态

更新时间：2026-07-01

## 定位

`ComicReader_Rules` 是漫画浏览器的公开源规则仓库。App 主仓库 `ComicReader_HarmonyOS` 不直接维护大量漫画站规则，默认从本仓库 `generated/index.json` 读取远程规则索引。

## 当前生成数据

当前公开索引状态来自仓库内生成文件：

- `generated/index.json`
  - schema：`womh_comic_rules_index_v1`
  - version：`2026.07.01.1815`
  - updatedAt：`2026-07-01T18:15:33.994005+00:00`
- `generated/catalog_report.json`
  - itemCount：`486`
  - categoryCount：`16`
  - tagCount：`12`
  - sourceRecordCount：`4388`
  - indexRecordCount：`291`
  - reportRecordCount：`288`
  - discoveryRecordCount：`809`
  - categorySearchRecordCount：`3000`
  - uncategorizedCount：`26`

## 当前目录职责

- `rules/manual/`：手工维护的稳定公开规则。
- `generated/index.json`：App 远程更新使用的标准规则索引。
- `generated/catalog.json`：公开漫画目录索引。
- `generated/catalog_categories.json`：分类汇总索引。
- `generated/catalog_delta.json`：目录增量更新文件。
- `tools/rule_discovery/`：公开源搜索、审计、规则生成和清洗工具。
- `scripts/`：本地/CI 入口脚本。
- `docs/`：维护、接口、规范和状态文档。

## 当前分支和备份

- `main`：主工作分支，App 默认读取。
- `backup`：`main` 的快照备份分支。
- `.github/workflows/force-backup-main.yml`：手动输入 `YES` 后，把 `main` 当前提交强制覆盖到 `backup`。
- `develop`：旧开发分支，不再作为默认开发、生成或备份流程的一部分。

## 当前工作流说明

- 规则生成：生成 `generated/index.json`、`generated/rulebot_report.json`、`generated/GeneratedSourceRules.ets`、`generated/rule_targets.json`，并同步 `rules/index.json`。
- 目录生成：生成 `generated/catalog.json`、`generated/catalog_categories.json`、`generated/catalog_delta.json`、`generated/catalog_report.json`、`generated/catalog_target_gaps.json`。
- 强制备份：运行 `强制覆盖 backup 分支`，输入 `YES` 后执行 `git push --force origin HEAD:backup`。

## 合规边界

本仓库仅维护公开网页读取规则、规则索引和生成脚本。不托管、不上传、不分发漫画图片、章节正文、付费内容、账号数据、密钥、站点 Logo、字体、APK 或其他第三方资源文件。

任何功能、生成数据、目录职责、分支规则或备份流程变化时，必须同步更新本文件、根 README 和相关维护文档。
