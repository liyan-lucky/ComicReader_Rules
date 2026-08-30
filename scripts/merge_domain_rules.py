#!/usr/bin/env python3
import argparse,json
from datetime import datetime,timezone
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--input-dir',type=Path,required=True);p.add_argument('--output',type=Path,required=True);a=p.parse_args();rules_by_domain={};rejected=[]
old={}
if a.output.exists():
 old=json.loads(a.output.read_text(encoding='utf-8-sig'))
 for rule in old.get('rules',[]):
  domain=str(rule.get('homepage','')).split('://',1)[-1].strip('/').removeprefix('www.')
  if domain and rule.get('audit',{}).get('status')=='verified':rules_by_domain[domain]=rule
chapter=r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{0,180}?(?:第\s*\d+|第[一二三四五六七八九十百千零〇两]+|话|章|回|Chapter|Episode)[\s\S]{0,100}?)<\/a>'
reader=r'<img[^>]+(?:data-original|data-src|data-lazy-src|data-url|src|srcset)=["\']([^"\']+)["\'][^>]*>|["\']((?:https?:)?\/\/[^"\']+\.(?:jpg|jpeg|png|webp|avif)(?:\?[^"\']*)?)["\']'
for path in sorted(a.input_dir.glob('*.json')):
 d=json.loads(path.read_text(encoding='utf-8-sig'))
 if d.get('status')!='verified':rejected.append(d);continue
 domain=d['domain'];rules_by_domain[domain]={'id':d['id'],'name':domain+' 已验证公开源','description':f"由 {d['replayWorkCount']} 部作品首/中/末章回放验证；每域一条规则。",'homepage':'https://'+domain,'searchUrl':'','searchMethod':'url-only','searchItemRegex':r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>([\s\S]{1,240}?)<\/a>','searchTitleGroups':[2],'searchUrlGroups':[1],'searchCoverGroups':[],'searchResultIsChapter':False,'searchFilterByKeyword':True,'detailChapterRegex':chapter,'detailChapterTitleGroups':[2],'detailChapterUrlGroups':[1],'detailChapterFilter':True,'readerImageRegex':reader,'readerImageGroups':[1,2],'userAgent':'Mozilla/5.0 (Linux; HarmonyOS; Mobile) AppleWebKit/537.36 Chrome/124 Mobile Safari/537.36 ComicReader','referer':'https://'+domain+'/','maxReaderPages':12,'license':'MIT','sourceType':'verified-public-domain-rule','compliance':{'publicOnly':True,'noLoginRequired':True,'noPaymentBypass':True,'noCaptchaBypass':True},'domainApplicabilityList':[domain],'audit':d}
rules=[rules_by_domain[domain] for domain in sorted(rules_by_domain)]
result={'schema':'womh_comic_rules_index_v1','version':datetime.now(timezone.utc).strftime('%Y%m%d%H%M%S'),'updatedAt':datetime.now(timezone.utc).isoformat(),'language':{'code':'zh-Hans','name':'简体中文'},'rules':rules,'audit':{'rejectedDomains':rejected}}
if a.output.exists():
 if old.get('rules',[])==rules:
  print(f'{len(rules)} rules unchanged; keeping version {old.get("version","")}');raise SystemExit(0)
a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(f'{len(rules)} verified, {len(rejected)} rejected')
