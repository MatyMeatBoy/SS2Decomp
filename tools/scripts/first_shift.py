#!/usr/bin/env python3
"""first_shift.py  print the first sub_XXXXXXXX symbol of the built ELF whose address differs from its name (size culprit = previous symbol)."""
import subprocess, re, sys, os
os.chdir(os.path.join(os.path.dirname(__file__), "..", ".."))
out = subprocess.run(["arm-none-eabi-nm", "-n", "shiningsoul2_eu.elf"], capture_output=True, text=True).stdout
prev = None
for l in out.splitlines():
    p = l.split()
    if len(p) == 3 and re.fullmatch(r"sub_[0-9A-F]{8}", p[2]):
        a = int(p[0], 16) & ~1
        if a != int(p[2][4:], 16):
            print("first shifted", p[2], hex(a), "culprit (previous):", prev); break
        prev = p[2]
else:
    print("no shifted symbols")
