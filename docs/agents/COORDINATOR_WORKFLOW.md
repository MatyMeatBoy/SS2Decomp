# Matching coordination: verified practices

This guide supplements [AGENTS.md](../../AGENTS.md),
[CONTRIBUTING.md](../../CONTRIBUTING.md) and
[MATCH_VERIFICATION.md](MATCH_VERIFICATION.md). It does not expand ownership,
write permissions or acceptance criteria. Public repository text is English.

## Measure real matching C

- Report `all.percent_decompiled`, `all.funcs_decompiled` and
  `all.funcs_decompilable`, with the verified revision. `all.percent` includes
  linked libraries and is not real matching C coverage.
- Compiling drafts, improved scores, equal sizes and mock replays are not matches.
  Separate private candidates, published matches and integrated matches. Pending
  PR bytes do not increase main's percentage.
- Record delivered functions/bytes, elapsed time, remaining drafts and effort per
  shard. Credit inherited work and other contributors separately. Different shard
  difficulty prevents a fair model ranking or a reliable completion ETA.

## Keep writers active without duplicating them

- One exclusive checkout per writer; respect the agreed count, model and effort.
  The coordinator counts as a writer. Retry capacity errors without silently
  substituting a model. Preserve ownership when another agent suggests a solution.
- Check `claim.py who FUNC` before edits and after interruptions. A displayed `?`
  after removal of the claim commit does not mean the remote shard lock is free.
  Inspect the actual remote head and preserved delivery history.
- Check executable, checkout, expected output and creation time before trusting a
  PID: Windows reuses them. A timeout, lost tool session or completed chat turn
  does not prove a build ended. Inspect logs and children before restarting.
  Do not print full process command lines in public handoffs.
- Serialize edits, builds, permuters, rebases and commit hooks in each checkout.
  Parallelize between independent checkouts only. Preserve uncommitted work;
  never clean it away to make a worker restartable.

## Choose work by evidence and bound experiments

- Prefer free shards with useful drafts or recovery checkpoints. Compare current
  main before recovery. Check remote availability and `git worktree list`; never
  reset a branch checked out elsewhere.
- Within a shard, try approachable yellow drafts, then assembly from small to
  large. Follow `gv -> m2c -> types/check -> near-diff permuter -> apply -> ROM`.
  Known source donors can avoid a fresh translation, but audit SS2 strides,
  layouts, argument counts and signedness before reuse.
- Start with one concrete source-shape hypothesis. Reassess a small function
  after about 10–15 minutes. After about 30 minutes without a match, preserve a
  compiling draft and move on unless the user explicitly requested otherwise.
  A resumed chat does not reset the clock.
- Use the permuter for a genuinely small register/order diff. Equal byte size
  with broad CFG/frame differences is insufficient. A 120-second, two-job probe
  was a useful initial budget in the October 30 session, not a universal optimum.
  Respect assigned resources and verify the process actually ended.
- Preserve results and exclusions. Repeat a failed search only with a new
  hypothesis or changed base/flags. Prefer fresh short functions over another
  hour of declaration permutations on an exhausted family.
- Giant functions keep one owner. Reviewers may read and propose hypotheses;
  they do not edit or build in the owner's checkout. Region work requires the
  subclaims and contracts described in AGENTS.md.

## Preserve context and rotate while a PR is frozen

- Read the latest checkpoint and exclusions; search historical markers rather
  than replaying whole transcripts. Store complete logs/diffs under ignored
  `build/`; show bounded output, exit codes and the relevant ASM.
- Record candidate/base hash, compiler flags, hypothesis, ASM range and expected
  change. Handoffs locate claim, checkout, HEAD, published head, current candidate,
  gates/logs, discarded approaches and next hypothesis. Separate current state
  from history. Never recreate drafts or broad search matrices just to regain context.
- A frozen PR need not leave its writer idle. Preserve its exact head in a named
  local backup plus private candidates. From the same clean exclusive checkout,
  take a new free shard atomically; retain the old remote claim until its PR lands.
  The old delivery stays frozen. There is still only one active writer/checkout.
- Back up an old local branch before `claim.py take`, which can reset it. Check
  worktree occupancy first. Publishing additional old-shard commits requires a
  serial switch back after preserving new work; never force a switch over changes.
