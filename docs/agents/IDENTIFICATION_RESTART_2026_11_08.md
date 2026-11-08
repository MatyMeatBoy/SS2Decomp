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

At the first nine-row checkpoint, PRs #684 and #685 remained separate review
work. Mechanical player flag-bit names must not be promoted merely to raise
coverage. The subsequent review sections below record which preserved
input-suppression, target-movement, defeat-protection and sprite-hide roles
passed independent primary-body and consumer review.

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

## PR #685: player controls, scene helpers and item delivery

Reviewed original head `273531bbe1f09e15f87709d2ec257c51989c3f43`. Its corrected
cohort has 25 confirmed roles and six proposals. Seven originally mechanical
labels use independently reviewed roles from preserved cohorts instead:

| Addresses | Role | Primary consumer evidence |
| --- | --- | --- |
| `08015C14/08015C38` | Suppress/release local input | Original `D6EA..D728` zeroes input fields and bypasses requested movement |
| `08015F20` | Query pending movement to a point | Setter `15C5C`, original `D730..D77E`, waiting caller `2413C` |
| `08015CE0/08015D04` | Enable/disable defeat protection | Original `13BF2..13C1C` selects HP 1 versus defeat; predicate `1DF8C` |
| `08015C8C/08015CB4` | Set/clear sprite-hide flag | Original draw paths `12708..1279A` and `12DBC`; bit 18 can take precedence |

These roles do not imply guaranteed movement arrival, damage immunity, hiding
every presentation or successful flag propagation. The sprite helpers ignore a
best-effort enqueue result. Bit 1, bit 12 and bit 22 accessors remain proposals:
`15D2C/15D50`, `15D74/15D98`, `15ED4/15EF8`. They add no semantic-name credit.

Item-delivery producer `08067F4C` packs `(itemId << 16) | recipient`, not the
reverse. Callers in `code_0805A630.c:1091,1104` establish the argument roles.
The receiver's raw case `0x1C` for tag `0x9D` compares the low halfword with the
local player ID and uses the high halfword as item ID. Its application failure
path attempts bag insertion and then re-drops the item if insertion fails.
The third argument's interpretation is limited to its actual consumer.

`08058048` is named `RequestLinkedFieldItemSpawnAtPosition`: it retries enqueue
until accepted, without waiting for creation. It shifts coordinates by eight;
that alone does not establish tile units. Kind 10 stores amount at record `+4`
and leaves other fields uninitialized; other kinds store value at `+2` and zero
the twelve tail bytes. Producer `08067B9C` writes tag `0x97`; it does not itself
test duplicates. Neither the old `AtTile` wording nor a stronger guarantee from
the callee's existing display name is retained as evidence.

Object finalizer `0805A780` compares an embedded task-control address
`record + 0x48` with its argument, not a pointer loaded from that field. Its
palette handle at `+0x40` is a halfword. Movement rollback in matched `08013CEC`
corroborates the collidable-object role of query `08057068`.

## Coordinated-attack phase and request cohort

Four further rows reuse the frozen, independently reviewed `coordinatedphase3`
and `coordinatedenqueue1` cohorts at
`b0270484a6dcc0e4649508a2c5589c502c8cdf39`.

`0800CD68/0800CD78/0800CD8C` set, clear and query scene flag bit 6. Task
`0806441C` marks this phase before its guarded presentation. The normal path
clears it at `080647DC`, before the later `0x586` synchronization and enemy
damage/result work. Early returns at `08064632..08064644` bypass that clear;
the alternate path clears at `08064DF8`. Names therefore describe a marked
scene phase of coordinated attack, not the whole attack lifetime or a universal
world lock. World-item draw gating and the original inventory input-clearing
path independently corroborate its scene consumers.

`08067F94` attempts to enqueue tag `0x9E` with
`(c << 16) | (b << 8) | a`. The three operands are full 32-bit values without
masks, so arbitrary independent byte fields are not inferred. Receiver
`08067680..08067694` passes the peer's player record and packed word to
`08065918`, which schedules `0806441C` only if its shared control is idle.
The callback extracts two bytes and independently recounts participants.
The producer's state-14 caller resets its shared counter even after a failed
enqueue. Queue acceptance proves neither transmission nor task creation.

