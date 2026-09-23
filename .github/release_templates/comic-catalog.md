# 漫画浏览器公开目录

本 Release 是当天公开漫画目录的可追溯快照，用于人工检查、回滚和 App 书架数据更新。

## 本次发布

- 日期标签：`{tag_name}`
- 目标分类数：{category_count}
- 总漫画数：{total_comics}
- 达标分类数：{categories_at_target}/{total_categories}

## 分类概览

{category_table}

## 文件说明

- `catalog.json`：完整公开漫画目录（含所有分类、标签、来源）。
- `catalog-categories.json`：分类摘要。
- `catalog-delta.json`：本次增量变更。
- `catalog-report.json`：生成统计报告。
- `catalog-target-gaps.json`：各分类目标缺口详情。
- `update-manifest.json`：App 推荐读取的总更新入口。

## 合规边界

本仓库只维护公开漫画标题和详情页链接，不托管漫画图片、章节正文、付费内容、账号数据、密钥、APK 或第三方受保护资源。目录生成不登录、不付费、不绕过验证码、不破解加密接口。
