#!/usr/bin/env python3
import argparse,json
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--ledger',type=Path,required=True);a=p.parse_args();d=json.loads(a.ledger.read_text(encoding='utf-8-sig'));print(json.dumps([x['domain'] for x in d.get('domains',[])],separators=(',',':')))
