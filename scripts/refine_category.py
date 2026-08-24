#!/usr/bin/env python3
"""Deterministically refine one category; suitable for an independent matrix job."""
from __future__ import annotations
import argparse, hashlib, json
from pathlib import Path
from title_normalization import build, load_observations

def main() -> int:
    p=argparse.ArgumentParser(); p.add_argument('--input',type=Path,required=True); p.add_argument('--category',required=True); p.add_argument('--language',default='zh-Hans'); p.add_argument('--output',type=Path,required=True); a=p.parse_args()
    raw=a.input.read_bytes(); observations=load_observations([a.input]); result=build(observations,a.language,a.category)
    semantic=[{k:v for k,v in item.items() if k not in {'observedAt','_input','categoryPage'}} for item in observations]
    result['inputSha256']=hashlib.sha256(json.dumps(semantic,ensure_ascii=False,sort_keys=True).encode()).hexdigest(); result['roughObservationCount']=len(raw.splitlines())
    a.output.parent.mkdir(parents=True,exist_ok=True); a.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(f"{a.category}: {result['roughObservationCount']} rough -> {len(result['works'])} works"); return 0
if __name__=='__main__': raise SystemExit(main())
