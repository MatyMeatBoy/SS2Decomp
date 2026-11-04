# Optional SDK comparison-flag reuse

`sh tools/install_agbcc_sdk_cc.sh` builds an isolated compiler in
`tools/agbcc_sdk_cc`. The `m4a_1_engine` translation unit opts in; existing
compiler installations remain separate. The new `-fthumb-cc-reuse` option defaults to zero and works
with or without `-ftst`.

The pinned upstream source is revision
`1b1c4a81d13918ca55c39c1ccf83689691b03a25` of Dream-Atelier/agbcc
(now macabeus/agbcc). Archive SHA256 is
`7afb90d0fd3495cc19925a8cc454261bcceaf30ec4c138f5bd61a3302ef2c4b1`.
The installer verifies that archive, the existing equality-only TST patch,
and `agbcc-sdk-cc-reuse.patch` with SHA256
`dd44036beac5e032d8e2e306c8d366bc21d8db4e9e19cb450fea4d702f009cd6`.
The label-reuse extension described below is applied separately.
All patches apply with zero fuzz. The GPL source, license and installation
hashes remain in the isolated installation; no compiler binary is versioned.

The option uses GCC's existing final comparison elimination with two facts:

- A genuine CMP of registers/constants supplies all NZCV bits. An identical
  comparison can reuse them through a conditional branch or a simple store
  that changes neither operand nor flags.
- Thumb AND supplies the zero/nonzero result, but preserves V and changes
  carry differently from CMP with zero. Its result may replace a later zero
  comparison only after simple stores, with an equality consumer and a proof
  that both control-flow paths cannot observe the old C/V bits before a full
  comparison or the C call/return ABI ends their contract.

The proof rejects opaque ASM, ordered flag consumers and unknown control flow.
It shares a 256-instruction traversal budget across both paths, so loops and
branch expansion fail closed within a fixed work bound. Store recognition is
limited to low-register byte, halfword and word stores without side effects;
volatile and postincrement stores are excluded. Unknown operations invalidate
the remembered comparison. A logical-result fact is cleared after its first
branch; only a full CMP fact may persist across a conditional branch.
There are no ROM addresses, function-name exceptions, instruction blobs or
post-compilation rewrites in the patch.

Run the ROM-free regression checks with:

```sh
python3 tools/scripts/test_sdk_cc_reuse.py
```

The script accepts `--compiler`, `--reference-compiler`, `--deps` and `--out`.
It executes 62,640 cases per configuration (563,760 total).
Nine profiles cover the TST reference, reuse off, base reuse with and
without TST, label plus sign reuse with and without TST, label reuse without
base reuse, sign reuse without label reuse, and sign reuse without base reuse. Values include boundaries and deterministic random pairs, all
16 incoming NZCV combinations, both branches, memory stores, mixed signed
conditions, operand changes, opaque ASM on either path, postincrement and a
real call to a flag-preserving C identity function. Every run checks return
PC, SP and r4-r11 as well as C results and memory. A non-returning loop with
the expected value already in r0 must be rejected.

Assembly checks require the intended AND/store/branch and shared-CMP forms,
and retain comparisons in the excluded cases. The disabled compiler must
produce exactly the reference text bytes. CI builds the isolated compiler
and runs these checks. These compiler tests add no matching-function credit;
any later SDK activation still requires its own strict byte/relocation and
full-ROM verification.

## Unique-predecessor label extension

The separate `agbcc-sdk-label-cc-reuse.patch` has SHA256
`6492f5ca23c68a471f4cb4c92e32ed4344984ea73b1c4d12cd52f1ffbf805d5f`.
It adds default-off `-fthumb-label-cc-reuse`, which also requires
`-fthumb-cc-reuse`. The `m4a_1_engine` unit explicitly enables this extension.

At a label, a Thumb-specific hook may replay a full CMP from its unique
taken predecessor. It requires a barrier before the target (no fallthrough),
a direct conditional CC0 branch, a forward target within 256 RTL nodes, and
an immediately preceding explicit COMPARE of a low SI register with another
low SI register or a nonnegative 8-bit immediate. It excludes high registers,
back edges, shared labels and unknown patterns. GCC's globally disabled
label-replay code stays disabled. Other targets and disabled output are
unchanged.

Implicit register-versus-zero facts are deliberately excluded: a zero
comparison may have been elided after AND, so replaying it as a full CMP
could incorrectly promote its carry and overflow bits. An explicit COMPARE
can only have been elided against the same full-CMP fact. The accepted low
register CMP and conditional branch have no target-output flag side effects.
Instructions after the label still invalidate facts normally.

The regression suite requires a single CMP for signed/unsigned taken-edge
chains and store chains only when label reuse is enabled. Shared/fallthrough
joins retain their comparisons, as does a target containing real flag-changing
inline ASM. All profiles execute boundaries, seeded random operands, every
incoming NZCV value and both initial join states, checking C results, memory,
return PC, SP and preserved registers. Enabling the label option without base
reuse must be byte-identical to the reference. No SDK function is activated
or credited as matching by this tooling change.

## Arithmetic result-sign extension

The separate `agbcc-sdk-sign-cc-reuse.patch` has SHA256
`f434c8999569964798b40adfb9d29a5dde6bfbb04395d697feebe4b2820217e0`.
Its default-off `-fthumb-sign-cc-reuse` requires base comparison reuse but is
independent of label reuse. The `m4a_1_engine` unit explicitly enables it.

