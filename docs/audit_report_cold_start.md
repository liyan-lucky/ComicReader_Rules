# 全链路审计报告 — zh-Hans 冷启动验证

**日期**: 2026-07-16
**语言**: zh-Hans (简体中文)
**最新CI轮次**: 第14轮 (4步串行job全部成功)

---

## CI迭代记录

| 轮次 | 目录漫画 | 规则 | 域名 | 关键词 | searchUrl覆盖 | 非漫画站 | 关键改进 | 结果 |
|------|---------|------|------|--------|---------------|----------|---------|------|
| 1 | 25 | 62 | 66 | 20 | 10% | 多 | 初始 | 成功(5问题) |
| 2 | — | — | — | — | — | — | — | 失败(gitignore) |
| 3 | 120 | 126 | 86 | 50 | 47% | 34 | 修复gitignore | 成功 |
| 4 | 117 | 43 | 96 | 100 | 30% | 1 | — | 成功 |
| 5 | 172 | 64 | 106 | 150 | 80% | 0 | searchUrl模板 | 成功 |
| 6 | 243 | 50 | 110 | 150 | 80% | 0 | 新增排行榜爬取 | 成功 |
| 7 | 349 | 50 | 109 | 150 | 80% | 0 | 屏蔽非漫画站+去重 | 成功 |
| 8 | — | — | — | — | — | — | UnboundLocalError | 失败 |
| 9 | 628 | 50 | 112 | 150 | ~80% | 0 | ac.qq.com+manhuatuan+bilibili | 成功 |
| 10 | 973 | 50 | 112 | 150 | ~80% | 0 | manhuatuan 10页 | 成功 |
| 11 | 1686 | 50 | 112 | 150 | ~80% | 0 | manhuatuan 30页 | 成功 |
| 12 | 2343 | 50 | 112 | 150 | ~80% | 0 | manhuatuan 50页 | 成功 |
| 13 | 2385 | 50 | 112 | 150 | ~80% | 0 | manhuatuan 100页(50后无新) | 成功 |
| 14 | 2354 | 50 | 112 | 150 | ~80% | 0 | manhuagui 20页 | 成功 |
| **15** | **?** | **?** | **?** | **?** | **?** | **?** | ac.qq 100页+manhuagui 50页+自动发现 | **进行中** |

## 排行榜爬取数据源贡献 (第14轮)

| 域名 | 漫画数 | 爬取方式 | 分页 |
|------|--------|---------|------|
| manhuatuan.com | 1823 | SSR列表页 | 50页×35 |
| baozimh.com | 315 | SSR分类页 | 16类型×38 |
| m.manhuagui.com | 117 | SSR列表页 | 7页×20 |
| ac.qq.com | 130 | SSR全量页 | 50页×25 |
| manga.bilibili.com | 49 | SSR排行榜 | 1页×50 |
| doubaomanhua.com | 89 | report | — |
| bzmanga.com | 85 | report | — |
| cn.baozimh.com | 85 | report | — |
| **总计** | **2354** | | |

## 已修复问题汇总

| # | 问题 | 修复 |
|---|------|------|
| 1 | ac.qq.com 32条重复规则 | per-domain-limit=3 |
| 2 | catalog顶层items缺失 | 添加items平铺列表 |
| 3 | searchUrl覆盖率10% | build_index自动从templates填充 |
| 4 | 关键词只有20个 | --top默认值→100→150 |
| 5 | 非漫画站混入 | blocked_domains添加70+个域名 |
| 6 | git add .gitignore文件 | 移除generated/index从git add |
| 7 | queries重复("xx"+"xx漫画") | 漫画名不再追加"漫画"后缀 |
| 8 | 章节标题混入catalog | 添加SUFFIX_NOISE_RE清洗 |
| 9 | 繁体"漫畫"未匹配 | validate同时匹配简繁体 |
| 10 | 规则生成重复bug(bzmanga 50条相同) | per_domain_generated_limit=3 |
| 11 | 硬编码依赖崩溃 | sanitize/build_index/generate_rules配置缺失时fallback |
| 12 | 非漫画站混入catalog | is_valid_title过滤+blocked_domains过滤report |
| 13 | 模板变量未解析({{name}},SITEMAP) | TEMPLATE_GARBAGE_RE过滤 |
| 14 | 域名重复(baozimh/bzmanga/doubaomanhua) | ranking_urls去重 |
| 15 | ranking_urls硬编码 | 外置为ranking_pages.json+自动发现 |

## 已屏蔽非漫画站 (70+)

- 小说平台: readnovel/webnovel/hongxiu/shuqi/uukanshu/lrts/piaotia/xxsy/youyuxs/book.novel.qq.com/mreader.novel.qq.com
- 日本出版: shogakukan/cmoa/sunday-webry/japanpack
- 英文漫画: mangago/mangahere/mangafire/comick/mangazenkan/inkr/leagueofcomicgeeks/kingofshojo/soullandmanga/en-thunderscans/roliascan/foxspiritmatchmaker/koreanwebtoons/19-days-manga/noveltrust
- 电商/流媒体: amazon/ebay/walmart/shopee/netflix/hulu/primevideo/mewatch/litv
- 学术/工具: cambridge.org/findlaw/justia/law.cornell.edu/archive.org/cntraveler/proprofs
- 其他: climatempo.com.br/readyprepmeals.com/patternrecognition.cn/scpld.org/comicbook.com/anisearch.com/funimecity.com/cbr.com/cidadedamalta.pt/9to5mac.com/episode.ninja/69shuba.com/list.tsfcomics.com

## 目标差距分析

| 目标 | 当前 | 差距 | 路径 |
|------|------|------|------|
| 规则2000条 | ~50条 | ~1950 | 扩展关键词+域名+deep模式 |
| 书架每分类200个 | ~150/分类 | ~50/分类 | 扩展排行榜爬取+自动发现新站点 |
| 每语种100+域名 | 112 | ✅达成 | 维护 |
| searchUrl覆盖率90%+ | ~80% | 10% | 继续添加模板 |

## 下一步优化方向

1. **自动发现排行榜URL验证** — 第15轮CI验证_auto_discover_ranking()效果
2. **继续扩展目录漫画数至3200** — 当前2354，差846
3. **提高searchUrl覆盖率至90%+** — 当前80%
4. **详情页元数据分类** — 用在线抓取的genre/tag替代纯标题匹配
5. **deep模式运行** — quick模式时间预算有限
6. **sources指向首页问题** — 很多漫画的detailUrl是站点首页而非具体漫画页
7. **统一keyword_discovery.json的ranking_sites** — 与ranking_pages.json合并
