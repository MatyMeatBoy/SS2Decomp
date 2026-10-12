# Verified continuation, 2026-10-12

Base: c888132 (Claude's corrected remote branch). Work is on
`codex/verified-decomp`, separate from the old, dirty checkout at bb9104b.
Do not merge the old checkout's unverified drafts into this branch.

## Accepted functions

- sub_0800BD1C: inline the level-table lookup to reproduce load order.
- sub_080573A0: forward the third argument in r2; the old draft dropped it.
- sub_080585F4: pass the result of sub_0805D37C to sub_080687A8.
- sub_0805865C: preserve the full argument at the call site, without the
  truncation introduced by the existing u16 callee prototype.

Each passed object comparison and the complete ROM SHA1 check. The NONMATCHING
build and check_tree.py also passed. Existing compiler warnings remain.

## Next candidates

- sub_0805D348: changing the loop index from u32 to s32 matches in isolation,
  but apply_permuted rejected integration. Investigate in module context.
- sub_08015DC0: store the subtraction before clamping. A direct rewrite has
  one extra load at the return; use a temporary return value.
- sub_0805F184, sub_0805F158, sub_0805F0C4, sub_0805EF90: original assembly
  narrows the loop counter to u8; current drafts use u32.
- sub_080573A0's original callee sub_08068820 consumes all three registers.
- sub_0801AB90: current draft contains inline assembly; isolated MATCH did
  not survive integration. It was left unchanged.

Regenerate draft scores with tools/scripts/nm_drafts.py. Local scratch and
scores are in build/drafts and build/candidates in the attached worktree.

## This Windows environment

The MSYS2 preprocessor defaults to C23. Build with
`make CPP="arm-none-eabi-cpp -std=gnu90" compare` and the same override for
`nonmatching`. Set DECOMP_CPPFLAGS=-std=gnu90 for Python checks.
For apply_permuted.py, set MAKEFLAGS to
`CPP=arm-none-eabi-cpp\ -std=gnu90`.

The installed GNU ld 2.47.20260726 rejects the generated script's
`INCLUDE sym_ram.ld` as a duplicate. Locally, that line was expanded with the
contents of sym_ram.ld in build/ld_script.ld and build_nm/ld_script.ld only.
These generated files are ignored; tracked linker scripts were not changed.
The checksum file must have LF line endings for MSYS sha1sum.

Local Python with pyelftools:
`C:/Users/MP/Documents/00 Claude/ShiningSoul2Decomp/build/validation-venv/Scripts/python.exe`.
Toolchain files and the user's ROM were reused locally and are not committed.
