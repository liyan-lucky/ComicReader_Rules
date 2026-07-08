# 漫画浏览器 · 公开源规则仓库

这是「漫画浏览器」的独立规则仓库。主 App 仓库不直接维护大量漫画站规则，App 通过 GitHub Raw 地址读取本仓库生成的规则索引、公开目录和更新清单。

## 仓库名

```text
liyan-lucky/ComicReader_Rules
```

## 当前状态

当前事实以 [`docs/CURRENT_STATUS.md`](docs/CURRENT_STATUS.md) 为准。该文件记录最新生成数据、目录职责、分支/备份策略、App 更新入口和合规边界。

## 分支策略

```text
main      主工作分支、正式稳定分支，App 默认读取，后续功能和生成结果直接维护在这里。
backup    备份分支，只用于备份 main。
develop   旧开发分支，不再作为主要开发、生成或备份分支使用。
```

当前策略：

```text
所有后续修改默认直接进入 main。
backup 只作为 main 的备份分支。
develop 不再参与默认开发和备份流程。
如需大改，可先运行“强制覆盖 backup 分支”，再修改 main。
```

详细文档：

```text
docs/CURRENT_STATUS.md          当前仓库状态
docs/development_standards.md   仓库开发规范
docs/maintenance.md             日常维护说明
docs/catalog_api.md             公开漫画目录接口说明
```

## App 默认读取地址

App 推荐只先读取总更新清单：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json
```

`update_manifest.json` 分别记录 `rules` 和 `catalog` 两个区块。App 应分别比较本地与远程版本：

```text
本地 rules.version   != 远程 rules.version   → 更新搜索规则
本地 catalog.version != 远程 catalog.version → 更新公开目录
```

正式规则索引：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/index.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/rules/index.json
```

