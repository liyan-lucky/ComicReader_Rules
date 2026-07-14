import { ComicSourceRule } from '../model/ComicModels';

/**
 * 自动生成文件：请不要手工修改。
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。
 * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
  {
    "id": "ac_qq_com_0eca0cdd_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_97e50615_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_9e2f918d_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_fedb1941_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_c0abed59_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_6e7a91b6_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_2d152744_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_284d1663_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_468271fb_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_8aff14ad_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_10e5a81b_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_62f22121_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_dae693c7_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_524cb275_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_a6f728b2_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_9878e06b_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_44b0bf12_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_94bd1141_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_cdb62358_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_05055a6a_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_1caf322d_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_d988eaaf_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_1cc6c341_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_3a01329c_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_2e22c2a8_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_67271c7a_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_76b9c223_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_8511cd63_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_5bdbdcc0_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_e68701a3_auto_public",
    "name": "#top_title# - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_f2bd643d_auto_public",
    "name": "我家大师兄脑子有坑 - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ac_qq_com_b31d868e_auto_public",
    "name": "不健全关系 - ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "baomh_com_0eb2bd0c_auto_public",
    "name": "我家大师兄脑子有坑_漫画最新章节免费阅读(下拉式) - 爆漫画 - baomh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://baomh.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://baomh.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "kuaikanmanhua_com_88b18c85_auto_public",
    "name": "516 多谢表扬|我家大师兄脑子有坑 | 官方在线漫画全集-快看漫画 - kuaikanmanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kuaikanmanhua.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://www.kuaikanmanhua.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "kuaikanmanhua_com_f0c9f9fd_auto_public",
    "name": "我家大师兄脑子有坑漫画｜官方在线漫画全集-快看漫画 - kuaikanmanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kuaikanmanhua.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://www.kuaikanmanhua.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "liumanhua_com_db2eee1b_auto_public",
    "name": "一人之下 - liumanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.liumanhua.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://www.liumanhua.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "liumanhua_com_9ed79f15_auto_public",
    "name": "19天 - liumanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.liumanhua.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://www.liumanhua.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_707f9393_auto_public",
    "name": "PK\u0003\u0004\u0000\u0000\u0000\u0000\u0000\u0000!\b!\u0002\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000f\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "http://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_42bc86d6_auto_public",
    "name": "PK\u0003\u0004\u0000\u0000\u0000\u0000\u0000\u0000!\b!\u0002\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000f\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "http://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_ac66828b_auto_public",
    "name": "PK\u0003\u0004\u0000\u0000\u0000\u0000\u0000\u0000!\b!\u0002\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000f\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "http://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_85aeddf1_auto_public",
    "name": "PK\u0003\u0004\u0000\u0000\u0000\u0000\u0000\u0000!\b!\u0002\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000f\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "http://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_372ad32c_auto_public",
    "name": "中国惊奇先生（神鬼七杀令） - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_47633b28_auto_public",
    "name": "19天 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_ed227c23_auto_public",
    "name": "男主，我们不是好朋友吗？ - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_36d1e8bd_auto_public",
    "name": "伯爵家的神秘侍女 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_3ea63097_auto_public",
    "name": "镇妖博物馆 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "m_ac_qq_com_a21a9033_auto_public",
    "name": "小世界其乐无穷 - m.ac.qq.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://m.ac.qq.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://m.ac.qq.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "mangapaw_com_df732f19_auto_public",
    "name": "19 Days - mangapaw.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mangapaw.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://mangapaw.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "manhuaba_com_7a6ca11d_auto_public",
    "name": "一人之下 - manhuaba.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuaba.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "manwang_net_c51972de_auto_public",
    "name": "19天 - manwang.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manwang.net",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://manwang.net/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "manwang_net_d8744d12_auto_public",
    "name": "不健全关系 - manwang.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manwang.net",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "theescapegame_com_77fe745b_auto_public",
    "name": "Houston CityCentre - theescapegame.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://theescapegame.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://theescapegame.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "who_int_d8033d6e_auto_public",
    "name": "Coronavirus disease (COVID-19) - who.int 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.who.int",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "https://www.who.int/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "wmanhua_com_91548c46_auto_public",
    "name": "一人之下 - wmanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://www.wmanhua.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
    "referer": "http://www.wmanhua.com/",
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
    ]
  },
  {
    "id": "ycymh_com_4db06e88_auto_public",
    "name": "斗罗大陆漫画免费在线阅读「下拉式观看」 - 异次元漫画 - ycymh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.ycymh.com",
    "searchUrl": "",
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
    "searchFilterByKeyword": false,
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
      "ac.qq.com",
      "m.ac.qq.com",
      "kuaikanmanhua.com",
      "baomh.com",
      "manhuaba.com",
      "liumanhua.com",
      "wmanhua.com",
      "ycymh.com",
      "who.int",
      "manwang.net",
      "mangapaw.com",
      "theescapegame.com"
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
    "id": "comick_public_search",
    "name": "Comick公开搜索源",
    "description": "公开网页可访问源：Comick.io 搜索、详情页、章节页解析。",
    "homepage": "https://comick.io",
    "searchUrl": "https://comick.io/search?q={keyword}",
    "searchMethod": "get",
    "searchItemRegex": "<a[^>]+href=[\"']([^\"']*\\/comic\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,320}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']*\\/chapter\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,220}?)<\\/a>",
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
    "referer": "https://comick.io/",
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
  },
  {
    "id": "mangafire_public_search",
    "name": "MangaFire公开搜索源",
    "description": "公开网页可访问源：MangaFire 搜索、详情页、章节页解析。",
    "homepage": "https://mangafire.to",
    "searchUrl": "https://mangafire.to/search?keyword={keyword}",
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
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"']([^\"']*\\/chapter\\/[^\"']+)[\"'][^>]*>([\\s\\S]{0,220}?)<\\/a>",
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
    "referer": "https://mangafire.to/",
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
  },
  {
    "id": "mangahere_public_search",
    "name": "MangaHere公开搜索源",
    "description": "公开网页可访问源：MangaHere 搜索、详情页、章节页解析。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "https://www.mangahere.cc/search?title={keyword}",
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
    "referer": "https://www.mangahere.cc/",
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
