# 域名发现配置规范

## 核心原则
参数越少噪音越少。只保留6项参数，任何新增参数必须证明必要性。

## 配置结构（manga_indicator_keywords.json）

```json
{
  "zh-Hans": {
    "search_text": [],
    "search_subdomain": [],
    "anti_patterns": [],
    "validate": [],
    "title_match": [],
    "secondary": []
  }
}
```

## 6项参数定义

### 1. search_text — 搜索词（≤10个）
- 用途：搜索引擎查询词，发现漫画域名
- 规则：不超过10个，聚焦"漫画"核心词，可硬编码或流程生成
- 示例：`["漫画", "免费漫画", "看漫画", "国漫", "manhua", ...]`

### 2. search_subdomain — 搜索子域（可选）
- 用途：与search_text组合生成 `site:` 查询，限定搜索范围
- 规则：为空则不生成site查询
- 示例：`[]` 或 `["github.io"]`

### 3. anti_patterns — 屏蔽词（成人站）
- 用途：页面内容含屏蔽词 → 直接拒绝，统计输出保留
- 规则：中文词全文匹配，英文词边界匹配；每个词2字以上
- 示例：`["18+", "18禁", "H漫", "腐漫", "肉漫", "色情", "无删", "禁漫"]`

### 4. validate — 内容匹配
- 用途：页面内容（含标题和body）含匹配词 → 验证通过
- 规则：简繁体都要覆盖
- 示例：`["漫画", "漫畫"]`

### 5. title_match — 标题匹配（清理词）
- 用途：页面标题含匹配词 → 拒绝（清理非漫画站）
- 规则：只检查`<title>`标签，每个词2字；简繁体都要覆盖
- 示例：`["成人", "耽美", "翻译", "新闻", "游戏", "视频", "购物", "导航", "影院", "小说"]`

### 6. secondary — 多条匹配
- 用途：页面内容命中≥2条secondary词 → 验证通过（辅助validate）
- 规则：为空则不启用
- 示例：`[]`

## 验证优先级

```
1. anti_patterns  → 命中则拒绝（屏蔽）
2. title_match    → 命中则拒绝（清理）
3. validate       → 命中则通过（内容匹配）
4. domain_label   → 域名含validate词则通过（域名匹配）
5. secondary      → 命中≥2条则通过（多条匹配）
6. 以上均未命中    → 拒绝（no_indicators）
```

## 已移除参数及原因

| 参数 | 原因 |
|------|------|
| exclude_tlds | 过滤靠validate/title_match实现，TLD过滤太粗暴 |
| exclude_lang_hints | 语言检测靠validate(漫画/漫畫)天然区分，不需要额外参数 |
| search_queries | 与search_text合并，不需要两套搜索词 |
| domain_label | 与validate合并，域名匹配也用validate词 |
