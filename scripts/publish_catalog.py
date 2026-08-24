#!/usr/bin/env python3
from __future__ import annotations
import argparse,hashlib,json
from datetime import datetime,timezone
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def main():
 p=argparse.ArgumentParser();p.add_argument('--parameters',type=Path,required=True);p.add_argument('--sources',type=Path,required=True);p.add_argument('--rules',type=Path,required=True);p.add_argument('--output',type=Path,required=True);a=p.parse_args()
 sources={x['workId']:x for x in json.loads(a.sources.read_text(encoding='utf-8-sig')).get('selected',[])};rule_doc=json.loads(a.rules.read_text(encoding='utf-8-sig'));domains={x['homepage'].split('://',1)[-1].strip('/') for x in rule_doc.get('rules',[])};cfg=json.loads((ROOT/'config/catalog_config.json').read_text(encoding='utf-8'));categories={};flat=[];rejected=[]
 for cat in cfg['categories']:
  doc=json.loads((a.parameters/f"{cat['id']}.json").read_text(encoding='utf-8-sig'));items=[]
  for work in doc['works']:
   source=sources.get(work['id']);reason=''
   if not source:reason='no_verified_source'
   elif source.get('domain') not in domains:reason='domain_rule_not_verified'
   cover=(source or {}).get('coverUrl','') or next((e.get('coverUrl','') for e in work.get('platformEvidence',[]) if str(e.get('coverUrl','')).startswith(('http://','https://')) and not str(e.get('coverUrl','')).startswith('data:')),'')
   if not reason and not cover:reason='no_cover'
   if reason:rejected.append({'workId':work['id'],'title':work['canonicalTitle'],'category':cat['id'],'reason':reason});continue
   item={'id':work['id'],'title':work['canonicalTitle'],'sources':[{'domain':source['domain'],'detailUrl':source['detailUrl'],'coverUrl':cover}],'category':cat['id'],'language':'zh-Hans','verifiedChapterCount':source['verifiedChapterCount']};items.append(item);flat.append(item)
  categories[cat['id']]={'id':cat['id'],'name':cat['name'],'count':len(items),'items':items}
 now=datetime.now(timezone.utc);result={'schema':'comic_catalog_v1','version':now.strftime('%Y%m%d%H%M%S'),'updatedAt':now.isoformat(),'language':{'code':'zh-Hans','name':'简体中文'},'totalItems':len(flat),'categoryCount':len(categories),'categories':categories,'audit':{'rejected':rejected}}
 a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(f'published {len(flat)}, rejected {len(rejected)}')
if __name__=='__main__':raise SystemExit(main())
