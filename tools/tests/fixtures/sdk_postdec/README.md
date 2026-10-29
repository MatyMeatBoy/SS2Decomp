# SDK post-decrement flags and reader container

The opt-in compiler is upstream Dream-Atelier/agbcc GPL-2.0-or-later at the pinned revision/archive in provenance.json, plus four accepted SDK patches and this separate default-off delta. Upstream COPYING is retained by the installer. Only m4a_1_read opts in. No game compiler flags change.

Before first flow and allocation, generated-pseudo COPY old; SUB count,count,1; CMP old,1 becomes a tied PARALLEL updating count and comparing its OLD value. SUB(old,1) and CMP(old,1) have equal full NZCV for every u32, including0x80000000. No range assumption or post-reload hard-register deletion. TMP is non-user/non-virtual pseudo with exactly two instruction mentions; all patterns, notes and call-usage are scanned. Structural notes reject. Only scalar equivalence and rebuilt liveness notes are discarded. conds=changed prevents stale CC_STATUS for subsequent comparisons of the new count.

MPlayJumpTableCopy contributes24 bytes:18 C algorithm bytes,4 explicit ABI save/return bytes,2 alignment. Other40 reader bytes get no new credit. Validation helper's typed R0-preserving ABI view is backed by original unconditional PUSH/POP R0 on every exit; R1/R2/R3/IP contracts remain explicit. The genuine readonly4-byte C pointer _080B69A8 is shared. Classification is mixed C/ABI, not pure C. No fake symbol sizes or opcode blobs.

Original immutable oracle is tools/tests/fixtures/sdk_flags/m4a_1_read.s. Checker links all64 bytes at canonical address and appends normal .align2,0, matching the existing module/ROM final zero padding at69B6. It checks natural function sizes22/20, five canonical active C entries, literal object4 and no final relocations. This replaces per-function comparison because the genuine shared object and external ABI return naturally split ELF sizes.

Commands from any CWD (absolute script path allowed):

- python tools/scripts/test_sdk_reader_match.py [--deps DIR] [--out DIR]
- python tools/scripts/test_sdk_postdec_flags.py [--deps DIR] [--out DIR]
- python tools/scripts/test_sdk_postdec_rtl.py [--source GCC_SOURCE] [--out DIR]

Target script builds the actual Makefile TU with exact selected flags/compiler; compares full64 and runs51200 original/candidate all-register/stack/return/NZCV executions plus two actual C negative controls with correct final R0 (callee damage and nonreturn). Synthetic low data anchor exercises validation branches, without code patching. Generic23-function matrix runs105984 executions across accepted/default-off/on, asserts actual opt-in removal and entire option-off object identity. Host61 checks link the actual compiler pass, including live TMP, hard/user/virtual registers, notes/callusage, structural libcalls and later new-count condition. No ROM is needed for these CI checks. Normal make compare and NONMATCHING remain integration gates.

Private independent reconstruction recipe and historical RED sources/logs are preserved in owner build/try/postdec-flags/REVIEW.md: virtual-count RED53/1 and dropped-libcall-notes RED61/2. Only the fixed whitelist delta is packaged.
