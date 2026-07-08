# 当前仓库状态

更新时间：2026-07-08

## 定位

`ComicReader_Rules` 是漫画浏览器的公开源规则仓库。App 主仓库 `ComicReader_HarmonyOS` 不直接维护大量漫画站规则，默认从本仓库读取 App 更新总清单、远程规则索引和公开漫画目录。

## App 更新入口

App 推荐固定读取：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json
```

`generated/update_manifest.json` 是唯一推荐总入口，分别包含：

```text
rules    搜索规则更新状态
catalog  公开目录更新状态
```

App 更新判断规则：

```text
本地 rules.version   != 远程 rules.version   → 更新搜索规则
本地 catalog.version != 远程 catalog.version → 更新公开目录
```

标签只用于备份快照和追溯，不作为 App 主更新入口：

```text
search-rules-YYYYMMDD   搜索规则日期标签，同一天重复运行会更新到最新提交。
catalog-YYYYMMDD        公开目录日期标签，同一天重复运行会更新到最新提交。
```

## 当前生成数据

当前公开索引状态来自仓库内生成文件：

- `generated/index.json`
  - schema：`womh_comic_rules_index_v1`
  - version：`2026.07.08.0756`
  - updatedAt：`2026-07-08T07:56:24.363741+00:00`
  - rules：`1007`
  - 成功域名：`17`
  - 搜索规则：`6`
  - 手工稳定规则：`7`
- `generated/catalog_report.json`
  - itemCount：`3250`
  - categoryCount：`16`
  - tagCount：`12`
  - sourceRecordCount：`5009`
  - indexRecordCount：`366`
  - reportRecordCount：`375`
  - discoveryRecordCount：`1268`
  - categorySearchRecordCount：`3000`
  - uncategorizedCount：`250`

### 成功域名分布

| 域名 | 规则数 |
|------|--------|
| www.mangahere.cc | 201 |
| mangahub.io | 200 |
| asuracomic.net | 150 |
| mangatown.com | 103 |
| www.mangatown.com | 97 |
| manhuaplus.com | 93 |
| www.kaixinman.com | 69 |
| manhuaplus.top | 60 |
| comick.io | 16 |
| www.manhuagui.com | 9 |
| 其他 | 9 |

## 当前目录职责

- `rules/manual/`：手工维护的稳定公开规则（7条，含kaixinman/mgeko/comick/mangafire/manhuaplus/mangahere搜索规则和1条通用兜底规则）。
- `config/keywords/`：搜索关键词配置（zh-Hans/zh-Hant/en 按语种分文件）。
- `config/domains/`：搜索域名配置（zh-Hans/zh-Hant/en 按语种分文件）。
- `config/search.json`：搜索API配置（SearXNG/Brave/Serper/Google CSE 优先级和密钥引用）。
- `generated/update_manifest.json`：App 更新总入口，合并 `rules` 和 `catalog` 两类更新状态。
- `generated/index.json`：App 远程更新使用的标准规则索引。
- `rules/index.json`：App 兼容读取路径，同步规则索引。
- `generated/catalog.json`：公开漫画目录索引。
- `generated/catalog_categories.json`：分类汇总索引。
- `generated/catalog_delta.json`：目录增量更新文件。
- `tools/rule_discovery/`：公开源搜索、审计、规则生成和清洗工具。
- `scripts/update_manifest.py`：合并更新 `generated/update_manifest.json`，避免两个 workflow 互相覆盖。
- `scripts/`：本地/CI 入口脚本。
- `docs/`：维护、接口、规范和状态文档。

## 当前分支和备份

- `main`：主工作分支，App 默认读取。
- `backup`：`main` 的快照备份分支。
- `.github/workflows/force-backup-main.yml`：手动输入 `YES` 后，把 `main` 当前提交强制覆盖到 `backup`。
- 如果确认参数不是 `YES`，workflow 会输出“已跳过”和原因，然后正常成功结束，不标记为失败。
- 如果 `main -> backup` 的差异包含 `.github/workflows/` 文件变化，默认 `GITHUB_TOKEN` 可能无法推送。此时需要在仓库 Actions Secrets 中配置 `BACKUP_PUSH_TOKEN`，令牌需具备当前仓库 Contents 写入和 Workflows 写入能力；未配置时 workflow 会输出“已跳过”和原因，然后正常成功结束。
- `develop`：旧开发分支，不再作为默认开发、生成或备份流程的一部分。

## 当前工作流说明

- 规则生成：生成 `generated/index.json`、`generated/rulebot_report.json`、`generated/GeneratedSourceRules.ets`，同步 `rules/index.json`，更新 `generated/update_manifest.json` 的 `rules` 区块，并发布或更新 `search-rules-YYYYMMDD` 标签和 Release。所有运行参数均有默认值，可在 Run workflow 时自定义（max_generated=2000, per_domain_generated_limit=500, time_budget_seconds=19800 等）。
- 目录生成：生成 `generated/catalog.json`、`generated/catalog_categories.json`、`generated/catalog_delta.json`、`generated/catalog_report.json`、`generated/catalog_target_gaps.json`，更新 `generated/update_manifest.json` 的 `catalog` 区块，并发布或更新 `catalog-YYYYMMDD` 标签和 Release。可配置参数：target_count=200, max_consecutive_no_new=10, request_delay=0.5。
- 强制备份：运行 `强制覆盖 backup 分支`，输入 `YES` 后先检测是否包含 workflow 文件变化；没有 workflow 变化时使用默认 `GITHUB_TOKEN` 推送，有 workflow 变化时使用 `BACKUP_PUSH_TOKEN` 推送。参数不匹配或缺少必要 token 时只记录跳过结果，不使流程失败。

## 合规边界

本仓库仅维护公开网页读取规则、规则索引和生成脚本。不托管、不上传、不分发漫画图片、章节正文、付费内容、账号数据、密钥、站点 Logo、字体、APK 或其他第三方资源文件。

任何功能、生成数据、目录职责、分支规则或备份流程变化时，必须同步更新本文件、根 README 和相关维护文档。
