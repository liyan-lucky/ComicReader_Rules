#!/usr/bin/env python3
import argparse,json,re,sys,os
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def main():
 p=argparse.ArgumentParser();p.add_argument('--catalog',type=Path,required=True);p.add_argument('--rules',type=Path,required=True);p.add_argument('--sources',type=Path);p.add_argument('--incremental',action='store_true');a=p.parse_args();errors=[];c=json.loads(a.catalog.read_text(encoding='utf-8-sig'));r=json.loads(a.rules.read_text(encoding='utf-8-sig'))
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
 category_counts={k:len(v.get('items',[])) for k,v in c.get('categories',{}).items()}; non_empty=sum(v>0 for v in category_counts.values())
 titles=[str(x.get('title','')).strip().casefold() for v in c.get('categories',{}).values() for x in v.get('items',[])];duplicates=sorted({x for x in titles if titles.count(x)>1})
 gates=json.loads((ROOT/'config/pipeline.json').read_text(encoding='utf-8-sig')).get('releaseGates',{})
 if not a.incremental and count<int(gates.get('minimumCatalogItems',0)):errors.append(f'catalog below minimum: {count}/{gates["minimumCatalogItems"]}')
 if not a.incremental and non_empty<int(gates.get('minimumNonEmptyCategories',0)):errors.append(f'non-empty categories below minimum: {non_empty}/{gates["minimumNonEmptyCategories"]}')
 if duplicates and not gates.get('allowDuplicateTitles',False):errors.append(f'duplicate titles: {duplicates[:20]}')
 selected_count=len(json.loads(a.sources.read_text(encoding='utf-8-sig')).get('selected',[])) if a.sources else None
 report={'passed':not errors,'ruleCount':len(domains),'catalogCount':count,'selectedSourceCount':selected_count,'nonEmptyCategoryCount':non_empty,'emptyCategoryCount':len(category_counts)-non_empty,'duplicateTitleCount':len(duplicates),'categoryCounts':category_counts,'errors':errors[:100]};print(json.dumps(report,ensure_ascii=False,indent=2))
 summary=os.getenv('GITHUB_STEP_SUMMARY')
 if summary:
  lines=['## 发布数量与质量审计','',f'- 初选可读书源：**{selected_count if selected_count is not None else "未提供"} 本**',f'- 最终目录：**{count} 本**',f'- 域名规则：**{len(domains)} 条**',f'- 非空分类：**{non_empty}/{len(category_counts)}**',f'- 重复标题：**{len(duplicates)}**',f'- 发布门禁：**{"通过" if not errors else "未通过"}**','','| 分类 | 数量 |','|---|---:|']+[f'| {k} | {v} |' for k,v in category_counts.items()]
  if errors: lines+=['','### 阻断原因','']+[f'- {e}' for e in errors[:20]]
  Path(summary).open('a',encoding='utf-8').write('\n'.join(lines)+'\n')
 return 0 if not errors else 1
if __name__=='__main__':raise SystemExit(main())
