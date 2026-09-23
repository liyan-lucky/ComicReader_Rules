#!/usr/bin/env python3
"""Infer one domain rule from verified works and replay it against every ledger sample."""
from __future__ import annotations
import argparse,json,re
from pathlib import Path
from urllib.parse import urljoin
import requests
from bs4 import BeautifulSoup
from audit_category_sources import UA, fetch, images

ATTRS=('data-original','data-src','data-lazy-src','data-url','src','srcset')
def class_selector(tag,prefix):
 classes=[c for c in tag.get('class',[]) if re.match(r'^[A-Za-z_][\w-]*$',c)]
 return f'{prefix}.{classes[0]}' if classes else prefix
def infer_detail(soup,known):
 candidates=[]
 for a in soup.select('a[href]'):
  if urljoin(known[0],str(a.get('href',''))) in known:
   candidates.extend([class_selector(a,'a'),class_selector(a.parent,'*')+' a[href]' if a.parent else 'a[href]'])
 return [x for x in candidates if x]
def infer_reader(soup,first_url,base):
 out=[]
 for img in soup.select('img,source'):
  if any(urljoin(base,str(img.get(attr,'')).split(',')[0].split(' ')[0])==first_url for attr in ATTRS if img.get(attr)):
   out.extend([class_selector(img,img.name),class_selector(img.parent,'*')+f' {img.name}' if img.parent else img.name])
 return out
def main():
 p=argparse.ArgumentParser();p.add_argument('--ledger',type=Path,required=True);p.add_argument('--domain',required=True);p.add_argument('--output',type=Path,required=True);a=p.parse_args()
 ledger=json.loads(a.ledger.read_text(encoding='utf-8-sig'));record=next(x for x in ledger['domains'] if x['domain']==a.domain);s=requests.Session();s.headers.update({'User-Agent':UA,'Accept-Language':'zh-CN,zh;q=0.9'})
 detail_sets=[];reader_sets=[];failures=[]
 for work in record['works']:
  try:
   detail=BeautifulSoup(fetch(s,work['detailUrl']),'lxml'); known=[x['chapterUrl'] for x in work['samples']]; detail_sets.append(set(infer_detail(detail,known)))
   for sample in work['samples']:
    body=fetch(s,sample['chapterUrl'],work['detailUrl']);soup=BeautifulSoup(body,'lxml');reader_sets.append(set(infer_reader(soup,sample.get('firstImageUrl',''),sample['chapterUrl'])))
  except Exception as exc: failures.append({'workId':work['workId'],'reason':f'{type(exc).__name__}: {exc}'})
 detail_common=set.intersection(*detail_sets) if detail_sets else set();reader_common=set.intersection(*reader_sets) if reader_sets else set()
 rule={'schema':'comic_domain_rule_v1','id':a.domain.replace('.','_'),'domain':a.domain,'languages':record['languages'],
       'policyVersion':'readability-v5' if record.get('policyVersions')==['readability-v5'] else '',
       'detailChapterSelectors':sorted(detail_common,key=len)[:5],'detailUrlAttribute':'href','readerImageSelectors':sorted(reader_common,key=len)[:5],
       'readerImageAttributes':list(ATTRS),'verifiedWorkIds':[x['workId'] for x in record['works']],
       'replayWorkCount':len(record['works']),'failures':failures,'status':'verified' if detail_common and reader_common and not failures and record.get('policyVersions')==['readability-v5'] else 'rejected'}
 a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(rule,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(f'{a.domain}: {rule["status"]} detail={len(detail_common)} reader={len(reader_common)}');return 0
if __name__=='__main__':raise SystemExit(main())
