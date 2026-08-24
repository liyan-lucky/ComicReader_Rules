#!/usr/bin/env python3
import argparse,json,re,sys
from pathlib import Path
def main():
 p=argparse.ArgumentParser();p.add_argument('--catalog',type=Path,required=True);p.add_argument('--rules',type=Path,required=True);a=p.parse_args();errors=[];c=json.loads(a.catalog.read_text(encoding='utf-8-sig'));r=json.loads(a.rules.read_text(encoding='utf-8-sig'))
 if c.get('schema')!='comic_catalog_v1':errors.append('invalid catalog schema')
 if r.get('schema')!='womh_comic_rules_index_v1':errors.append('invalid rules schema')
 domains=[]
 for rule in r.get('rules',[]):
  domain=rule.get('homepage','').split('://',1)[-1].strip('/').removeprefix('www.');domains.append(domain)
  if rule.get('domainApplicabilityList')!=[domain]:errors.append(f'rule {rule.get("id")} is not exact-domain')
  if rule.get('audit',{}).get('status')!='verified':errors.append(f'rule {rule.get("id")} lacks replay proof')
 if len(domains)!=len(set(domains)):errors.append('duplicate domain rules')
 count=0
 for category in c.get('categories',{}).values():
  for item in category.get('items',[]):
   count+=1
   if item.get('language')!='zh-Hans':errors.append(f'{item.get("id")} wrong language')
   if int(item.get('verifiedChapterCount') or 0)<=0:errors.append(f'{item.get("id")} no chapters')
   sources=item.get('sources',[])
   if not sources:errors.append(f'{item.get("id")} no source');continue
   s=sources[0]
   if not str(s.get('detailUrl','')).startswith(('http://','https://')):errors.append(f'{item.get("id")} no detail link')
   if not str(s.get('coverUrl','')).startswith('https://'):errors.append(f'{item.get("id")} cover is not HTTPS')
   if s.get('domain') not in domains:errors.append(f'{item.get("id")} no domain rule')
 if c.get('totalItems')!=count:errors.append('catalog count mismatch')
 report={'passed':not errors,'ruleCount':len(domains),'catalogCount':count,'categoryCounts':{k:len(v.get('items',[])) for k,v in c.get('categories',{}).items()},'errors':errors[:100]};print(json.dumps(report,ensure_ascii=False,indent=2))
 return 0 if not errors else 1
if __name__=='__main__':raise SystemExit(main())
