# Canonical alias application audit and repair

The historical blocker below is now repaired for single-function asm-alias
candidates. Both consumers share strict canonical binding, declaration-order
checks, whole-module target comparison, NONMATCHING compilation and exact-byte
rollback. `apply_permuted` also retains its final ROM gate. `handapply` callers
must still run `make compare` before treating a function as done.

## Reproduction (2026-10-28 18:49 UTC)

All source/config/header/ASM fixtures were created in temporary directories.
No real game functions or consumer implementations were changed. A matching void
C definition named `f_v` exported `sub_0800023C` through an asm-label prototype;
the fixture header deliberately declared the canonical identifier as returning int.
The complete module passed strict revalidation with the actual agbcc/binutils
and current Makefile flags before trying either application consumer.

| Consumer | Observed result |
| --- | --- |
| `handapply.py shared sub_0800023C.c` | `ValueError: substring not found`; looks for canonical + `(` in candidate text |
| `apply_permuted.try_apply(canonical, text)` | `False`, no strict-check call; canonical is absent from C-name-keyed function map |
| `apply_permuted.py candidate.c` | Empty `applied:` output, no strict-check call; enumerates C name `f_v`, which has no ASM filename |
| `nmdiff.py sub_0800023C` on alias draft | `MATCH`, exit 0 for matching body; `NO MATCH`, exit 1 for an incorrect body |

Consumer calls left fixture source and ASM unchanged in this audit. The failure
is not a candidate filename suffix: the handapply fixture used the exact canonical
filename. nmdiff's documented canonical-symbol invocation already handles the
exported ELF symbol and needs no alias repair based on this evidence.

Additional static observation: apply_permuted's minimal-source builder discards
asm-label declarations. That branch is not reached for the failing alias input;
its declaration handling must be reviewed while repairing canonical lookup.

## Executable checkpoint

`tools/tests/test_apply_canonical_aliases.py` contains ten live regression tests
using the real toolchain when available. The original six were observed failing
before the repair (three errors and three assertion failures). They cover:

- successful handapply with the C name/alias preserved, canonical ASM removed,
  unchanged header and a later module type kept after the target;
- rollback on a wrong body and rejection of hoisting a later type;
- successful permuter application and file-CLI canonical resolution;
- exact source/ASM/header restoration when final ROM validation fails.

Additional controls cover CRLF byte restoration, directory input with an
arbitrary C filename, rejection of a registered identifier redirected to another
ROM symbol, and refusal to write a different project checkout. The last three
were also reproduced failing before their corrections.

The fixtures do not need a ROM; final ROM success/failure is injected only in the
permuter transaction tests. Actual candidate/module compilation uses agbcc and
binutils. Existing verification tests separately prove canonical alias object
comparison and matching/NONMATCHING module compilation.

## Implementation boundaries

`alias_application.py` reuses `source_index.canonical_bindings` and the existing
module revalidation backend. It preserves the C identifier and local alias
prototype instead of retyping a canonical header declaration. Unsupported helper
bodies or alias batches fail before mutation; apply alias candidates individually.
Types already defined after the target are not hoisted. Comparison is of the
target in the compiled module, not proof that every neighboring function matched.
The final full-ROM comparison remains required by the project workflow.

Ordinary non-alias application retains its existing path. This change does not
make legacy `decomp.apply` a general transactional application API or add permuter
support for GNU extended-asm operands/local register constraints.
