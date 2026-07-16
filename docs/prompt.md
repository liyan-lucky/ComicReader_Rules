# ComicReader_Rules 项目提示词

## 项目概述

`ComicReader_Rules` 是漫画浏览器的公开源规则仓库。核心目标：**规则2000条、书架每分类200个漫画（16分类=3200总漫画）、每语种100+有效漫画域名**。

## 仓库结构

### 全链路流程（4步串行CI）

```
Step1: discover_domains.py → aggregator_sites.json
Step2: discover_keywords.py → rule_keywords.json
Step3: generate_rules.py → rules/index.{lang}.json + rulebot_report.{lang}.json
Step4: bulk_generate_catalog.py → catalog/catalog.{lang}.json
```

一键触发：`Actions → 全链路更新 → Run workflow`（workflow: full-pipeline.yml）

### 关键配置文件

| 文件 | 用途 | 维护方式 |
|------|------|---------|
| `config/aggregator_sites.json` | 域名种子列表 | CI自动更新 |
| `config/rule_keywords.json` | 关键词列表 | CI自动更新 |
| `config/ranking_pages.json` | 排行榜爬取配置（URL模板/分页/类型参数） | 手动+自动发现 |
| `config/keyword_discovery.json` | 关键词发现参数（排行榜URL/搜索查询/fallback_ranking 250个） | 手动 |
| `config/manga_indicator_keywords.json` | 域名验证6参数 | 手动 |
| `config/blocked_domains.json` | 屏蔽配置（excluded_domains + discover_domains清理词 + generate_rules屏蔽70+域名） | 手动迭代 |
| `config/catalog_config.json` | 目录配置（腾讯17类） | 手动 |
| `config/search_url_templates.json` | 搜索URL模板 | CI自动生成 |
| `config/seed_sites.json` | 种子URL | CI自动生成 |

### 关键脚本

| 脚本 | 用途 |
|------|------|
| `scripts/discover_domains.py` | 域名发现+验证（SearXNG搜索→聚合站爬取→5级验证） |
| `scripts/discover_keywords.py` | 关键词发现（排行榜+搜索+fallback→rule_keywords.json） |
| `scripts/bulk_generate_catalog.py` | 目录生成（report+排行榜爬取+关键词→catalog） |
| `scripts/generate_site_configs.py` | 站点配置生成 |
| `tools/rule_discovery/generate_rules.py` | 规则生成 |
| `tools/rule_discovery/build_index_from_report.py` | 规则索引构建（per-domain-limit=3） |

## 规则与约束

### 必须遵守

- **所有验证必须通过CI在线完成**，不做本地验证
- **rule_keywords.json 不手动维护** — 由 discover_keywords.py 自动生成
- **validate用"漫画"而非"漫"**（更精确），search_text用"漫"（宽泛搜索）
- **繁体"漫畫"必须覆盖** — validate同时匹配简体"漫画"和繁体"漫畫"
- **per-domain规则限制3条** — 防止单域名生成大量重复规则
- **搜索API优先级**：SearXNG(免费无限制) → DuckDuckGo → Brave → Serper → Google CSE
- **域名归一化到注册域级别**，但托管平台子域保留三级域名
- **所有含发布动作的workflow默认不发布**（但commit_changes默认开启）
- **workflow中f-string不能用反引号**
- **清理词（blocked_domains.json的discover_domains）匹配页面内容，每个词2个字**
- **域名列表文件只保留纯域名，不含命中注释**
- **屏蔽(anti_patterns)统计默认关闭，清理(title_blocked)统计默认关闭**
- **规则生成应直接用aggregator_sites.json格式的URL作为种子**
- **workflow选项中2选项切换的改为boolean开关**
- **关键词发现应从知名国漫站提取排行榜**
- **关键词应聚焦漫画/国漫，不要动漫/日漫**
- **分类使用腾讯17类**：恋爱 玄幻 异能 恐怖 剧情 科幻 悬疑 奇幻 冒险 犯罪 动作 日常 竞技 武侠 历史 战争
- **keyword_discovery.json 的 fallback_ranking 是关键词的权威来源**
- **用户核心洞察**：每个漫画域名有1000+漫画，20个域去掉重复应该把目录填满绰绰有余。目录漫画数偏少的根因是catalog只从report（1-3个漫画/域名）和keyword填充，从未爬取站点自身的排行榜/分类页

### 用户偏好

- 简体中文沟通
- 短缩写命名（如mh=manhua）
- 独立参数而非合并
- 输出标注命中关键词

## 当前状态 (第14轮CI)

