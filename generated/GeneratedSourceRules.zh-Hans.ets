import { ComicSourceRule } from '../model/ComicModels';

/**
 * 自动生成文件：请不要手工修改。
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。
 * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
  {
    "id": "6k9n2_lpsdimataram_com_0732bec3_auto_public",
    "name": "铃木美咲 - 想成为你的偶像（刻晴霓裾翩跹篇） - 6k9n2.lpsdimataram.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://6k9n2.lpsdimataram.com",
    "searchUrl": "https://6k9n2.lpsdimataram.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "http://6k9n2.lpsdimataram.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "bilibili_com_14468e09_auto_public",
    "name": "《东京喰种》 漫画 -哔哩哔哩专栏 - bilibili.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.bilibili.com",
    "searchUrl": "https://bilibili.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.bilibili.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "dm5_cn_59a427cf_auto_public",
    "name": "历史 - dm5.cn 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.dm5.cn",
    "searchUrl": "https://dm5.cn/search?keyword={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.dm5.cn/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "hitomi_la_1099cdb3_auto_public",
    "name": "Read Online - hitomi.la 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://hitomi.la",
    "searchUrl": "https://hitomi.la/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://hitomi.la/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "jwxs_org_f5f49e8f_auto_public",
    "name": "校花的贴身高手 - jwxs.org 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.jwxs.org",
    "searchUrl": "https://jwxs.org/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.jwxs.org/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "kodansha_co_jp_697af848_auto_public",
    "name": "コミック - kodansha.co.jp 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kodansha.co.jp",
    "searchUrl": "https://kodansha.co.jp/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.kodansha.co.jp/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "labimanhua_com_040ae485_auto_public",
    "name": "人气总排行榜 - 蜡笔漫画 - labimanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.labimanhua.com",
    "searchUrl": "https://labimanhua.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.labimanhua.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "lpsdimataram_com_32d1f18a_auto_public",
    "name": "单身即纵慾 - lpsdimataram.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://www.lpsdimataram.com",
    "searchUrl": "https://lpsdimataram.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "http://www.lpsdimataram.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "m_dm5_com_f640f351_auto_public",
    "name": "异世界悠闲农家漫画_317连载中_異世界悠閒農家 異世界のんびり農家在线漫画_动漫屋 - m.dm5.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.dm5.com",
    "searchUrl": "https://m.dm5.com/search?keyword={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://m.dm5.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "m_labimanhua_com_29ee4c8d_auto_public",
    "name": "蜡笔漫画 - 用漫画点亮每一天 - m.labimanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.labimanhua.com",
    "searchUrl": "https://m.labimanhua.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://m.labimanhua.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "manhuaba_com_7a6ca11d_auto_public",
    "name": "一人之下 - manhuaba.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuaba.com",
    "searchUrl": "https://manhuaba.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.manhuaba.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "manwame_com_409dd039_auto_public",
    "name": "重生水浒世界之最强武大郎 - manwame.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manwame.com",
    "searchUrl": "https://manwame.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://manwame.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "manwang_net_35af8fd0_auto_public",
    "name": "一拳超人 - manwang.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manwang.net",
    "searchUrl": "https://manwang.net/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.manwang.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "mechacomic_jp_cea1bb29_auto_public",
    "name": "漫画なら、めちゃコミック（めちゃコミ） - mechacomic.jp 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mechacomic.jp",
    "searchUrl": "https://mechacomic.jp/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://mechacomic.jp/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "mgeko_cc_33161d34_auto_public",
    "name": "Shikkaku Mon no Saikyou Kenja - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "https://mgeko.cc/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "pocket_shonenmagazine_com_e35bb7f6_auto_public",
    "name": "追放された転生重騎士はゲーム知識で無双する - pocket.shonenmagazine.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://pocket.shonenmagazine.com",
    "searchUrl": "https://pocket.shonenmagazine.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://pocket.shonenmagazine.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "shenqimanhua_net_7172b1b4_auto_public",
    "name": "日月同错 - shenqimanhua.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://shenqimanhua.net",
    "searchUrl": "https://shenqimanhua.net/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://shenqimanhua.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "ttkmh_com_7238b055_auto_public",
    "name": "一拳超人漫画下拉式_一拳超人免费在线阅读-天天看漫画 - ttkmh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.ttkmh.com",
    "searchUrl": "https://ttkmh.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.ttkmh.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "ww1_lpsdimataram_com_c7baa019_auto_public",
    "name": "耳边的初恋鬼神 - ww1.lpsdimataram.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ww1.lpsdimataram.com",
    "searchUrl": "https://ww1.lpsdimataram.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://ww1.lpsdimataram.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "xiaoaimh_com_9aee30e4_auto_public",
    "name": "重生水浒世界之最强武大郎漫画_在线漫画_小爱漫画 - xiaoaimh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://xiaoaimh.com",
    "searchUrl": "https://xiaoaimh.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://xiaoaimh.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "yanmaga_jp_ccd8f0f9_auto_public",
    "name": "『追放された転生重騎士はゲーム知識で無双する』 【無料公開中】 | ヤンマガWeb - yanmaga.jp 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://yanmaga.jp",
    "searchUrl": "https://yanmaga.jp/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://yanmaga.jp/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "ycymh_com_49cdb171_auto_public",
    "name": "日月同错漫画免费在线阅读「下拉式观看」 - 异次元漫画 - ycymh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.ycymh.com",
    "searchUrl": "https://ycymh.com/search?q={keyword}",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RuleBot",
    "referer": "https://www.ycymh.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    },
    "domainApplicabilityList": [
      "labimanhua.com",
      "m.labimanhua.com",
      "dm5.cn",
      "m.dm5.com",
      "manwang.net",
      "ttkmh.com",
      "mgeko.cc",
      "hitomi.la",
      "bilibili.com",
      "jwxs.org",
      "lpsdimataram.com",
      "ww1.lpsdimataram.com",
      "6k9n2.lpsdimataram.com",
      "shenqimanhua.net",
      "ycymh.com",
      "manhuaba.com",
      "manwame.com",
      "xiaoaimh.com",
      "mechacomic.jp",
      "yanmaga.jp",
      "pocket.shonenmagazine.com",
      "kodansha.co.jp"
    ]
  },
  {
    "id": "kaixinman_public_access",
    "name": "开心漫公开访问源",
    "description": "公开网页可访问源：支持详情页、章节目录、章节页图片和渲染卷轴兜底；不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "https://www.kaixinman.com/search?keyword={keyword}",
    "searchMethod": "get",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']*\\/comic\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,680}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']*\\/chapter\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,220}?(?:第|话|章|Chapter|立即阅读|下一章)[\\s\\S]{0,100}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']|(?:images|chapterImages|comicImages|photos|pics|imgList)[\"']?\\s*[:=]\\s*(\\[[\\s\\S]{0,6000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3
    ],
    "userAgent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*&gt;\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "mgeko_public_access",
    "name": "Mgeko公开访问源",
    "description": "公开网页可访问源：用于作品页、目录页、章节页解析；只读取页面里直接公开的图片地址。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "https://www.mgeko.cc/search?keyword={keyword}",
    "searchMethod": "get",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']*\\/manga\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,240}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']*(?:\\/chapter\\/|\\/read\\/|chapter)[^\"']+)[\"'][^>]*>([\\s\\S]{0,140}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|src)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']",
    "readerImageGroups": [
      1,
      2
    ],
    "userAgent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*Next\\s*|\\s*下一页\\s*|\\s*&gt;\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 10,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "generic_html_public",
    "name": "通用公开网页源",
    "description": "高级兜底源：适合粘贴公开漫画详情页或章节页，支持静态网页、懒加载、图片集合和章节下一页追踪。",
    "homepage": "",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,160}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>([\\s\\S]{0,180}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|src)=[\"']([^\"']+)[\"'][^>]*>|srcset=[\"']([^\"']+?\\.(?:jpg|jpeg|png|webp|gif)(?:\\?[^\"']*)?)[^\"']*[\"']|[\"']((?:https?:)?//[^\"']+\\.(?:jpg|jpeg|png|webp|gif)(?:\\?[^\"']*)?)[\"']",
    "readerImageGroups": [
      1,
      2,
      3
    ],
    "userAgent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36",
    "referer": "",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*&gt;\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 8,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_public_search",
    "name": "ManhuaPlus公开搜索源",
    "description": "公开网页可访问源：ManhuaPlus (Madara主题) 搜索、详情页、章节页解析。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "https://manhuaplus.com/?s={keyword}&post_type=wp-manga",
    "searchMethod": "get",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']*\\/manga\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,320}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": true,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']*\\/chapter\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,220}?(?:Chapter|chapter|Ch\\.|第|话|章)[\\s\\S]{0,100}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|src|srcset)=[\"']([^\"']+)[\"'][^>]*>|[\"']((?:https?:)?\\/\\/[^\"']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"']*)?)[\"']",
    "readerImageGroups": [
      1,
      2
    ],
    "userAgent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"']([^\"']+)[\"'][^>]*>(?:\\s*Next\\s*|\\s*下一页\\s*|\\s*&gt;\\s*)<\\/a>|rel=[\"']next[\"'][^>]+href=[\"']([^\"']+)[\"']|href=[\"']([^\"']+)[\"'][^>]+rel=[\"']next[\"']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  }
];
