# Apply canonical asm aliases implementation plan

Goal: allow proven C definitions named differently from their exported canonical
function to pass through handapply/apply_permuted without losing the asm label.

Architecture: reuse handapply declaration-order protections and strict canonical
bindings; make handapply import-safe so both consumers share the alias path.
Validate the provisional whole module with the existing revalidation backend,
retain declarations locally and delete only canonical ASM after successful checks.
Restore byte snapshots on mismatch, compile error or failed ROM validation.

Constraints: no real game function/header/ASM/data edits, fixtures in temp/build,
no compiler flags/dependencies changed, one build job, no updates to PR22.

- [x] Add real alias application fixtures that fail on the audited blockers.
- [x] Preserve C identifier/alias declaration, complete module context and type order.
- [x] Verify rollback of source/ASM/headers and canonical file selection.
- [x] Keep normal application/declaration tests passing; run complete suite.
- [x] Run tree/diff, ROM/NM/hooks and commit separately.
- [ ] Merge current main with UTF-8 tracking fix, validate progress and publish only when authorized.
