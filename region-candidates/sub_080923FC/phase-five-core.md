# EU sub_080923FC phase-five core candidate

Frozen checkpoint: `27fb21f1df1986ea7447eb331223b54fa974481b`.
Actor: `sol-match-b-eu`; private branch `codex/923fc-phase-five-nov07`.
Original interval: `[0x0809295A,0x080929AE)`; unique draw-return entry and
common busy-gate exit. No production source, alias, report or tool was edited.

## Result and hypothesis

Baseline and candidate are both2236 bytes/frame332 with all94 external calls
in the original static order. Positional differing halfwords against original
improve136 to131. This remains strictly NONMATCHING; no matching-byte credit.
Candidate normalized byte SHA256:
`a9072d16fb281ee3bcb5bbce5df9714a1fccf6cf5f117f7ab0666bab36cd895b`.

Carry the real computed upper halfword in a block-local s32 through the lower
clamp, and compute the representable s16 lower clamp value before the comparison.
This keeps the upper value alive instead of conservatively reloading through a
potentially aliasing offset pointer after the lower store. It mirrors the
original dataflow without adding bindings, asm, identities or helpers. The two
locals are declared in a nested block after the draw, inside the reserved core.

The original r3 clamp diagnostic is signed32 -66; this candidate holds the same
low halfword FFBE with zero upper bits. Only STRH consumes it; r3 is dead at the
common exit. No preserved program value relies on those upper bits.

## Owner-managed coupling request

The only changed halfwords outside the candidate core `[+562,+5B2)` are+502
and+508: the emitted preheader swaps Hi/cache from R4/R5 to R5/R4. Low remainsR6.
The owner explicitly permitted private testing of this coupling; production
acceptance is still pending. No preheader source or outside declaration changes
are requested. Every other target byte, every target relocation and all literal
pool words equal the frozen baseline. The whole-module .text outside this target
also equals the frozen normal object. Already-exact phase2/phase3 blocks and their
literal dependencies therefore remain exact.

Controlled normal compiler dumps explain the recolor: high pseudo46 loses the
extra memory-reload reference, from11 refs/live200 to9/live202; cache592 (9/196)
becomes cache595 (9/198). Sorted allocation changes high/cache/low to
cache/high/low. Low45 changes9/live202 to9/live204. Both independently emitted
`-dl -dg` objects strictly equal their normal undumped module target bytes AND
relocations; diagnostic flags did not select different machine code.

## ABI and behavioral audit

Keep the complete frame332 and targetS+12C=incomingSP-64. All four target stores,
its load and intervening unrelated code are byte-identical to the frozen seed;
kind0 still inherits that exact slot. No target initialization or domain guard is
added. The busy, transfer, draw, timer==60 sound, yield, cancellation and timer
backedge code remain byte-identical. All94 call relocation offsets and targets
are identical to the frozen seed. No calls occur inside the replacement core.

The accumulator still wraps low16 after+4 and stores zero-extended32. Delta is
signed16(accum)>>8. Upper arithmetic spans only[-128,65662], so it fits s32;
clamp=-66 is representable in s16. Store/truncate low then high before clamping,
compare the wrapped signed halfwords, then write cache0/1/2/3 in original order.
The cache arithmetic retains signed16 shake and unsigned16 offset loads.

`core_check.py` passed9048 constructed original-ASM versus selected-core pairs,
plus9048 independent ordered-write model checks.7000 edge combinations cover14
accumulator values around delta/overflow boundaries,10 low and10 high values
around signed/clamp boundaries, and5 signed-shake values;2048 additional cases
use a fixed random seed. v250/v254 and stack sentinels vary. The harness compares
all512 stack bytes around the frame,48 bytes around the offset globals,32 bytes
around cache, exact write addresses/widths/values/order, and persistent registers
under each implementation's actual pointer map. The original and candidate
entry offsets differ (+55E/+562); both stop at+5B2. The normal source-derived
negative control changes only increment4 to8 and is detected at accumulatorFFFC.

These are bounded core-entry tests, not complete function, busy/draw execution,
engine, scheduler, timing, arbitrary memory or formal C equivalence. No new
full-function emulator suite or active-C ROM comparison was run by this worker;
the owner assembles the function and performs those gates. The ASM fallback stays.

## Reproducible private evidence

All files below are preserved in
`D:/01Claude/GBA/ss2-nov05-worker59/build/sol-b096-phase-five/`:

- `probe.py`, `baseline-module.c`, `baseline-body.c`, `control.{i,s,o}`,
  `baseline167.{json,diff}` and `region-status-before-submit.json`.
