#!/usr/bin/env python3
"""idle_workers.py FILE  parse a saved list_sessions result; print 'title session_id status' of non-archived worker sessions."""
import json, sys
t = open(sys.argv[1]).read()
d, _ = json.JSONDecoder().raw_decode(t[t.find('{'):])
ss = d["ccr"]["data"] if "ccr" in d else d["data"]
for s in sorted(ss, key=lambda s: s.get("title", "")):
    if not str(s.get("title", "")).startswith("worker/"): continue
    st = s.get("session_status", "").replace("SESSION_STATUS_", "")
    if st == "ARCHIVED": continue
    print(s["title"], s["id"], st)
