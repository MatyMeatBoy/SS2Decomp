# Hard-function workflow and region reservations

**Goal:** Give contributors a short evidence-driven matching loop and allow
independent region candidates beneath one exclusive function owner.

**Design:** Keep existing shard ownership and one final function assembler.
Reserve non-overlapping, documented CFG intervals using a remote Git manifest
updated with an exact compare-and-swap lease. Candidates are separate artifacts,
never competing edits to the production module. Region completion earns no
matching-byte credit. No helper extraction or compiler flag changes.

**Execution:** Native, in the coordinator's isolated tooling checkout. The user
has authorized decisions, publication and integration without further questions.
No workers are started by this change.

## Tasks

- [x] Add real local-remote tests for competing reservations, wrong owner,
  overlapping intervals, stale parent claims, restricted candidate delivery,
  and blocked shard delivery/release while a plan is open.
- [x] Implement `region_claim.py`: init/status/take/submit/release/review/close,
  frozen checkpoint and boundary contract validation, exact remote leases,
  candidate SHA/evidence retention. Never switch a checkout or edit game source.
- [x] Guard existing shard delivery/release, and exclude metadata-only
  coordination branches from push CI (PR CI remains enabled).
- [x] Add a concise hard-function guide, region contract example and worker
  handoff recipe; link from AGENTS, quick start and contributor/coordinator guides.
- [ ] Run targeted then full tooling tests, ROM compare, NONMATCHING and tree
  checks; self-review, commit with hooks, publish PR, integrate after CI.

Local validation: 148 general tests passed (5 skipped), followed by all 12 final
region tests after the cleanup/pinning changes. Normal ROM compare, NONMATCHING,
tree and whitespace gates passed. Publication and CI integration follow.

## Review focus

One winner for a contested region; stale writers cannot overwrite another worker;
parent deletion/rebase invalidates work; a candidate cannot change another
function; closed plans preserve history and can be replaced by a new owner.
Git identities are coordination labels, not an authentication boundary; upstream
write access remains required. CFG/liveness evidence requires owner review.
