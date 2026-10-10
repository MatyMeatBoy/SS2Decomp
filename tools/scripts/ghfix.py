#!/usr/bin/env python3
"""Make Ghidra output easier to read: fold literal pool words (DWORD_xxxxxxxx) into
their values, name functions/globals with the project's symbol names.
usage: ghfix.py < ghidra.c > readable.c   (needs baserom.gba)"""
import os, re, struct, sys
sys.path.insert(0, os.path.dirname(__file__))
import decomp
rom = open(os.path.join(decomp.ROOT, "baserom.gba"), "rb").read()
names = decomp.current_names()
for line in open(os.path.join(decomp.ROOT, "sym_ram.ld")):
    m = re.match(r"(\w+) = (0x[0-9A-Fa-f]+);", line)
    if m:
        names.setdefault(int(m.group(2), 16), m.group(1))


def sym(v):
    if v in names:
        return names[v]
    if v & 1 and (v - 1) in names:
        return names[v - 1]
    return "gUnk_%08X" % v if 0x02000000 <= v < 0x09000000 else None


def rep_dword(m):
    a = int(m.group(1), 16)
    v = struct.unpack_from("<I", rom, a - 0x08000000)[0]
    s = sym(v)
    return "%s/*0x%08X*/" % (s, v) if s else "0x%X" % v


t = sys.stdin.read()
t = re.sub(r"\bDWORD_([0-9a-f]{8})\b", rep_dword, t)
t = re.sub(r"\bfunc_0x([0-9a-f]{8})\b", lambda m: names.get(int(m.group(1), 16), "sub_" + m.group(1).upper()), t)
t = re.sub(r"\bSUB_([0-9a-f]{8})\b", lambda m: names.get(int(m.group(1), 16), "sub_" + m.group(1).upper()), t)
t = re.sub(r"/\* WARNING:.*?\*/\n?", "", t)
sys.stdout.write(t)
