# External matching cases and local controls

These are specific, inspectable examples from other matching projects, not
compiler-independent recipes or evidence that our remaining functions are close
in time. Keep this project's compiler, flags, ABI and ROM gates unchanged.

## Recover the real table shape

[FE8 PR676](https://github.com/FireEmblemUniverse/fireemblem8u/pull/676), merged as
`0490874b1f831d6013c761892598a5fbff40dafc`, changes an eight-byte flat lookup
table to a two-dimensional table. Direct row/column indexing replaces the previous
hand-staged implementation. Inspect both the declaration and its consumers;
changing a declaration alone does not establish the original data layout.

**Local control, 2026-11-08:** at main
`092fb0f755e22ee885ce5de8e5dc9014e4ae251b`, the owner tested the four coordinate
reads in `sub_0807C29C` using `s16[][2]` aliases to the two actual coordinate
tables. Signed widths, qualifiers, index expressions, store order and canonical
symbols stayed unchanged. The entire candidate object, normal active-C object
and unchanged control were identical, including all 2698 raw relocation records.
Distance stayed 98 halfword/119 byte edits, size 18400, frame 60 and 393 ordered
calls. This particular array-shape hypothesis is closed; it is not a gain.
Private reproduction: `build/coord082-fe8-array-view-nov08/probe.py` in the
coordinator's independent checkout. Preserve that folder when handing work off.

## Share an actual result and its consumer

[FE8 PR698](https://github.com/FireEmblemUniverse/fireemblem8u/pull/698), merged as
`4d8fe77a95af71a40f442a151f07b34cd03de47e`, assigns a real pointer result in both
branches and returns it once. This removes an empty-assembly workaround from the
event-unit lookup. Its unrelated build-flag changes are not part of this method.

Before applying this idea, inspect existing joins. Our `sub_0802AA28` searches
already assign their real pointer/null results before common consumers. Merely
restating that pattern is not a fresh experiment. Retain the exhausted-search
yield, every first-match rule, and all constructor-result homes.

The [Sonic Battle matching notes](https://github.com/nicklesimba/sonic-battle-decomp/blob/d150f0d135efa1a0c63908a1ff7336648f4ca8cc/decomp/MATCHING_RECIPES.md)
also describe source-dependent cross-jumping. A local `sub_0807C29C` control
named the real signed Y result in secondary states 1/8 and shared its existing
store/footer at the original common-tail boundary. It regressed 98 to 153 halfword
edits and 18400 to 18404 bytes, retaining frame 60 and 393 ordered calls. Rejected;
production remained unchanged. Private reproduction:
`build/coord082-common-y-consumer-nov08/probe.py`.

## Diagnose allocation before adding constraints

[FE8's spline source](https://github.com/FireEmblemUniverse/fireemblem8u/blob/04d1edb163d14bd10777a065697e1a9f17be65f2/src/spline.c)
contains initialized register-bound values consumed by actual arithmetic. This
does not justify unknown outputs, dummy consumers or forcing a spill here.

In a local `sub_0808AFE8` diagnostic, a shared initialized R4 zero recovered the
original prefix but worsened the whole function. Compiler dumps showed why:
assigning the selection from a hard register removed constant-equivalence
provenance; local allocation no longer doubled its live-length cost. Selection
then occupied SL and displaced other values. Restoring only its constant
definition changed which value occupied SL and still regressed. Preserve the
12-edit checkpoint; no forced-stack or binding matrix follows from this result.

## Evidence required for the next experiment

Record the original range, real producers/consumers and one causal hypothesis.
Check preserved attempts before compiling. Reproduce the complete unchanged
module, then compare selected NONMATCHING and normal active-C controls. Audit
outside bytes, raw relocation offsets, symbol metadata and encoded addends,
including explicit translations after size changes. A lower distance or a green
ASM-fallback build is not completion; normal active C must reproduce the ROM.
