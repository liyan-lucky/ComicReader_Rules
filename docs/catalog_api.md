# 公开漫画目录接口设计

本目录接口用于让 App 读取“公开漫画列表 + 分类 + 来源规则引用”。仓库只保存元数据，不保存漫画图片、章节正文、付费内容或账号数据。

## 读取地址

主分支正式地址：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog_categories.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog_delta.json
```

## catalog.json

```json
{
  "schema": "comic_catalog_v1",
  "version": "20260630T000000Z",
  "updatedAt": "2026-06-30T00:00:00Z",
  "compliance": {
    "publicOnly": true,
    "noBundledComicContent": true,
    "noImages": true,
    "noChapterText": true,
    "noAccountData": true,
    "noAccessControlBypass": true,
    "singlePrimaryCategory": true,
    "clickableLinks": true
  },
  "categories": [
    { "id": "xuanhuan", "name": "玄幻", "count": 10 }
  ],
  "items": [
    {
      "id": "comic-xxxx",
      "title": "斗罗大陆",
      "aliases": ["Soul Land", "Douluo Dalu"],
      "primaryCategory": "xuanhuan",
      "categories": ["xuanhuan"],
      "tags": [],
      "status": "unknown",
      "cover": "",
      "primaryUrl": "https://example.com/comic/douluo-dalu",
      "links": [
        {
          "title": "示例来源",
          "url": "https://example.com/comic/douluo-dalu",
          "type": "detail",
          "ruleId": "example.com"
        }
      ],
      "sources": [
        {
          "ruleId": "example.com",
          "siteName": "示例来源",
          "detailUrl": "https://example.com/comic/douluo-dalu"
        }
      ],
      "sourceCount": 1,
      "linkCount": 1,
      "firstSeenAt": "2026-06-30T00:00:00Z",
      "lastSeenAt": "2026-06-30T00:00:00Z"
    }
  ],
  "itemCount": 1
}
```

## 点击查看规则

目录项可以直接点击查看：

- APP 列表点击漫画时，优先打开 `items[].primaryUrl`。
- 详情页展示多个来源时，使用 `items[].links[]`。
- `links[].type = detail` 表示漫画详情页链接。
- `links[].type = site` 表示只有来源站点链接，APP 可以进入站点或用对应 `ruleId` 发起搜索。
- `sources[]` 继续保留给规则关联使用，APP 根据 `sources[].ruleId` 对应 `generated/index.json` 里的规则。

## 分类唯一性规则

每本漫画只能固定归入一个主分类，避免同一本漫画在多个题材里重复计数。

- `primaryCategory` 是唯一主分类。
- `categories` 为兼容旧版 App 保留，但数组长度固定为 1。
- 如果一本漫画同时命中多个题材，按照生成脚本里的分类优先级选择第一个命中的分类。
- 例如一本漫画同时符合“古风”和“穿越”，会固定归入优先级更靠前的分类，不会同时出现在两个分类计数里。

## App 读取流程

1. App 启动或用户点击“更新目录”。
2. 请求 `generated/catalog.json`。
3. 对比本地缓存的 `version` / `updatedAt`。
4. 缓存 `categories` 和 `items`。
5. 首页展示分类列表。
6. 点击分类后按 `items[].primaryCategory` 过滤，旧版也可以按 `items[].categories[0]` 过滤。
7. 点击漫画后优先打开 `items[].primaryUrl`。
8. 如果有多个来源，展示 `items[].links[]` 让用户选择。
9. 根据 `sources[].ruleId` 关联 `generated/index.json` 里的规则。
10. App 使用规则打开详情页、搜索页或章节页。

## 分类 ID

| ID | 名称 |
|---|---|
| xuanhuan | 玄幻 |
| xiuxian | 修仙 |
| wuxia | 武侠 |
| dushi | 都市 |
| xiaoyuan | 校园 |
| lianai | 恋爱 |
| gongdou | 宫斗 |
| gufeng | 古风 |
| chuanyue | 穿越 |
| chongsheng | 重生 |
| rexue | 热血 |
| maoxian | 冒险 |
| xuanyi | 悬疑 |
| kongbu | 恐怖 |
| kehuan | 科幻 |
| gaoxiao | 搞笑 |
| richang | 日常 |
| shaonian | 少年 |
| shaonv | 少女 |
| danmei | 耽美 |
| baihe | 百合 |
| weifenlei | 未分类 |

## 合规边界

目录文件只允许保存：

- 漫画名；
- 别名；
- 唯一主分类；
- 标签；
- 来源站点；
- 来源规则 ID；
- 公开详情页或站点 URL；
- 首次发现和最后发现时间。

目录文件不保存漫画图片、章节图片、章节正文、付费内容、账号、Cookie、Token 或任何非公开访问相关信息。
