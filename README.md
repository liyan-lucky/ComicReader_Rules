# 漫画浏览器 · 公开源规则仓库

这是「漫画浏览器」的独立规则仓库。主 App 仓库不直接维护大量漫画站规则，App 通过 GitHub Raw 地址读取本仓库生成的规则索引。

## 仓库名

```text
liyan-lucky/ComicReader_Rules
```

## 分支策略

```text
main      正式稳定分支，App 默认读取
 develop  开发测试分支，新功能先提交到这里，确认 OK 后再合并 main
```

当前“公开漫画目录 + 分类汇总”功能只在 `develop` 开发分支实现和测试，不自动合并到 `main`。

## App 默认读取地址

正式规则索引：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/index.json
```

开发目录索引：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/develop/generated/catalog.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/develop/generated/catalog_categories.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/develop/generated/catalog_delta.json
```

确认 OK 并合并到主分支后，App 可改读：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog.json
```

## 目录结构

```text
rules/                         手工规则、模板和当前可读取 index.json
generated/index.json            App 远程更新使用的标准规则索引
generated/catalog.json          公开漫画目录索引，供 App 分类浏览和添加来源
generated/catalog_categories.json 分类汇总索引
generated/catalog_delta.json    目录增量更新文件
generated/catalog_report.json   目录生成报告
generated/rulebot_report.json   自动审计报告
generated/GeneratedSourceRules.ets ArkTS 规则文件
tools/rule_discovery/           公开源搜索、审计、规则生成脚本
scripts/generate_remote_rules.sh 本地生成规则脚本
scripts/generate_catalog.py      本地生成公开漫画目录脚本
docs/catalog_api.md              目录接口设计说明
.github/workflows/              GitHub Actions 自动生成、打标签、发布 Release
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
```

目录功能只保存漫画名、别名、分类、标签、公开来源 URL、规则 ID 和更新时间，不保存漫画图片、章节正文、付费内容或账号数据。

## GitHub Actions 一键生成 + 标签发布

进入 GitHub 仓库：

```text
Actions → 生成远程漫画规则 → Run workflow
```

现在不需要填写任何信息，直接点绿色按钮运行即可。

默认内置关键词：

```text
斗罗大陆,Soul Land,Douluo Dalu,完美世界,吞噬星空,凡人修仙传,斗破苍穹,武动乾坤,一人之下
```

默认内置域名：

```text
kaixinman.com,soullandmanga.com,manhuaus.com,mangafire.to,mgeko.cc,happymh.com,mangaread.org,mangadna.com
```

运行完成后会自动：

```text
1. 生成 generated/index.json
2. 生成 generated/rulebot_report.json
3. 生成 generated/GeneratedSourceRules.ets
4. 同步 rules/index.json
5. commit 并 push 到 main
6. 自动生成 tag，例如 rules-20260624-233000
7. 自动创建 GitHub Release
8. 上传 index.json、审计报告、ArkTS 文件和 zip 包
```

Release 页面：

```text
https://github.com/liyan-lucky/ComicReader_Rules/releases
```

App 默认读取 main 分支最新规则。如果需要固定版本，可以把 App 的远程规则地址改成某个 tag 对应的 raw 地址。

## GitHub Actions 生成公开漫画目录

开发分支目录生成任务：

```text
Actions → 生成公开漫画目录 → Run workflow
```

该任务固定检出并提交到 `develop` 分支，不会自动合并或推送到 `main`。

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
