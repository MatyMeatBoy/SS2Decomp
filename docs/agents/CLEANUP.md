# Source cleanup after the match

The ROM builds from C, but much of that C still carries devices that were
needed (or believed to be needed) to steer agbcc: `register T x asm("rN")`
pins, empty `asm("")` statements, `asm("" : : "r"(x))` priority references and
`asm("" : "+r"(x))` barriers. On 2026-11-12 there were about 4,000 pins and
1,700 empty-asm statements in `src/`.

Cleanup has one rule: **`make compare` must stay OK.** A change that alters one
byte is not a cleanup. Because the ROM is the judge, this work is safe for
small models and can be split freely.

## Tier 1: automatic (no judgement)

```sh
make -j8 compare                                   # must print OK first
python3 tools/scripts/dehack.py MODULE [MODULE...] --log build/dehack.log
make -j8 compare && python3 tools/scripts/check_tree.py && make -j8 nonmatching
```

`dehack.py` tries every device, one at a time, in its plain-C spelling and
keeps the change only if `build/src/MODULE.o` is byte-identical. About 60% of
the devices in the first modules went this way. It takes roughly one second per
device. A second run after other cleanups can remove more, because devices
interact.

Units of work: **one module (`src/MODULE.c`) per worker and per PR.** Reserve it
by opening a draft PR titled `cleanup: MODULE` before starting; two people on
one module only produce merge conflicts. List the modules and their remaining
device counts with:

```sh
for f in src/*.c; do echo "$(grep -cE 'asm\("r[0-9]+"\)|asm\(""' $f) $f"; done | sort -rn
```

**Tier 1 was run over every module on 2026-11-12**: about 5,700 devices went down
to 2,124 (63% removed). What is left needs tier 2. Largest modules now:
`code_0807A5D4` 278, `code_080443EC` 192, `code_0802FEA0` 181, `code_0803B69C` 176,
`code_08095B04` 140, `code_08087CC0` 134, `code_0804D330` 122; every other module
has fewer than 70. Run tier 1 again on a module after any tier 2 change in it.

## Tier 2: guided (small model with a checklist)

For each device `dehack.py` could not remove, try these in order. After each
try run `make -s build/src/MODULE.o` and compare with the saved good object
(`cmp`); keep the first that is identical.

1. **Merge.** The pinned variable is the same variable as another one of the
   same type nearby (same register in its name, used in a sibling case). Replace
   one name by the other and drop the pin.
2. **Type.** Change the variable between `s32`, `u32`, `u16`, `s16`, `u8`.
3. **Scope.** Move the declaration into the innermost block that uses it, or out
   to function level.
4. **Remove the temporary.** If the pinned variable is assigned once and used
   once, substitute the expression.
5. **Statement form.** `x = a; x += b;` versus `x = a + b;`; `if (!c) A else B`
   versus `if (c) B else A`; a `for` instead of a `goto` loop.

If none works, leave the device and add (or keep) a one-line comment that says
what it achieves (`/* ROM keeps the slot address in r6 across the call */`). A
commented device is finished work; do not spend more than ten minutes on one.

## Tier 3: readability (any model, reviewed)

Only changes that keep the object identical:

- rename `temp_rN_M`, `var_rN`, `spXXX` locals to what they hold;
- replace `M2C_FIELD(p, T *, off)` by a struct member when the struct exists;
- remove dead declarations, unreachable labels and stale comments about failed
  matching attempts;
- give literal constants the enum or macro the catalog already names.

Do not rename canonical `sub_XXXXXXXX` symbols or globals here; display names
are handled by the naming pipeline. Never edit `include/*.h` for a cleanup.

## Verification and delivery

Every PR: `make -j8 compare` OK, `make -j8 nonmatching` builds, `check_tree.py`
0 errors, and the PR text states how many devices were removed and how many
remain in the module. Keep LF line endings (`unwrap_func.py` and some Windows
editors write CRLF; normalise before committing).

## Is the cleanup ever "100%"?

Tier 1 is complete when `dehack.py` reports 0 removed on every module. Tier 2
has no natural end: a few hundred devices encode real allocation ties (see
GIANT_FUNCTION_PLAYBOOK.md section 2) and will stay, commented. A reasonable
target is: no uncommented device, and no module with more than a handful.
