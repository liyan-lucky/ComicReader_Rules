# ComicReader Rules

这是 ComicReader HarmonyOS 的公开书目、可读来源和站点规则仓库。主分支只保留证据优先的分层流水线；改造前系统保存在 `backup` 分支。

## 生产链路

1. **每日平台粗采集**：腾讯动漫、哔哩哔哩漫画、快看漫画、咚漫、漫画岛、有妖气、看漫画、菠萝包漫画、动漫之家、漫画台分别运行。允许重复，只记录公开书名、平台分类、详情链接、封面候选、章节提示和采集时间。
2. **分类精加工**：16个分类独立运行。移除章节后缀和导航噪声，保留季、前传、外传、番外等作品限定词，按作品身份合并多平台证据。
3. **逐书找源**：每个分类独立搜索每部作品。候选必须匹配书名，并通过首章、中间章、最新章的正文图片审计；选取通过审计且章节数最多的来源。
4. **域名规则分析**：按域名汇总已验证书籍，推导一域一规则，并对该域名全部作品样本回放。
5. **发布**：只有具备封面、详情链接、真实章节、三章阅读证据和已验证域名规则的作品才进入 App 目录。

## 独立工作流

- `01-collect-platforms.yml`：10个平台并行粗采集并按分类合并。
- `02-refine-categories.yml`：16分类并行精加工，仅在输入变化时产生提交。
- `03-audit-book-sources.yml`：16分类逐书搜索、检查点续跑和最佳来源选择。
- `04-build-domain-rules.yml`：域名级规则推导与全样本回放。
- `05-publish.yml`：最终硬门禁、目录/规则和 manifest 发布。

任一平台或分类失败不会取消其他矩阵任务。下游只读取上一级已经提交或上传的结构化产物。

## 正式输出

- `rules/index.zh-Hans.json`
- `catalog/catalog.zh-Hans.json`
- `generated/update_manifest.json`

App 更新入口：

`https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json`

## 安全边界

流程只访问普通公开网页，不登录、不付费、不绕过验证码、DRM、加密接口或反爬机制，不托管漫画正文图片。平台目录只用于建立公开书目参数，不自动成为阅读源。

详细数据契约和门禁见 [docs/PIPELINE.md](docs/PIPELINE.md)。
