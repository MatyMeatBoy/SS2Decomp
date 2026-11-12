# Matching giant functions with agbcc: playbook

Written on 2026-11-12 after `sub_0807C29C` (18,396 bytes) and `sub_0800D368`
(25,180 bytes) were matched. They were the last two game functions and had
resisted several multi-day passes. This document records what finally worked,
in a form that can be reused on another agbcc project (for example Shining
Soul 1). Per-site detail is in `shard_notes/shard82.txt` and `shard126.txt`.

The short version: **stop tuning registers and make the C more ordinary.**
Almost every remaining difference came from decompiler artefacts in the draft
(shared `goto` tails, pointer temporaries, `s32` for 16-bit values, variables
merged or split wrongly). Once those were written the way a programmer would
have written them, the compiler reproduced the registers by itself.

## 1. Measure the right thing

A plain diff of a 25 KB function shows thousands of changed lines and is
useless. Use `tools/scripts/srcdiff.py FUNC`. It gives three numbers:

| Number | Meaning | Use |
| --- | --- | --- |
| `hunks` / `insns` | address-insensitive diff of the instructions | overall distance |
| `shunks` / `sinsns` | the same diff with register names normalised | **the real work list** |
| size | bytes versus the ROM | sanity check |

and writes `build/srcdiff_MOD/shunks.txt`, where every differing instruction
carries the C line that produced it (the module is compiled with `-g`, which
does not change agbcc's code).

Rules that follow from how the compiler works:

- **Fix in address order.** Reload picks spill registers round-robin
  (`last_spill_reg` in `reload1.c` is one counter for the whole function). One
  missing or extra reload shifts the register of every later reload until the
  rotation happens to resynchronise. Those shifted registers are noise; the
  first difference is the cause.
- **Check `sub sp` first.** A change that adds one spilled pseudo grows the
  frame by 4 and changes every `[sp, #N]` after it. The counts explode although
  only one thing is wrong. Revert such a change unless the ROM frame agrees.
- **Do not trust a lower count blindly.** Retyping a temporary to `s16` once
  lowered the count while truncating a 32-bit load. Read the instructions the
  change touched.
- One build is about 2.5 seconds. Try three to six spellings of a statement in
  one batch instead of reasoning about one for an hour. The helper scripts used
  for that (`var.py` style: old text, list of alternatives, watch addresses)
  are trivial to rewrite; the point is the habit.

When the function is finished, `nmdiff.py` must print `MATCH`, then
`unwrap_func.py FUNC` and `make compare`.

## 2. Read the compiler, not only its output

The agbcc source is in `tools/agbcc_sdk_cc/source/*/gcc`. Dumps for the real
module are cheap:

```sh
arm-none-eabi-cpp -DNONMATCHING -nostdinc -I tools/agbcc/include -iquote include -undef -std=gnu17 src/MOD.c -o m.i
tools/agbcc/bin/agbcc m.i -mthumb-interwork -O2 -fhex-asm -fprologue-bugfix -g -ds -dG -dl -dg -o m.s
```

`-ds` CSE, `-dG` GCSE, `-dl` local-alloc (per-pseudo `refs`, `live length`,
REG notes, "registers live" per block), `-dg` global-alloc and reload
(`Register dispositions`, `;; N conflicts`, `Spilling reg`). With `-g` the RTL
has line notes, so the insns of one C statement can be found by line number.

Facts that decided real cases:

| Mechanism | Source | Consequence |
| --- | --- | --- |
| Global priority `floor_log2(refs) * refs / live_length`; refs are doubled per loop level | `global.c` `allocno_compare` | Two pseudos within 1% swap registers when one insn is added to a live range. A variable that the draft split into ten temporaries has ten small priorities instead of one large one. |
| `find_reg` avoids registers preferred by lower-priority conflicting pseudos | `global.c` `prune_preferences` | A pseudo can skip a free register. |
| Reload registers rotate; a register holding a live pseudo is skipped; hidden (later cross-jumped) code still consumes rotation steps | `reload1.c` `allocate_reload_reg` | Code that disappears from the final listing still moved the rotation. A `goto` in place of a duplicated tail leaves the rotation short. |
| CSE drops every non-MEM expression containing a MEM at any memory store | `cse.c` `invalidate` | `zero_extend(mem)` of a u16 field is reread after an unrelated store. A `s32 tmp = field` draft keeps the value and the reread disappears. |
| CSE prefers, among equal registers, the one whose last use is latest | `cse.c` `make_regs_eqv` | A variable merged with a later unrelated use replaces other variables in comparisons. |
| GCSE PRE treats loads as expressions and checks stores with `true_dependence` | `gcse.c`, `alias.c` | Loads are removed across stores to other fields unless the two loads are different expressions (`u16` local versus direct field). |
| `regmove` retargets a 2-address destination onto an operand that dies, only if that operand is a `REG` | `regmove.c` | `adds r0, r2, #0; ands r0, r1` appears when both operands live on or one is a SUBREG (u16 variable). |
| jump2 cross-jumps identical tails, including register numbers; after a call that falls into a label there is a `(use (const_int 0))` marker | `jump.c` `find_cross_jump`, `flow.c` `find_basic_blocks` | Two call tails merge only if both calls are followed by a label, i.e. both sit at the end of an `if` with more code after it. |
| A conditional jump over a far target is emitted as the inverse short branch plus `b` | branch shortening | `beq +2; b A; b B` versus `bne +2; b B; b A` tells which of the two targets was the fallthrough in the source. |
| Bit-field stores skip the value mask when the field ends at the top of its access unit | `expmed.c` `store_fixed_bit_field` | `rec->top5 = f();` emits `lsls` only; a middle field emits `and` first. |

## 3. Source shapes, most productive first

Each line is something the draft had (usually from m2c or from earlier
register tuning) and the form that matched.

1. **Shared tails written as `goto`.** If the ROM shows several cases jumping
   into one tail, first write that tail in full in every case and let jump2
   merge the copies. Keep a `goto` only where the copies could not have been
   merged by the compiler (different registers). Converting `goto` tails in
   switches 5, 7, 17, 22, 26, 27, 29 and 30 of `sub_0800D368` removed more than
   half of all differences, because each hidden copy also advances the reload
   rotation.
2. **Range check plus `goto` is a `default:`.** `if (x > 13) goto L; switch (x)
   { ... case 7: case 9: L: ... }` is `switch (x) { ... case 7: case 9:
   default: ... }`.
3. **Order of branches.** When two tails are merged, which copy survives and
   where the branch goes depends on the order of the `if`/`else` arms. In
   switch 5 and 7 case 2, the keep-state arm had to come first:
   `if ((a() != 7) || (t[i] == 0)) keep; else reset;`.
4. **Per-case epilogues.** `fD8 = 0; break;` at the end of each case, not one
   shared statement after the switch (see the cross-jump/`use` row above).
5. **Pointer temporaries.** `t = p->rec; ((R *)t)->field = v;` becomes
   `((R *)p->rec)->field = v;`. 107 of these were inlined automatically, each
   kept only if the count did not get worse.
6. **Types.** Values loaded with `ldrh` and compared or masked are `u16`
   locals, not `s32`. A stack variable compared against a u16 field is u16.
7. **Arrays and structs instead of pointer arithmetic.**
   `*(u32 *)(p + 0xF8 + i * 4)` is `p->fF8[i]`; the addition order
   `(base + 0xF8) + i * 4` comes from the struct form. A history buffer indexed
   by 4 bytes is an array of `{ u16; s16; }`.
8. **Bit-fields.** `ldr mask; ldr word; ands; orrs; str` in that order is a
   bit-field store into a struct variable; `(w & mask) | v` in C loads the word
   first. An 8-byte local handled that way was a struct of bit-fields in one
   branch and of bytes in another.
9. **One variable or several.** Decompiler names such as `temp_r4_10`,
   `temp_r4_11`, `var_r4_11` hint that one callee-saved variable was reused.
   Merge and measure. The inverse also happens: `var_r5` covered seven regions
   and its last region was a different variable.
10. **Direct field reads.** A local holding a field that the draft introduced
    (`keys = p->f12`) is often wrong; direct reads plus CSE give the ROM's
    register use. Where direct reads grow the frame, the local is real.
11. **Inline helpers.** Repeated loops with hoisted invariants in a fixed order
    are `static inline` helpers; the order of `a + b` inside decides which
    invariant is hoisted first.
12. **Booleans.** `x = 0; if (c) x = 1;` versus `if (!c) x = 0; else x = 1;`
    differ in which store is hoisted before the branch. Try both.

## 4. Devices that are acceptable at the end

When one or two sites remain and the cause is a priority tie or a compiler
table decision, a small device is better than an unmatched function. In order
of preference:

1. merge with another variable of the same kind (often removes the need);
2. one empty `asm("")` that lengthens a live range by one insn;
3. `asm("" : : "r"(x));` to add a reference;
4. `register T x asm("rN")` for a block-local.

Comment each one with the reason. Afterwards run `tools/scripts/dehack.py`
(see [CLEANUP.md](CLEANUP.md)): it removes every device that is no longer
needed and proves it by comparing the object file.

## 5. Workflow for the next project

1. Get the draft to compile and to the exact control-flow structure (every
   case present, in ROM order). Do not tune registers yet.
2. Replace decompiler artefacts mechanically across the whole draft before
   looking at any diff: pointer temporaries, `goto` tails, range-check gotos,
   `s32` temporaries for 8/16-bit loads, pointer arithmetic that is a field.
   Each is a scripted pass guarded by "the count must not get worse".
3. Run `srcdiff.py`; walk `shunks.txt` from the lowest address. For each site
   read the ROM order of loads and stores, decide which of the mechanisms in
   section 2 explains it, write the spelling that would produce it, and try a
   handful of spellings in one batch.
4. Commit after every improvement. Record in the shard notes what was tried and
   the mechanism, not only the result.
5. When `shunks` is near zero and `hunks` is not, there is still one invisible
   reload difference upstream: look for a `goto` whose target contains a load
   from a stack slot.
6. Finish with section 4, then `dehack.py`.

What did not pay off: the permuter on functions this large, automatic search
over all type changes (one misleading hit in 500 trials), automatic variable
merging without a reason to suspect the pair, and any amount of register
pinning before the structure was right.
