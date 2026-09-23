# 漫画浏览器搜索规则

本 Release 是当天搜索规则的可追溯快照，用于人工检查、回滚和 App 远程更新调试。

## 本次发布

- 日期标签：`{tag_name}`
- 规则语种：{rule_language_name}（`{rule_language}`）
- 运行模式：`{run_mode}`

## 文件说明

- `generated-index-{rule_language}.json`：当前语种的远程规则索引。
- `rules-index-{rule_language}.json`：当前语种的兼容规则索引。
- `rulebot-report-{rule_language}.json`：当前语种的生成审计报告。
- `generated-source-rules-{rule_language}.ets`：当前语种的 ArkTS 规则快照。
- `update-manifest.json`：App 推荐读取的总更新入口。

不带语种后缀的附件是当前运行语种同步出的兼容入口，保留给旧版本 App 使用。

## 合规边界

本仓库只维护公开网页读取规则，不托管漫画图片、章节正文、付费内容、账号数据、密钥、APK 或第三方受保护资源。规则生成不登录、不付费、不绕过验证码、不破解加密接口、不伪造专用客户端协议。
