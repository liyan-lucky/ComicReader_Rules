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
quick：快速模式，默认运行，用于冲第一目标 10 条可搜索漫画规则。
```

特点：

```text
默认 max_generated=30
关键词和域名数量较少
适合定时运行和日常手动运行
```

### deep

```text
deep：深度模式，用于冲最终目标 100 条可搜索漫画规则。
```

特点：

```text
默认 max_generated=100
关键词和域名数量更多
耗时更长，只建议手动运行
```

## 3. 当前目标

```text
第一目标：10 条可搜索漫画规则
最终目标：100 条可搜索漫画规则
```

可搜索规则指：

```text
存在 searchUrl，可通过关键词搜索漫画的规则。
```

完整解析规则指：

```text
具备搜索、详情、章节、图片等关键解析能力的规则。
```

## 4. 输出文件

规则生成输出：

```text
generated/index.json
generated/rulebot_report.json
generated/GeneratedSourceRules.ets
generated/rule_targets.json
rules/index.json
```

说明：

```text
generated/index.json              App 远程规则索引
generated/rulebot_report.json     自动发现和审计报告
generated/GeneratedSourceRules.ets ArkTS 规则文件
generated/rule_targets.json       规则数量目标和缺口统计
rules/index.json                  兼容 App 或旧读取路径的规则索引
```

## 5. 清洗规则

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

## 6. 手工稳定规则

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

## 7. 合规边界

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

## 8. 常见问题

### 运行很久是否正常？

```text
规则生成会访问多个公开站点、搜索多个关键词，并做页面审计，所以 deep 模式耗时长是正常的。
quick 模式用于日常运行，deep 模式只用于需要扩充规则时。
```

### 生成数量不足怎么办？

优先方案：

```text
补更多手工稳定公开规则。
```

其次：

```text
增加公开漫画站域名
增加关键词
检查搜索 API secret 是否可用
检查候选站点是否公开可访问
```

### 为什么不默认发布 Release？

```text
当前策略是 main 直接作为 App 读取分支。
Release 和 tag 只在明确需要固定版本时再手动启用。
```
