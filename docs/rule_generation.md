# 远程漫画规则生成说明

规则生成是全链路的 Step 3，读取域名和关键词产出，生成正式规则索引。

## 流程

```text
读取: aggregator_sites.json (域名) + rule_keywords.json (关键词)
  + seed_sites.json (种子URL) + search_url_templates.json (搜索模板)
  ↓
generate_rules.py: SearXNG搜索 → 种子发现 → 候选审计
  ↓
build_index_from_report.py: 生成中间索引 (generated/index.{lang}.json)
  ↓
sanitize_rule_outputs.py: 清洗 → 写入 rules/index.{lang}.json (正式发布)
```

## 正式输出

```text
rules/index.{lang}.json  唯一正式规则索引路径
```

中间产物（不发布）：

```text
generated/index.{lang}.json       .gitignore 排除
generated/rulebot_report.{lang}.json  审计报告
generated/GeneratedSourceRules.{lang}.ets  ArkTS 文件
```

## Workflow

- `full-pipeline.yml`：全链路（推荐）
- `generate-remote-rules.yml`：单独规则生成

### 参数

| 参数 | quick默认 | deep默认 |
|------|-----------|----------|
| max_generated | 2000 | 2000 |
| sleep | 0.15 | 0.4 |
| seed_limit | 500 | 3000 |
| time_budget | 5400s | 19800s |

## 规则边界

- 只请求公开 HTTP/HTTPS 页面
- 不登录、不付费、不绕验证码、不解析加密接口
- 静态无图但浏览器可读的站，交给 App 渲染卷轴兜底

## 手工规则

`rules/manual/index.json` 包含 7 条手工稳定规则，会自动合并到生成的规则索引中。
