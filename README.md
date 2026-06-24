# 我漫画浏览器 · 公开源规则仓库

这是「我漫画浏览器」的独立规则仓库。主 App 仓库不直接维护大量漫画站规则，App 通过 GitHub Raw 地址读取本仓库生成的规则索引。

## 仓库名

```text
liyan-lucky/ComicReader_Rules
```

## App 默认读取地址

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/index.json
```

## 目录结构

```text
rules/                         手工规则、模板和当前可读取 index.json
generated/index.json            App 远程更新使用的标准规则索引
generated/rulebot_report.json   自动审计报告
generated/GeneratedSourceRules.ets ArkTS 规则文件
tools/rule_discovery/           公开源搜索、审计、规则生成脚本
scripts/generate_remote_rules.sh 本地生成规则脚本
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

## GitHub Actions 一键生成 + 标签发布

进入 GitHub 仓库：

```text
Actions → Generate Remote Comic Rules → Run workflow
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

## 规则边界

脚本只请求普通公开 HTTP/HTTPS 页面。不会登录、不会付费、不会绕过验证码、不会解析加密接口、不会伪造 App 协议、不会做反爬绕过。静态 HTML 没图片但浏览器公开可读的站点，交给 App 的渲染卷轴兜底。
