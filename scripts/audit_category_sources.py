#!/usr/bin/env python3
"""Search and audit readable sources for every work in one refined category."""
from __future__ import annotations
import argparse, hashlib, html, json, os, re, time
from pathlib import Path
from urllib.parse import urljoin, urlparse
import requests
from bs4 import BeautifulSoup
from title_normalization import clean_title, identity_key

UA='Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 Chrome/124 Mobile Safari/537.36'
CHAPTER=re.compile(r'(第\s*[0-9一二三四五六七八九十百千零〇两]+\s*[话話章回集]|chapter\s*\d+|episode\s*\d+)',re.I)
IMAGE_BAD=re.compile(r'(logo|avatar|icon|banner|cover|poster|thumb|sprite|loading|placeholder|mascot|comment|recommend|header|footer|qrcode|advert)',re.I)
IMAGE_EXT=re.compile(r'\.(?:jpe?g|png|webp|avif)(?:\?|$)',re.I)
BAD_PATH=re.compile(r'/(?:login|register|category|genre|rank|history|search)(?:/|$)',re.I)
NON_COMIC_PATH=re.compile(r'/(?:novel|xiaoshuo|txt|article)(?:/|\d|$)',re.I)
POLICY_VERSION='readability-v2'
PIPELINE=json.loads((Path(__file__).resolve().parents[1]/'config/pipeline.json').read_text(encoding='utf-8-sig'))
MIN_IMAGES=int(PIPELINE['minimumReadableImagesPerSample'])
BLOCKED_DOMAINS={str(x).lower().removeprefix('www.') for x in PIPELINE.get('blockedSourceDomains',[])}

def host(url): return (urlparse(url).hostname or '').lower().removeprefix('www.')
def same_title(query,matched,lang): return identity_key(clean_title(query),lang)==identity_key(clean_title(matched),lang)
def fetch(s,url,referer=''):
    h={'Referer':referer} if referer else {}; r=s.get(url,headers=h,timeout=25); r.raise_for_status(); r.encoding=r.apparent_encoding or 'utf-8'; return r.text
def page_title(soup):
    n=soup.select_one('h1') or soup.select_one('meta[property="og:title"]') or soup.select_one('title')
    return clean_title(str(n.get('content') if n and n.name=='meta' else n.get_text(' ') if n else ''))
def cover(soup,base):
    for sel,attr in [('meta[property="og:image"]','content'),('meta[name="twitter:image"]','content'),('img.cover','src'),('img[class*="cover"]','src')]:
        n=soup.select_one(sel); value=str(n.get(attr) or '') if n else ''
        if value: return urljoin(base,value)
    return ''
def chapters(soup,detail):
    values=[]; seen=set()
    for a in soup.select('a[href]'):
        title=re.sub(r'\s+',' ',a.get_text(' ',strip=True)); url=urljoin(detail,str(a.get('href','')))
        if host(url)!=host(detail) or url==detail or BAD_PATH.search(url) or not (CHAPTER.search(title) or re.search(r'/(?:chapter|chap|read|viewer|episode)/',url,re.I)): continue
        if url not in seen: seen.add(url); values.append((title or url,url))
    return values
def images(body,base):
    soup=BeautifulSoup(body,'lxml'); values=[]; seen=set()
    for img in soup.select('img,source'):
        for attr in ('data-original','data-src','data-lazy-src','data-url','src','srcset'):
            raw=str(img.get(attr) or '')
            for token in raw.split(','):
                url=urljoin(base,token.strip().split(' ')[0]) if token.strip() else ''
                if url and url not in seen and IMAGE_EXT.search(url) and not IMAGE_BAD.search(url): seen.add(url); values.append(url)
    for match in re.finditer(r'https?:\\?/\\?/[^\s\"\']+?\.(?:jpe?g|png|webp|avif)(?:\?[^\s\"\']*)?',body,re.I):
        url=html.unescape(match.group(0).replace('\\/','/'))
        if url not in seen and not IMAGE_BAD.search(url): seen.add(url); values.append(url)
    return values
def search(s,title,limit,search_terms=None):
    endpoint=os.getenv('SEARXNG_URL','http://localhost:8080').rstrip('/')+'/search'
    headers={'X-Search-Token':os.getenv('SEARXNG_API_TOKEN','')}
    terms=' '.join(search_terms or ['漫画','在线阅读','章节'])
    r=s.get(endpoint,params={'q':f'"{title}" {terms}','format':'json','language':'zh-CN'},headers=headers,timeout=35); r.raise_for_status()
    out=[]
    for x in r.json().get('results',[]):
        u=str(x.get('url',''))
        if u.startswith(('http://','https://')) and not BAD_PATH.search(u) and u not in out: out.append(u)
    return out[:limit]
