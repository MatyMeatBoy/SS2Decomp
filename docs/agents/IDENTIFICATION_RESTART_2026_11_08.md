# Identification restart review, 2026-11-08

Research resumed independently of the EU matching workers. Canonical symbols,
function boundaries, C/ASM, headers and shard claims are unchanged.

## Baseline and preserved work

At `0bd4d0247487dc0c3e7ecdcddd343d2bcae10df0`, the source inventory reports
639/1880 identified game functions (26 existing, 613 confirmed) and 155/155 SDK
functions. Existing names are recognized by the classifier, not independently
re-proved by that count. Proposals do not count.

The preserved v95 queue matches its documented SHA256
`b863025371b7763df28fa5857b2a9eff3ca6717ad4030b48ab3a37959a6c9134`.
All 101 referenced cohort files passed their recorded hashes. Its historical
142 pending rows are review candidates, not additional identified functions.
Twenty-four addresses in PRs #683--#686 overlap preserved cohorts; reconcile
those addresses rather than consuming either source twice. The original queue,
next52 inputs and precision overlays remain frozen.

## PR #683: encounter mode and actor task creation

Reviewed head `9422201e592540d33124bdd2743fe770edcb2a23` against source revision
`8d4618912c1c6cadb3f315aad7386e582d3de83c`, then against current integration.
Merged as `bf9a9ffc9b00d0cf50a36f70ac323d1d61df2630` after an independent review.

`0801674C` claims a slot in the five-actor pool and schedules its callback.
`0800CD9C/CDAC/CDC0` set, clear and query scene mode bit 7. Encounter startup and
completion paths in `code_0808D4A8.c`, including `0808D594` and `0808F088`, anchor
the encounter interpretation. Map loading and temporary clear/reload/set paths
corroborate that this is mode state, not a promise that an enemy is alive.
No boss, victory or elapsed-time meaning is assigned.

The four complete configured ranges equal the original EU dump and a fresh
local ELF. `make compare`, `make nonmatching`, `check_tree.py`, report generation
and the 19 source/project inventory tests passed. Game identification became
643/1880 (34.20%); this adds no matching credit.

## PR #686: nine reviewed roles and precision corrections

Original contribution: `emmkay440`, head
`876538c81e70137f7f3921148ec9ee2622a96759`. Independently reviewed against
`8d4618912c1c6cadb3f315aad7386e582d3de83c` and
`bf9a9ffc9b00d0cf50a36f70ac323d1d61df2630`.

| Address | Reviewed role | Primary source and corroboration |
| --- | --- | --- |
| `08068670` | Free outgoing queue and task-control allocations | `code_08068670.c:7`; allocations in `08065CA8`, finalizer registration in `08067AFC` |
| `08068874` | Peek at a pending outgoing queue head | `code_08068670.c:110`; same state-equals-1 test in `08066898` |
| `08068894` | Schedule the link broadcast callback | `code_08068670.c:122`; callback `08066720` and scheduler setup |
| `0801E46C` | Compute defeat experience reward | `code_0801E244.c:142`; defeat path in `code_08017F7C.c:782` |
| `0801EF14` | Compute attack damage with element resistance | `code_0801E244.c:715`; item-resource element and target resistance reads |
| `0801F024` | Test item attack boxes against a target | `code_0801E244.c:789`; fixed-point overlap, direction and class restrictions |
| `080599C4` | Mark a scene callback guard held | `code_08059534.c:144`; guard rejection/release in `08057430/080574B0` |
| `0800AE50` | Decode map-cell attributes at a position | `code_08009088.c:1243`; explicit resource/current-map branches |
| `080089DC` | Write frame OAM and queue tiles | `code_08006D24.c:1366`; OAM usage and tile-copy operations |

Three evidence narratives require these exact implementation limits:

- Damage: truncate RNG to `u16` before modulo 50; truncate the weighted result
  to `u16` before division by ten; interpret resistance as `s16`; preserve the
  low-halfword and sign tests after attenuation. A real-number formula alone
  does not reproduce these operations, and there is no added zero-divisor guard.
- Map cells: the stride is two bytes, but attribute extraction uses a 32-bit
  load, plus a separate byte load for type. The resource cell base is exactly
  `resource + 0x20 + 6*width*height`. No bounds/alignment guarantee is inferred.
- OAM: the 128th visible entry is written before returning zero. That exit
  precedes its tile enqueue and the global tile-usage update, even when the
  entry was the final part. Earlier accepted parts may already be queued.

The storage name uses singular `Queue`, consistent with the one outgoing queue.
The three link helpers also occur in preserved cohort `linkqueuehelpers3` at
`b0270484a6dcc0e4649508a2c5589c502c8cdf39`; these are the same functions, not
three additional discoveries. A historical absence of direct calls does not
exclude finalizer registration: current `08067AFC` installs `08068670` at task
offset `+0x24`.

All nine complete configured ranges equal the original EU ROM and the local
rebuilt ELF. Normal ROM comparison, full NONMATCHING build, tree validation and
report generation passed for the corrected cohort. Static naming evidence does
not establish runtime coverage, multiplayer delivery or safety for malformed
inputs.

## Pending review and regional evidence

PRs #684 and #685 remain separate review work. Mechanical player flag-bit names
must not be promoted merely to raise coverage. Preserved input-suppression,
target-movement, defeat-protection and sprite-hide cohorts may provide stronger
roles, but require independent primary-body and consumer review first.

No new USA/Japan correspondences or runtime observations are asserted here.
The preserved EU movie report found no verified EU input movie and one savestate
with an AU2P header; it did not establish a full dump checksum or successful
replay. A cartridge code is not a complete region/revision compatibility proof.
Reuse these findings before repeating movie searches or transferring regional
identifications. See [the methodology](IDENTIFICATION_METHOD.md) for the evidence
and consumption rules.

## PR #684: scene helpers and two unconfirmed bit operations

Reviewed original head `966cd46d717c74a05340571ce69f9bc3538cc277` against its
source revision `8d4618912c1c6cadb3f315aad7386e582d3de83c`. The corrected cohort
retains 21 confirmed roles and two proposals, with independent review of the
four corrected rows. The original contribution remains in the commit ancestry.

`0805790C/08057934` change local-player flag bit 1 and call `08067D74` once,
ignoring its result. That enqueue helper returns zero when the queue already
contains 50 entries. Their display names therefore say `AndTryEnqueueFlags`,
their status is `proposed`, and they add no identified-function credit. The
gameplay meaning of bit 1 remains open; neither delivery nor synchronization is
established by those wrappers.

Interpolation helpers `080576EC/08057780` have descriptive observed roles but
no general completion contract. Integer division gives duration 3 weights
0/341/682/1023, followed by exit; the target weight need not be reached.
Durations greater than 1024 give zero step, and duration zero skips the step
assignment. `08057780` additionally narrows step and loop weight to signed16.
The evidence preserves these facts rather than promising a duration in frames.

The remaining roles follow scheduler membership/cancellation, dialogue startup
and completion, brightness requests, local event-lock calls, scene condition
banks and level-encounter masks. Primary bodies are in `code_080571A4.c:155--540`.
Consumers checked include `code_08058790.c:340--366`, save/quit confirmation in
`code_0805FB7C.c:1425--1430`, object-loop termination in
`code_08021DC4.c:5160,5200`, and encounter completion in
`code_0808D4A8.c:94--129,1521--1559`. A masked level query is nonzero/zero,
not a normalized boolean. Scene condition helpers do not establish individual
flag meanings or the gameplay meaning of the bank selector.
