# 排行榜爬取自动化方案

## 实施状态

| 步骤 | 状态 | 说明 |
|------|------|------|
| 外置 ranking_urls → config/ranking_pages.json | ✅ 已完成 | 28个域名配置已迁移 |
| 修改 crawl_ranking_pages() 从配置文件读取 | ✅ 已完成 | _expand_ranking_cfg() 支持模板展开 |
| 新增 _auto_discover_ranking() 自动发现 | ✅ 已完成 | 10种排行榜模式 + 4种分页模式 |
| 自动检测分页上限 | 🔴 待完成 | 当前max_pages靠配置，需自动检测 |
| 统一 keyword_discovery.json 的 ranking_sites | 🔴 待完成 | 两套配置仍独立 |

## 配置格式 (config/ranking_pages.json)

```json
{
  "zh-Hans": {
    "域名": {
      "urls": ["模板URL，支持{type}和{page}占位符"],
      "type_params": ["分类参数列表，用于{type}展开"],
      "pagination": {"pattern": "none|url_path|query_param", "start": 1, "max_pages": 50},
      "comic_path": "/comic/"
    }
  }
}
```

## 自动发现逻辑 (_auto_discover_ranking)

对aggregator_sites中**未在ranking_pages.json配置的域名**：

1. 尝试10种常见排行榜URL模式：`/rank/`, `/ranking/`, `/list/`, `/classify/`, `/update/`, `/manhua/`, `/comic/`, `/ComicAll`等
2. 检查返回HTML是否包含≥3个漫画路径链接（`/comic/`, `/manhua/`等）
3. 如果找到有效排行榜页，尝试4种分页模式：`?page={n}`, `/page/{n}/`, `/page-{n}.html`, `_p{n}.html`
4. 自动展开分页到50页

## 已知SSR站点（urllib可爬取）

| 站点 | 漫画数/页 | 分页格式 | 有效页数 |
|------|----------|---------|---------|
| manhuatuan.com | ~35 | `/list/page/{n}/` | 50 |
| baozimh.com | ~38 | `/classify?type={type}` | 1(无分页) |
| ac.qq.com | ~25 | `/ComicAll/page/{n}` | 100+ |
| m.manhuagui.com | ~20 | `/list/?page={n}` | 50(503风险) |
| manga.bilibili.com | ~50 | `/ranking` | 1(无分页) |

## 已知SPA站点（urllib无法爬取）

- kuaikanmanhua.com — JS渲染
- dongmanmanhua.cn — JS渲染
- manhuaren.com — JS渲染
- guazimanhua.com — JS渲染

## 待完成

1. **自动检测分页上限** — 爬取到空页/重复页时自动停止
2. **统一ranking_sites** — keyword_discovery.json的ranking_sites与ranking_pages.json合并
3. **自动写入发现的配置** — _auto_discover_ranking()发现的新配置写入ranking_pages.json
4. **SPA站点API发现** — 部分SPA站点有JSON API，可用urllib直接获取数据
