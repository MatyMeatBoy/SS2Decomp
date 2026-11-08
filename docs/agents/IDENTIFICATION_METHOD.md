# Function identification: method and restart guide

Identification research resumed at the owner's request on 2026-11-08 in a
separate naming checkout. Matching workers and their claims remain independent.
The 2026-11-07 pause and its frozen artifacts below are historical checkpoints;
reconcile them against the current catalog before consuming any candidate.

## Start from behavior and a canonical address

Use `tools/config/functions.cfg` and the exact ROM profile to establish identity.
Keep canonical symbols unchanged. Read the original assembly and the relevant C
at a pinned Git revision. Ghidra and m2c are reading aids. A NONMATCHING draft,
an ABI/type alias, an address fragment, or a similar instruction sequence is
insufficient evidence for a semantic name.

Follow the inputs, field offsets and access widths, side effects, return values,
all exits and direct callers/consumers. Distinguish task registration from task
execution, requests from completion, and resource startup from readiness. Check
signedness, truncation, bit masks, scheduler signals and actual lifecycle slots.
For example, comparing an embedded task-control address is different from loading
a stored pointer. A clear on the normal path does not imply cleanup on early exits.

Choose the narrowest supported role. Avoid guessing a character, screen, skill,
story event or network operation from proximity alone. Identify shared SDK code
separately from game behavior. Count existing semantic C aliases only through
the project's classifier; mechanical aliases and extern-only types do not count.

## Preserve auditable evidence

Use the catalog schema in [PROGRESS_AND_NAMES.md](PROGRESS_AND_NAMES.md): canonical
address/symbol, proposed display name, status, domain, and evidence entries with
source, line, revision and a concrete explanation. Confirmed names and proposals
remain separate. Record missing preconditions, unknown input domains and runtime
limits instead of silently assuming them.

For original-ROM corroboration, record the regional ROM hash, complete function
or bounded instruction intervals, entry/exit interpretation and literal pools.
ELF mapping labels help, but can classify executable inline halfwords as data;
check decoded instructions and control flow as well. Exact bytes at an interior
anchor are not proof of a callable regional function entry.

Replay movies and emulator traces can corroborate a role when the exact ROM,
emulator/core/settings, synchronization point, inputs and observed result are
recorded. A movie that remains at a title screen or desynchronizes proves no
later gameplay behavior. USA/Japan observations need independently verified EU
correspondence before becoming EU evidence; there is no universal address delta.

## Review small frozen cohorts

Group related functions, pin every source input, preserve candidate rows and
original proof artifacts, and hash the files. Deduplicate against the current
catalog and the consumed/pending ledger by canonical address. Preserve old rows,
ordering and metadata exactly. A hash or validator proves integrity/schema, not
semantic correctness: independently read each narrative and its primary body,
plus the callers/consumers needed for that interpretation.

Keep corrections as additive, evidence-only overlays with exact old/new rows;
never overwrite the frozen original. Check byte-versus-hex quantities, signal
numbers, pointer globals versus pointees, and per-path failure behavior. Distinguish
newly read instruction evidence from older artifacts that were only rehashed.

Only the coordinator edits `tools/config/function_names.json`, on a dedicated
tooling branch with independent review. Workers retain proposals in handoffs.
Run the source/project inventory checks and generate reports under `build/`;
normal ROM and full NONMATCHING gates still apply. CI publishes `docs/progress/`.
Update the consumed ledger only after the exact reviewed catalog commit lands.
Names, drafts, work milestones and matching bytes are different metrics.

## Preserved research at the pause

The published baseline has 639 identified game functions; this is a historical
handoff value, not a hardcoded future metric. The private queue v95 has 142 pending
rows (139 new proposals and three promotions), with 333 consumed entries. Its
SHA256 is `b863025371b7763df28fa5857b2a9eff3ca6717ad4030b48ab3a37959a6c9134`.
The next52 manifest is frozen as
`a0a85abe45655ace525b764d1f455fcf1ad4f526d0320cac22837636f8b059f1`;
none of those 52 rows was published or consumed. Preserve the six-row precision
overlay and the subsequent embedded-task-address correction separately. The
existing public 5D404 evidence correction is a different pending item.

The identification worker's preserved `codex/identify-q95-preserved-nov07` ref and
private `build/identify/` files retain the source checkpoints, queue, candidate
cohorts, proofs and overlays. The coordinator also retains a next52 primary-body
review pack and immutable baseline copies. Revalidate current catalog and queue
state before restarting; never replay an old batch blindly.
