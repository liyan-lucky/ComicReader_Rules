# 交接文档（2026-09-22）

## 上一轮：域名收集逻辑修复（commit 92e72180，已完成并推送）

| 文件 | 修改 | 说明 |
|---|---|---|
| `scripts/select_sources.py` | rejected 添加 `domain` 字段 | 之前 rejected 只有 workId/detailUrl/reasons，无法提取域名 |
| `scripts/domain_ledger.py` | 从 rejected 也提取域名，标记 `candidate_only` | 所有候选域名都记录，不只 verified 的 |
| `scripts/list_domains.py` | 只列出 `verifiedWorkCount > 0` 的域名 | candidate_only 域名不参与 04 规则分析 |
| `scripts/merge_domain_rules.py` | 新增 `--ledger` 参数，`ledger_domains` 只含 verified 域名 | 以账本为权威过滤旧规则，避免仓库无限膨胀 |

### 上一轮验证结果

- `select_sources.py`: 571/571 rejected 全部含 domain 字段
- `domain_ledger.py`: 3 → 288 个域名（2 verified + 286 candidate_only），单分类测试
- 全量审计: 1691 个候选域名（3 verified + 1688 candidate_only）
- `merge_domain_rules.py`: 旧 102 规则 → 只保留 ledger 中 verified 域名的规则

## 1-7 流程闭环（始终有效）

```
01采集 →(workflow_run)→ 02搜索 →(gh run)→ 03回放 →(gh run)→ 04规则 →(uses)→ 06发布规则 →(needs)→ 05发布目录 →(gh run)→ 07封面 →(等01定时)→ 闭环
```

### 膨胀控制

| 产物 | 控制机制 |
|---|---|
| `domain_ledger` | 02 全量重建（含所有候选域名） |
| `best/*.json` | 02 重新生成（全量覆盖） |
| `rules/index.zh-Hans.json` | 04 以 ledger 为权威过滤 |
| `domain-rules/` | 04 `rm -f` 清空旧文件再下载 |
| `audits/` | 覆盖 + 保留 prior_good，不累积 |

---

## 本轮：产出过少的全链路诊断与修复（2026-09-22，未提交）

### 诊断结论

| 指标 | 数值 | 问题 |
|---|---|---|
| catalog 最终作品数 | 234 本 | 16 分类中 5 个为 0 |
| rejected 总数 | 23566 本 | 23489 个 `no_verified_source` |
| domain_ledger 域名 | 237 个 | 仅 3 个 verified（guazimanhua.com / dongmanmanhua.cn / m.bikamanhua.com） |
| 域名规则 | 102 条（已恢复） | 旧 102 条被 --ledger 过滤到 3 条，已修正为累积合并 |
| 搜索进度 | 4541/23799（19%） | 81% 作品从未被搜索 |

### 根因与修复对照表

