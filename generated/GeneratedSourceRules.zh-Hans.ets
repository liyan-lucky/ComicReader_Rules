import { ComicSourceRule } from '../model/ComicModels';

/**
 * 自动生成文件：请不要手工修改。
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。
 * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
  {
    "id": "ac_qq_com_3f196a3c_auto_public",
    "name": "地球尽头 - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "https://ac.qq.com/search?q={keyword}",
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
    "referer": "https://ac.qq.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "ac_qq_com_fff5cff6_auto_public",
    "name": "重生水浒世界之最强武大郎 - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "https://ac.qq.com/search?q={keyword}",
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
    "referer": "https://ac.qq.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "ac_qq_com_0d55ef61_auto_public",
    "name": "日月同错 - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "https://ac.qq.com/search?q={keyword}",
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
    "referer": "https://ac.qq.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "asurascansmanhua_com_28259488_auto_public",
    "name": "Kanojo Okarishimasu - asurascansmanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asurascansmanhua.com",
    "searchUrl": "https://asurascansmanhua.com/search?q={keyword}",
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
    "referer": "https://asurascansmanhua.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "book_sfacg_com_783fc0e8_auto_public",
    "name": "满级穿越的我为什么是牧师小姐啊目录列表 - 小说频道 - SF轻小说 - book.sfacg.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://book.sfacg.com",
    "searchUrl": "https://book.sfacg.com/search?q={keyword}",
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
    "referer": "https://book.sfacg.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "book_sfacg_com_826e8268_auto_public",
    "name": "满级穿越的我为什么是牧师小姐啊 - 小说全文阅读 - - 清酒浅辄 - SF轻小说 - book.sfacg.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://book.sfacg.com",
    "searchUrl": "https://book.sfacg.com/search?q={keyword}",
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
    "referer": "https://book.sfacg.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "book_zhulang_com_96e4215a_auto_public",
    "name": "逐浪小说 - book.zhulang.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://book.zhulang.com",
    "searchUrl": "https://book.zhulang.com/search?q={keyword}",
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
    "referer": "https://book.zhulang.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "booklib_org_06c2ea45_auto_public",
    "name": "BookLib - booklib.org 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://booklib.org",
    "searchUrl": "https://booklib.org/search?q={keyword}",
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
    "referer": "https://booklib.org/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "cn_bzmanga_com_e4d5aecf_auto_public",
    "name": "包子漫画 - cn.bzmanga.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://cn.bzmanga.com",
    "searchUrl": "https://cn.bzmanga.com/search?q={keyword}",
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
    "referer": "https://cn.bzmanga.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "comic_con_org_e47991b3_auto_public",
    "name": "Past Exhibits - comic-con.org 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.comic-con.org",
    "searchUrl": "https://comic-con.org/search?q={keyword}",
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
    "referer": "https://www.comic-con.org/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "comikey_com_24feedfd_auto_public",
    "name": "Kengan Omega (Manga) | Read Free Simulpub Chapte - comikey.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comikey.com",
    "searchUrl": "https://comikey.com/search?q={keyword}",
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
    "referer": "https://comikey.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "dm5_cn_27a0ac49_auto_public",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "dm5_com_11f9bf8a_auto_public",
    "name": "一击男ONE原作版漫画_160连载中_在线漫画_动漫屋 - dm5.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.dm5.com",
    "searchUrl": "https://dm5.com/search?keyword={keyword}",
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
    "referer": "https://www.dm5.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "dm5_com_4a0e5082_auto_public",
    "name": "王者天下漫画_883连载中_在线漫画_动漫屋 - dm5.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.dm5.com",
    "searchUrl": "https://dm5.com/search?keyword={keyword}",
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
    "referer": "https://www.dm5.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "hokkaidohotel_co_jp_f9ae1d0d_auto_public",
    "name": "イベント情報 - hokkaidohotel.co.jp 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.hokkaidohotel.co.jp",
    "searchUrl": "https://hokkaidohotel.co.jp/search?q={keyword}",
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
    "referer": "https://www.hokkaidohotel.co.jp/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "labimanhua_com_09259e6f_auto_public",
    "name": "最近更新 - 蜡笔漫画 - labimanhua.com 远程公开源",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "labimanhua_com_a7e70fe8_auto_public",
    "name": "蜡笔漫画 - 用漫画点亮每一天 - labimanhua.com 远程公开源",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "m_manhuagui_com_fdaab671_auto_public",
    "name": "王者天下 - m.manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.manhuagui.com",
    "searchUrl": "https://m.manhuagui.com/search?keyword={keyword}",
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
    "referer": "https://m.manhuagui.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "m_manhuagui_com_551eef27_auto_public",
    "name": "无职转生 - m.manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.manhuagui.com",
    "searchUrl": "https://m.manhuagui.com/search?keyword={keyword}",
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
    "referer": "https://m.manhuagui.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "m_manhuagui_com_c05160c9_auto_public",
    "name": "我是蜘蛛，怎么了？ 蜘蛛子四姐妹的日常 - m.manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.manhuagui.com",
    "searchUrl": "https://m.manhuagui.com/search?keyword={keyword}",
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
    "referer": "https://m.manhuagui.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "manga_bilibili_com_c27befbc_auto_public",
    "name": "《满级穿越的我为什么是牧师小姐啊》_在线满级奶妈在线_bilibili漫画 - manga.bilibili.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manga.bilibili.com",
    "searchUrl": "https://manga.bilibili.com/search?keyword={keyword}",
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
    "referer": "https://manga.bilibili.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "mangabz_com_64abbd11_auto_public",
    "name": "電鋸人漫畫_205已更新_電鋸人漫畫在線閱讀 - mangabz.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangabz.com",
    "searchUrl": "https://mangabz.com/search?q={keyword}",
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
    "referer": "https://www.mangabz.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "mangahub_io_97f0ae88_auto_public",
    "name": "Can Contained Objects Also Act as Saviors? New 收 - mangahub.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mangahub.io",
    "searchUrl": "https://mangahub.io/search?q={keyword}",
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
    "referer": "https://mangahub.io/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "mangahub_io_ab880547_auto_public",
    "name": "Reborn in the Water Margin World as the Stronges - mangahub.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mangahub.io",
    "searchUrl": "https://mangahub.io/search?q={keyword}",
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
    "referer": "https://mangahub.io/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "manhuaba_com_c32947fc_auto_public",
    "name": "地球尽头 - manhuaba.com 远程公开源",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "manhuaren_net_9ec7370d_auto_public",
    "name": "海贼王漫画_1189连载中_One Piece 航海王 海盗路飞 OnePiece在线漫画_漫画 - manhuaren.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuaren.net",
    "searchUrl": "https://manhuaren.net/search?keyword={keyword}",
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
    "referer": "https://www.manhuaren.net/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "manhwatop_com_c1500f2e_auto_public",
    "name": "Guomin Laogong Dai Huijia ( Bringing the Nation' - manhwatop.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhwatop.com",
    "searchUrl": "https://manhwatop.com/search?q={keyword}",
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
    "referer": "https://manhwatop.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "manwamh5_com_bed75393_auto_public",
    "name": "漫蛙漫画 - manwamh5.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manwamh5.com",
    "searchUrl": "https://manwamh5.com/search?q={keyword}",
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
    "referer": "https://www.manwamh5.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "mh250_com_bd25878e_auto_public",
    "name": "一人之下 - mh250.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mh250.com",
    "searchUrl": "https://mh250.com/search?q={keyword}",
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
    "referer": "https://www.mh250.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "pipimanhua_com_9980a851_auto_public",
    "name": "绝世武神 - pipimanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.pipimanhua.com",
    "searchUrl": "https://pipimanhua.com/search?q={keyword}",
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
    "referer": "https://www.pipimanhua.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "publications_coventry_ac_uk_a5c5a08b_auto_public",
    "name": "PDF.js viewer - publications.coventry.ac.uk 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://publications.coventry.ac.uk",
    "searchUrl": "https://publications.coventry.ac.uk/search?q={keyword}",
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
    "referer": "https://publications.coventry.ac.uk/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "qimanwu_app_9046ef6b_auto_public",
    "name": "全职法师_漫画最新章节免费阅读下拉式 - 奇漫屋 - qimanwu.app 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.qimanwu.app",
    "searchUrl": "https://qimanwu.app/search?q={keyword}",
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
    "referer": "https://www.qimanwu.app/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "qimanwu_app_ae8ac285_auto_public",
    "name": "斗破苍穹_漫画最新章节免费阅读下拉式 - 奇漫屋 - qimanwu.app 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.qimanwu.app",
    "searchUrl": "https://qimanwu.app/search?q={keyword}",
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
    "referer": "https://www.qimanwu.app/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "ravenscans_net_df1dd878_auto_public",
    "name": "Can Contained Objects Also Act as Saviors? - ravenscans.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ravenscans.net",
    "searchUrl": "https://ravenscans.net/search?q={keyword}",
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
    "referer": "https://ravenscans.net/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "southwest_com_bfaf6b39_auto_public",
    "name": "Book a Flight | Southwest Airlines - southwest.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.southwest.com",
    "searchUrl": "https://southwest.com/search?q={keyword}",
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
    "referer": "https://www.southwest.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "tw_baozimh_com_c8ef91bc_auto_public",
    "name": "包子漫畫 - tw.baozimh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://tw.baozimh.com",
    "searchUrl": "https://tw.baozimh.com/search?q={keyword}",
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
    "referer": "https://tw.baozimh.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "tw_manhuagui_com_9f7efbdc_auto_public",
    "name": "王者天下 - tw.manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://tw.manhuagui.com",
    "searchUrl": "https://tw.manhuagui.com/search?keyword={keyword}",
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
    "referer": "https://tw.manhuagui.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "tw_manhuagui_com_0677d857_auto_public",
    "name": "尾田榮一郎 - tw.manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://tw.manhuagui.com",
    "searchUrl": "https://tw.manhuagui.com/search?keyword={keyword}",
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
    "referer": "https://tw.manhuagui.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "wyshu_com_0f9c0702_auto_public",
    "name": "斗罗大陆 - wyshu.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.wyshu.com",
    "searchUrl": "https://www.wyshu.com/search?keyword={keyword}",
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
    "referer": "https://www.wyshu.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "xmanhua_com_705f20ef_auto_public",
    "name": "一拳超人漫畫_單行本37卷已更新_一拳超人漫畫在線閱讀 - xmanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://xmanhua.com",
    "searchUrl": "https://xmanhua.com/search?q={keyword}",
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
    "referer": "https://xmanhua.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
    ]
  },
  {
    "id": "yxshufang_com_4e550c33_auto_public",
    "name": "全职法师 - yxshufang.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.yxshufang.com",
    "searchUrl": "https://yxshufang.com/search?q={keyword}",
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
    "referer": "https://www.yxshufang.com/",
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
      "mh250.com",
      "manwamh5.com",
      "tw.baozimh.com",
      "ac.qq.com",
      "manhuaba.com",
      "mangahub.io",
      "manhuaren.net",
      "tw.manhuagui.com",
      "m.manhuagui.com",
      "dm5.com",
      "dm5.cn",
      "xmanhua.com",
      "cn.bzmanga.com",
      "publications.coventry.ac.uk",
      "qimanwu.app",
      "wyshu.com",
      "yxshufang.com",
      "mgeko.cc",
      "southwest.com",
      "comikey.com",
      "mangabz.com",
      "manhwatop.com",
      "book.sfacg.com",
      "manga.bilibili.com",
      "pipimanhua.com",
      "book.zhulang.com",
      "booklib.org",
      "ravenscans.net",
      "asurascansmanhua.com",
      "comic-con.org",
      "hokkaidohotel.co.jp"
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