These are four previously pending addresses, with no new runtime or regional
correspondence claim. Their original frozen evidence remains unchanged.

## Scene-object lifecycle and world-item drawing

Nine additional reviewed rows reconcile the remaining two `sceneobject3`
entries, five `objectinteraction5` entries and two `worlditem2` entries from the
frozen next52 cohort. `0805A780` is excluded because the corrected #685 cohort
already identifies that same address.

Constructors `0805A7C4/080289C0` use embedded controls at record `+0x48` and
unchecked one-shot stack allocations. The latter waits only for startup word
`+0x3C` to stop being 1. Callback `080284F4` writes 2 at entry, before resource
or palette setup, so this wait does not establish resource readiness. Its
full-pool/ID-zero lookup and failed-lookup null-base read remain documented.

`0805A6DC/0805A6F0/0805A704` query/set/clear the scene bit that gates starting
an object's interaction callback. Starter `0805A58C` sets it before allocation
retries and installs `0805A704` as finalizer. This is no atomic exclusion or
count of outstanding interactions. On full pool, the original exit preserves
the last nonzero scheduler-membership result in R0; it is not a valid control
pointer or normalized null failure. The C fallthrough must not be interpreted
as an indeterminate original machine value.

`0805B140/0805B21C` draw and initialize sixteen world-item records. Globals
`03005D58/03005D60` contain allocation pointers; the task control `03005D30` is
fixed storage. Normal stop frees and nulls the item buffer, waits for six
secondary controls and frees their buffer without clearing its pointer. It
does not free the separate allocation addressed by `03000124`.

All nine names retain narrow lifecycle, interaction or drawing roles, without
assigning NPC identities, dialogue content, multiplayer transport or safe
allocation-failure behavior. The frozen inputs remain unchanged; an additive
three-row precision overlay records the machine-return and pointer-global
clarifications.

## Window requests, camera endpoint and interaction setters

Nine reviewed next52 rows cover four screen-transition requests, one fixed
camera animation, two object setters, a local-player ID wrapper and an effect
task finalizer. The earlier six-row precision overlay is retained, including
the distinction between scheduler signal 100 decimal (`0x64`) and `0x100`.

`0801AB50/0801ABE8` request the reveal/hide window route. That controller route
overwrites duration with 2. `0801AB90/0801AC24` request brightness changes without
reconfiguring windows in their selected route. Active bit `0x2` has priority
over `0x10`; preserving other requests prevents an unconditional claim that
windows stay fixed. Request helpers do not wait for completion.

`08059890` has a fixed inclusive weight sequence 0,2,...,1024 and captures its
initial offsets once. Normal uninterrupted execution performs 513 explicit
writes and signal-1 waits, ending at `(0,-50)`. It takes no duration argument;
neither wall-clock duration nor a particular screen identity is inferred.

`08057534/08057580` write interaction dimensions and callback by full object ID.
Their miss path waits once and returns without rescanning. Callback task entry
initialization clears `+0x44`, so an earlier setter call is not promised to
survive that initialization. `080576E0` only forwards the local-ID accessor;
an ID does not establish connected peers.

The empty `0807A120` is identified from actual effect-task finalizer assignments
at task `+0x24`, including starter `08073E2C`, and the scheduler's invocation of
that slot. Its body alone would not justify the role. It performs no resource
cleanup; scheduler continuations separately free stacks and unlink tasks.
An additive one-row overlay only expands the `0801AC24` controller interval
from shorthand `1A874..A91A` to `1A874..1A91A`.

## Enemy spawn groups and four link-message producers

