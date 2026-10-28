# Canonical function alias verification implementation plan

Goal: audit C definitions by their exported configured symbol, without skipping
asm aliases or moving declarations outside their real module context.

Architecture: share strict declaration-to-canonical binding resolution using the
existing source lexer. Revalidate compiles the unchanged module with its Makefile
rules in an isolated temporary BUILD, reads active preprocessed definitions, and
uses existing strict byte/relocation comparison. Ownership checks compare changed
canonical C bodies as well as ASM paths. Unknown/ambiguous aliases fail closed.

Constraints: no game C/header/ASM/data edits, no flags/dependencies changed, -j1,
no global --apply on the real tree, no push/PR/merge. Preserve canonical rollback
stub and alias C draft; --from is a fresh selected audit rather than trusted proof.

- [x] Reproduce skipped alias/descriptive definitions with failing fixtures.
- [x] Add strict bindings, active-module verification and conservative rollback.
- [x] Cover bad/ambiguous/unknown aliases, selection and declaration order.
- [x] Cover canonical C ownership changes without ASM deletion.
- [x] Run a real agbcc/binutils fixture, expanded suite, tree/diff, ROM/NM/hooks.
- [x] Document behavior and deliver an immutable commit with a clean checkout.

Validation evidence is recorded in the delivery: fixtures and the real main-module
audit cover canonical aliases; full-suite/tree/diff and ROM/NM checks gate commit.
