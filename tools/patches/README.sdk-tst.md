# Optional SDK TST compiler

The standard compiler in `tools/agbcc` remains unchanged. The opt-in
compiler is built separately with:

```sh
sh tools/install_agbcc_tst.sh
python3 tools/scripts/test_sdk_tst.py
```

The test requires pyelftools and Unicorn; `--deps DIR` accepts a private
Python dependency directory. It compiles generic C fixtures, not SDK/ROM
code. Each compiler executes 23,200 cases in Unicorn, covering zero,
positive, negative, boundary and seeded random inputs; all 16 incoming
NZCV flag combinations; equality, signed ordering, live AND results and
multiple conditions. Every case requires actual return PC, restored SP and
preserved r4-r11, initialized along with scratch registers before each run.
A non-returning C loop with r0 already equal to the expected value must be
rejected as a negative control. The report is written below `build/sdk_tst_tests`.

Source: Dream-Atelier/agbcc (redirected to macabeus/agbcc), commit
`1b1c4a81d13918ca55c39c1ccf83689691b03a25`, archive SHA-256
`7afb90d0fd3495cc19925a8cc454261bcceaf30ec4c138f5bd61a3302ef2c4b1`.
The installer verifies that archive and the versioned patch before building
with `make -C gcc -j1 normal`. The source and original GPL v2-or-later
`gcc/COPYING` are retained in the isolated installation. No binary is
versioned and no generated assembly or object bytes are rewritten.

The upstream `-ftst` patterns alone are unsafe for ordered comparisons:
`(a & b) > 0` can become TST followed by BLE. Thumb TST preserves V,
whereas CMP with zero clears V; `a=b=1`, incoming V=1 then returns false.
The patch gates both TST and AND-with-flags patterns with GCC's existing
`next_insn_tests_no_inequality(insn)` predicate. Unknown users are rejected;
only EQ/NE may observe those flags, so C/V differences cannot affect the
condition. Live AND results retain the AND instruction. Ordered comparisons
keep their explicit CMP. There are no function names, ROM addresses or
program-specific code-generation exceptions in the patch.

The option stays off unless `-ftst` is explicitly selected for a dedicated
SDK translation unit. Game compilation flags are unaffected. A compiler
fixture pass or an isolated SDK match is not a matching-function claim;
normal integrated ROM comparison remains mandatory.

## Strict SDK source oracles (no ROM)

`python3 tools/scripts/test_sdk_tst_matches.py` builds the real production
translation units of ply_fine and TrackStop in a fresh private BUILD. It
requires each target to be an active preprocessed C definition, then uses
`decomp.compare` (the existing strict bytes/relocations normalizer) against
their original ASM fixtures. Canonical symbol resolution uses versioned
source/config only, with no linked ROM symbol cache. CI runs both checks.
The two ASM oracle files are unmodified copies from revision
`a533caf3ac7046d9308910581c2af7688b29ce9c`, originally under
`asm/nonmatchings/m4a_1/`. They are test expectations, not implementation
code or assembler substitutions for C.