正式目录索引：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog_categories.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog_delta.json
```

标签只作为可追溯快照，不作为 App 主更新入口：

```text
search-rules-YYYYMMDD   搜索规则日期标签，同一天重复运行会更新到最新提交。
catalog-YYYYMMDD        公开目录日期标签，同一天重复运行会更新到最新提交。
```

## 目录结构

```text
.github/workflows/                GitHub Actions 流程，只放 workflow yml/yaml
.github/ISSUE_TEMPLATE/           Issue 模板
.github/pull_request_template.md  PR 模板
docs/                             文档、接口说明、开发规范、维护说明
rules/                            App 当前可读取规则索引和手工稳定规则
rules/manual/index.json            手工维护的稳定公开规则（7条）
config/keywords/                   搜索关键词配置（按语种分文件）
config/domains/                    搜索域名配置（按语种分文件，已清理非漫画站）
config/queries/                    域名发现搜索词（按语种分文件）
config/blocked_domains.json        屏蔽域名模式（覆盖10大非漫画类别）
config/manga_indicator_keywords.json 漫画指示关键词（域名合理性验证用）
config/aggregator_sites.json       聚合站URL列表
config/seed_sites.json             已知源种子URL列表
config/search.json                 搜索API配置（SearXNG）
config/headers.json                UA/请求头配置
config/crawl_skip_keywords.json    爬取跳过关键词
config/search_endpoints.json       搜索引擎端点
config/catalog_categories.json     分类定义
config/catalog_tags.json           标签定义
config/catalog_search_keywords.json 每分类搜索关键词
config/catalog_filters.json        过滤词/URL/后缀
generated/update_manifest.json     App 更新总入口，分别记录 rules 与 catalog 版本
generated/index.json               App 远程更新使用的标准规则索引
generated/rulebot_report.json      自动规则审计报告
generated/GeneratedSourceRules.ets ArkTS 规则文件
generated/rule_targets.json        规则数量目标和缺口统计
generated/catalog.json             公开漫画目录索引，供 App 分类浏览和添加来源
generated/catalog_categories.json  分类汇总索引
generated/catalog_delta.json       目录增量更新文件
generated/catalog_report.json      目录生成报告
generated/catalog_target_gaps.json 分类目标缺口报告
tools/rule_discovery/              公开源搜索、审计、规则生成、规则清洗工具
scripts/                           本地/CI 入口脚本
```

不允许在仓库根目录随意新增脚本、JSON、临时文件、压缩包或报告文件。详细规则见 `docs/development_standards.md`。

## 当前生成数据摘要

**已清空历史，从零验证流水线中。** `generated/` 目录为空，待 workflow 运行后填充。

当前域名列表状态：

```text
zh-Hans: 268 个域名（已清理非漫画站，796→204→268）
zh-Hant: 666 个域名（待清理）
en:      578 个域名（待清理）
```

手工稳定规则（`rules/manual/`）：

```text
搜索规则: 6 条
通用兜底: 1 条
合计: 7 条
```

## 本地生成规则

```bash
bash scripts/generate_remote_rules.sh "斗罗大陆" "Soul Land" "Douluo Dalu"
```

限制某个域名：

```bash
bash scripts/generate_remote_rules.sh --domain kaixinman.com "斗罗大陆"
```

生成后会更新：

```text
generated/index.json
rules/index.json
generated/rulebot_report.json
generated/GeneratedSourceRules.ets
```

本地如需同步更新 App 清单：

```bash
python scripts/update_manifest.py --section rules --tag search-rules-YYYYMMDD
```

## 本地生成公开漫画目录

```bash
bash scripts/generate_catalog.sh
```

生成后会更新：

```text
generated/catalog.json
generated/catalog_categories.json
generated/catalog_delta.json
generated/catalog_report.json
generated/catalog_target_gaps.json
```

本地如需同步更新 App 清单：

```bash
python scripts/update_manifest.py --section catalog --tag catalog-YYYYMMDD
```

目录功能只保存漫画名、别名、分类、标签、公开来源 URL、规则 ID 和更新时间，不保存漫画图片、章节正文、付费内容或账号数据。

## GitHub Actions 生成远程漫画规则

进入 GitHub 仓库：

```text
Actions → 生成远程漫画规则 → Run workflow
```

默认模式：

```text
deep：深度模式，默认选项，目标2000条规则，每域名最多500条，时间预算5.5小时。
```

快速模式：

```text
quick：快速模式，目标2000条规则，时间预算1.5小时，适合快速验证。
```

所有运行参数均有默认值，也可在 Run workflow 时自定义：

```text
max_generated: 2000              最多生成规则数上限
per_domain_generated_limit: 500  每域名最多保留规则数
time_budget_seconds: 19800       时间预算秒数
search_result_limit: 30          每搜索查询结果上限
seed_limit: 3000                 种子候选上限
per_seed_limit: 400              每种子页候选上限
max_audit_candidates: 0          审计候选上限（0=不限）
per_domain_audit_limit: 0        每域名审计上限（0=不限）
sleep: 0.4                       请求间隔秒数
```

运行完成后会自动：

```text
1. 生成 generated/index.json
2. 生成 generated/rulebot_report.json
3. 生成 generated/GeneratedSourceRules.ets
4. 同步 rules/index.json
5. 更新 generated/update_manifest.json 的 rules 区块
6. commit 并 push 到 main
7. 发布或更新 search-rules-YYYYMMDD 标签和 Release
8. 上传 artifact
```

## GitHub Actions 生成公开漫画目录

目录生成任务：

```text
Actions → 生成公开漫画目录 → Run workflow
```

可配置参数：

```text
target_count: 200              每个分类目标漫画数
max_consecutive_no_new: 10     连续无新发现后提前退出轮数
request_delay: 0.5             每次请求间隔秒数
```

运行完成后会自动：

```text
1. 生成 generated/catalog.json
2. 生成 generated/catalog_categories.json
3. 生成 generated/catalog_delta.json
4. 生成 generated/catalog_report.json
5. 生成 generated/catalog_target_gaps.json
6. 更新 generated/update_manifest.json 的 catalog 区块
7. commit 并 push 到 main
8. 发布或更新 catalog-YYYYMMDD 标签和 Release
9. 上传 artifact
```

规则生成和目录生成频率可以不同。App 以 `generated/update_manifest.json` 为准，分别判断 `rules.version` 和 `catalog.version`，不要直接依赖日期标签做主更新入口。

## GitHub Actions 强制覆盖 backup 分支

备份流程：

```text
Actions → 强制覆盖 backup 分支 → Run workflow
```

真正覆盖 backup 时填写：

```text
confirm=YES
```

执行效果：

```text
backup = main 当前提交
```

该流程没有 dry-run 模式。它会在校验 `confirm=YES` 后执行：

```bash
git push --force origin HEAD:backup
```

## GitHub Actions 清理运行记录

清理流程：

```text
Actions → 清理 Actions 运行记录 → Run workflow
```

默认：

```text
dry_run=true，只预览，不删除。
clean_tags=false，不清理标签。
clean_releases=false，不清理 Release。
```

只有手动把 `dry_run=false` 时才会执行实际删除。删除标签和 Release 必须分别打开对应选项。

## 规则边界

脚本只请求普通公开 HTTP/HTTPS 页面。不会登录、不会付费、不会绕过验证码、不会解析加密接口、不会伪造 App 协议、不会做反爬绕过。静态 HTML 没图片但浏览器公开可读的站点，交给 App 的渲染卷轴兜底。

## 合规声明

本仓库仅维护公开网页读取规则、规则索引和生成脚本，不托管、不上传、不分发漫画图片、章节正文、付费内容、账号数据、密钥、站点 Logo、字体、APK 或其他第三方资源文件。

本仓库不鼓励也不接受用于规避登录、付费、验证码、DRM、加密接口、反爬机制或专有客户端协议的提交。发现相关内容后，维护者可以直接删除、屏蔽或回滚。

所有网站名称、作品名称、服务名称、商标和版权内容均归各自权利人所有。本项目与相关网站、平台、出版方或权利人没有从属、授权、赞助或背书关系。

使用者应自行确认所在地区法律法规、目标网站服务条款和内容访问权限，并自行承担使用风险。

## 贡献要求

贡献者提交 PR 或 Issue 时，应确认提交内容由自己原创，或已取得合法授权，或来自允许再分发的公开许可来源。参考第三方规则时，应在提交说明中写明来源、作者和许可证。

不接受以下内容：

- 漫画图片、章节正文、打包资源或付费内容复制件；
- 未授权复制的第三方规则；
- 站点 Logo、字体、APK、私有接口密钥、账号信息；
- 用于破解、绕过、伪造客户端或规避访问控制的代码；
- 与本项目无关或来源不明的二进制文件。

## 权利人请求

如果你是相关站点、作品、商标或其他权益的权利人，并认为本仓库中的某个规则、域名、说明或自动生成内容存在问题，请通过 GitHub Issue 联系维护者，并提供具体文件路径、规则 ID、域名或链接。

维护者收到有效请求后，会尽快复核，并视情况删除相关规则、移除相关域名、补充来源说明或临时下架生成文件。

## License

本仓库建议采用 MIT License。仓库内第三方内容如另有许可证或来源说明，以对应文件中的说明为准。
