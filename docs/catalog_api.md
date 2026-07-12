# 公开漫画目录接口说明

目录索引供 App 分类浏览和添加漫画来源。仓库只保存元数据，不保存漫画图片、章节正文、付费内容或账号数据。

## 读取地址

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/catalog/catalog.{lang}.json
```

lang 取值：zh-Hans / zh-Hant / en / ja / ko

## 分类体系

腾讯17类：

| ID | 名称 |
|----|------|
| lianai | 恋爱 |
| xuanhuan | 玄幻 |
| yineng | 异能 |
| kongbu | 恐怖 |
| juqing | 剧情 |
| kehuan | 科幻 |
| xuanyi | 悬疑 |
| qihuan | 奇幻 |
| maoxian | 冒险 |
| fanzui | 犯罪 |
| dongzuo | 动作 |
| richang | 日常 |
| jingji | 竞技 |
| wuxia | 武侠 |
| lishi | 历史 |
| zhanzheng | 战争 |
| weifenlei | 未分类（内部兜底） |

## 目录结构

```json
{
  "schema": "comic_catalog_v1",
  "language": { "code": "zh-Hans", "name": "简体中文" },
  "categories": [
    {
      "id": "lianai",
      "name": "恋爱",
      "comics": [
        {
          "title": "漫画名",
          "aliases": ["别名"],
          "tags": ["tag1"],
          "sources": [{ "url": "https://...", "ruleId": "xxx_auto_public" }],
          "updatedAt": "2026-07-12T00:00:00Z"
        }
      ]
    }
  ]
}
```

## 更新清单

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/update_manifest.json
```

App 比较 `catalog.version` 判断是否需要更新。
