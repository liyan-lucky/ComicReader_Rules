# 我漫画浏览器 · 公开源规则仓库

这是「我漫画浏览器」的独立规则仓库。主 App 仓库不直接维护大量漫画站规则，App 通过 GitHub Raw 地址读取本仓库生成的规则索引。

## 推荐仓库名

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
tools/rule_discovery/           公开源搜索/审计/规则生成脚本
scripts/generate_remote_rules.sh 本地生成规则脚本
.github/workflows/              GitHub Actions 自动生成规则
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

## GitHub Actions 自动生成

进入 GitHub 仓库：

```text
Actions → Generate Remote Comic Rules → Run workflow
```

输入：

```text
keywords = 斗罗大陆,Soul Land,Douluo Dalu
domains = kaixinman.com,soullandmanga.com
max_generated = 30
```

Actions 会自动提交新的 `generated/index.json`。

## 规则边界

脚本只请求普通公开 HTTP/HTTPS 页面。不会登录、不会付费、不会绕过验证码、不会解析加密接口、不会伪造 App 协议、不会做反爬绕过。静态 HTML 没图片但浏览器公开可读的站点，交给 App 的渲染卷轴兜底。

## 初始化并推送到 GitHub

先在 GitHub 创建空仓库：

```text
ComicReader_Rules
```

然后执行：

```bash
git init
git add .
git commit -m "initial remote comic rules repo"
git branch -M main
git remote add origin https://github.com/liyan-lucky/ComicReader_Rules.git
git push -u origin main
```
