#!/usr/bin/env python3
import argparse,json
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--ledger',type=Path,required=True);p.add_argument('--cycle-file',type=Path);a=p.parse_args()
if a.cycle_file:
 c=json.loads(a.cycle_file.read_text(encoding='utf-8-sig')) if a.cycle_file.exists() else {}
 if not c.get('readyForDomainAnalysis'): print('[]'); raise SystemExit(0)
d=json.loads(a.ledger.read_text(encoding='utf-8-sig'));print(json.dumps([x['domain'] for x in d.get('domains',[])],separators=(',',':')))