- `core-carried-upper-staged-clamp.{c,body.c,i,s,o,json,diff}`,
  its `-source.diff` and `-v-baseline.diff`, and `selected-proof.json`.
- `baseline-dump.i.{lreg,greg}`, `selected-dump.i.{lreg,greg}`,
  corresponding strict-equal dump objects, `compiler-pass-summary.txt`.
- `original.o`, `core_check.py`, `core-check-report.json`,
  `negative-step8.{c,body.c,i,s,o,json,diff}`, `negative-step8-report.json`.

The fresh actual full NONMATCHING log is
`../sol-b027/region096-frozen167-nm.log`. The private unchanged full-module
control strictly equals both actual target bytes/relocations and its whole.text.
Normal commands are cpp `-nostdinc -I tools/agbcc/include -iquote include -undef
-std=gnu17 -DNONMATCHING`; agbcc `-mthumb-interwork -Wimplicit -Wparentheses -O2
-fhex-asm -fprologue-bugfix`; as `-mcpu=arm7tdmi -I .`. Run the private Python
with PATH prefixed by C:/msys64/ucrt64/bin and C:/msys64/usr/bin. Unicorn is reused
read-only from the documented goal-emulation-deps path inside `core_check.py`.

## Rejected controls

- Reusing existing d to carry upper:2236/frame332,162 differing halfwords;
  changes unrelated PRE spill homes and later register choices. Rejected.
- Reusing d for the staged clamp alone:2236/frame332,137 differing halfwords;
  only core changes, but does not remove the upper reload. Rejected.
- Selected carried-upper plus s32 clamp instead of s16:2236/frame332,
  140 differing halfwords. Rejected; no declaration/type matrix or permuter.
- Historical183/209 ranked-pointer227/210 package was read and not repeated:
  no persistent cache pointer or reversed offset initializers in this candidate.

## Complete instruction delta versus frozen baseline

```diff
--- baseline
+++ core-carried-upper-staged-clamp
@@ -615,10 +615,10 @@
 ldr r7, [pc, #548]
 mov r9, r7
 ldr r6, [pc, #548]
-ldr r4, [pc, #552]
+ldr r5, [pc, #552]
 movs r0, #180 @ 0xb4
 mov r8, r0
-ldr r5, [pc, #548]
+ldr r4, [pc, #548]
 movs r1, #124 @ 0x7c
 lsls r1, r1, #16
 str r1, [sp, #316] @ 0x13c
@@ -664,45 +664,45 @@
 bl 0
 R_ARM_THM_CALL sub_08007870
 ldr r3, [sp, #292] @ 0x124
-lsls r1, r3, #16
-movs r0, #128 @ 0x80
-lsls r0, r0, #11
-adds r1, r1, r0
-lsrs r2, r1, #16
+lsls r0, r3, #16
+movs r1, #128 @ 0x80
+lsls r1, r1, #11
+adds r0, r0, r1
+lsrs r2, r0, #16
 str r2, [sp, #292] @ 0x124
-asrs r1, r1, #24
+asrs r0, r0, #24
 ldrh r2, [r6, #0]
-subs r2, r2, r1
+subs r2, r2, r0
 strh r2, [r6, #0]
-ldrh r0, [r4, #0]
-adds r0, r0, r1
-strh r0, [r4, #0]
+ldrh r1, [r5, #0]
+adds r0, r1, r0
+strh r0, [r5, #0]
+mov r1, r9
+lsrs r3, r1, #16
 lsls r2, r2, #16
 cmp r2, r9
 bgt.n 58a
-mov r3, r9
-asrs r0, r3, #16
-strh r0, [r6, #0]
-movs r1, #0
-ldrsh r0, [r4, r1]
+strh r3, [r6, #0]
+lsls r0, r0, #16
+asrs r0, r0, #16
 cmp r0, #49 @ 0x31
 ble.n 596
 movs r0, #50 @ 0x32
-strh r0, [r4, #0]
+strh r0, [r5, #0]
 ldr r0, [pc, #412]
 ldrh r0, [r0, #0]
-strh r0, [r5, #0]
+strh r0, [r4, #0]
 ldrh r0, [r6, #0]
 lsls r1, r7, #16
 asrs r1, r1, #16
 adds r0, r1, r0
-strh r0, [r5, #2]
+strh r0, [r4, #2]
 ldr r0, [pc, #400]
 ldrh r0, [r0, #0]
-strh r0, [r5, #4]
-ldrh r0, [r4, #0]
+strh r0, [r4, #4]
+ldrh r0, [r5, #0]
 subs r0, r0, r1
-strh r0, [r5, #6]
+strh r0, [r4, #6]
 mov r2, r8
 cmp r2, #60 @ 0x3c
 bne.n 5be
```
