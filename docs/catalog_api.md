# 公开漫画目录接口设计

本目录接口用于让 App 读取“公开漫画列表 + 分类 + 来源规则引用”。仓库只保存元数据，不保存漫画图片、章节正文、付费内容或账号数据。

## 读取地址

开发分支测试地址：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/develop/generated/catalog.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/develop/generated/catalog_categories.json
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/develop/generated/catalog_delta.json
```

主分支正式地址需要在确认 OK 并合并后再使用：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/catalog.json
```

## catalog.json

```json
{
  "schema": "comic_catalog_v1",
  "version": "20260630T000000Z",
  "updatedAt": "2026-06-30T00:00:00Z",
  "categories": [
    { "id": "xuanhuan", "name": "玄幻", "count": 10 }
  ],
  "items": [
    {
      "id": "comic-xxxx",
      "title": "斗罗大陆",
      "aliases": ["Soul Land", "Douluo Dalu"],
      "categories": ["xuanhuan", "rexue"],
      "tags": [],
      "status": "unknown",
      "cover": "",
      "sources": [
        {
          "ruleId": "kaixinman.com",
          "siteName": "kaixinman.com",
          "siteUrl": "https://kaixinman.com"
        }
      ],
      "sourceCount": 1,
      "firstSeenAt": "2026-06-30T00:00:00Z",
      "lastSeenAt": "2026-06-30T00:00:00Z"
    }
  ],
  "itemCount": 1
}
```

## App 读取流程

1. App 启动或用户点击“更新目录”。
2. 请求 `generated/catalog.json`。
3. 对比本地缓存的 `version` / `updatedAt`。
4. 缓存 `categories` 和 `items`。
5. 首页展示分类列表。
6. 点击分类后按 `items[].categories` 过滤。
7. 点击漫画后展示 `sources`。
8. 根据 `sources[].ruleId` 关联 `generated/index.json` 里的规则。
9. App 使用规则打开详情页、搜索页或章节页。

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
- 分类；
- 标签；
- 来源站点；
- 来源规则 ID；
- 公开详情页或站点 URL；
- 首次发现和最后发现时间。

禁止保存：

- 漫画图片；
- 章节图片；
- 章节正文；
- 付费内容；
- 账号、Cookie、Token；
- 破解接口、验证码绕过、DRM 绕过、私有 App 协议。