| # | 缺陷 | 根因位置 | 修复 |
|---|---|---|---|
| 1 | 搜索进度仅 19% | `02-refine-categories.yml` `--max-works 50`（lianai/juqing/qihuan 各 5000+ 本，需 100 轮） | 提升至 `--max-works 500`，10 轮内可完成大分类 |
| 2 | 搜索结果混入知乎/百科/B站等非漫画站 | `audit_category_sources.py` search() 无 host 黑名单 | 新增 `blockedSearchHosts`（24 个域名，支持子域匹配）+ `extraBlockedSearchHosts` 分类级扩展 |
| 3 | 发布门禁失效：11<12 非空分类仍 `passed=true` | `05-publish.yml` 传 `--incremental`，`validate_release.py:43-44` 用它跳过两项门禁 | 删除 `--incremental` 参数与跳过逻辑，门禁无条件生效（已验证：当前目录正确报 `11/12` 失败） |
| 4 | 冷门分类参数极少（fanzui=8、zhanzheng=4、jingji=16） | ① `boluobaoThemeIds` key 是拼音（rexue/gaoxiao）非法分类，10 个分类书籍进 unclassified/非法桶；② `kuaikanThemeIds` 缺 lishi/richang 等分类 | ① boluobao key 改为标准分类 ID、value 支持 `[tid]` 列表（同分类多 tag 合并）；② 快看补 古风46→lishi、校园74→richang（实测快看无犯罪/战争/竞技/冒险 tag，题材天然冷门，仅腾讯覆盖） |
| 5 | 每搜 50 本就触发 03→04→05 全链路 | `02-refine-categories.yml` merge job 无条件触发 03 | 03 触发与 `publish_incremental` 均加 `pending == 'false'` 条件，仅在整轮搜索完成后进入下游 |
| 6 | 未完成搜索的分类以 0 作品静默发布 | 发布审计无搜索完成度信息 | `validate_release.py` 新增 `--states` 参数，report 增 `categorySearchProgress`（每类 searched/total/complete） |
| 7 | 域名规则从 102 条被 --ledger 过滤到 3 条 | `merge_domain_rules.py:14` 用 `domain in ledger_domains` 删除旧规则 | 旧规则全部保留，新规则覆盖同域名，不以 ledger 删除（已恢复 102 条） |
| 8 | blockedSearchHosts 含主域名误伤子域 | 手动配置过宽（baidu.com/bilibili.com 等） | 移除主域名，只保留确切非漫画子域（zhihu.com/baike.baidu.com/gov.cn 等 7 个） |
| 9 | App 缺少屏蔽域名/标题/词产出 | 无自动产出机制 | 新增 `generate_app_blacklist.py`：从 02 rejected 自动提取非漫画域名+无效标题 |
| 10 | 屏蔽列表可能误伤已发布作品 | 无检查机制 | 新增 `check_blacklist_safety.py`：检查屏蔽列表是否碰撞 catalog/规则，误伤则阻断发布 |

### 附带发现

- kanman/boluobao 在 CI 显示 `no_items`，本地实测正常（kanman 288 条、boluobao 132 条），疑似 CI 海外 IP 差异；01 prepare 步骤的平台状态汇总表已能暴露此状态
- `releaseGates.minimumNonEmptyCategories=12` 恢复生效后，在 kongbu/lishi 等分类搜完并有产出前，05 发布会正确阻断（当前 `11/12` 不通过）

### 修改文件清单

| 文件 | 修改 |
|---|---|
| `.github/workflows/02-refine-categories.yml` | `--max-works 50`→`500`；触发 03 与 publish_incremental 均改为仅 `pending == 'false'` |
| `.github/workflows/05-publish.yml` | 移除 `--incremental`；`validate_release.py` 增加 `--states state/search/zh-Hans` |
| `config/pipeline.json` | 新增 `blockedSearchHosts`（知乎/百度/B站/萌娘百科/gov.cn/新闻门户等 24 域名） |
| `config/platforms.json` | `boluobaoThemeIds` 拼音 key → 标准分类 + 列表 tid；`kuaikanThemeIds` 补 lishi/richang |
| `scripts/audit_category_sources.py` | 新增 `SEARCH_BLOCKED_HOSTS` + `search_blocked()`；search()/audit() 双重过滤 |
| `scripts/incremental_category_search.py` | 支持 `extraBlockedSearchHosts` 分类级扩展 |
| `scripts/collect_platform.py` | `collect_boluobao` 支持 tid 列表值 |
| `scripts/validate_release.py` | 删除 `--incremental` 绕过；新增 `--states` 搜索进度审计（报告+Step Summary 表格） |
| `scripts/merge_domain_rules.py` | 移除 `--ledger` 过滤旧规则；旧规则全部保留，新规则覆盖同域名 |
| `scripts/generate_app_blacklist.py` | **新增**：从 02 rejected 自动产出 App 屏蔽域名/标题/词 |
| `scripts/check_blacklist_safety.py` | **新增**：检查屏蔽列表是否误伤 catalog 作品和域名规则 |
| `scripts/update_manifest.py` | 新增 `blacklist` section，App 可获取屏蔽列表 |
| `tests/test_pipeline.py` | 新增 6 个测试（黑名单过滤/非法分类/门禁生效/搜索进度报告） |

### 验证结果

