# Naming research, round 2 (2026-11-12)

Three Sol workers and the coordinator investigated 115 distinct canonical game
functions at source revision `3a130dffdff91bb6ce8fbc19e19c2e6c074223a7`.
Independent review approved 104 names; 11 remain deferred.

The worker/coordinator JSON files are frozen research, including rejected and
superseded suggestions. They do not supply identification credit. `review-*.json`
records independent decisions; `accepted.json` contains the corrected candidates
used by the catalog integrator. The source revision remains reachable through
this branch's history. `manifest.json` records scope and mechanical name fixes.

Live unresolved drafts are in
`tools/config/name_drafts/codex-sol-low-20261112-2.json`. Low-confidence rows keep
observations and open questions without assigning a display name in the names map.
Remove a live draft after its exact canonical function is reviewed and integrated;
preserve the original research and append a follow-up instead of rewriting it.

Names are display labels only. Canonical symbols, C, ASM and ROM data are untouched.
All pre-existing catalog rows, text and ordering are preserved. Observed bit and
field roles are deliberately narrower than unsupported screen/character guesses.
Signal waits, conditional task progress, signed-byte packing, task-control keys,
shared-pointer cleanup, targeting teams and early exits were checked in review.

Validation before delivery: packet checks (104 accepted, 11 deferred; zero errors),
fresh generated identification report (1143/1880 game functions, 60.80%),
`make compare` OK, `make nonmatching` passed and `check_tree` zero errors.
A fresh-main catalog reconciliation check and exact-head CI are still required
before integration.
