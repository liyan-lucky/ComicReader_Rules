#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from pathlib import Path
from domain_ledger import build
def main():
 p=argparse.ArgumentParser();p.add_argument('--input-dir',type=Path,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--domain-output',type=Path,required=True);a=p.parse_args();selected=[];rejected=[]
 for path in sorted(a.input_dir.glob('*.json')):
  d=json.loads(path.read_text(encoding='utf-8-sig'));selected.extend(d.get('selected',[]));rejected.extend(d.get('rejected',[]))
 result={'schema':'comic_best_sources_v3','selected':selected,'rejected':rejected};a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');a.domain_output.write_text(json.dumps(build(result),ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(f'{len(selected)} selected, {len(rejected)} rejected')
if __name__=='__main__':main()