- 全部 Python 语法 + JSON/YAML 校验通过
- `pytest tests/`：20 passed（原 14 + 新增 6）
- 门禁实测：`validate_release.py` 现对当前目录返回 `passed: false, non-empty categories below minimum: 11/12`
- boluobao 实测采集：132 条全部落入标准分类（修复前 rexue/gaoxiao/mohuan 等非法分类）
- `search_blocked()` 单测：知乎/百度百科/gov.cn 拦截，漫画站放行
- 产出数据文件核验：catalog/best_sources/domain_ledger 均未被本次修改触碰
- **域名规则恢复**：从 3 条恢复到 102 条（旧规则保留 + 新规则覆盖同域名）
- **App 屏蔽产出**：19 个屏蔽域名 + 34 个屏蔽标题，误伤检查通过（无碰撞）
- **blockedSearchHosts 修正**：从 24 个主域名改为 7 个确切子域，移除 bilibili.com 避免误伤 manga.bilibili.com

### 预期效果与后续观察

1. 02 每轮搜索量 ×10（50→500），大分类约 10 轮内完成；整轮完成后才触发 03/04/05
2. 搜索结果不再被知乎/百科等挤占 12 个候选预算
3. 发布门禁恢复后，未达 12 个非空分类的目录会被阻断（这是预期行为，逼迫搜索完成度上升）
4. 冷门分类（fanzui/zhanzheng/jingji）受平台生态限制，快看无对应 tag，只能靠腾讯动漫主题页

### 推送命令

```bash
# 网络恢复后直接 push
git push origin main

# 或使用代理
git -c http.proxy=http://127.0.0.1:4088 -c https.proxy=http://127.0.0.1:4088 push origin main
```

---

## App 仓库同步配置分析（14_ComicReader_HarmonyOS）

### App 当前同步机制

| 同步项 | App 侧文件 | 远程入口 | 格式 |
|---|---|---|---|
| 规则 | `RemoteRuleService.ets` → `SourceRules.ets`(内置15条) | `update_manifest.json` → `rules/index.zh-Hans.json` | JSON |
| 目录 | `CatalogService.ets` → `rawfile/catalog/`(fallback) | `update_manifest.json` → `catalog/catalog.zh-Hans.json` | JSON |
| 屏蔽列表 | `SearchEngines.ets` → `Index.ets`(syncFilterWords) | `filter_words.txt` | INI 5段 |
| 封面索引 | `RemoteRuleService.ets` | `update_manifest.json` → `cover_index` | JSON |
| 封面规则 | `RemoteRuleService.ets` | `update_manifest.json` → `cover_rules` | JSON |

### 发现的差异与改进

| # | 问题 | 现状 | 改进 | 状态 |
|---|---|---|---|---|
| A | filter_words.txt 缺 [OFFICIAL]/[PREFERRED] 段 | App 期望 5 段，文件只有 3 段 | `generate_app_blacklist.py` 现同时产出 filter_words.txt 5 段完整 | ✅ 已修复 |
| B | app_blacklist.zh-Hans.json 与 filter_words.txt 重复 | 两套屏蔽列表 | 统一：generate_app_blacklist.py 同时产出两个文件，filter_words.txt 供 App 用 | ✅ 已修复 |
| C | App SourceRules.ets 15 条 vs 规则仓库 102 条 | 严重不同步，sync_verified_rules.ps1 失效 | App 侧：修复 sync 脚本或完全依赖远程规则（启动时拉取） | ⚠️ App 侧待修 |
| D | App UpdateManifest 接口缺 blacklist section | manifest 有 blacklist section 但 App 不消费 | App 侧：UpdateManifest 接口加 blacklist 字段，或统一到 filter_words.txt | ⚠️ App 侧待修 |
| E | SearchEngines.ets 内置屏蔽配置手动维护 | blockedDomains/blockedWords 硬编码 | App 启动时从 filter_words.txt 同步（已有逻辑，现 filter_words.txt 已完整） | ✅ 规则侧已修复 |
| F | sync_verified_rules.ps1 目标文件已删除 | GeneratedSourceRules.ets 已删除，脚本失效 | App 侧：删除脚本或更新目标为 SourceRules.ets | ⚠️ App 侧待修 |
| G | rawfile/catalog fallback 可能过时 | 1.48MB 内置目录与远程可能不同步 | App 侧：构建前运行 sync_verified_catalog.ps1 | ⚠️ App 侧待修 |

