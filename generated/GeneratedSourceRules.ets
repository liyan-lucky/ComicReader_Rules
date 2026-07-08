import { ComicSourceRule } from '../model/ComicModels';

/**
 * 自动生成文件：请不要手工修改。
 * 生成逻辑：搜索公开网页 → 审计详情/章节/图片 → 清洗非漫画源 → 生成 ComicSourceRule。
 * 边界：只处理公开漫画页面，不登录、不付费、不绕验证码/反爬。
 */
export const GENERATED_SOURCES: ComicSourceRule[] = [
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
    "id": "kaixinman_com_275cbdfe_auto_public",
    "name": "恶魔的愿望 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_399fc5d1_auto_public",
    "name": "Hagu × Hagu 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_e2fa117b_auto_public",
    "name": "犬饲先生藏不住爱 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_b16f190f_auto_public",
    "name": "租赁女友 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_7af2a926_auto_public",
    "name": "意志的蜈蚣 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_dd8d797b_auto_public",
    "name": "童贞夺取淫乱姐妹们 ~好色家族里的后宫生活 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_8eb3cc82_auto_public",
    "name": "家庭教师太XX，已经学不进去了~ 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_83b6b6b0_auto_public",
    "name": "兄妹间的相爱相杀~三匹甜蜜的小狼~ 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_0d1a1e7e_auto_public",
    "name": "让丈夫站在我这边的方法 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_33d36e77_auto_public",
    "name": "绝色道侣都说吾皇体质无敌 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_226613f8_auto_public",
    "name": "星甲魂将传 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_06f30dcf_auto_public",
    "name": "一日外出录班长 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_d6d8eeaa_auto_public",
    "name": "万界守门人 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_fb2a8e8e_auto_public",
    "name": "某天成为公主 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_8da1a1c9_auto_public",
    "name": "称霸末世 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_eb01e550_auto_public",
    "name": "哥哥家今天没人 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_adb205fc_auto_public",
    "name": "不纯的友谊 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_413ca673_auto_public",
    "name": "身为女性向游戏的女主角挑战最强生存剧 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_2437819a_auto_public",
    "name": "Lv999哥布林 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_cde9947b_auto_public",
    "name": "全民转职，谁敢说剑客是垃圾职业 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_bc35b76a_auto_public",
    "name": "容器 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_ee331df8_auto_public",
    "name": "1:49:49 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_d64d0a98_auto_public",
    "name": "重生成殊死游戏中的黑手党千金后痴情叛徒将我囚禁侵犯 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_ee181f56_auto_public",
    "name": "我的假女友正全力防御她们的进攻 9.9 - kaixinman.com 远程公开源",
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
    "id": "kaixinman_com_b8241424_auto_public",
    "name": "将杀 9.9 - kaixinman.com 远程公开源",
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
    "id": "manhuaplus_com_fc8f3484_auto_public",
    "name": "Chapter 1301 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_c0c4bda6_auto_public",
    "name": "Chapter 1300 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_1084d753_auto_public",
    "name": "Chapter 1037 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_210d5425_auto_public",
    "name": "Chapter 829 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_e8d5aa4a_auto_public",
    "name": "Chapter 387 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_fa539661_auto_public",
    "name": "Chapter 798 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_b1487fc8_auto_public",
    "name": "Chapter 799 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_acb73cef_auto_public",
    "name": "Chapter 386 - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_79435be5_auto_public",
    "name": "Apotheosis - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_ff4717ff_auto_public",
    "name": "Rebirth Of The Urban Immortal Cultivator - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_0a88d5ec_auto_public",
    "name": "Tales Of Demons And Gods - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_36888a32_auto_public",
    "name": "Immortal Swordsman in The Reverse World - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_1bfb4f29_auto_public",
    "name": "LATEST MANGA UPDATES - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_10799454_auto_public",
    "name": "Webtoon - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_bac8896d_auto_public",
    "name": "Comic - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_com_0da19bc6_auto_public",
    "name": "Cooking - manhuaplus.com 远程公开源",
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
    "id": "manhuaplus_top_5a9aa730_auto_public",
    "name": "Killer Pietro - Chapter 136 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_da78acc4_auto_public",
    "name": "Reality Quest - Chapter 212 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_7cdc0dde_auto_public",
    "name": "Killer Pietro - Chapter 138 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_cec7f713_auto_public",
    "name": "Killer Pietro - Chapter 137 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3ef30f32_auto_public",
    "name": "My Exclusive Tower Guide - Chapter 125 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_36f97117_auto_public",
    "name": "My Exclusive Tower Guide - Chapter 127 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_52aaf544_auto_public",
    "name": "The Stellar Swordmaster - Chapter 127 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8f4c6cf3_auto_public",
    "name": "Return of the SSS-Class Ranker - Chapter 198 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0e0170a9_auto_public",
    "name": "Emperor of Solo Play - Chapter 72 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b7884064_auto_public",
    "name": "Emperor of Solo Play - Chapter 73 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c73fe204_auto_public",
    "name": "The Player Hides His Past - Chapter 126 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a5cc7ece_auto_public",
    "name": "The Stellar Swordmaster - Chapter 126 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_574754ec_auto_public",
    "name": "A Flame Reborn - Chapter 139 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2e6847d2_auto_public",
    "name": "Absolute Sword Sense - Chapter 189 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_23aeccd0_auto_public",
    "name": "The Infinite Mage - Chapter 174 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_82509a0f_auto_public",
    "name": "The Infinite Mage - Chapter 175 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_902f73b5_auto_public",
    "name": "Absolute Sword Sense - Chapter 191 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ba0015df_auto_public",
    "name": "Emperor of Solo Play - Chapter 74 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_477791e7_auto_public",
    "name": "Revenge of the Baskerville Bloodhound - Chapter  - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_215408c7_auto_public",
    "name": "Absolute Sword Sense - Chapter 190 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a106e194_auto_public",
    "name": "Mythic Item Obtained - Chapter 185 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2ef6c102_auto_public",
    "name": "Mythic Item Obtained - Chapter 186 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b5f8c2b2_auto_public",
    "name": "Reincarnated Murim Lord - Chapter 127 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2a37f45c_auto_public",
    "name": "Reincarnated Murim Lord - Chapter 128 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0a38ab18_auto_public",
    "name": "Reincarnator - Chapter 139 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_000c828b_auto_public",
    "name": "Genius Martial Arts Trainer - Chapter 119 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d6b02e86_auto_public",
    "name": "A Flame Reborn - Chapter 141 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_19f09b3b_auto_public",
    "name": "Absolute Regression - Chapter 109 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f820aa20_auto_public",
    "name": "Reincarnated Murim Lord - Chapter 129 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a54bff6d_auto_public",
    "name": "The Knight King Who Returned with a God - Chapte - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_02b19693_auto_public",
    "name": "The World After the Fall - Chapter 242 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2245f32e_auto_public",
    "name": "A Flame Reborn - Chapter 140 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_964e1e31_auto_public",
    "name": "Absolute Regression - Chapter 107 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_7e281e77_auto_public",
    "name": "My Exclusive Tower Guide - Chapter 126 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a8dc2624_auto_public",
    "name": "Revenge of the Baskerville Bloodhound - Chapter  - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0e520c12_auto_public",
    "name": "The Regressed Mercenary Has a Plan - Chapter 94 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8143051d_auto_public",
    "name": "The Player Hides His Past - Chapter 128 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_115346f2_auto_public",
    "name": "Absolute Regression - Chapter 108 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_56d3223a_auto_public",
    "name": "The Heavenly Demon Can’t Live a Normal Life - Ch - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_820ee303_auto_public",
    "name": "The Heavenly Demon Can’t Live a Normal Life - Ch - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5425de01_auto_public",
    "name": "Reincarnator - Chapter 140 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_299927e6_auto_public",
    "name": "Return of the Blossoming Blade - Chapter 168 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_03b9463b_auto_public",
    "name": "The Player Hides His Past - Chapter 127 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_9f7dfc1e_auto_public",
    "name": "The Reborn Young Lord Is an Assassin - Chapter 1 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_dc1edede_auto_public",
    "name": "The Regressed Mercenary Has a Plan - Chapter 95 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8cbd47b7_auto_public",
    "name": "The World After the Fall - Chapter 241 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c64b72d6_auto_public",
    "name": "Apotheosis - Chapter 1301 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2c6ea87b_auto_public",
    "name": "Mythic Item Obtained - Chapter 187 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ab9125ec_auto_public",
    "name": "Reincarnator - Chapter 141 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e55363b5_auto_public",
    "name": "The Reborn Young Lord Is an Assassin - Chapter 1 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1d787cee_auto_public",
    "name": "The Regressed Mercenary Has a Plan - Chapter 96 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c87817b0_auto_public",
    "name": "Revenge of the Baskerville Bloodhound - Chapter  - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_9bfdd542_auto_public",
    "name": "The World After the Fall - Chapter 240 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5dff6664_auto_public",
    "name": "Return of the SSS-Class Ranker - Chapter 199 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c073e9fe_auto_public",
    "name": "/*! * Bootstrap v3.3.5 (http://getbootstrap.com) - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f6951f2d_auto_public",
    "name": "Return of the Blossoming Blade - Chapter 169 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8f9edba0_auto_public",
    "name": "The Reborn Young Lord Is an Assassin - Chapter 1 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5633baf9_auto_public",
    "name": "The Heavenly Demon Can’t Live a Normal Life - Ch - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_00b99768_auto_public",
    "name": "The Knight King Who Returned with a God - Chapte - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6988b121_auto_public",
    "name": "Return of the SSS-Class Ranker - Chapter 197 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5efbf259_auto_public",
    "name": "A Dragonslayer's Peerless Regression - Chapter 9 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_580f73e7_auto_public",
    "name": "Return of the Blossoming Blade - Chapter 170 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_4c2245e5_auto_public",
    "name": "World Defying Dan God - Chapter 61 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5e917a99_auto_public",
    "name": "The Knight King Who Returned with a God - Chapte - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5f0dd2f2_auto_public",
    "name": "The Infinite Mage - Chapter 176 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_581c6c28_auto_public",
    "name": "Genius Martial Arts Trainer - Chapter 120 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_40c8d6f9_auto_public",
    "name": "Banished Disciple's Counterattack - Chapter 584 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ee2ecbda_auto_public",
    "name": "Spare Me, Great Lord! - Chapter 830 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_565446f4_auto_public",
    "name": "Genius Martial Arts Trainer - Chapter 121 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a068d289_auto_public",
    "name": "Versatile Mage - Chapter 1181 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_452adfb9_auto_public",
    "name": "Spare Me, Great Lord! - Chapter 828 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_492206cf_auto_public",
    "name": "Peerless Battle Spirit - Chapter 722 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_811f5c36_auto_public",
    "name": "The Stellar Swordmaster - Chapter 128 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6551159a_auto_public",
    "name": "A Dragonslayer's Peerless Regression - Chapter 9 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_95c1ea0e_auto_public",
    "name": "A Dragonslayer's Peerless Regression - Chapter 9 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_660852ee_auto_public",
    "name": "I Am the Fated Villain - Chapter 340 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_306fe20d_auto_public",
    "name": "Spare Me, Great Lord! - Chapter 829 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6ceb0104_auto_public",
    "name": "Martial Peak - Chapter 3862 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5d670e09_auto_public",
    "name": "Monster Pet Evolution - Chapter 409 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c73df9d2_auto_public",
    "name": "pig slayer - Chapter 50 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_88fc8ba9_auto_public",
    "name": "I Awoke as a God After Auto Battling For a Milli - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ce1f0e55_auto_public",
    "name": "pig slayer - Chapter 49 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_63cd5612_auto_public",
    "name": "After Becoming Financially Free, They Offered Th - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e03f3dba_auto_public",
    "name": "I Am the Fated Villain - Chapter 341 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e230b298_auto_public",
    "name": "I Awoke as a God After Auto Battling For a Milli - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3228b40c_auto_public",
    "name": "Soul Land IV - Chapter 622 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d54dc1cf_auto_public",
    "name": "Soul Land IV - Chapter 622.5 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2a2918d3_auto_public",
    "name": "pig slayer - Chapter 51 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0ef2f81a_auto_public",
    "name": "After Becoming Financially Free, They Offered Th - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_eabf587e_auto_public",
    "name": "I Am the Fated Villain - Chapter 342 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_dc66b9ca_auto_public",
    "name": "Soul Land IV - Chapter 623 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c00c0068_auto_public",
    "name": "Tales Of Demons And Gods - Chapter 522.1 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_9263931d_auto_public",
    "name": "After Becoming Financially Free, They Offered Th - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_51ffaed6_auto_public",
    "name": "Versatile Sword Cultivator - Chapter 110 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f2613127_auto_public",
    "name": "Global Martial Arts - Chapter 349 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6dc39bdf_auto_public",
    "name": "Necromancer, the Ultimate Scourge! - Chapter 284 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8506b632_auto_public",
    "name": "Domestication of Divine Beasts at the Beginning  - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6d7f2e85_auto_public",
    "name": "Log into the Future - Chapter 332 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5e73b478_auto_public",
    "name": "Log into the Future - Chapter 333 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_082b0994_auto_public",
    "name": "Magic Emperor - Chapter 878 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_426dad35_auto_public",
    "name": "I Awoke as a God After Auto Battling For a Milli - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2c7700e4_auto_public",
    "name": "Yuan Zun - Chapter 652.5 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5b4ed66a_auto_public",
    "name": "Necromancer, the Ultimate Scourge! - Chapter 285 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b2752724_auto_public",
    "name": "Domestication of Divine Beasts at the Beginning  - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c0e1e891_auto_public",
    "name": "Versatile Sword Cultivator - Chapter 108 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_9f3b68c8_auto_public",
    "name": "Global Beast Tamer: I Can See the Path of Evolut - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_19665aeb_auto_public",
    "name": "Myriad Realms Gatekeeper - Chapter 173 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f454c0c7_auto_public",
    "name": "SSS Grade Saint Knight - Chapter 180 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_fe88247c_auto_public",
    "name": "Domestication of Divine Beasts at the Beginning  - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5369fbcc_auto_public",
    "name": "Global Beast Tamer: I Can See the Path of Evolut - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f12633f8_auto_public",
    "name": "The Ultimate of All Ages - Chapter 542 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a5d151ad_auto_public",
    "name": "Starting As The God Of Wealth, Taming Billions O - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_7735eeef_auto_public",
    "name": "Starting As The God Of Wealth, Taming Billions O - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5309b569_auto_public",
    "name": "Necromancer, the Ultimate Scourge! - Chapter 286 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_dec8a4ae_auto_public",
    "name": "Log into the Future - Chapter 334 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8603424c_auto_public",
    "name": "Myriad Realms Gatekeeper - Chapter 174 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3b674bca_auto_public",
    "name": "Starting As The God Of Wealth, Taming Billions O - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_17e59eaa_auto_public",
    "name": "The Legendary Mechanic - Chapter 279 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d530f436_auto_public",
    "name": "Versatile Sword Cultivator - Chapter 109 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_07e75897_auto_public",
    "name": "Global Beast Tamer: I Can See the Path of Evolut - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_015300fc_auto_public",
    "name": "Myriad Realms Gatekeeper - Chapter 172 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2d79f109_auto_public",
    "name": "SSS Grade Saint Knight - Chapter 181 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_92a71260_auto_public",
    "name": "SSS Grade Saint Knight - Chapter 182 - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_4b677b23_auto_public",
    "name": "Martial Evolution: Start by Awakening the King o - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e13b0274_auto_public",
    "name": "Apotheosis - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ec1f5cae_auto_public",
    "name": "Banished Disciple's Counterattack - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5e6bf85a_auto_public",
    "name": "Magic Emperor - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_cc485d5a_auto_public",
    "name": "Martial Peak - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_bcf27209_auto_public",
    "name": "Peerless Battle Spirit - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_fc3a7374_auto_public",
    "name": "Soul Land IV - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c5850d84_auto_public",
    "name": "Spare Me, Great Lord! - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1036c270_auto_public",
    "name": "Tales Of Demons And Gods - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c3621592_auto_public",
    "name": "The Ultimate of All Ages - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b500ca84_auto_public",
    "name": "Versatile Mage - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0c28c81d_auto_public",
    "name": "Yuan Zun - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a27ca3a0_auto_public",
    "name": "Monster Pet Evolution - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3f0e33a0_auto_public",
    "name": "Global Martial Arts - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_16901bdd_auto_public",
    "name": "I Am the Fated Villain - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_33ce837a_auto_public",
    "name": "Log into the Future - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d5d9e775_auto_public",
    "name": "Necromancer, the Ultimate Scourge! - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3ccf35e9_auto_public",
    "name": "The Legendary Mechanic - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d9f2764f_auto_public",
    "name": "The World After the Fall - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_7cbeea4f_auto_public",
    "name": "Reality Quest - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_34290e17_auto_public",
    "name": "The Heavenly Demon Can’t Live a Normal Life - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_eca7a176_auto_public",
    "name": "Return of the SSS-Class Ranker - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5a86e0dc_auto_public",
    "name": "Absolute Sword Sense - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1cd9873d_auto_public",
    "name": "Mythic Item Obtained - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f0c2eaee_auto_public",
    "name": "SSS Grade Saint Knight - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2e60a7cc_auto_public",
    "name": "Return of the Blossoming Blade - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_eef1aea7_auto_public",
    "name": "The Infinite Mage - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_08a0f058_auto_public",
    "name": "Myriad Realms Gatekeeper - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_cee5cff0_auto_public",
    "name": "The Knight King Who Returned with a God - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e7d0040b_auto_public",
    "name": "Revenge of the Baskerville Bloodhound - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_bcca3b40_auto_public",
    "name": "Last update - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d7e0fc56_auto_public",
    "name": "Last update - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_53759d63_auto_public",
    "name": "Last update - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_bef72003_auto_public",
    "name": "Reincarnator - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c85d3819_auto_public",
    "name": "A Flame Reborn - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_827dace7_auto_public",
    "name": "Killer Pietro - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0cb6f0dc_auto_public",
    "name": "The Reborn Young Lord Is an Assassin - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5a143d69_auto_public",
    "name": "Martial Evolution: Start by Awakening the King o - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ee6237a4_auto_public",
    "name": "The Stellar Swordmaster - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c0d96122_auto_public",
    "name": "Reincarnated Murim Lord - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ee1dd799_auto_public",
    "name": "The Player Hides His Past - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_eb8ce036_auto_public",
    "name": "My Exclusive Tower Guide - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_28007f66_auto_public",
    "name": "Genius Martial Arts Trainer - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d7f3e835_auto_public",
    "name": "Versatile Sword Cultivator - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_5eeecd5b_auto_public",
    "name": "Absolute Regression - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3bccf32d_auto_public",
    "name": "After Becoming Financially Free, They Offered Th - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_00c74f94_auto_public",
    "name": "The Regressed Mercenary Has a Plan - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ad16263c_auto_public",
    "name": "A Dragonslayer's Peerless Regression - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f66768b3_auto_public",
    "name": "Global Beast Tamer: I Can See the Path of Evolut - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c1574cee_auto_public",
    "name": "Starting As The God Of Wealth, Taming Billions O - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d48fdb29_auto_public",
    "name": "Domestication of Divine Beasts at the Beginning - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_4e648a1b_auto_public",
    "name": "I Awoke as a God After Auto Battling For a Milli - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_cebbf79d_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_268e9373_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8f640e46_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0026bca6_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_913d0810_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6e0e55ca_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ab23c789_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0032305f_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_a57ef86a_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_157bbcd0_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_22d797d1_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_57fd2191_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e61bcab4_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_fbe0c534_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_36751e68_auto_public",
    "name": "Manga genres: Action - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_dd523b9f_auto_public",
    "name": "Manga genres: Comedy - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_81c68e25_auto_public",
    "name": "Manga genres: Demons - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6c49f42b_auto_public",
    "name": "Manga genres: Drama - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_472cf831_auto_public",
    "name": "Manga genres: Ecchi - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d3b820c5_auto_public",
    "name": "Manga genres: Fantasy - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_78f4ad16_auto_public",
    "name": "Manga genres: Full Color - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_4c9e30a4_auto_public",
    "name": "Manga genres: Harem - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6fc95f45_auto_public",
    "name": "Manga genres: Historical - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c4dfe2b8_auto_public",
    "name": "Manga genres: Isekai - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_38451616_auto_public",
    "name": "Manga genres: Long Strip - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3e8041d4_auto_public",
    "name": "Manga genres: Magic - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_4bdcc3e5_auto_public",
    "name": "Manga genres: Manhua - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1be8e2eb_auto_public",
    "name": "Manga genres: Martial Arts - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_453a2f9c_auto_public",
    "name": "Manga genres: Monsters - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_317f4f26_auto_public",
    "name": "Manga genres: Mystery - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8efddc66_auto_public",
    "name": "Manga genres: Reincarnation - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c034d4e0_auto_public",
    "name": "Manga genres: Romance - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_fcee5aa0_auto_public",
    "name": "Manga genres: School Life - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c3f04e7b_auto_public",
    "name": "Manga genres: Supernatural - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ee231894_auto_public",
    "name": "Manga genres: Survival - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2eea47dc_auto_public",
    "name": "Manga genres: Video Games - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d5193638_auto_public",
    "name": "Manga genres: Wuxia - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_578bfdcc_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_6e79853a_auto_public",
    "name": "Search Mangas - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1386d5b7_auto_public",
    "name": "Emperor of Solo Play - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_afd62de9_auto_public",
    "name": "Manga genres: Adaptation - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3a600d1d_auto_public",
    "name": "Manga genres: Adventure - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1ddcdf51_auto_public",
    "name": "Manga genres: Mature - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_964a8f14_auto_public",
    "name": "Manga genres: Time Travel - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_7d2048e0_auto_public",
    "name": "Manga genres: Web Comic - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b78b417a_auto_public",
    "name": "World Defying Dan God - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_662ed78d_auto_public",
    "name": "Advanced Search - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_09e46880_auto_public",
    "name": "Manga genres: Thriller - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ee120590_auto_public",
    "name": "Manga genres: Post-Apocalyptic - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b64ec02f_auto_public",
    "name": "Manga genres: Psychological - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_40ae20a3_auto_public",
    "name": "Manga genres: Sci-Fi - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c2faa256_auto_public",
    "name": "pig slayer - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_df214306_auto_public",
    "name": "Manga genres: Webtoon - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ea4b30e1_auto_public",
    "name": "Manga genres: Virtual Reality - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1271b4ae_auto_public",
    "name": "Manga genres: Tragedy - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_2dd8273e_auto_public",
    "name": "Manga genres: Gore - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c87ce6c8_auto_public",
    "name": "Manga genres: Horror - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b025713c_auto_public",
    "name": "Manga genres: Animals - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_75f2b868_auto_public",
    "name": "Manga genres: Military - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e082d0b0_auto_public",
    "name": "Manga genres: Slice of life - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0899c7c6_auto_public",
    "name": "Manga genres: Live action - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_86aca6bf_auto_public",
    "name": "Manga genres: Monster Girls - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_531d08d1_auto_public",
    "name": "Manga genres: Superhero - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_77ee1f06_auto_public",
    "name": "Manga genres: Aliens - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_d1b73c44_auto_public",
    "name": "Manga genres: Ghosts - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_284210fa_auto_public",
    "name": "Manga genres: Zombies - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f4a7a93b_auto_public",
    "name": "Manga genres: Crime - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_70f8c0be_auto_public",
    "name": "Manga genres: Villainess - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e7d286b2_auto_public",
    "name": "Manga genres: Official Colored - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b2154de9_auto_public",
    "name": "Manga genres: Shounen - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_0094b5a9_auto_public",
    "name": "History Reading - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ba8ef02f_auto_public",
    "name": "Manga genres: Manhwa - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_e7cc1b9e_auto_public",
    "name": "Manga genres: Mecha - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_bf7acd22_auto_public",
    "name": "Manga genres: Sports - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_4ac19c56_auto_public",
    "name": "Manga genres: Delinquents - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_be522617_auto_public",
    "name": "Manga genres: Medical - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_1ee28371_auto_public",
    "name": "Manga genres: Adult - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_8674eb78_auto_public",
    "name": "Manga genres: Cartoon - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_036c49ad_auto_public",
    "name": "Manga genres: Cooking - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_fa6694b8_auto_public",
    "name": "Manga genres: Genderswap - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_c5bc169c_auto_public",
    "name": "Manga genres: Police - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_ff3262a4_auto_public",
    "name": "Manga genres: Vampires - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_b31975df_auto_public",
    "name": "Manga genres: Award Winning - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_9ab324f6_auto_public",
    "name": "Manga genres: Dungeons - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_420596e3_auto_public",
    "name": "Manga genres: Mafia - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_803a25e5_auto_public",
    "name": "Manga genres: Magical Girls - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_82baf3ae_auto_public",
    "name": "Manga genres: Music - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f35426d8_auto_public",
    "name": "Manga genres: Philosophical - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_3e0c159c_auto_public",
    "name": "Manga genres: Returner - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_f3a2e8e6_auto_public",
    "name": "Manga genres: Revenge - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_9588d9ec_auto_public",
    "name": "Manga genres: Shounen Ai - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_dc095639_auto_public",
    "name": "Manga genres: Traditional Games - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
    "compliance": {
      "publicOnly": true,
      "noLoginRequired": true,
      "noPaymentBypass": true,
      "noCaptchaBypass": true,
      "noProtectedAssetBundled": true
    }
  },
  {
    "id": "manhuaplus_top_322271ae_auto_public",
    "name": "!function () { \"use strict\"; if (\"object\" == typ - manhuaplus.top 远程公开源",
    "description": "规则仓库自动审计生成：公开可访问漫画页，支持详情目录、章节页静态图片/懒加载/页面内图片地址；静态无图由 App 渲染卷轴兜底。不处理登录、付费、验证码或反爬绕过。",
    "homepage": "https://manhuaplus.top",
    "searchUrl": "",
    "searchMethod": "url-only",
    "searchItemRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,260}?)<\\/a>",
    "searchTitleGroups": [
      2
    ],
    "searchUrlGroups": [
      1
    ],
    "searchCoverGroups": [],
    "searchResultIsChapter": false,
    "searchFilterByKeyword": false,
    "detailChapterRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>([\\s\\S]{0,180}?(?:第\\s*\\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|chapter|Episode|episode|Read Chapter|开始阅读|立即阅读)[\\s\\S]{0,120}?)<\\/a>",
    "detailChapterTitleGroups": [
      2
    ],
    "detailChapterUrlGroups": [
      1
    ],
    "detailChapterFilter": true,
    "readerImageRegex": "<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|data-cfsrc|src|srcset)=[\"\\']([^\"\\']+)[\"\\'][^>]*>|[\"\\']((?:https?:)?\\/\\/[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|[\"\\']((?:https?:)?//[^\"\\']+\\.(?:jpg|jpeg|png|webp|gif|avif)(?:\\?[^\"\\']*)?)[\"\\']|(?:images|chapterImages|comicImages|photos|pics|imgList|chapter_data|readerData)[\"\\']?\\s*[:=]\\s*(\\[[\\s\\S]{0,9000}?\\])",
    "readerImageGroups": [
      1,
      2,
      3,
      4
    ],
    "userAgent": "Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/120.0 Mobile Safari/537.36 ComicReaderHarmony/RemoteRules",
    "referer": "https://manhuaplus.top/",
    "readerNextPageRegex": "<a[^>]+href=[\"\\']([^\"\\']+)[\"\\'][^>]*>(?:\\s*下一页\\s*|\\s*下页\\s*|\\s*Next\\s*|\\s*next\\s*|\\s*&gt;\\s*|\\s*›\\s*)<\\/a>|rel=[\"\\']next[\"\\'][^>]+href=[\"\\']([^\"\\']+)[\"\\']|href=[\"\\']([^\"\\']+)[\"\\'][^>]+rel=[\"\\']next[\"\\']",
    "readerNextPageUrlGroups": [
      1,
      2,
      3
    ],
    "maxReaderPages": 12,
    "license": "MIT",
    "sourceType": "public-web-page-rule",
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
