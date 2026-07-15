# 排行榜爬取自动化方案

## 一、当前问题：手动硬编码的3层依赖

### 问题1：ranking_urls 硬编码在 bulk_generate_catalog.py 中

```python
ranking_urls = {
    "baozimh.com": ["https://www.baozimh.com/classify", ...17个URL],
    "ac.qq.com": [f"ComicAll/page/{i}" for i in range(1, 101)],
    "manhuatuan.com": [f"list/page/{i}/" for i in range(1, 101)],
    # ...共24个域名，约200+个URL
}
```

**问题**：
- 新域名加入aggregator_sites后，不会自动爬取排行榜
- URL格式（分页参数、分类路径）需要人工逐一测试
- 分页上限（50页 vs 100页）靠试错确定
- 无法区分SSR站点和SPA站点（SPA站点urllib爬不到内容）

### 问题2：keyword_discovery.json 的 ranking_sites 与 ranking_urls 重复

`keyword_discovery.json` 已有10个zh-Hans排行榜站点配置（含selector和attr），
但 `bulk_generate_catalog.py` 的 `crawl_ranking_pages()` 完全没用这些配置，
而是自己硬编码了一套。**两套配置互不关联，维护成本翻倍**。

### 问题3：排行榜URL发现没有自动化

从0冷启动时：
1. `discover_domains.py` 发现域名 → 写入 aggregator_sites.json ✅ 自动
2. `discover_keywords.py` 从排行榜提取关键词 → 写入 rule_keywords.json ✅ 自动
3. `bulk_generate_catalog.py` 爬取排行榜 → 生成目录 ❌ 需要手动配置ranking_urls

**第3步是断点**：域名发现后，需要人工测试每个域名的排行榜URL格式、
是否SSR渲染、分页参数等，然后手动写入ranking_urls。

## 二、根因分析

| 步骤 | 当前状态 | 自动化程度 |
|------|---------|-----------|
| 域名发现 | SearXNG搜索 + 聚合站爬取 + 验证 | ✅ 全自动 |
| 关键词发现 | ranking_sites配置 + fallback_ranking | ✅ 全自动 |
| 规则生成 | 域名+关键词 → 搜索 → 审计 → 生成 | ✅ 全自动 |
| 目录生成-报告源 | rulebot_report → 提取漫画 | ✅ 全自动 |
| 目录生成-关键词源 | rule_keywords → 填充漫画 | ✅ 全自动 |
| **目录生成-排行榜源** | **手动硬编码ranking_urls** | **❌ 全手动** |

## 三、自动化方案

### 方案：将 ranking_urls 外置为配置文件 + 自动发现SSR排行榜页

#### Step 1: 外置 ranking_urls → config/ranking_pages.json

将硬编码的 ranking_urls 提取为独立配置文件：

```json
{
  "zh-Hans": {
    "baozimh.com": {
      "urls": [
        "https://www.baozimh.com/classify",
        "https://www.baozimh.com/classify?type={type}"
      ],
      "type_params": ["lianhua", "xuanhuan", "rexue", ...],
      "pagination": {"pattern": "none", "max_pages": 1}
    },
    "ac.qq.com": {
      "urls": ["https://ac.qq.com/ComicAll/page/{page}"],
      "pagination": {"pattern": "url_path", "start": 1, "max_pages": 100}
    },
    "manhuatuan.com": {
      "urls": ["https://www.manhuatuan.com/list/page/{page}/"],
      "pagination": {"pattern": "url_path", "start": 1, "max_pages": 50}
    },
    "m.manhuagui.com": {
      "urls": ["https://www.manhuagui.com/list/?page={page}"],
      "pagination": {"pattern": "query_param", "start": 1, "max_pages": 50}
    }
  }
}
```

#### Step 2: 自动发现排行榜URL — discover_ranking_urls()

在 bulk_generate_catalog.py 中新增函数，对aggregator_sites中
**未在ranking_pages.json中配置的域名**，自动尝试常见排行榜URL模式：

```python
RANKING_PATTERNS = [
    "/rank/", "/ranking/", "/rank.html",
    "/list/", "/list/rank.html",
    "/classify", "/update",
    "/manhua/", "/comic/",
    "/ComicAll", "/ComicAll/page/2",
]

PAGINATION_PATTERNS = [
    ("?page={n}", 2, 5),      # query param
    ("/page/{n}/", 2, 5),     # path segment
    ("/page-{n}.html", 2, 5), # path with extension
    ("_p{n}.html", 2, 5),     # suffix
]
```

自动发现逻辑：
1. 对每个未配置的域名，尝试 RANKING_PATTERNS 中的每个URL
2. 检查返回的HTML是否包含 comic_path_re 匹配的链接
3. 如果找到有效排行榜页，尝试 PAGINATION_PATTERNS 检测分页
4. 将发现的配置写入 ranking_pages.json

#### Step 3: 复用 keyword_discovery.json 的 ranking_sites

keyword_discovery.json 已有10个zh-Hans排行榜站点配置（含selector和attr），
但 discover_keywords.py 用的是 cloudscraper + CSS选择器，
而 bulk_generate_catalog.py 用的是 urllib + 正则。
**统一为同一套配置**，在 bulk_generate_catalog.py 中也读取 ranking_sites。

#### Step 4: 自动检测分页上限

对于已发现的排行榜页，自动检测分页上限：
1. 从page=1开始爬取，记录漫画链接
2. 逐页递增，直到：返回0个漫画链接 / HTTP错误 / 与前页重复率>90%
3. 将max_pages写入ranking_pages.json

## 四、实施步骤

1. 创建 `config/ranking_pages.json`，将当前硬编码的ranking_urls迁移过去
2. 修改 `bulk_generate_catalog.py` 的 `crawl_ranking_pages()` 从配置文件读取
3. 新增 `discover_ranking_urls()` 自动发现函数
4. 在 full-pipeline.yml 的 Step4 中先运行自动发现，再爬取
5. 将 keyword_discovery.json 的 ranking_sites 也纳入统一配置

## 五、预期效果

- 新域名加入aggregator_sites后，自动发现排行榜URL
- 自动检测分页上限，无需手动试错
- 配置外置，可版本控制，可CI自动更新
- 从0冷启动时，全链路无需手动干预
