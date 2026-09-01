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
POLICY_VERSION='readability-v5'
CHECKPOINT_SCHEMA='chapter-manifest-v8-expanded-readable-domains'
PIPELINE=json.loads((Path(__file__).resolve().parents[1]/'config/pipeline.json').read_text(encoding='utf-8-sig'))
MIN_IMAGES=int(PIPELINE['minimumReadableImagesPerSample'])
BLOCKED_DOMAINS={str(x).lower().removeprefix('www.') for x in PIPELINE.get('blockedSourceDomains',[])}
PREFERRED_READABLE_DOMAINS=[str(x).lower().removeprefix('www.') for x in PIPELINE.get('preferredReadableDomains',[])]

def host(url): return (urlparse(url).hostname or '').lower().removeprefix('www.')
def same_title(query,matched,lang):
    query_key=identity_key(clean_title(query),lang)
    matched_key=identity_key(clean_title(matched),lang)
    if query_key==matched_key: return True
    query_text=query_key.split(':',1)[-1]; matched_text=matched_key.split(':',1)[-1]
    # Accept common page-title decorations such as “作品名漫画在线阅读-站名”,
    # but never accept a shorter/unrelated title merely returned by search.
    return len(query_text)>=4 and query_text in matched_text and len(matched_text)-len(query_text)<=18
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
def clean_chapter_title(value):
    value=re.sub(r'\s+',' ',value).strip()
    value=re.sub(r'\s+\d{4}[-/.]\d{1,2}[-/.]\d{1,2}(?:\s+like\s*\d+)?(?:\s+#\d+)?\s*$','',value,flags=re.I)
    value=re.sub(r'\s+like\s*\d+(?:\s+#\d+)?\s*$','',value,flags=re.I)
    return value.strip()
def chapters(soup,detail):
    values=[]; seen=set()
    # A work identifier appearing in the detail URL must remain present in its
    # chapter URLs.  This rejects recommendation cards from another comic.
    detail_ids=re.findall(r'(?<!\d)(\d{4,})(?!\d)',urlparse(detail).path)
    for a in soup.select('a[href]'):
        title=clean_chapter_title(a.get_text(' ',strip=True)); url=urljoin(detail,str(a.get('href','')))
        if host(url)!=host(detail) or url==detail or BAD_PATH.search(url) or not (CHAPTER.search(title) or re.search(r'/(?:chapter|chap|read|viewer|episode)/',url,re.I)): continue
        if detail_ids and not any(token in urlparse(url).path for token in detail_ids): continue
        if url not in seen: seen.add(url); values.append((title or url,url))
    return values
def chapter_order_audit(values):
    numbers=[]
    for title,_ in values:
        match=re.search(r'第\s*(\d+)\s*[话話章回集]',title)
        if match: numbers.append(int(match.group(1)))
    unique=sorted(set(numbers))
    ascending=all(numbers[i]<=numbers[i+1] for i in range(len(numbers)-1)) if numbers else False
    descending=all(numbers[i]>=numbers[i+1] for i in range(len(numbers)-1)) if numbers else False
    span=(unique[-1]-unique[0]+1) if unique else 0
    coverage=(len(unique)/span) if span else 0.0
    return {'numberedCount':len(numbers),'firstNumber':numbers[0] if numbers else None,
            'lastNumber':numbers[-1] if numbers else None,'minimumNumber':unique[0] if unique else None,
            'maximumNumber':unique[-1] if unique else None,'direction':'ascending' if ascending else 'descending' if descending else 'mixed',
            'monotonic':ascending or descending,'coverage':round(coverage,4),
            'complete':len(numbers)>=3 and (ascending or descending) and unique[0]<=1 and coverage>=0.95}
def images(body,base):
    soup=BeautifulSoup(body,'lxml'); values=[]; seen=set()
    for img in soup.select('img,source'):
        marker=' '.join([img.name,str(img.get('id') or ''),str(img.get('class') or ''),str(img.get('alt') or '')])
        # Viewer thumbnail strips often contain the first pages of another or
        # previous chapter and were previously counted as readable content.
        # They made every sampled chapter share the same "first image" while
        # the App rendered only covers/thumbnails. Audit only main-view images.
        if IMAGE_BAD.search(marker) or re.search(r'(?:thumbnail|_thmb|\bthmb\b)',marker,re.I):
            continue
        for attr in ('data-original','data-src','data-lazy-src','data-url','src','srcset'):
            raw=str(img.get(attr) or '')
            for token in raw.split(','):
                url=urljoin(base,token.strip().split(' ')[0]) if token.strip() else ''
                if url and url not in seen and IMAGE_EXT.search(url) and not IMAGE_BAD.search(url): seen.add(url); values.append(url)
    # Script/JSON fallback is useful for viewers without image nodes, but
    # mixing it into a valid DOM result reintroduces logos, thumbnails and
    # recommendation assets from unrelated page regions.
    if len(values)<MIN_IMAGES:
        for match in re.finditer(r'https?:\\?/\\?/[^\s\"\']+?\.(?:jpe?g|png|webp|avif)(?:\?[^\s\"\']*)?',body,re.I):
            url=html.unescape(match.group(0).replace('\\/','/'))
            if url not in seen and not IMAGE_BAD.search(url): seen.add(url); values.append(url)
    return values
