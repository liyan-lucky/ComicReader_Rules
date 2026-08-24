#!/usr/bin/env python3
"""Merge all platform outputs into per-category rough files without deduping."""
from __future__ import annotations
import argparse, json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def main() -> int:
    p=argparse.ArgumentParser(); p.add_argument('--input-dir',type=Path,required=True); p.add_argument('--fallback-dir',type=Path); p.add_argument('--platform-output-dir',type=Path); p.add_argument('--output-dir',type=Path,required=True); a=p.parse_args()
    cfg=json.loads((ROOT/'config/catalog_config.json').read_text(encoding='utf-8-sig'))
    categories=[x['id'] for x in cfg['categories'] if not x.get('internal')]
    buckets={key:[] for key in categories}; unknown=[]; platform_counts=Counter()
    inputs=[]
    platform_ids={p.stem for p in a.input_dir.glob('*.jsonl')}
    if a.fallback_dir and a.fallback_dir.exists(): platform_ids.update(p.stem for p in a.fallback_dir.glob('*.jsonl'))
    for platform in sorted(platform_ids):
        current=a.input_dir/f'{platform}.jsonl'; status_path=a.input_dir/f'{platform}.status.json'; chosen=current
        status=json.loads(status_path.read_text(encoding='utf-8-sig')) if status_path.exists() else {}
        if (status.get('status')!='ok' or not current.exists() or current.stat().st_size==0) and a.fallback_dir:
            fallback=a.fallback_dir/f'{platform}.jsonl'
            if fallback.exists() and fallback.stat().st_size>0: chosen=fallback
        if chosen.exists(): inputs.append((platform,chosen,status_path))
    if a.platform_output_dir:
        a.platform_output_dir.mkdir(parents=True,exist_ok=True)
        for platform,chosen,status_path in inputs:
            (a.platform_output_dir/f'{platform}.jsonl').write_bytes(chosen.read_bytes())
            if status_path.exists(): (a.platform_output_dir/f'{platform}.status.json').write_bytes(status_path.read_bytes())
    for platform,path,_ in inputs:
        for line in path.read_text(encoding='utf-8-sig').splitlines():
            if not line.strip(): continue
            item=json.loads(line); platform_counts[item.get('platformId','unknown')]+=1
            (buckets[item['category']] if item.get('category') in buckets else unknown).append(item)
    if not sum(platform_counts.values()): raise SystemExit('no rough items from current or last successful platform snapshots')
    a.output_dir.mkdir(parents=True,exist_ok=True)
    for category,items in buckets.items():
        (a.output_dir/f'{category}.jsonl').write_text(''.join(json.dumps(x,ensure_ascii=False)+'\n' for x in items),encoding='utf-8')
    (a.output_dir/'unclassified.jsonl').write_text(''.join(json.dumps(x,ensure_ascii=False)+'\n' for x in unknown),encoding='utf-8')
    report={'schema':'rough_catalog_report_v1','inputCount':sum(platform_counts.values()),'platformCounts':dict(platform_counts),
            'categoryCounts':{k:len(v) for k,v in buckets.items()},'unclassifiedCount':len(unknown)}
    (a.output_dir/'report.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(report,ensure_ascii=False)); return 0
if __name__=='__main__': raise SystemExit(main())