| 指标 | 数值 | 目标 | 差距 |
|------|------|------|------|
| 域名 | 112 | 100+ | ✅ |
| 关键词 | 150 | 200+ | 🟡 |
| 规则 | ~50 | 2000 | 🔴 |
| 目录漫画 | 2354 | 3200 | 🟡(-846) |
| searchUrl覆盖 | ~80% | 90%+ | 🟡 |

### 排行榜爬取数据源贡献

| 域名 | 漫画数 | 爬取方式 |
|------|--------|---------|
| manhuatuan.com | 1823 | SSR列表页50页 |
| baozimh.com | 315 | SSR分类页16类型 |
| ac.qq.com | 130 | SSR全量页50页 |
| m.manhuagui.com | 117 | SSR列表页7页 |
| manga.bilibili.com | 49 | SSR排行榜 |
| report+关键词 | 220 | rulebot_report+rule_keywords |

## 已完成的关键改造

1. **清理假源** — 从aggregator_sites/seed_sites/catalog/rules中移除所有托管平台假源和非漫画站
2. **6参数精简重构** — manga_indicator_keywords.json和discover_domains.py
3. **Pipeline架构重构** — 4个串行job，每步独立检出main
4. **14轮CI验证** — 迭代修复问题，目录漫画从25→2354
5. **排行榜爬取** — bulk_generate_catalog.py新增crawl_ranking_pages()从漫画站排行榜/分类页在线爬取
6. **排行榜配置外置** — ranking_urls硬编码→config/ranking_pages.json + _auto_discover_ranking()自动发现
7. **非漫画站屏蔽** — blocked_domains.json累计屏蔽70+个非漫画站
8. **标题质量过滤** — TEMPLATE_GARBAGE_RE过滤模板变量，is_valid_title过滤垃圾内容

## 待完成

1. **继续扩展目录漫画数至3200** — 当前2354，差846。主要靠扩展排行榜爬取站点和分页
2. **自动发现排行榜URL验证** — 第15轮CI验证_auto_discover_ranking()效果
3. **自动检测分页上限** — 爬取到空页/重复页时自动停止
4. **统一ranking_sites** — keyword_discovery.json的ranking_sites与ranking_pages.json合并
5. **提高searchUrl覆盖率至90%+** — 当前80%
6. **详情页元数据分类** — 用在线抓取的genre/tag替代纯标题匹配
7. **deep模式运行** — quick模式时间预算有限
8. **sources指向首页问题** — 很多漫画的detailUrl是站点首页而非具体漫画页
9. **规则数偏少** — 当前~50条，目标2000条。需要扩展关键词+域名+deep模式

## CI运行时间趋势

随着域名数增加，CI运行时间显著增长：
- 第6轮：~33分钟
- 第9轮：~1小时
- 第14轮：~8小时

主要瓶颈：Step1域名验证（2-3小时）和Step3规则生成（2-4小时）。需考虑优化或拆分。

## 已知SSR站点（urllib可爬取排行榜）

| 站点 | 漫画数/页 | 分页格式 | 有效页数 |
|------|----------|---------|---------|
| manhuatuan.com | ~35 | `/list/page/{n}/` | 50(80+返回空) |
| baozimh.com | ~38 | `/classify?type={type}` | 1(无分页) |
| ac.qq.com | ~25 | `/ComicAll/page/{n}` | 100+ |
| m.manhuagui.com | ~20 | `/list/?page={n}` | 50(503风险) |
| manga.bilibili.com | ~50 | `/ranking` | 1(无分页) |

## 已知SPA站点（urllib无法爬取）

kuaikanmanhua.com, dongmanmanhua.cn, manhuaren.com, guazimanhua.com

## 已屏蔽非漫画站 (70+)

小说平台: readnovel/webnovel/hongxiu/shuqi/uukanshu/lrts/piaotia/xxsy/youyuxs/book.novel.qq.com/mreader.novel.qq.com
日本出版: shogakukan/cmoa/sunday-webry/japanpack
英文漫画: mangago/mangahere/mangafire/comick/mangazenkan/inkr/leagueofcomicgeeks/kingofshojo/soullandmanga/en-thunderscans/roliascan/foxspiritmatchmaker/koreanwebtoons/19-days-manga/noveltrust
电商/流媒体: amazon/ebay/walmart/shopee/netflix/hulu/primevideo/mewatch/litv
学术/工具: cambridge.org/findlaw/justia/law.cornell.edu/archive.org/cntraveler/proprofs
其他: climatempo.com.br/readyprepmeals.com/patternrecognition.cn/scpld.org/comicbook.com/anisearch.com/funimecity.com/cbr.com/cidadedamalta.pt/9to5mac.com/episode.ninja/69shuba.com/list.tsfcomics.com