### filter_words.txt 5 段格式（流程自动产出）

```
[DOMAINS]    — 02 rejected 非漫画域名 + 内置视频/社交/电商站（48 条）
[WORDS]      — 02 rejected 屏蔽词 + 内置教育/培训词（10 条）
[NOISE]      — 02 rejected 噪声标题（34 条）
[OFFICIAL]   — catalog verified 域名白名单
[PREFERRED]  — pipeline.json preferredReadableDomains + catalog 域名
```

### App 侧改进建议（需在 14_ComicReader_HarmonyOS 仓库执行）

1. **SourceRules.ets 与远程同步**：删除失效的 `sync_verified_rules.ps1`，让 App 启动时从 `update_manifest.json` 拉取最新 102 条规则，`SourceRules.ets` 仅保留 15 条作为离线 fallback
2. **UpdateManifest 接口加 blacklist**：在 `RemoteRuleService.ets` 的 `UpdateManifest` 接口加 `blacklist?: ManifestCatalogEntry` 字段，App 可通过 manifest 获取 filter_words.txt URL
3. **rawfile fallback 更新**：构建前运行 `sync_verified_catalog.ps1` 更新内置目录
4. **SearchEngines.ets 内置配置精简**：blockedDomains/blockedWords 改为空数组，完全依赖 filter_words.txt 远程同步

---

## 本轮：01 采集扩量至 30000+ 去重作品名（2026-09-22，未提交）

### 目标

一轮采集产出 30,000+ 个去重作品名（用户要求，原 3,000+ 修正为 30,000+）。

### 修复前状态

| 指标 | 数值 |
|---|---|
| 去重后独立作品名 | 13,494 |
| 有产出平台 | 3/10（kuaikan 20511, tencent 3182, dongman 1308） |
| no_items 平台 | 2（boluobao, kanman — CI 海外 IP 问题） |
| 禁用平台 | 5（bilibili, dmzj, u17, manhuadao, manhuatai） |

### 修复后状态

| 指标 | 数值 |
|---|---|
| 去重后独立作品名 | **42,309** |
| 有产出平台 | **8/13** |
| 总条目（含跨分类重复） | 57,405 |

### 各平台产出

| 平台 | 条目数 | 说明 |
|---|---|---|
| kuaikan | 20,511 | 原有，新增 10 个标签（大女主/穿越/总裁等） |
| tencent | 3,182 | 原有 |
| dongman | 1,308 | 原有 |
| **dm5** | **24,355** | **新增**（动漫屋，18 个分类） |
| **manhuaxq** | **5,047** | **新增**（漫画星球，33 个分类） |
| **manhuaba** | **2,594** | **新增**（漫画吧，4 个地区分类） |
| boluobao | 120 | 本地正常，CI 海外 IP no_items |
| kanman | 288 | 本地正常，CI 海外 IP no_items |

### 各分类去重作品数

| 分类 | 修复前 | 修复后 | 增幅 |
|---|---|---|---|
| dongzuo | 2,518 | 16,112 | +13,594 |
| lianai | 4,965 | 14,386 | +9,421 |
| juqing | 5,045 | 7,250 | +2,205 |
| qihuan | 4,759 | 5,548 | +789 |
| richang | 370 | 2,352 | +1,982 |
| xuanhuan | 1,788 | 2,280 | +492 |
| kehuan | 368 | 1,632 | +1,264 |
| yineng | 1,499 | 1,595 | +96 |
| xuanyi | 1,180 | 1,414 | +234 |
| maoxian | 249 | 901 | +652 |
| kongbu | 754 | 810 | +56 |
| wuxia | 201 | 210 | +9 |
| lishi | 75 | 143 | +68 |
| jingji | 16 | 115 | +99 |
| zhanzheng | 4 | 57 | +53 |
| fanzui | 8 | 8 | 0 |

### 修改的文件

