# SDK compiler options

This package extends the separately reviewed equality-only TST compiler. The
Makefile selects its shift and alignment options for `m4a_1_read`. Both new
options default to off for other compiler invocations.

Source: Dream-Atelier/agbcc (redirects to macabeus/agbcc), revision
`1b1c4a81d13918ca55c39c1ccf83689691b03a25`. The installer verifies the same source
archive and base TST patch hashes as `install_agbcc_tst.sh`, then applies
`agbcc-sdk-lsr-halfword.patch` (SHA256
`6848bb2b38fb803a44c2f9e61b9af8aa00359ab2ca13df6973e6e8f3a13640cc`).
Source, COPYING and build outputs remain in the separate ignored
`tools/agbcc_sdk_flags` directory. GCC's original license applies. The installer
preserves ZIP Unix modes, including the upstream `move-if-change` executable.

`-flsr-flags` adds two generic Thumb RTL patterns, for a dead or live shift
result. They accept immediate logical right shifts 1 through 31 and only
equality/inequality flag consumers through GCC's existing liveness predicate.
Zero is excluded because Thumb encodes immediate LSR zero as 32. No addresses,
function names, output rewriting or generated instruction bytes are involved.

`-fthumb-halfword-align` lowers the Thumb function boundary from 32 to 16 bits.
It leaves literal pools and ARM trampoline templates word aligned. The explicit
`TRAMPOLINE_ALIGNMENT 32` is necessary because this GCC otherwise derives that
value from FUNCTION_BOUNDARY; the older TRAMPOLINE_ALIGN macro is not consumed
there. This also preserves runtime trampoline pointer rounding to four bytes.

Reproduce with an ARM binutils toolchain, host GCC, make, patch, Python,
pyelftools and Unicorn on PATH:

```sh
sh tools/install_agbcc_sdk_flags.sh
python3 tools/scripts/test_sdk_lsr_flags.py --compiler tools/agbcc_sdk_flags/bin/agbcc
python3 tools/scripts/test_sdk_halfword_alignment.py --compiler tools/agbcc_sdk_flags/bin/agbcc
python3 tools/scripts/test_sdk_trampoline_alignment.py --compiler tools/agbcc_sdk_flags/bin/agbcc
```

On Windows append `.exe` to compiler paths. The two emulation scripts accept
`--deps DIR` for an optional Python dependency directory. All scripts accept
`--reference-compiler PATH` to compare option-off objects against the accepted
TST compiler. The nested regression additionally accepts `--unsafe-compiler`
for the preserved experimental compiler: it must reject the template pointer
that precedes the real first ARM instruction by two bytes. This regression
checks symbols and relocated literal addends with a parent at offset +2.

The LSR suite covers 256 functions, shift boundaries, signed comparisons,
multiple conditions, live results and incoming NZCV combinations. The alignment
suite covers actual offset +2 entries, cross-object BL relocations, branches,
and word-aligned symbolic and numeric literal pools. Both require return PC,
SP and r4-r11 preservation per execution and reject a spinning negative control
whose r0 already equals the expected result. No ROM is required by these tests.
