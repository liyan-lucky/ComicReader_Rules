import { ComicSourceRule } from '../model/ComicModels';

/**
 * 自动生成文件：请不要手工修改。
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。
 * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "architecturaldigest_com_83b8e99c_auto_public",
    "name": "Eiffel Tower: Everything You Need to Know - architecturaldigest.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.architecturaldigest.com",
    "searchUrl": "https://architecturaldigest.com/search?q={keyword}",
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
    "referer": "https://www.architecturaldigest.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "baomh_com_e5920c52_auto_public",
    "name": "中国惊奇先生_漫画最新章节免费阅读(下拉式) - 爆漫画 - baomh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://baomh.com",
    "searchUrl": "https://baomh.com/search?q={keyword}",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "baozimh_com_2b76722b_auto_public",
    "name": "包子漫畫 - baozimh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.baozimh.com",
    "searchUrl": "https://baozimh.com/search?q={keyword}",
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
    "referer": "https://www.baozimh.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "cn_baozimh_com_edd997d6_auto_public",
    "name": "包子漫画 - cn.baozimh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://cn.baozimh.com",
    "searchUrl": "https://cn.baozimh.com/search?q={keyword}",
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
    "referer": "https://cn.baozimh.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "comics_qoo_app_com_7e0b4065_auto_public",
    "name": "妖神记 1 - QooApp Comics - comics.qoo-app.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comics.qoo-app.com",
    "searchUrl": "https://comics.qoo-app.com/search?q={keyword}",
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
    "referer": "https://comics.qoo-app.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "dm5_com_4a0e5082_auto_public",
    "name": "王者天下漫画_882连载中_在线漫画_动漫屋 - dm5.com 远程公开源",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "dongmanmanhua_cn_6d6f0650_auto_public",
    "name": "非人哉 - dongmanmanhua.cn 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://dongmanmanhua.cn",
    "searchUrl": "https://dongmanmanhua.cn/search?q={keyword}",
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
    "referer": "https://dongmanmanhua.cn/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "doubaomanhua_com_082aa95d_auto_public",
    "name": "我的徒弟都是大反派 - 我的徒弟都是大反派漫画免费阅读 - 豆包漫画 - doubaomanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.doubaomanhua.com",
    "searchUrl": "https://doubaomanhua.com/search?q={keyword}",
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
    "referer": "https://www.doubaomanhua.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "guazimanhua_com_d43d5eca_auto_public",
    "name": "恰似寒光遇骄阳 - guazimanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://guazimanhua.com",
    "searchUrl": "https://guazimanhua.com/search?q={keyword}",
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
    "referer": "https://guazimanhua.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "jfdb_jp_494e898c_auto_public",
    "name": "Search All - jfdb.jp 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://jfdb.jp",
    "searchUrl": "https://jfdb.jp/search?q={keyword}",
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
    "referer": "https://jfdb.jp/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "kalamanhua_com_96cc5be0_auto_public",
    "name": "一拳超人 - kalamanhua.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kalamanhua.com",
    "searchUrl": "https://kalamanhua.com/search?q={keyword}",
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
    "referer": "https://www.kalamanhua.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "m_manhuagui_com_ddc6f03b_auto_public",
    "name": "ONE PIECE航海王 - m.manhuagui.com 远程公开源",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "manhuaren_com_27f09a74_auto_public",
    "name": "被迫成为反派赘婿漫画_660连载中_在线漫画_漫画人 - manhuaren.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaren.com",
    "searchUrl": "https://manhuaren.com/search?keyword={keyword}",
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
    "referer": "https://manhuaren.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "manhuaren_net_9ec7370d_auto_public",
    "name": "海贼王漫画_1188连载中_One Piece 航海王 海盗路飞 OnePiece在线漫画_漫画 - manhuaren.net 远程公开源",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "manhwatop_com_2fee891c_auto_public",
    "name": "The Expensive Ex-Wife Of A Wealthy Family - Chap - manhwatop.com 远程公开源",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "manwamh5_com_a44eefcc_auto_public",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "mh250_com_4eae10ab_auto_public",
    "name": "妖神记 - mh250.com 远程公开源",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "nicemh_com_b8c7e708_auto_public",
    "name": "王者天下 | 王者天下漫画全集免费 - 奈斯漫画 - nicemh.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.nicemh.com",
    "searchUrl": "https://nicemh.com/search?q={keyword}",
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
    "referer": "https://www.nicemh.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "shonenjumpplus_com_b301ff16_auto_public",
    "name": "少年ジャンプ＋ - shonenjumpplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://shonenjumpplus.com",
    "searchUrl": "https://shonenjumpplus.com/search?q={keyword}",
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
    "referer": "https://shonenjumpplus.com/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "video_friday_tw_13808554_auto_public",
    "name": "一拳超人（第三季） - video.friday.tw 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://video.friday.tw",
    "searchUrl": "https://video.friday.tw/search?q={keyword}",
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
    "referer": "https://video.friday.tw/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
    ]
  },
  {
    "id": "xmanhua_net_95316996_auto_public",
    "name": "一拳超人漫畫_重置版280話已更新_一拳超人漫畫在線閱讀 - xmanhua.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.xmanhua.net",
    "searchUrl": "https://xmanhua.net/search?q={keyword}",
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
    "referer": "https://www.xmanhua.net/",
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
      "dongmanmanhua.cn",
      "guazimanhua.com",
      "manhuaren.com",
      "baomh.com",
      "baozimh.com",
      "doubaomanhua.com",
      "manwamh5.com",
      "xmanhua.net",
      "dm5.com",
      "video.friday.tw",
      "m.manhuagui.com",
      "kalamanhua.com",
      "ac.qq.com",
      "cn.baozimh.com",
      "manhuaren.net",
      "tw.manhuagui.com",
      "nicemh.com",
      "mh250.com",
      "comics.qoo-app.com",
      "qimanwu.app",
      "manhwatop.com",
      "comikey.com",
      "hitomi.la",
      "shonenjumpplus.com",
      "jfdb.jp",
      "architecturaldigest.com"
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
