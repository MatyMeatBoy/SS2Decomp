# Original C runtime source

`src/libgcc2.c` and `src/longlong.h` are unmodified copies from
[pret/agbcc commit da598c1d918402c42c0c0d7128ba14567f3175e9](https://github.com/pret/agbcc/tree/da598c1d918402c42c0c0d7128ba14567f3175e9/libgcc).
The original GPL notices and runtime linking exception remain in the source;
the GPL text is provided in `licenses/libgcc-COPYING`.

The build selects `L_divdi3`, preprocesses with the bundled target headers,
and compiles with `old_agbcc -O2`, matching the original libgcc build.
The linker places the resulting text at 0x080B8F60 and the 256-byte lookup
table at its original rodata position. No opaque `_divdi3.o` is linked.

This is reuse of the original SDK C implementation, not a newly recovered
algorithm. The libgcc2 inventory changes from linked to C: 1 function and
1076 text bytes. Accordingly the C-decompilable denominator grows by those
amounts; no historical counts are frozen or hidden. Other runtime members
remain linked. The entire upstream source is preserved for provenance;
only `L_divdi3` is enabled in this translation unit.

Verification: `make -j1 compare` reproduced the EU ROM SHA-1
`aa1288be9257337abdfe3034898cf6c7aa778fbc` after compiling this source.
