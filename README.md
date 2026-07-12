# 漫画浏览器 · 公开源规则仓库

这是「漫画浏览器」的独立规则仓库。主 App 仓库不直接维护大量漫画站规则，App 通过 GitHub Raw 地址读取本仓库生成的规则索引、公开目录和更新清单。

## 仓库名

```text
liyan-lucky/ComicReader_Rules
```

## 当前状态

当前事实以 [`docs/CURRENT_STATUS.md`](docs/CURRENT_STATUS.md) 为准。

## 全链路流程

```text
Step 1: 域名发现 → aggregator_sites.json
Step 2: 关键词发现 → rule_keywords.json
Step 3: 规则生成 → rules/index.{lang}.json
Step 4: 目录生成 → catalog/catalog.{lang}.json
```

一键触发全链路：

```text
Actions → 全链路更新 → Run workflow
```

所有步骤在同一 job 内顺序执行，数据通过共享文件系统自然传递，无需中间 commit。

## 分支策略

```text
main      主工作分支、正式稳定分支，App 默认读取。
backup    备份分支，只用于备份 main。
develop   旧开发分支，不再使用。
```

## App 默认读取地址

更新总入口：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json
```

正式规则索引（按语种）：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/rules/index.zh-Hans.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/rules/index.en.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/rules/index.ja.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/rules/index.ko.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/rules/index.zh-Hant.json
```

正式目录索引（按语种）：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/catalog/catalog.zh-Hans.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/catalog/catalog.en.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/catalog/catalog.ja.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/catalog/catalog.ko.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/catalog/catalog.zh-Hant.json
```

## 目录结构

```text
.github/workflows/                GitHub Actions 流程
  full-pipeline.yml               全链路：域名→关键词→规则→目录
  discover-domains.yml            单独域名发现
  discover-keywords.yml           单独关键词发现
  generate-remote-rules.yml      单独规则生成
  generate-catalog.yml           单独目录生成

rules/                            App 读取的正式规则索引
  index.{lang}.json               按语种的规则索引（唯一正式路径）
  manual/index.json               手工维护的稳定公开规则（7条）

catalog/                          App 读取的正式目录索引
  catalog.{lang}.json             按语种的漫画目录

config/                           配置文件（流程输入参数）
  aggregator_sites.json           聚合站URL列表（域名发现产出，流程生成）
  rule_keywords.json              热门关键词（关键词发现产出，流程生成）
  search_url_templates.json       搜索URL模板（从aggregator_sites自动生成）
  seed_sites.json                 种子URL列表（从aggregator_sites自动生成）
  blocked_domains.json            清理配置（含excluded_domains/discover_domains/blocked_path_keywords）
  manga_indicator_keywords.json   域名验证指示词（5语种）
  keyword_discovery.json          关键词发现配置（排行榜URL/搜索查询/回退词）
  catalog_config.json             目录统一配置（腾讯17类/tags/搜索关键词）
  search.json                     搜索引擎配置（SearXNG/DDG/Brave/Serper/Google CSE）
  compliance.json                 项目合规字段
  regex_patterns.json             多语言详情/图片/翻页正则
  headers.json                    UA/请求头配置

generated/                        中间产物/报告（非正式发布路径）
  update_manifest.json            App 更新总入口
  domain_discovery_report.json    域名发现报告
  keyword_discovery_report.json   关键词发现报告
  rulebot_report.{lang}.json      规则审计报告
  GeneratedSourceRules.{lang}.ets ArkTS 规则文件

tools/rule_discovery/             规则生成工具
scripts/                          本地/CI 入口脚本
  generate_site_configs.py        从aggregator_sites自动生成search_url_templates+seed_sites
```

## 当前生成数据摘要

| 语种 | 域名 | 关键词 | 规则 | 目录分类 |
|------|------|--------|------|----------|
| zh-Hans | 73 | 20 | 99 | 17 |
| zh-Hant | 0 | 20 | 0 | 17 |
| en | 0 | 20 | 13 | 17 |
| ja | 0 | 20 | 0 | 17 |
| ko | 0 | 20 | 3 | 17 |

手工稳定规则（`rules/manual/`）：7 条

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