A low SI register addition of two low registers supplies the result's N bit
even when its V bit differs from CMP(result, 0). The extension accepts only
a following implicit zero comparison, through at most eight simple stores,
with one GE/LT consumer. That consumer becomes PL/MI, which tests N directly.
It shares the bounded both-path proof that the old C/V contract ends before
any later observer. Arbitrary signed GT/LE and unsigned comparisons are
excluded; a general addition is not treated as a full comparison. The fact
is cleared after its single sign consumer.

A target-specific condition-status bit selects PL/MI in the existing Thumb
branch formatter. GCC's comparison elimination still decides whether to
omit the comparison; no instructions are rewritten after assembly. Unknown
operations and opaque ASM invalidate the fact, including ASM on the taken
path. The accepted arithmetic remains C.

Fixtures use unsigned addition followed by signed interpretation, so overflow
inputs have defined wraparound rather than undefined signed arithmetic. They
exercise both sign predicates, zero, overflow boundaries, all incoming NZCV
values, a later ordered comparison and real flag-clobber ASM before the test
and on the taken path. Assembly requires PL/MI for the positive fixtures,
retained CMP for GT and opaque controls, and a fresh CMP for the subsequent
ordered consumer. Option-off and sign-without-base output remain reference
byte-identical. This compiler capability adds no matching-function credit.

## Byte-seeded loop decrement extension

The separate `agbcc-sdk-loop-cc-reuse.patch` has SHA256
`4de75458ad2a2472c5b83e7254abd9cacae5ac53b951385d30b4b4f194fc5beb`.
Default-off `-fthumb-loop-cc-reuse` requires base comparison reuse; the
`m4a_1_engine` unit explicitly enables it.

The proof accepts only a low SI counter loaded from a nonvolatile unsigned
byte before a single-entry loop, with no other counter definitions, calls or
opaque ASM in the body. The sole decrement is immediately followed by a zero
comparison and a signed GT backedge. Every region label's outside incoming
edges are checked, and unknown indirect/switch jumps are rejected. The byte
seed scan is bounded to eight instructions, region traversal to 256 nodes
and the whole-function entry audit to 4096 nodes. Budget exhaustion rejects
the optimization. Full INSN register-set checks include writeback notes.

Inductively, the first input lies in 0..255; repeated iterations receive a
positive previous result. Only SUB #1 changes it, so its result is -1..254
and overflow is zero. Its NZV therefore matches CMP(result,0) for signed GT.
A shared bounded proof additionally rejects any later observer of the
different carry bit on either path. The fact is cleared after the consumer.
This reasoning does not apply to arbitrary 32-bit counters at INT_MIN.

Run `python3 tools/scripts/test_sdk_loop_cc_reuse.py` (the same compiler,
reference, dependency and output arguments as the main CC suite). Six
profiles cover reference, off, base only, loop plus base, all reuse options
combined and loop without base. They test every byte seed with all incoming NZCV combinations and
ABI/memory/return checks. Negative controls cover arbitrary word counters
including INT_MIN, changed counters, outside entry to an inner label, body
ASM, volatile seeds, real C calls, opaque exit paths and the traversal bound.
Only the admitted byte loop loses its comparison; all excluded loops retain
it. A non-returning loop with the expected r0 already present must fail the
return check. Off and loop-without-base text are reference byte-identical.
CI runs this ROM-free suite. No SDK function is activated or credited here.

## Later existing literal pools

The separate `agbcc-sdk-late-pool.patch` has SHA256
`5d03b24a211750423a708b5fdc207afe26e73216b49babeba2a769b8db9be408`.
Its independent `-fthumb-late-pool` option defaults off. The `m4a_1_engine`
unit explicitly enables it. Legacy pool placement returns the first barrier;
the option may choose a later existing barrier within a conservative bound.

The bounded 4096-node scan counts instruction lengths and reserves space for
every pending literal, intentionally overcounting duplicates. Halfword
constants reserve a word, matching reorg's promotion, and doubleword constants
reserve eight bytes. Prospective literal-load lengths are also bounded below.
Only a barrier with code plus reserved literals at most 1000 bytes qualifies,
leaving margin for alignment and Thumb PC bias within its 1020-byte reach.
Unsupported sizes stop the search. Without an admitted later barrier, the
compiler falls back to unchanged legacy placement. Existing pool/relocation emission is reused.
There are no forced placements, ROM/function exceptions or opcode rewrites.

Run `python3 tools/scripts/test_sdk_late_pool.py`, accepting the same compiler,
reference, dependency and output arguments as the CC suite. Five profiles
execute 140,000 cases: reference, off, late placement, all options combined,
and late placement without TST. The off text is byte-identical to reference;
the positive fixture must move its word pool after the return.

Tests include 120 distinct constants and multiple barriers, a long function
with 520 volatile updates beyond the reach budget, 32/64-bit values and linked
read-only data references. They execute boundaries and seeded random values
with all incoming NZCV combinations and check memory, 32/64-bit results,
return PC, SP and r4-r11. Linked ELF sections are loaded at actual addresses.
A spinning negative control with the expected r0 already present must fail
return validation. CI runs these ROM-free tests. Compiler defaults remain
off; the module explicitly opts in. These tests award no matching function.