Eleven independently reviewed rows combine seven enemy-spawn-group helpers
with four outgoing message producers. The group runner has five descriptor
slots, separate group/slot index widths and parent-or-loopback permission
checks. That permission is not replaced by a local-ID-zero assumption.
Registration helpers increment the freshly reloaded count after starting;
they do not validate indices or compensate for a restarted task's count.
Forced cancellation skips the runner's normal count-decrement epilogue.

Map selection performs its resource lookup before the permission test, including
the map-11 table lookup. Invalid selector paths retain an inherited cursor;
resetting the count does not cancel leftover controls. Removal producer
`08067C28` transmits the dereferenced spawn-record pointer, not its table-slot
address. Enqueue acceptance does not prove enemy removal or peer acknowledgement.

| Producer | Tag | Narrow observed request |
| --- | --- | --- |
| `08067C68` | `0x88` | Mark the first active enemy matching the full ID for asynchronous removal |
| `080680B4` | `0xA2` | Request a keyed inline effect for every active enemy matching the ID |
| `08068144` | `0xA7` | Request the addressed local player's health/state restoration |
| `08065DAC` | `0x83` | Publish the local weapon-subtype halfword, coalescing the first pending record |

The keyed effect does not reserve a record for arbitrary keys; counter
initialization is conditional on sender class-field value 5 and truncated key
6. Revival production tests scene flag bit 18 without reserving it; that flag
is not a connectivity query. Its collision caller requires local ownership,
hit-mask eligibility, receiver filtering and overlap. These caller conditions
are not imposed by the producer itself. Receiver sound/effect calls lie outside
the target-local restoration condition.

Weapon subtype is corroborated by activation/resource consumers and the frozen
EU category-B name rendering, not inferred from an adjacent input field.
Queue-full rejection occurs before coalescing, even if a pending tag exists.
Evidence distinguishes entry offsets from payload-word indices and records
partially initialized eight-byte chunks. No exact effect/item title, gameplay
kill reward, universal target domain or successful delivery is inferred.

## Periodic scroll offset and BG2 rocking controls

Fifteen independently reviewed rows reuse frozen `periodicshake8` and
`bg2rocking7` evidence. The first family produces a signed offset applied by
consumers to BG0/BG1 vertical-scroll shadows; hardware transfer `08000B50`
anchors this interpretation without naming an actor or stage.

Both task starters have an unusual membership guard: an already scheduled
control can reach initialization again. They are not conventional idempotent
start APIs. Pointer globals, unchecked allocation paths, parameter resets and
state writes before failed allocation are documented separately.

The periodic producer truncates its scaled lookup sample to signed16 before
division by 64 toward zero, then takes a signed remainder using the unsigned
scale byte. Zero scale is not rejected. Its stop request is cooperative and can
be overwritten by initial task entry; neither stop nor free clears the last
output. A phase increment is a per-update byte, not a frequency in Hz.

The rocking task consumes an unsigned phase step and signed amplitude, while
its amplitude getter returns raw zero-extended bits. Its fields at
`+0x70/+0x72/+0x74/+0x76` belong to fixed map state `03003170`, not the object
pointed to by `03005CF4`. The sixteen position records are reached through
pointer global `03005D58`.

BG2 shadow publication and position warp/clamp are calls to helpers gated by
four effect predicates; they need not mutate state on every task iteration.
Previous-coordinate copies are separate. Forced task stop does not restore
transform or positions. The seven-row evidence overlay records these gating
and pointer distinctions while preserving the frozen originals and all names.

## Movement request, target wrappers, background bridges and HUD stop

Six remaining next52 rows retain narrow observed helper roles. Movement setter
`08015C5C` stores targets and request flags without directly changing position.
Its controller uses signed16 narrowing and integer-Sqrt distance threshold 8;
this is not an exact real-valued circle, pathfinding or guaranteed arrival.

Target wrappers `0807A028/0807A040` pass default range `0x7FFFFFFF`, preserving
the inner selectors' player-first preference, concrete group filters and enemy
exclusion rules. Distances and results narrow to `u16`; a best-distance initial
value of 65535 still excludes that value. The default is not an unlimited,
validated search over arbitrary coordinates or player indices.

