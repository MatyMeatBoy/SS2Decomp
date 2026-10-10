#!/bin/sh
# gv.sh FUNC  -> asm + Ghidra decompile of FUNC (needs GHIDRA_OUT dir with <ADDR>.c files)
f=$1
a=$(echo "$f" | sed -n 's/.*_\([0-9A-F]\{8\}\)$/\1/p')
[ -z "$a" ] && a=$(grep -m1 " $f\$" tools/config/functions.cfg | sed 's/.* 0x\([0-9A-Fa-f]*\).*/\1/' | tr a-f A-F)
echo "=== Ghidra"; cat "${GHIDRA_OUT:-/tmp/ghi}/$a.c" 2>/dev/null
echo "=== asm"; grep -v thumb_func asm/nonmatchings/*/$f.s