| 文件 | 修改 |
|---|---|
| `config/platforms.json` | 新增 3 个平台（manhuaxq/dm5/manhuaba）+ kuaikan 新标签 + manhuaxqCategories/dm5Categories |
| `scripts/collect_platform.py` | 新增 collect_manhuaxq/collect_dm5/collect_manhuaba 三个 adapter；collect_kuaikan 支持列表标签值 |

### 新平台 adapter 说明

- **manhuaxq**: `/genre/cate/{label}.html?page={n}`，33 个中文分类名，a[href*="/manhua/"] 提取标题
- **dm5**: `/manhua-{slug}/` 和 `/manhua-{slug}-p{n}/`，18 个分类 slug，a[href^="/manhua-"] 长 slug 提取标题
- **manhuaba**: `/category/list/{cat_id}/page/{n}`，4 个地区分类（国产/日本/韩国/欧美），a[href*="/comic/"] 提取标题，403 错误跳过

---

## 本轮：catalog 停滞 234 本的根因诊断与修复（2026-09-22，已推送）

### 问题

App 书架书本数停滞在 234 本，不增加。

### 根因

| 环节 | 状态 | 问题 |
|---|---|---|
| 01 采集 | ✅ 42,309 独立作品名 | 已推送到远程 parameters |
| 02 搜索 | ❌ 仅 4,691/23,799（20%） | 19,108 个作品从未被搜索 |
| 05 发布 | ❌ 门禁阻断 | 02 未完成→非空分类不足→catalog 不更新 |
| catalog | ❌ 234 本 | 05 被阻断→catalog 停滞 |

### 搜索速度慢的原因

1. `--max-works 500`：每轮最多搜索 500 个作品，大分类（lianai 4965、juqing 5045）需 10+ 轮
2. `incrementalBatchSize: 20`：kongbu 和 xuanhuan 被配置覆盖为每轮仅 20 个（100 倍差距）
3. 之前的运行被 cancelled/failure 浪费时间（failure 实为发布门禁预期阻断，非搜索失败）

### 修复

| 文件 | 修改 | 效果 |
|---|---|---|
| `02-refine-categories.yml` | `--max-works 500` → `2000` | 每轮搜索量 4 倍 |
| `config/categories/kongbu.json` | `incrementalBatchSize: 20` → `2000` | kongbu 搜索量 100 倍 |
| `config/categories/xuanhuan.json` | `incrementalBatchSize: 20` → `2000` | xuanhuan 搜索量 100 倍 |

### 预期效果

- 每轮搜索 2000 个作品，大分类（5000+）只需 3 轮完成（之前需 10+ 轮）
- 02 搜索完成后，05 发布门禁自然通过，catalog 自动更新
- catalog 书本数将从 234 本大幅增加

---

## 本轮：02 搜索速度瓶颈修复（2026-09-22，已推送）

### 问题

02 搜索频繁被取消（运行 1-3 小时后 cancelled），进度仅 24%（2,897/11,684），catalog 停滞 234 本。

### 根因

| 瓶颈 | 说明 |
|---|---|
| 串行搜索 | 每作品顺序执行 9 次 searxng 查询 + 12-18 次页面审计 |
| candidateLimit 过高 | 每作品审计 12-18 个 URL，大部分被 reject |
| 时间预算不足 | job-time-budget 12600s（210m）接近 timeout 240m 但搜索太慢 |
| 速度 | ~60 秒/作品，每分类每轮仅 ~210 个作品 |

### 修复

| 文件 | 修改 | 效果 |
|---|---|---|
| `incremental_category_search.py` | 添加 ThreadPoolExecutor 4 workers 并行搜索 | 4 倍吞吐 |
| `config/categories/*.json` | candidateLimit 12-18 → 6 | 50-67% 更少审计 |
| `02-refine-categories.yml` | job-time-budget 12600 → 13800（230m） | 每轮多 20 分钟搜索 |
| `02-refine-categories.yml` | 添加 `--search-workers 4` | 启用并行搜索 |

### 预期效果

- 每作品 ~15 秒（原 ~60 秒），4 倍并行 → 每分类吞吐 16 倍
- 42,309 作品预计 2-3 轮完成（原需 12+ 轮）
- 02 完成后 → 05 门禁通过 → catalog 更新 → App 书架书本数增加