Background bridges `0800BCDC/0800BCFC` add 28 to the screen-block argument and
forward narrowed palette arguments. The latter loader offsets the graphics
key alone using `03003470`; tilemap and palette keys remain separate. No VRAM
bounds or class/story meaning is inferred from the offset.

`080653D4` cancels the indexed fixed control at `03006110 + index*0x28` only
when scheduled. Constructor registration and the original callback establish
the paged three-item selection HUD role. Its inventory is reached through
pointer global `030034E0`, not manager `03006440`. Cancellation does not promise
visual cleanup, cooperative slide-out or index validation.

## Rocking recovery, startup input latch and audio-test UI

Nine further reviewed rows cover four BG2 recovery controls, three startup
sequence helpers and the audio-test task/starter. The recovery hold suppresses
only the bounded-mode countdown and adjustments. The angle-stepper is still
called, but its separate pause byte can suppress phase advancement. Zero-mode
amplitude recovery ignores the hold. Release resets the shared countdown to 20;
selecting bounded mode immediately assigns amplitude 6.

The input updater compares one expected sequence byte with the complete
pressed-key halfword, preserves progress on zero input, resets on another
nonzero value and latches at 13. Its startup callers belong to `0800232C`, not
link-buffer accessor `08002118`. The title option path and the BGM/SE menu
provide separate consumer evidence; no gameplay benefit or verified replay is
claimed.

The audio menu browses tables of 37 song IDs and 290 sound IDs. Input handling,
SDK start/stop calls and the original ASCII BGM/SE labels establish its role.
Its final exit fades, frees the preview allocation, restores palette mode,
forces blank and wakes signal `0x14`; it does not issue a final global sound
stop. The starter has no local scheduled-task or stack-allocation guard.

Two substantive evidence overlays correct the stepper-call wording and startup
caller address. Other frozen evidence remains unchanged.

## Timed-stage records, eligibility and selection UI

Eleven reviewed rows cover four raw-word record accessors, six flag helpers
and `0808AFE8`'s selection UI. The latter remains a NONMATCHING draft; names
come from independently inspected original paths and consumers, not draft
equivalence. Palette setup through a misleading local save alias is not
classified as persistence.

Record ticks count active controller updates gated by scene `+0x5A`; displaying
divisions by 3600/60 does not establish wall-clock frames. The other numeric
field has RNG-derived/complement-to-100 behavior and is named a display
fraction, not precise centiseconds. Accessors do not validate indices, compare
minima, write persistent storage or synchronize both fields.

Bank selector `0800CE30` reads scene word `03003478` bit 9. That observation
does not establish a gameplay-mode name. Eligibility helpers manipulate
individual bits; the menu displays a prefix of at most ten enabled rows, while
`08058A80` counts eleven bits independently and re-queries the bank each time.

Original confirmation requires the complete pressed halfword to equal 1, in
row view and normal mode. B navigates from detail to normal or from items to
rows; it does not exit this menu. Direction handling has priority. If the first
eligibility bit is clear, prefix-count subtraction produces `0xFFFFFFFF` and
right navigation uses an unsigned comparison: no empty-menu safety is claimed.

The exit waits for transition, restores callbacks/graphics state and transfers
the record selected by RNG modulo 3. That slot is independent of the inspected
detail column. Slot-completion flags and next-row eligibility are separate from
inventory delivery, record persistence and multiplayer acknowledgement.


## VCount scroll-band callbacks and pending-damage helpers

Four additional EUR identities were independently re-reviewed from frozen research at revision `b0270484a6dcc0e4649508a2c5589c502c8cdf39`, original instruction paths and pinned source evidence. The two protection setters already published in PR 702 are excluded from this batch.

