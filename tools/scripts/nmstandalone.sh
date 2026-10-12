#!/bin/sh
# nmstandalone.sh MODULE OUT.c : preprocessed single-file view of src/MODULE.c with NONMATCHING drafts (for decomp.py check / permute.py)
cd "$(dirname "$0")/../.."
arm-none-eabi-cpp -DNONMATCHING -nostdinc -I tools/agbcc/include -iquote include -undef "src/$1.c" -o "$2.tmp" && grep -v '^#' "$2.tmp" | cat -s > "$2"; rm -f "$2.tmp"