- After integration, the owner may release the old claim after checking its head
  and backups. Update active bases without losing private commits or scratch files.
  Do not delete another owner's claim. A stale timestamp alone is not inactivity;
  a live build/permuter or active PR review counts as work.

## Integrate all ready PRs and verify the remote base

- Maintain the agreed cadence independently of implementation work. Record actual
  successful integration time and next due time in UTC. A build start, snapshot
  or chat wakeup is not an integration. Enumerate all open PRs each run.
- Freeze base/head SHA, shard and checkout per delivery. Review actual changes,
  primary author/committer and CI for those heads; recheck before merging. Reject
  accidental claim commits, unrelated integration history and generated reports
  in worker deliveries. A rotation can change the branch during a stale snapshot.
- For this project's authorized identity, verify `gh api user` is `MatyMeatBoy`
  immediately before publication/merging. New code commits use author/committer
  `MatyMeatBoy <108221324+MatyMeatBoy@users.noreply.github.com>`. Preserve genuine
  coauthor credits; GitHub platform merge signatures are normal.
- Correct unauthorized primary identities before integration without changing
  content: preserve the old head, rewrite using normal hooks, compare old/new
  commit trees and use an exact lease for published branches. Recheck head and CI.
  Never bypass hooks or force a merge with failing checks.
- Validate the combined candidate with `make compare` (ROM OK), `make nonmatching`
  and `check_tree.py`. Use owned selections for strict module revalidation where
  appropriate. Isolated matches and worker reports do not replace these gates.
- Merge only reviewed, unchanged heads with successful CI. Fetch the resulting
  remote base, verify its source and run normal ROM/NONMATCHING/tree gates there.
  Record SHA, logs, metrics and remaining PRs before updating worker bases.
- If main already matches a function, preserve main during conflict resolution.
  Identify landed commits before resuming a partial batch; do not replay blindly
  or start a second build over a live validation.
- CI owns `docs/progress/*`; workers never commit generated reports.
  `publish_progress.py` regenerates from the remote tip if another publisher wins
  a race; do not hide push failures. PRs opened during a batch remain pending
  until their own review, CI and joint gates finish; report them explicitly.

## Enforce deadlines independently of the integration cadence

- Check the absolute cutoff before implementations, long tools or merges. At the
  deadline stop new work, preserve candidates/checkpoints and reservations, stop
  owned experiments and pause the existing automation when instructed.
- A late heartbeat performs closure only; it does not authorize catch-up merges
  after the cutoff. Report verified integrated metrics and pending PRs separately.
  Never create a duplicate automation or silently extend the run.

## Tooling and SDK: evidence before expanding scope

- Tool changes belong in a dedicated branch/PR, never a shard. Reproduce failures
  first and check that tests exercise the claimed behavior. GAS rejection is not
  compiler rejection; check positive and negative cases with actual flags.
- New backends require pinned sources/hashes, separate patches, independent
  rebuilds, generic opt-in/default-off behavior, unchanged default output, real
  fixtures and a strict candidate before production use.
- Separately authorized SDK conversions keep calculations, memory and conditions
  in C. Make minimal authorized ABI glue explicit; do not hide algorithms in ASM,
  blobs or object patches. Verify active symbols, relocations, data and full ROM.
  Count converted intervals only, not adjacent handwritten assembly.
- Proposed names require canonical addresses, evidence and revision. The coordinator
  consolidates the catalog on a dedicated branch; workers do not mass rename.

## October 30 evidence: useful paths, not a controlled speed test

- SS1 recovery plus ABI/layout auditing closed `sub_08001DF0` (652 bytes, PR251),
  avoiding a new translation. CFG placement and typed stack writes closed
  `sub_0800232C` (812 bytes, PR251), where register searches had missed structure.
- Packet-pointer lifetime across calls closed `sub_0801F79C` (512 bytes, PR254).
  Explicit ASCII/extended-loop structure closed `sub_08091F9C` (228 bytes, PR257).
- Rotation to096 produced `sub_08091E94` (140 bytes, PR255) while previous deliveries
  were frozen. Rotation to026 produced a verified 144-byte candidate in PR259,
  still pending integration at the deadline; do not count it as landed.
- Several equal-size animation candidates remained nonmatching after bounded
  experiments. Their preserved drafts are recovery material, not matches.