- `0808528C` and `080852AC` write BG0VOFS hardware directly (4 and 0), schedule VCount compare lines 159 and 136, and alternate their callbacks. They neither change the scroll shadow nor stop interrupts or restore an arbitrary previous offset. The selection UI saves/restores the compare line and callback separately.
- `0801DF8C` queries local defeat conditions after checking protection first. Its prediction uses only pending damage at +0x88 and a signed interpretation of the low halfword; it does not apply damage or change player state.
- `08013BC0` applies both pending halfwords, stores 16-bit HP results, clears pending damage, and reports unprotected nonpositive stored HP. The protected path keeps HP at one; a separate local-state condition can bypass damage. The player-task caller can enter state 11 after a nonzero result, subject to further state/flag guards.

One evidence sentence was narrowed to retain those caller guards. The preserved input remains frozen. Complete configured ranges were checked against the verified EUR ROM and local linked ELF. This is static evidence only: no new runtime result, broad damage-immunity claim, or full player-task C equivalence is inferred. Canonical symbols, boundaries, code and proposal status are unchanged.


## Menu glyphs, status HUD and area destination selection

Eleven frozen EUR research rows were independently re-reviewed against original ASM and source pinned at `b0270484a6dcc0e4649508a2c5589c502c8cdf39`. These add nine identities to the metric: `08014170` (`hud14170`) and `08026CD0` (`t025Select`) already counted as descriptive C-definition aliases. Their new catalog evidence improves identification without counting them twice.

- Two glyph helpers append a bounded-format numeric field and convert byte text using mode-dependent digit mappings. The appender does not clamp to 999 or validate capacity; conversion can reach its 255-byte copy limit without a terminator and returns the low byte of count minus one.
- Two helpers add/subtract a signed halfword delta across six consecutive halfwords, with modulo-65536 stores. No unproved elemental or resistance meaning is assigned to these components.
- The character setup/name-entry starter preserves both arguments and installs the independently identified callback. The menu sprite palette helper selects the two witnessed resource variants and updates palette shadow group 25; other input modes have no established safe default.
- The player-status HUD uses the explicit player pointer, renders health/energy plus a broadly described third gauge, and can clamp current values. Its separate pause wait does not retest the outer stop queries; buffer cleanup follows outer-loop exit. The starter does not infer a local player or retry allocation.
- The area selector stores a map-set/area destination and resource record, with mode-specific transition requests. Its wrapper requests window hide; the wait observes a shared controller, without request ownership or fixed elapsed duration. The selector does not itself load map graphics, and unchecked indices remain explicit.

Complete configured ranges were verified against the EUR ROM and local linked ELF; reviewers also audited the original HUD and selector paths. No new runtime coverage or broad task-equivalence claim is made. Original frozen rows remain unchanged, canonical names/boundaries remain intact, and generated progress files are excluded.


## Animated world effects and player area-return flow

Seven additional EUR rows were independently reviewed from original ASM, source pinned at `b0270484a6dcc0e4649508a2c5589c502c8cdf39`, caller paths and the witnessed return-prompt resource. This batch adds six identities: `080634D8` already counted through descriptive alias `t65_popupImplementation`.

The world-effect task projects packed signed coordinates, advances animation 10 and chooses the witnessed draw path using its pool header. The pool helpers allocate thirty controls, cancel and free them, or start one effect after a single stack-allocation attempt. Packing uses the original full operands; no visual-effect title, sound role, allocation-success guarantee or network message is inferred.

The departure task has guarded animation progression and changes destination only for the local player after its cleanup gates. The prompt uses resource `0x1404E0`; its original pointer table and exact Latin letter/space term support the return role without assigning a speaker, location or selected answer. The starter searches four controls and retries stack allocation with scheduler waits. Its pool is addressed by pointer global `03006030`, as the original load/dereference at `657CA..657CC` demonstrates; one frozen evidence sentence was corrected to distinguish this from a fixed-address pool. Modes outside 0/1 retain the previous callback.

All seven complete configured ranges equal the verified EUR ROM and local ELF. Selected original paths and caller guards support the stated roles without a full gameplay-state equivalence or runtime claim. The uncorrected frozen input and exact precision overlay are preserved privately. Canonical symbols, boundaries and matching code are unchanged.