def audit(s,work,url):
    base={'workId':work['id'],'language':work['language'],'queryTitle':work['canonicalTitle'],'detailUrl':url,'domain':host(url)}
    try:
        if base['domain'] in BLOCKED_DOMAINS or NON_COMIC_PATH.search(url):
            return {**base,'matchedTitle':'','chapterCount':0,'samples':[],'status':'rejected','rejectionReasons':['non_comic_source']}
        body=fetch(s,url); soup=BeautifulSoup(body,'lxml'); title=page_title(soup); base['matchedTitle']=title
        if not same_title(work['canonicalTitle'],title,work['language']): return {**base,'chapterCount':0,'samples':[],'status':'rejected','rejectionReasons':['title_identity_mismatch']}
        ch=chapters(soup,url)
        if not ch: return {**base,'chapterCount':0,'samples':[],'status':'rejected','rejectionReasons':['no_chapters']}
        indexes=[0,len(ch)//2,len(ch)-1]; positions=['first','middle','latest']; samples=[]
        for pos,index in zip(positions,indexes):
            chapter_title,chapter_url=ch[index]; chapter_body=fetch(s,chapter_url,url); found=images(chapter_body,chapter_url)
            samples.append({'position':pos,'chapterTitle':chapter_title,'chapterUrl':chapter_url,'imageCount':len(found),'readable':len(found)>=MIN_IMAGES,'firstImageUrl':found[0] if found else ''})
        ok=all(x['readable'] for x in samples)
        return {**base,'matchedTitle':title,'coverUrl':cover(soup,url),'chapterCount':len(ch),'samples':samples,
                'status':'verified' if ok else 'rejected','rejectionReasons':[] if ok else ['three_chapter_readability_gate_failed']}
    except Exception as exc: return {**base,'matchedTitle':'','chapterCount':0,'samples':[],'status':'unreachable','rejectionReasons':[f'{type(exc).__name__}: {exc}']}
def main():
    p=argparse.ArgumentParser(); p.add_argument('--parameters',type=Path,required=True); p.add_argument('--output',type=Path,required=True); p.add_argument('--checkpoint-dir',type=Path,required=True); p.add_argument('--category-config',type=Path); p.add_argument('--candidate-limit',type=int); a=p.parse_args()
    category_policy=json.loads(a.category_config.read_text(encoding='utf-8-sig')) if a.category_config else {}
    global MIN_IMAGES, BLOCKED_DOMAINS
    MIN_IMAGES=int(category_policy.get('minimumReadableImagesPerSample',MIN_IMAGES))
    BLOCKED_DOMAINS=BLOCKED_DOMAINS|{str(x).lower().removeprefix('www.') for x in category_policy.get('extraBlockedDomains',[])}
    candidate_limit=a.candidate_limit or int(category_policy.get('candidateLimit',12))
    doc=json.loads(a.parameters.read_text(encoding='utf-8-sig'))
    works=doc.get('works',[])
    if not works: raise SystemExit(f'empty category: {a.parameters}')
    a.checkpoint_dir.mkdir(parents=True,exist_ok=True); session=requests.Session(); session.headers.update({'User-Agent':UA,'Accept-Language':'zh-CN,zh;q=0.9'})
    all_audits=[]
    for i,work in enumerate(works,1):
        fingerprint=hashlib.sha256((POLICY_VERSION+json.dumps(category_policy,sort_keys=True,ensure_ascii=False)+json.dumps(work,sort_keys=True,ensure_ascii=False)).encode()).hexdigest(); checkpoint=a.checkpoint_dir/f"{work['id']}.json"
        if checkpoint.exists():
            saved=json.loads(checkpoint.read_text(encoding='utf-8'))
            if saved.get('workFingerprint')==fingerprint: all_audits.extend(saved['audits']); print(f'[{i}/{len(works)}] resume {work["canonicalTitle"]}',flush=True); continue
        urls=search(session,work['canonicalTitle'],candidate_limit,category_policy.get('searchTerms'))
        audits=[audit(session,work,u) for u in urls]; payload={'workFingerprint':fingerprint,'workId':work['id'],'audits':audits}
        checkpoint.write_text(json.dumps(payload,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); all_audits.extend(audits); print(f'[{i}/{len(works)}] {work["canonicalTitle"]}: {sum(x["status"]=="verified" for x in audits)}/{len(audits)}',flush=True)
        time.sleep(.15)
    a.output.parent.mkdir(parents=True,exist_ok=True); a.output.write_text(''.join(json.dumps(x,ensure_ascii=False)+'\n' for x in all_audits),encoding='utf-8'); return 0
if __name__=='__main__': raise SystemExit(main())
