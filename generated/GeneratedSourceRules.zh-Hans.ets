import { ComicSourceRule } from '../model/ComicModels';

/**
 * 自动生成文件：请不要手工修改。
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。
 * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
  {
    "id": "asuracomic_net_08c04f9e_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_52bb1c39_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_0896e026_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_4bca7983_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_3c487f03_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_dc7d15fb_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_240112bb_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_d70229b3_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_95bdbf4d_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_7fa777d5_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_49f83a7a_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_ad422b13_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_ffdfad33_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_30ea0e59_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_767f384a_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_89b7368a_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_11b448cf_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_99e18595_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_b1f4ced2_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_af996a9a_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_48b1530c_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_a4a5970f_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_a8be9e2f_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_c83d89fa_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_2c546d81_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_a4faaaa5_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_95aa1ed5_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_41e9b8e2_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_91e40a51_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_b5eb9ed9_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_8fd014c3_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_8529f430_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_dfeecb92_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_8557e5e3_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_51a1072e_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_ed09d746_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_77bfb324_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_37517ebb_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_81cc103b_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_cff4da2c_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_d4a7e665_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_9b7e2f4a_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_ac1085b1_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_2e3395d3_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_b8399828_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_1c6f26dd_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_d0c106f9_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_924da7cd_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_e203812d_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_0ffcccb0_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_a892f9ba_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_faae1e66_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_4bb1eea2_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_8d7e71cf_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_d76ba8b8_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_fd4203c8_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_2fbc9579_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_131a0501_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_560270cd_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_61822868_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_f277ee27_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_f78d9a06_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_6439320f_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_f81787ad_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_f53abd79_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_7820243a_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_b1bf78aa_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_ac779811_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_04738a5e_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_103107e0_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_d2d62890_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_b742f131_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_236f5342_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_78a31837_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_7e6d4838_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_ad5f984d_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_a399e6ec_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_779d8122_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_5e6c23f1_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_cbd658ee_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_978fb0f0_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_1e4409e2_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_8e125be7_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_18047a02_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_731b4ccb_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_94ea101e_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_cc92200b_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_bdc597b5_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_c9b63b23_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_8d009faa_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_304046d4_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_7f1e4939_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_33027fb3_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_5ee57909_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_3f4f399d_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_6641fe86_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_b046a565_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_f77d8138_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_97c41d1a_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "asuracomic_net_a73689be_auto_public",
    "name": "Read Free Manga, Manhwa & Manhua Online - Asura  - asuracomic.net 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://asuracomic.net",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://asuracomic.net/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_48545fcb_auto_public",
    "name": "Comick - A Place to Discuss and Discover the Bes - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_191ed9bd_auto_public",
    "name": "Comick - A Place to Discuss and Discover the Bes - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_59aa7298_auto_public",
    "name": "Roadmap and Changelog - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_032c4a43_auto_public",
    "name": "Credits - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_a6a8471c_auto_public",
    "name": "Comick Privacy Statement - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_3c8abd70_auto_public",
    "name": "Development activity - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_dc1ec8ed_auto_public",
    "name": "Comick - A Place to Discuss and Discover the Bes - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_1b045575_auto_public",
    "name": "Terms of Service - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_eb2eef7c_auto_public",
    "name": "(globalThis.TURBOPACK||(globalThis.TURBOPACK=[]) - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_034cba23_auto_public",
    "name": "{ \"name\": \"ComickDevFullscreen\", \"id\": \"comickde - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_dbf56b5d_auto_public",
    "name": "About Comick - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_9d39c0e0_auto_public",
    "name": "Frequently Asked Questions. - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_68f349c2_auto_public",
    "name": "(globalThis.TURBOPACK||(globalThis.TURBOPACK=[]) - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_f72e112c_auto_public",
    "name": "(globalThis.TURBOPACK||(globalThis.TURBOPACK=[]) - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "comick_io_47e38064_auto_public",
    "name": "Copyright Infringement & DMCA Policy - comick.io 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://comick.io",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://comick.io/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_7320c9d1_auto_public",
    "name": "逆天邪神 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_1bcd98bb_auto_public",
    "name": "大奉打更人 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_faeef865_auto_public",
    "name": "摊牌了，我全职业系统！ 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_ef0757ed_auto_public",
    "name": "开局吻上裂口女 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_26c8a0e5_auto_public",
    "name": "我欲封天 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_ab15a87b_auto_public",
    "name": "大逆之门 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_7953f9a8_auto_public",
    "name": "末日重生后我疯狂升级 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_b9859613_auto_public",
    "name": "末日物流中心 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_660c5624_auto_public",
    "name": "终将成为最强炼金术师？ 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_6a31c891_auto_public",
    "name": "全民副本：开局刷满好感度 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_feec9d37_auto_public",
    "name": "终末的女武神禁传 诸神的默示录 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_b64eecfd_auto_public",
    "name": "七城八宗 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_53b104eb_auto_public",
    "name": "秘密X秘密 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_05ea219b_auto_public",
    "name": "夏花学园：少女反抗军 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_5d1a640f_auto_public",
    "name": "奇兽异闻录 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_90a4140e_auto_public",
    "name": "我一直设想的H的转世生活并不是这个 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_ddf3f872_auto_public",
    "name": "13分15秒 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_eefa9049_auto_public",
    "name": "我是个球 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_8e5ebab7_auto_public",
    "name": "小智怪谈 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_f02a280b_auto_public",
    "name": "狐妖小红娘 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_9d25cba2_auto_public",
    "name": "炮灰闺女的生存方式 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_b730231e_auto_public",
    "name": "斗罗大陆 II 绝世唐门 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_5970dde4_auto_public",
    "name": "金融大佬的天才孙子 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_2a0e60c7_auto_public",
    "name": "狛纳·助合帮帮忙 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_ae998b4b_auto_public",
    "name": "战姬求生记-背负异世界命运的不正经异性交流 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_2c491a0a_auto_public",
    "name": "裙底下的秘密 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_b70d43cd_auto_public",
    "name": "阴沉的我被双子爱慕的缘由 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_c1a7bca3_auto_public",
    "name": "不灭的大师 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_ce09a2e2_auto_public",
    "name": "牙医姐姐总想撩我 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_7f889798_auto_public",
    "name": "在ai世界里寻找爱可以吗? 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_7f30bfb3_auto_public",
    "name": "今天吃什么? 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_fca5087a_auto_public",
    "name": "lonely planet 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_bad3be17_auto_public",
    "name": "亘渡 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_6565931b_auto_public",
    "name": "泳池趣事 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_720f39d4_auto_public",
    "name": "终结的炽天使 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_3e6cd58d_auto_public",
    "name": "黑8王 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_d016075d_auto_public",
    "name": "魔皇大管家 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_ea780fbe_auto_public",
    "name": "我！天命大反派（隔周双更） 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_e3706b67_auto_public",
    "name": "不良指导官 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_817f629a_auto_public",
    "name": "恋爱手游的男主都很危险 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_c62136a4_auto_public",
    "name": "剑尊归来 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_ac316896_auto_public",
    "name": "杀手巴德罗 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_e544a63b_auto_public",
    "name": "星剑大师 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_51c345ee_auto_public",
    "name": "绝对回归 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_c5583778_auto_public",
    "name": "无限魔法师 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_420a882f_auto_public",
    "name": "拳王归来 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_9b921d01_auto_public",
    "name": "今泉家似乎变成了辣妹的聚集地 短篇合集 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_376acbf6_auto_public",
    "name": "我让最想被拥抱的男人给威胁了 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_814f6cff_auto_public",
    "name": "乌龙棋友 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_f56f0012_auto_public",
    "name": "《当你沉睡时》 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_57d99a1a_auto_public",
    "name": "通奸法案 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_0662d1e7_auto_public",
    "name": "错把结婚当交易，却意外的甜蜜？ 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_da418ce5_auto_public",
    "name": "长的太像BOSS，结果世人真的信了 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "kaixinman_com_2fc517aa_auto_public",
    "name": "罗小黑战记·蓝溪镇 9.9 - kaixinman.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.kaixinman.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.kaixinman.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "m_mangahere_cc_eb32c565_auto_public",
    "name": "Home - MangaHere Mobile - m.mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "http://m.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "http://m.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangaeffect_com_606de49f_auto_public",
    "name": "GIRLS OF THE WILD’S - mangaeffect.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mangaeffect.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mangaeffect.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangaeffect_com_3fca5cb7_auto_public",
    "name": "LATEST MANGA UPDATES - mangaeffect.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mangaeffect.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mangaeffect.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangaeffect_com_a072acb1_auto_public",
    "name": "All Mangas - mangaeffect.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mangaeffect.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mangaeffect.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_a62060c9_auto_public",
    "name": "One Piece 1186 - Read One Piece Chapter 1186 Onl - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_98ead805_auto_public",
    "name": "Boku no Hero Academia 430.6 - Read Boku no Hero  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_b8e9a1d6_auto_public",
    "name": "Onepunch Man 234 - Read Onepunch Man Chapter 234 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_e4fd6784_auto_public",
    "name": "Ahiru no Sora 284.2 - Read Ahiru no Sora Chapter - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_20c4c948_auto_public",
    "name": "Kakkou no Iinazuke 302 - Read Kakkou no Iinazuke - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_e5b5f685_auto_public",
    "name": "Kakkou no Iinazuke 300 - Read Kakkou no Iinazuke - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_54013742_auto_public",
    "name": "Kakkou no Iinazuke 301 - Read Kakkou no Iinazuke - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_3b647cb1_auto_public",
    "name": "Tougen Anki 256 - Read Tougen Anki Chapter 256 O - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_e23b9b22_auto_public",
    "name": "Mokushiroku no Yonkishi 244 - Read Mokushiroku n - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_f2c98ae9_auto_public",
    "name": "Mokushiroku no Yonkishi 242 - Read Mokushiroku n - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_b8407d44_auto_public",
    "name": "Mokushiroku no Yonkishi 243 - Read Mokushiroku n - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_3df99216_auto_public",
    "name": "The Post Destruction World 242 - Read The Post D - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_26e46985_auto_public",
    "name": "The Post Destruction World 240 - Read The Post D - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_4a5aa0f5_auto_public",
    "name": "The Post Destruction World 241 - Read The Post D - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_e0bd4565_auto_public",
    "name": "Marriagetoxin 171 - Read Marriagetoxin Chapter 1 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_4b4db2ea_auto_public",
    "name": "Solo Leveling 202 - Read Solo Leveling Chapter 2 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_7dcb2d28_auto_public",
    "name": "Marriagetoxin 169 - Read Marriagetoxin Chapter 1 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_4864c5a5_auto_public",
    "name": "Marriagetoxin 170 - Read Marriagetoxin Chapter 1 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_cd17781e_auto_public",
    "name": "Tensei Shitara Slime Datta Ken 143 - Read Tensei - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_4697f20e_auto_public",
    "name": "Spy X Family 137 - Read Spy X Family Chapter 137 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_c548c076_auto_public",
    "name": "Kobayashi san Chi no Maid Dragon 186 - Read Koba - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_a4060d41_auto_public",
    "name": "Gachi Akuta 171 - Read Gachi Akuta Chapter 171 O - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_c5ca1fec_auto_public",
    "name": "Gachi Akuta 169 - Read Gachi Akuta Chapter 169 O - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_735c35de_auto_public",
    "name": "Gachi Akuta 170 - Read Gachi Akuta Chapter 170 O - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_a04083df_auto_public",
    "name": "The Lazy Prince Becomes a Genius 146 - Read The  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_da8e210e_auto_public",
    "name": "Kono Subarashii Sekai ni Shukufuku o 133 - Read  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_d8113b4d_auto_public",
    "name": "Vigilante Boku no Hero Academia Illegals 126 - R - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_cc83b736_auto_public",
    "name": "Mayonaka Heart Tune 123 - Read Mayonaka Heart Tu - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_21bdef60_auto_public",
    "name": "My Very Own Tower Strategy Guide 127 - Read My V - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_48be1473_auto_public",
    "name": "Mayonaka Heart Tune 121 - Read Mayonaka Heart Tu - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_7cfd7717_auto_public",
    "name": "Mayonaka Heart Tune 122 - Read Mayonaka Heart Tu - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_483d25a7_auto_public",
    "name": "My Very Own Tower Strategy Guide 125 - Read My V - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_0949bdf1_auto_public",
    "name": "My Very Own Tower Strategy Guide 126 - Read My V - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_0ae5179d_auto_public",
    "name": "Black Clover 392 - Read Black Clover Chapter 392 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_b4434b44_auto_public",
    "name": "Blue Lock 353 - Read Blue Lock Chapter 353 Onlin - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_d52b0813_auto_public",
    "name": "Blue Lock 351 - Read Blue Lock Chapter 351 Onlin - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_ec9bd0b7_auto_public",
    "name": "Blue Lock 352 - Read Blue Lock Chapter 352 Onlin - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_13ca0e8f_auto_public",
    "name": "Jujutsu Kaisen 271.5 - Read Jujutsu Kaisen Chapt - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_b46a8ba9_auto_public",
    "name": "Dungeon Reset 266 - Read Dungeon Reset Chapter 2 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_246df01a_auto_public",
    "name": "Jungle Juice 210 - Read Jungle Juice Chapter 210 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_25d644d1_auto_public",
    "name": "The Lord s Coins Aren t Decreasing 211 - Read Th - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_2ab13d55_auto_public",
    "name": "The Lord s Coins Aren t Decreasing 209 - Read Th - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_04e14d4e_auto_public",
    "name": "The Lord s Coins Aren t Decreasing 210 - Read Th - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_9fb6f4bb_auto_public",
    "name": "Max Level Returner 200 - Read Max Level Returner - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_bd0af6da_auto_public",
    "name": "Make the Exorcist Fall in Love 120 - Read Make t - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_202e197b_auto_public",
    "name": "Tate no Yuusha no Nariagari 126 - Read Tate no Y - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_62712ec2_auto_public",
    "name": "Make the Exorcist Fall in Love 118 - Read Make t - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_be410df8_auto_public",
    "name": "Make the Exorcist Fall in Love 119 - Read Make t - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_d6610c7b_auto_public",
    "name": "Gosam Mussang 120 - Read Gosam Mussang Chapter 1 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_3ac5f971_auto_public",
    "name": "Rettou Hito no Maken Tsukai Sukiruboudo o Kushi  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_c5fd1695_auto_public",
    "name": "No Longer A Heroine 112 - Read No Longer A Heroi - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_ca373bba_auto_public",
    "name": "LV999 no Murabito 98 - Read LV999 no Murabito Ch - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_fade17a1_auto_public",
    "name": "Overlord 78 - Read Overlord Chapter 78 Online -  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_5404f5b6_auto_public",
    "name": "Regressing As The Reincarnated Bastard Of The Sw - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_5662111c_auto_public",
    "name": "Kanojo Okarishimasu 431 - Read Kanojo Okarishima - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_673faf90_auto_public",
    "name": "Kanojo Okarishimasu 429 - Read Kanojo Okarishima - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_691895ce_auto_public",
    "name": "Kanojo Okarishimasu 430 - Read Kanojo Okarishima - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_4cd253bf_auto_public",
    "name": "Mushoku Tensei Isekai Ittara Honki Dasu 119 - Re - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_089e04c7_auto_public",
    "name": "Goblin Slayer 110 - Read Goblin Slayer Chapter 1 - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_51c16ae0_auto_public",
    "name": "One Piece Manga - Read One Piece Online at Manga - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_6cb24210_auto_public",
    "name": "Boku no Hero Academia Manga - Read Boku no Hero  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_da023bef_auto_public",
    "name": "Onepunch Man Manga - Read Onepunch Man Online at - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_f876141b_auto_public",
    "name": "Ao Ashi Manga - Read Ao Ashi Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_0b08d305_auto_public",
    "name": "Black Clover Manga - Read Black Clover Online at - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_feee76c2_auto_public",
    "name": "Ahiru no Sora Manga - Read Ahiru no Sora Online  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_2e7b99c9_auto_public",
    "name": "Blue Lock Manga - Read Blue Lock Online at Manga - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_5886873e_auto_public",
    "name": "Kakkou no Iinazuke Manga - Read Kakkou no Iinazu - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_acd87dab_auto_public",
    "name": "Jujutsu Kaisen Manga - Read Jujutsu Kaisen Onlin - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_c7ae8bbb_auto_public",
    "name": "Tougen Anki Manga - Read Tougen Anki Online at M - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_3fafaf4a_auto_public",
    "name": "Dungeon Reset Manga - Read Dungeon Reset Online  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_efe9c6d6_auto_public",
    "name": "Mokushiroku no Yonkishi Manga - Read Mokushiroku - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_924849e0_auto_public",
    "name": "The Post Destruction World Manga - Read The Post - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_7841fa99_auto_public",
    "name": "Jungle Juice Manga - Read Jungle Juice Online at - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_8038665d_auto_public",
    "name": "Solo Leveling Manga - Read Solo Leveling Online  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_fb30aef9_auto_public",
    "name": "The Lord s Coins Aren t Decreasing Manga - Read  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_2a89f3a7_auto_public",
    "name": "Marriagetoxin Manga - Read Marriagetoxin Online  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_63236649_auto_public",
    "name": "Max Level Returner Manga - Read Max Level Return - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_5af3a44d_auto_public",
    "name": "Kobayashi san Chi no Maid Dragon Manga - Read Ko - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_658d50e9_auto_public",
    "name": "Tensei Shitara Slime Datta Ken Manga - Read Tens - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_3dc278b8_auto_public",
    "name": "Spy X Family Manga - Read Spy X Family Online at - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_28ced865_auto_public",
    "name": "Yakusoku no Neverland Manga - Read Yakusoku no N - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_3563259b_auto_public",
    "name": "Gachi Akuta Manga - Read Gachi Akuta Online at M - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_79e9116c_auto_public",
    "name": "Manga Here：Ranking - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_cd2af458_auto_public",
    "name": "Make the Exorcist Fall in Love Manga - Read Make - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_8b90cea5_auto_public",
    "name": "Tate no Yuusha no Nariagari Manga - Read Tate no - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_ae4a10ff_auto_public",
    "name": "The Lazy Prince Becomes a Genius Manga - Read Th - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_d1fade79_auto_public",
    "name": "Vigilante Boku no Hero Academia Illegals Manga - - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_69834671_auto_public",
    "name": "Kono Subarashii Sekai ni Shukufuku o Manga - Rea - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_6fe5aaee_auto_public",
    "name": "My Very Own Tower Strategy Guide Manga - Read My - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_9b26b25b_auto_public",
    "name": "Mayonaka Heart Tune Manga - Read Mayonaka Heart  - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_39b2b0da_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_8294a40f_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_683601bf_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_6e71f6fc_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_1f62dd96_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_0cdd40a1_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_5352bd8d_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_420773f6_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_19abcff9_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mangahere_cc_5c1a7b92_auto_public",
    "name": "Manga List, Read Manga Online at MangaHere - mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_e8e2b05a_auto_public",
    "name": "手机看漫画_飒漫乐画_妃夕妍雪 - 看漫画手机版首页 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_43481a04_auto_public",
    "name": "内地漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_f496d871_auto_public",
    "name": "魔幻漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_62cf587d_auto_public",
    "name": "其它漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_e9d5dcb9_auto_public",
    "name": "热血漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_b8eced99_auto_public",
    "name": "漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_36a4fc94_auto_public",
    "name": "日本漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_2832cad3_auto_public",
    "name": "欧美漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_b79096de_auto_public",
    "name": "港台漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_60b27cdd_auto_public",
    "name": "韩国漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuagui_com_a1bab396_auto_public",
    "name": "冒险漫画_漫画大全 - 看漫画手机版 - manhuagui.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.manhuagui.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.manhuagui.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_01ced57e_auto_public",
    "name": "Chapter 110 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_d91ca48b_auto_public",
    "name": "Chapter 521 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_04d8a9e8_auto_public",
    "name": "Chapter 111 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_95db1885_auto_public",
    "name": "Chapter 275 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_5acb52b9_auto_public",
    "name": "Chapter 276 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_bf08824d_auto_public",
    "name": "Chapter 584 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_e7ad4d33_auto_public",
    "name": "Chapter 1038 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_1a6025c3_auto_public",
    "name": "Chapter 76 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_74560029_auto_public",
    "name": "Chapter 337 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a121e3a7_auto_public",
    "name": "Chapter 830 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_b2afa731_auto_public",
    "name": "Chapter 583 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_87baaa25_auto_public",
    "name": "Chapter 722 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_486b1080_auto_public",
    "name": "Chapter 520 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_3761b90d_auto_public",
    "name": "Chapter 409 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_411f5d63_auto_public",
    "name": "Chapter 3861 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_f0cee492_auto_public",
    "name": "Chapter 338 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_ce78b407_auto_public",
    "name": "Chapter 721 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_f5aecec5_auto_public",
    "name": "Chapter 522.1 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_dbd8904d_auto_public",
    "name": "Chapter 341 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_cd310db7_auto_public",
    "name": "Chapter 342 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_6bae5580_auto_public",
    "name": "Chapter 215 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_63f9acbc_auto_public",
    "name": "Chapter 521.6 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_8e5900ce_auto_public",
    "name": "Chapter 348 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_fab36431_auto_public",
    "name": "Chapter 349 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a527a6ec_auto_public",
    "name": "Chapter 478 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_884ea770_auto_public",
    "name": "Chapter 878 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_6cb0bd42_auto_public",
    "name": "Chapter 652 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_728d31e5_auto_public",
    "name": "Chapter 652.5 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a2c8ffd0_auto_public",
    "name": "Chapter 877 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_613279f4_auto_public",
    "name": "Chapter 380 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_82c441dd_auto_public",
    "name": "Chapter 381 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_10c93ffc_auto_public",
    "name": "Chapter 173 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_8c83fe18_auto_public",
    "name": "Chapter 199 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_8b323463_auto_public",
    "name": "Chapter 198 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_27169928_auto_public",
    "name": "Chapter 508 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a941ce35_auto_public",
    "name": "Chapter 174 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_4c5af98f_auto_public",
    "name": "Chapter 509 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_6af1c1df_auto_public",
    "name": "Monster Pet Evolution - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_ff30f172_auto_public",
    "name": "Magic Emperor - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_20a89475_auto_public",
    "name": "I’m The Great Immortal - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_f60c6231_auto_public",
    "name": "Peerless Battle Spirit - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_d47ca48a_auto_public",
    "name": "Soul Land IV - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_9a7d6841_auto_public",
    "name": "The Great Ruler - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_f56390c0_auto_public",
    "name": "Yuan Zun - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_30589375_auto_public",
    "name": "Return of Immortal Emperor - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_b9c554c9_auto_public",
    "name": "Global Martial Arts - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_006bd819_auto_public",
    "name": "Banished Disciple’s Counterattack - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_2cdfba9c_auto_public",
    "name": "My Disciples Are All Big Villains - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_ea9f1fa4_auto_public",
    "name": "Soul Land V - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_328f9083_auto_public",
    "name": "Dragon Master - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_063e20ab_auto_public",
    "name": "Spare Me, Great Lord! - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_435b43eb_auto_public",
    "name": "Monster Pet Evolution - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_d3ee3eb3_auto_public",
    "name": "Battle Through the Heavens - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_bd8ff5bc_auto_public",
    "name": "I Am the Fated Villain - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_e3ecb4dc_auto_public",
    "name": "Chaotic Sword God - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_1e32c8c7_auto_public",
    "name": "Master: This Villainous Disciple Is Not The Holy - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_da324ce1_auto_public",
    "name": "Necromancer, the Ultimate Scourge! - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_3fa9bba2_auto_public",
    "name": "Home - ManhuaPlus - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a0e48dca_auto_public",
    "name": "Home - ManhuaPlus - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a7dd4b26_auto_public",
    "name": "Home - ManhuaPlus - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_73b2a4ab_auto_public",
    "name": "Home - ManhuaPlus - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a98b2c79_auto_public",
    "name": "Home - ManhuaPlus - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_2c288404_auto_public",
    "name": "Home - ManhuaPlus - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_0246fffb_auto_public",
    "name": "Mystery - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_c8697215_auto_public",
    "name": "Harem - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_ac2fe02d_auto_public",
    "name": "Live action - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a6022db9_auto_public",
    "name": "Mature - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_bd98e809_auto_public",
    "name": "School Life - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_cd89da07_auto_public",
    "name": "Fantasy - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_0aaa2f14_auto_public",
    "name": "Myriad Realms Gatekeeper - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a89d5911_auto_public",
    "name": "Manhua - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_e7922e05_auto_public",
    "name": "Martial Arts - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_87f5aeb7_auto_public",
    "name": "Adventure - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_b80e018d_auto_public",
    "name": "Ecchi - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_b2aedbd7_auto_public",
    "name": "Manhwa - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_e76d4b0d_auto_public",
    "name": "Chapter 32-193 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_12e4b3f9_auto_public",
    "name": "Psychological - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_26730568_auto_public",
    "name": "Chapter 622.5 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_56cfb9f7_auto_public",
    "name": "Anime - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_eebf176d_auto_public",
    "name": "Doujinshi - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_d3eb4f99_auto_public",
    "name": "Gender Bender - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_c659c67d_auto_public",
    "name": "Historical - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_4acf1235_auto_public",
    "name": "Horror - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_771174ce_auto_public",
    "name": "Josei - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_f9620735_auto_public",
    "name": "Manga - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a3e20b93_auto_public",
    "name": "Mecha - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_a4b3f9fa_auto_public",
    "name": "One shot - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_fa09c228_auto_public",
    "name": "Sci-fi - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_c5d69c1a_auto_public",
    "name": "Seinen - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_b9555acf_auto_public",
    "name": "Smut - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_1aa3d083_auto_public",
    "name": "Soft Yaoi - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_ed7a1e51_auto_public",
    "name": "Sports - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_ca989993_auto_public",
    "name": "Yaoi - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_37cc8a5c_auto_public",
    "name": "Chapter 623 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_d8350a2d_auto_public",
    "name": "From Goblin to Goblin God - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_4570b211_auto_public",
    "name": "You searched for {search_term_string} - ManhuaPl - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_6df89d51_auto_public",
    "name": "Chapter 1-61 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_ab7c076e_auto_public",
    "name": "Chapter 479 - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "manhuaplus_com_0a7cecdf_auto_public",
    "name": "/*! This file is auto-generated */ // Source: wp - manhuaplus.com 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.com",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.com/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_413093bf_auto_public",
    "name": "The Ruler Of Darkness - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_25c558ae_auto_public",
    "name": "The Ruler Of Darkness - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_29e1e3c3_auto_public",
    "name": "The Ruined World Was Mistaken for a Game - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_b24bfb68_auto_public",
    "name": "The Ruined World Was Mistaken for a Game - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_d8fa5780_auto_public",
    "name": "Yasagure Shoukansha wa Ugokanai - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_e4126444_auto_public",
    "name": "Yasagure Shoukansha wa Ugokanai - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_36a35382_auto_public",
    "name": "After breaking off the relationship, all my summ - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_ad1a06ca_auto_public",
    "name": "I Got the Weakest Class, But I Rule the Calamity - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_8dc9568f_auto_public",
    "name": "Two Worlds: I Have an Ancient Martial Arts World - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_27cdabaa_auto_public",
    "name": "The Painter Who Paints Dungeons - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_6d2d9af4_auto_public",
    "name": "After breaking off the relationship, all my summ - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_c8ef5d56_auto_public",
    "name": "I Got the Weakest Class, But I Rule the Calamity - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_5cc6daee_auto_public",
    "name": "Two Worlds: I Have an Ancient Martial Arts World - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_758619bf_auto_public",
    "name": "The Painter Who Paints Dungeons - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_0a434435_auto_public",
    "name": "Clearing Dungeons Faster Than Anyone With the Bu - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_7b7711b0_auto_public",
    "name": "Reincarnation Isn’t Enough to Fill the Hole in M - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_9d1bc98d_auto_public",
    "name": "Everyone: Summoner of the Undead, I alone am a n - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_2d155f89_auto_public",
    "name": "Isekai Parlor ~The Story of a Former Salaryman W - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_3edc4f46_auto_public",
    "name": "Exorcist Reincarnation ～What’s a Fox-Faced, Kans - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_c279e8a7_auto_public",
    "name": "Clearing Dungeons Faster Than Anyone With the Bu - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_4117656b_auto_public",
    "name": "Reincarnation Isn’t Enough to Fill the Hole in M - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_2fb6b4b7_auto_public",
    "name": "Everyone: Summoner of the Undead, I alone am a n - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_b62eba23_auto_public",
    "name": "Isekai Parlor ~The Story of a Former Salaryman W - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "mgeko_cc_32977d9a_auto_public",
    "name": "Exorcist Reincarnation ～What’s a Fox-Faced, Kans - mgeko.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://www.mgeko.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://www.mgeko.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
    "id": "static_mangahere_cc_0594ff38_auto_public",
    "name": "/*! jQuery v1.8.3 jquery.com | jquery.org/licens - static.mangahere.cc 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://static.mangahere.cc",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://static.mangahere.cc/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
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
  }
];
