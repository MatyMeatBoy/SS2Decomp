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
Both patches apply with zero fuzz. The GPL source, license and installation
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
It executes 37,120 cases per configuration: the existing TST compiler, the new
compiler with the option off, with both options on, and with only the new
option on. Values include boundaries and deterministic random pairs, all
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
