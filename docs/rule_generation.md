# 远程漫画规则生成说明

本文档记录规则生成相关的关键信息、运行模式、输出文件和合规边界。

## 1. Workflow

```text
.github/workflows/generate-remote-rules.yml
```

GitHub Actions 显示名称：

```text
生成远程漫画规则
```

提交目标：

```text
main
```

## 2. 运行模式

### quick

```text
quick：快速模式，用于快速验证。
```

特点：

```text
默认 max_generated=2000
关键词和域名从 config/keywords/ 和 config/domains/ 读取
Brave API 可用时用宽泛查询（不用 site: 前缀）
种子发现优先于搜索
时间预算 5400 秒（1.5小时）
无审计上限限制
每域名最多500条规则
```

### deep

```text
deep：深度模式，默认选项，用于全量生成。
```

特点：

```text
默认 max_generated=2000
关键词和域名数量更多
耗时更长，适合每周定时运行
时间预算 19800 秒（5.5小时）
每域名最多500条规则
```

## 2.1 可配置参数

所有参数在 Run workflow 时均可自定义，默认值如下：

| 参数 | quick 默认 | deep 默认 | 说明 |
|------|-----------|----------|------|
| max_generated | 2000 | 2000 | 最多生成规则数上限 |
| per_domain_generated_limit | 500 | 500 | 每域名最多保留规则数 |
| time_budget_seconds | 5400 | 19800 | 时间预算秒数 |
| search_result_limit | 20 | 30 | 每搜索查询结果上限 |
| seed_limit | 500 | 3000 | 种子候选上限 |
| per_seed_limit | 100 | 400 | 每种子页候选上限 |
| max_audit_candidates | 0 | 0 | 审计候选上限（0=不限） |
| per_domain_audit_limit | 0 | 0 | 每域名审计上限（0=不限） |
| sleep | 0.15 | 0.4 | 请求间隔秒数 |

## 3. 当前目标

```text
目标：2000 条可搜索漫画规则
当前：1007 条（17个成功域名）
搜索规则：6 条（kaixinman/mgeko/comick/mangafire/manhuaplus/mangahere）
手工稳定规则：7 条
```

可搜索规则指：

```text
存在 searchUrl，可通过关键词搜索漫画的规则。
```

完整解析规则指：

```text
具备搜索、详情、章节、图片等关键解析能力的规则。
```

## 4. 生成管线

```text
generate_rules.py          搜索 + 种子发现 + 审计 → rulebot_report.json
build_index_from_report.py 报告 → index.json（合并手工规则）
sanitize_rule_outputs.py   清洗非漫画源 → 覆盖 index.json + 重写 .ets + rules/index.json
update_manifest.py         更新 update_manifest.json 版本入口
```

数据流：

```text
config/keywords/*.txt + config/domains/*.txt + config/search.json
  → generate_rules.py
    → 种子发现（29+个漫画站分类页）
    → SearXNG 搜索（免费无限制，最优先）
    → DuckDuckGo HTML 兜底（连续403自动跳过）
    → Brave API 搜索（付费，宽泛查询）
    → Serper API 搜索（付费，分页翻页）
    → Google CSE 搜索（付费，备选）
    → 候选去重 + 前置过滤（屏蔽非漫画域名）
    → 审计候选（登录/付费早退出）
    → rulebot_report.json
  → build_index_from_report.py
    → index.json（含手工规则）
  → sanitize_rule_outputs.py
    → 清洗 index.json + rulebot_report.json
    → 重写 GeneratedSourceRules.ets
    → 写入 rules/index.json
  → update_manifest.py
    → update_manifest.json
```

## 5. 输出文件

```text
generated/index.json                  App 远程规则索引
generated/rulebot_report.json         自动发现和审计报告
generated/GeneratedSourceRules.ets    ArkTS 规则文件（由 sanitize 生成）
generated/update_manifest.json        App 更新版本入口
rules/index.json                      兼容旧读取路径的规则索引
rules/manual/index.json               手工稳定规则（7条）
```

## 6. 搜索 API 配置

搜索优先级（短路逻辑，免费优先，结果够用即停）：

```text
1. SearXNG（自建，免费无限制）— 最优先
2. DuckDuckGo HTML（免费，不稳定，易403）
3. Brave Search API（付费，每月2000次免费额度）
4. Serper API（付费，分页翻页节约配额）
5. Google CSE API（付费，备选）
```

### SearXNG（推荐，免费无限制）

1. 自建 SearXNG 实例（Docker 一键部署）
2. 在仓库 Settings → Secrets → Actions 添加 `SEARXNG_URL`
3. workflow 内置 service container 自动启动本地 SearXNG
4. 配置后搜索阶段正常返回结果，不依赖付费API

### Brave Search API

1. 访问 https://brave.com/search/api/ 注册，Free 计划每月2000次
2. 在仓库 Settings → Secrets → Actions 添加 `BRAVE_SEARCH_API_KEY`
3. 配置后搜索阶段正常返回结果

### Serper API

1. 访问 https://serper.dev/ 注册
2. 在仓库 Settings → Secrets → Actions 添加 `SERPER_API_KEY`
3. 分页翻页（10条/页按需翻页），节约API配额

### Google CSE API（备选）

需同时设置 `GOOGLE_API_KEY` 和 `GOOGLE_CX` 两个 Secret。