def search(s,title,limit,search_terms=None):
    endpoint=os.getenv('SEARXNG_URL','http://localhost:8080').rstrip('/')+'/search'
    headers={'X-Search-Token':os.getenv('SEARXNG_API_TOKEN','')}
    terms=' '.join(search_terms or ['漫画','在线阅读','章节'])
    # Proven domains are reusable search parameters derived from previously
    # readable books. Keep a reserved share for unrestricted web discovery so
    # new domains can still enter the ledger and produce descendant rules.
    queries=[(f'site:{domain} "{title}"',domain) for domain in PREFERRED_READABLE_DOMAINS]
    queries.append((f'"{title}" {terms}',''))
    per_query=max(2,limit//max(1,len(queries))); buckets=[]
    normalized_title=re.sub(r'[^0-9a-z\u3400-\u9fff]+','',clean_title(title).lower())
    for query,expected_domain in queries:
        r=s.get(endpoint,params={'q':query,'format':'json','language':'zh-CN'},headers=headers,timeout=35); r.raise_for_status()
        bucket=[]
        for x in r.json().get('results',[]):
            u=str(x.get('url',''))
            result_host=host(u)
            if expected_domain and not (result_host==expected_domain or result_host.endswith('.'+expected_domain)): continue
            # A proven domain is only a search scope, never proof that the
            # returned page is the requested work. SearX backends sometimes
            # ignore quoted terms and return the domain home page, rankings or
            # a different comic. Require title evidence for every bucket so
            # those pages cannot consume the small audit candidate budget.
            evidence=re.sub(r'[^0-9a-z\u3400-\u9fff]+','',html.unescape(
                str(x.get('title',''))+' '+str(x.get('content',''))+' '+u).lower())
            if normalized_title and normalized_title not in evidence: continue
            if result_host in BLOCKED_DOMAINS or NON_COMIC_PATH.search(u): continue
            if u.startswith(('http://','https://')) and not BAD_PATH.search(u) and u not in bucket: bucket.append(u)
        buckets.append(bucket)
    out=[]
    for bucket in buckets:
        for u in bucket[:per_query]:
            if u not in out: out.append(u)
    for bucket in buckets:
        for u in bucket[per_query:]:
            if u not in out: out.append(u)
            if len(out)>=limit: break
        if len(out)>=limit: break
    return out[:limit]
def audit(s,work,url):
    base={'workId':work['id'],'language':work['language'],'category':work.get('category',''),
          'queryTitle':work['canonicalTitle'],'detailUrl':url,'domain':host(url),'policyVersion':POLICY_VERSION}
    try:
        if base['domain'] in BLOCKED_DOMAINS or NON_COMIC_PATH.search(url):
            return {**base,'matchedTitle':'','chapterCount':0,'samples':[],'status':'rejected','rejectionReasons':['non_comic_source']}
        body=fetch(s,url); soup=BeautifulSoup(body,'lxml'); title=page_title(soup); base['matchedTitle']=title
        if not same_title(work['canonicalTitle'],title,work['language']): return {**base,'chapterCount':0,'samples':[],'status':'rejected','rejectionReasons':['title_identity_mismatch']}
        ch=chapters(soup,url)
        if not ch: return {**base,'chapterCount':0,'samples':[],'status':'rejected','rejectionReasons':['no_chapters']}
        order_audit=chapter_order_audit(ch)
        # Most comic sites render the newest chapter first.  The published
        # manifest is an app-facing reading order and must start at chapter 1;
        # keep the detected source direction as audit evidence while reversing
        # a complete descending list before sampling and publication.
        source_direction=order_audit['direction']
        if order_audit['complete'] and source_direction=='descending': ch=list(reversed(ch))
        order_audit={**order_audit,'sourceDirection':source_direction,
                     'publishedDirection':'ascending' if source_direction=='descending' else source_direction}
        # A site can leave one or more dead/locked trailing episodes in an
        # otherwise readable catalog. Find the newest readable episode and
        # publish the longest accessible prefix instead of discarding hundreds
        # of earlier readable chapters because the final link is broken.
        original_chapter_count=len(ch); latest_probe=None; latest_index=len(ch)-1
        for probe_index in range(len(ch)-1,max(-1,len(ch)-21),-1):
            chapter_title,chapter_url=ch[probe_index]
            try:
                chapter_body=fetch(s,chapter_url,url); found=images(chapter_body,chapter_url)
            except Exception:
                found=[]
            probe={'position':'latest','chapterTitle':chapter_title,'chapterUrl':chapter_url,
                   'imageCount':len(found),'readable':len(found)>=MIN_IMAGES,
                   'firstImageUrl':found[0] if found else ''}
            if probe['readable']:
                latest_probe=(probe,set(found));latest_index=probe_index;break
            if latest_probe is None: latest_probe=(probe,set(found))
        inaccessible_tail=max(0,original_chapter_count-latest_index-1) if latest_probe and latest_probe[0]['readable'] else 0
        if inaccessible_tail: ch=ch[:latest_index+1]
        indexes=[0,len(ch)//2,len(ch)-1]; positions=['first','middle','latest']; samples=[]; image_sets=[]
        for pos,index in zip(positions,indexes):
            chapter_title,chapter_url=ch[index]
            if pos=='latest' and latest_probe and latest_probe[0]['chapterUrl']==chapter_url:
                sample,found_set=latest_probe
            else:
                chapter_body=fetch(s,chapter_url,url); found=images(chapter_body,chapter_url);found_set=set(found)
                sample={'position':pos,'chapterTitle':chapter_title,'chapterUrl':chapter_url,
                        'imageCount':len(found),'readable':len(found)>=MIN_IMAGES,
                        'firstImageUrl':found[0] if found else ''}
            samples.append(sample);image_sets.append(found_set)
        # Static decorations and recommendation thumbnails repeat between
        # chapters. Real comic pages must provide substantially different image
        # sets for first/middle/latest samples.
        distinct_chapters=len({x['chapterUrl'] for x in samples})==len(samples)
        overlaps=[]
        for left in range(len(image_sets)):
            for right in range(left+1,len(image_sets)):
                union=image_sets[left]|image_sets[right]
                overlaps.append(len(image_sets[left]&image_sets[right])/len(union) if union else 1.0)
        content_varies=bool(overlaps) and max(overlaps)<0.60
        readable=all(x['readable'] for x in samples) and distinct_chapters and content_varies
        ok=readable and order_audit['complete']
        reasons=[]
        if not readable: reasons.append('chapter_identity_or_content_variation_gate_failed')
        if not order_audit['complete']: reasons.append('chapter_order_or_completeness_gate_failed')
        chapter_manifest=[{'title':chapter_title,'url':chapter_url} for chapter_title,chapter_url in ch]
        order_audit={**order_audit,'sourceChapterCount':original_chapter_count,
                     'publishedChapterCount':len(ch),'inaccessibleTailSkipped':inaccessible_tail}
        return {**base,'matchedTitle':title,'coverUrl':cover(soup,url),'chapterCount':len(ch),'chapters':chapter_manifest,'chapterOrder':order_audit,'samples':samples,
                'status':'verified' if ok else 'rejected','rejectionReasons':reasons}
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
        fingerprint=hashlib.sha256((POLICY_VERSION+CHECKPOINT_SCHEMA+json.dumps(category_policy,sort_keys=True,ensure_ascii=False)+json.dumps(work,sort_keys=True,ensure_ascii=False)).encode()).hexdigest(); checkpoint=a.checkpoint_dir/f"{work['id']}.json"
        if checkpoint.exists():
            saved=json.loads(checkpoint.read_text(encoding='utf-8'))
            if saved.get('workFingerprint')==fingerprint: all_audits.extend(saved['audits']); print(f'[{i}/{len(works)}] resume {work["canonicalTitle"]}',flush=True); continue
        urls=search(session,work['canonicalTitle'],candidate_limit,category_policy.get('searchTerms'))
        audits=[audit(session,work,u) for u in urls]; payload={'workFingerprint':fingerprint,'workId':work['id'],'audits':audits}
        checkpoint.write_text(json.dumps(payload,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); all_audits.extend(audits); print(f'[{i}/{len(works)}] {work["canonicalTitle"]}: {sum(x["status"]=="verified" for x in audits)}/{len(audits)}',flush=True)
        time.sleep(.15)
    a.output.parent.mkdir(parents=True,exist_ok=True); a.output.write_text(''.join(json.dumps(x,ensure_ascii=False)+'\n' for x in all_audits),encoding='utf-8'); return 0
if __name__=='__main__': raise SystemExit(main())