### 无 API Key 时

- SearXNG service container 自动启动（workflow 内置）
- DuckDuckGo HTML 抓取（不稳定，易被403）
- 仅依赖种子发现（29+个漫画站分类页抓取）

## 7. 种子站点

当前配置29+个漫画站种子（`KNOWN_SOURCE_SEEDS`）：

```text
kaixinman.com    mgeko.cc         comick.io        manhuaus.com
happymh.com      chapmanganato.to mangabuddy.com   mangapark.net
mangadex.org     mangahere.cc     mangase123.com   readm.org
mangakakalot.com manganato.com    bato.to          mangafire.to
soullandmanga.com asuracomic.net  asuratoon.com    mangaread.org
mangadna.com     webtoons.com     tapas.io         manhuagui.com
manhuadb.com     pufei8.com       manhuacat.com    comicextra.com
readcomicsonline.ru  manhuaplus.com  manhuaplus.top  mangahub.io
mangatown.com    mangakomi.io     ...
```

种子发现优先于搜索执行，有种子的域名不再生成 `site:` 搜索查询（节省 API 配额）。

关键词和域名配置已提取到独立文件：

```text
config/keywords/zh-Hans.txt    简体中文关键词（150+个）
config/keywords/zh-Hant.txt    繁体中文关键词（50+个）
config/keywords/en.txt         英文关键词（100+个）
config/domains/zh-Hans.txt     简体中文域名（50+个）
config/domains/zh-Hant.txt     繁体中文域名
config/domains/en.txt          英文域名（30+个）
```

## 8. 效率优化

| 优化项 | 说明 |
|--------|------|
| 前置屏蔽过滤 | 非漫画域名（抖音/b站/微博等）在候选阶段就被过滤，不浪费审计请求 |
| 种子域名跳过 site: 搜索 | 29个种子域名不生成 `site:domain` 查询，无 API 时查询数大幅减少 |
| Brave API 宽泛查询 | 有 Brave 时不用 `site:` 前缀，1条查询覆盖所有域名 |
| 登录/付费早退出 | 检测到付费且无章节时直接返回 excluded，省掉章节页 HTTP 请求 |
| 移除冗余 .ets 生成 | generate_rules.py 不再生成 .ets（由 sanitize 统一生成） |
| DuckDuckGo 403 快速失败 | 连续5次403后跳过剩余搜索查询 |
| SearXNG 免费搜索 | 自建实例免费无限制，workflow内置service container |
| Serper API 分页 | 10条/页按需翻页，节约API配额 |
| 搜索查询变体优化 | 中文2个/关键词（原词+漫画），节省50% API配额 |
| 已审计域名过滤 | 审计阶段只跳过已达上限的域名，不过滤所有已审计域名 |
| 连续无新发现退出 | boost/generate_catalog连续10次无新发现提前退出 |
| 未分类再分配 | 标签→分类映射自动再分配未分类条目 |
| tag push容错 | tag push失败不阻塞Release发布 |

## 9. 清洗规则

生成后必须执行：

```text
tools/rule_discovery/sanitize_rule_outputs.py
```

作用：

```text
清理抖音、TikTok、短视频、社媒、百科、论坛、购物等非漫画源。
用清洗后的 index 重写 rules/index.json。
用清洗后的 index 重写 GeneratedSourceRules.ets。
输出清洗统计。
```

注意：清洗逻辑已前置到 `generate_rules.py` 的候选过滤阶段（`BLOCKED_DOMAIN_KEYWORDS`），两层过滤互补。

## 10. 手工稳定规则

手工稳定规则位置：

```text
rules/manual/index.json
```

当前这类规则比纯自动发现更可靠，尤其适合补足可搜索规则数量。

要求：

```text
必须是公开网页规则
必须有稳定 id
必须有 homepage
可搜索源应有 searchUrl
不得保存账号、Cookie、Token、密钥
不得绕过登录、付费、验证码、DRM 或反爬
```

## 11. 合规边界

允许：

```text
公开网页规则
公开搜索页
公开详情页
公开章节列表
公开图片链接解析规则
公开漫画元数据
```

禁止：

```text
账号、Cookie、Token、密钥
登录绕过
付费绕过
验证码绕过
DRM 或加密接口绕过
漫画图片、章节正文、打包资源
站点 Logo、字体、APK、第三方版权资源
短视频、社媒、百科、购物、论坛等非漫画源
```

## 12. 常见问题

### 运行很久是否正常？

```text
规则生成会访问多个公开站点、搜索多个关键词，并做页面审计，所以耗时长是正常的。
quick 模式约1.5小时，deep 模式约5.5小时。
```

### 生成数量不足怎么办？

优先方案：

```text
配置 SearXNG（自建免费无限制，workflow内置）
配置 Brave Search API Key（每月2000次免费）
```

其次：

```text
补更多手工稳定公开规则
增加公开漫画站域名到 config/domains/
增加关键词到 config/keywords/
检查候选站点是否公开可访问
```

### 为什么不默认发布 Release？

```text
当前策略是 main 直接作为 App 读取分支。
Release 和 tag 只在明确需要固定版本时再手动启用。
```

### 如何本地运行？

```text
bash scripts/generate_remote_rules.sh 斗罗大陆 完美世界 --domain kaixinman.com
```

本地脚本已包含 sanitize + manifest 步骤，与 workflow 一致。
