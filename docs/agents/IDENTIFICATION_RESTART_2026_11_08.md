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


## Raw action-skill levels, equipment sets and Advanced Mode

Eight EUR rows were independently reviewed against original instructions and source pinned at `b0270484a6dcc0e4649508a2c5589c502c8cdf39`. No frozen row required correction.

The three action-skill helpers read raw saved halfword levels through class/action dispatch or test the returned low halfword for nonzero. Class 8 maps to 6 before byte narrowing; the explicit-selector getter differs from the local-player getter. The raw getters do not apply the effective-level conversion of 7 to 8, test energy affordability, or identify exact skill titles. Resource-dependent selector paths retain their unchecked inputs.

The equipment predicate compares six requirement slots, allowing `0xFFFF` wildcards, including an all-wildcard set. The finder checks candidate IDs supplied by six resource records and returns the first matching bonus-data address, optionally updating the reloaded manager. It does not prove currently equipped items, scan every set, or validate resource/table membership.

The Advanced Mode identities have direct EU evidence beyond a bare bit label: resources `0x14044B/0x14044C` resolve to original glyph labels Normal Mode and Advanced Mode; the chosen value is saved in summary byte +7; loader `7A4B4` reapplies it to scene bit 9; the lobby propagates that query through peer-header byte +10 bit 0. Original pointer entries, labels, choice/store paths, accessors and loader/lobby witnesses were independently checked. The helpers only mark/query the flag; no unlock guarantee, stable bank snapshot, successful synchronization or regional transfer is inferred.

Complete configured ranges equal the verified EUR ROM and local linked ELF. All names remain catalog display identities; canonical symbols, boundaries and matching code are unchanged. This static evidence adds no runtime or matching credit.


## Story presentation and item-menu lifecycle

Fourteen remaining frozen EUR queue rows were independently reviewed using original instruction witnesses, source pinned at `b0270484a6dcc0e4649508a2c5589c502c8cdf39`, and relevant resource/caller paths. Each is a new catalog identity, with no pre-existing descriptive alias counted again.

The story presentation callback, starter and title-option query are supported by original dispatch, timed caption calls, scheduler wake and EU narrative-resource terms. Root verification independently resolved the recorded pointer-table entries and witnessed Latin terms. The wake signal is the 32-bit `0x5A112EBF`; the materialized second register is not another signal word. Skip behavior remains phase/selection gated, and the role is not an exact localized title translation.

The menu helpers distinguish mode-dependent stock/stash sums from the total that also adds bag currency in mode 4, preserve low-word arithmetic, clear the held record without restoring its item, and allocate/start/wait/free a child task control. The wait captures a control but later frees the manager field reloaded after yields; those pointers are not assumed stable. One evidence sentence now spells the stash base as `*(u8 **)0x030034E0 + 0x2E0`, removing ambiguity about the pointer global. The original frozen input and precision overlay are preserved privately.

The binary-choice drawing helper mutates animation state and uses a zero/nonzero branch without proving a 0/1-only input domain. The shared interaction-state handler is distinguished from the outer inventory task, contents drawing pass and task starter. The starter initializes only the witnessed fields and retries allocations. The large interaction routine remains a compiling NONMATCHING draft at the evidence revision; naming is grounded in original input/state dispatch, validators and caller paths rather than draft equivalence.

Complete configured ranges equal the verified EUR ROM and local linked ELF. Original semantic audits of the larger story/menu bodies cover selected paths, with their limits recorded in each row; byte equality alone is not full CFG equivalence or runtime coverage. No canonical symbols, boundaries, matching code, active worker reports or generated progress files are authored by this batch.


## New research: saved-character selection display initialization

The first additional identity outside the frozen queue is `08002AA0`, `InitializeSavedCharacterSelectionDisplay`. Its complete original body, all twelve direct calls, literal pool and matched callers were reviewed at source revision `bbde7e62a009128351a06d2557c7dbab511093a1`. The saved-character selection task invokes it on entry and again after returning from cancelled character setup.

The helper configures display/background controls, loads three assets into relative screen blocks 3/2/1 (absolute 31/30/29) and sets blend shadow. Independent review corrected the initial draft interpretation of the loader arguments: palette group starts at 0 with count 15; these are not a zero relative block and palette selector. The background loader can yield internally, so absence of a direct wait in this body does not imply nonblocking execution or completed presentation. The original draft, corrected row and exact overlay are preserved privately.

Full configured-range bytes match the verified EUR ROM and local ELF. The catalog name describes the witnessed screen role, without changing canonical symbols, source code or boundaries and without claiming runtime coverage.


## New research: sprite frame-allocation reset wrapper

`08008C10` is independently confirmed as `ResetSpriteFrameAllocationStateWrapper` at source revision `13bfd19e2f8cf89028168b9d666d60036cbdc0c5`. Its entire reachable body calls the already verified `08008C1C` and returns; the trailing alignment halfword is not an executed operation. The callee clears the six sprite accounting words and selects the display-mode-specific OBJ graphics base, preserving the previous base for modes above 5. This does not clear OAM or graphics memory. No direct caller, runtime reachability or guaranteed per-frame invocation is inferred for the wrapper. Complete configured-range bytes equal the verified EUR ROM and local ELF; canonical symbols and source code remain unchanged.


## New research: palette-range brightness pulse

`0800C9F4`, `PulsePaletteRangeUntilFlag`, was independently reviewed against its complete original body and matched source at revision `9b1771542f09ef562d72f5fcaf7bc6daf77eb843`. The packed argument supplies a starting palette group and group count. After allocation with retries and a snapshot, the routine scales saved RGB5 channels into the palette shadow, preserving destination bit 15. It submits the full palette shadow, waits on scheduler signal 1, advances a table-driven brightness phase, and stops when the supplied word flag becomes nonzero.

The first scale is 100; subsequent scales use the signed table at `080B9704`, with phase increment 4 and reset only above 256. The original table cycle and complete instruction paths corroborate the pulse role. The flag is not tested inside the color loop; an initially set flag still permits snapshot allocation/copy/free. Cleanup frees the snapshot without restoring the original colors. No bounds validation, allocation retry bound, exclusive palette ownership, direct caller, exact elapsed-frame duration or runtime reachability is inferred. Complete configured-range bytes equal the verified EUR ROM and local ELF; no source code or canonical symbol changes.


## New research: world-map music updates

`0800A34C`, `UpdateWorldMapMusic`, is supported by the complete matched C, original selected dispatch/audio paths and the two world-map background-task calls at source revision `9b1771542f09ef562d72f5fcaf7bc6daf77eb843`. The routine can leave tracked music unchanged, request a replacement, or stop it according to map/scene/event context. Original dispatch witnesses independently confirm map-set 11 to song `0x187`, 14 to `0x186`, and 21 to 3; no track title or place name is inferred.

The map-task caller passes a previous tracked-song value only when its guarded stop executed; arbitrary paths are not assumed to initialize that argument. The tracked-song helper updates its word even when link flag `0x20` suppresses playback. An incomplete no-argument C declaration for wrapper `5867C` is not evidence that its machine argument is ignored. These ABI and audibility limits remain explicit. Full configured-range bytes match the verified EUR ROM and local ELF, while original semantic claims remain limited to the audited paths rather than full gameplay-state equivalence or runtime coverage.


## New research: five direct utility wrappers

Five additional identities at `080579AC`, `080580EC`, `0805867C`, `08058818` and `08058D8C` are transparent wrappers for already established class-index, currency-spending, song-stop, Advanced Mode and random-state routines. Source context is pinned to `d73c25088f60c011ff9d210f41b73963ba0e8969`; the underlying evidence retains its original pinned revisions. Both the five complete wrapper ranges and the five callee ranges equal the verified EUR ROM and local ELF. Independent review checked the actual argument/result paths rather than inferring them from C prototypes.

The class wrapper explicitly narrows to an unsigned byte, preserving the callee's class-8-to-6 normalization. Currency spending and song stopping forward incoming R0 even though their C declarations omit arguments. The spender can partially debit funds and provides no rollback or success result. The song target uses the low halfword and its original ID bound without clearing tracked music or adding a link guard. The Advanced Mode wrapper preserves the exact boolean; the RNG wrapper preserves all result bits and shared-state mutation. Trailing alignment halfwords are not executed operations.

The `Wrapper` display-name suffix preserves the narrow role without implying an additional task phase, independent state, demonstrated caller or runtime reachability. Canonical symbols, compiler boundaries and source code are unchanged.


## New research: area-exit approach and eight direction callbacks

Nine EUR identities cover `0802413C`, `ApproachAndWaitAtAreaExit`, and the eight callbacks at `0805A60C..0805A660` that supply direction selectors 0 through 7. Original complete ranges and matched source at `4061d998` were independently reviewed. The ROM direction tuple `(4,7,8,9,12,15,0,1)` and actual parent registrations anchor the selector suffixes; no unproved compass labels are assigned.

The common body requests local-player movement toward the trigger, marks/enqueues player flags, waits while inspecting gathering conditions and supports a guarded B-key retreat. It does not itself store the destination or commit the map transition; parent `245CC` handles those separately. Early manager-bit exits do not perform cancellation cleanup. The cancellation counter at original stack +0x18 has no entry initialization and may be read/incremented before a reset, so initial cancellation eligibility is not assumed deterministic. Enqueue requests and scheduler waits do not prove peer synchronization or exact elapsed duration.

Independent review corrected the initial description of `03005CF0`: it is a global word cleared directly, not a pointer global. Source anchors were tightened to the actual movement helper and eight callback registrations; the original draft and exact correction overlay remain preserved privately. Complete ranges equal the verified EUR ROM and local linked ELF. Canonical symbols, boundaries, code and worker claims remain unchanged; no runtime or broad C-equivalence result is claimed.


## Worker B01: skill-menu drawing, number expansion and effect tasks

Eight EUR identities from an independent low-effort naming checkout were reviewed against complete original bodies, matched source and the relevant skill-menu callers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. All eight were previously unidentified, rather than promotions of existing descriptive aliases. The coordinator independently re-read all eight bodies and caller witnesses; another reviewer checked the semantics before integration.

The drawing helpers emit bounded runs for skill progress and available points without clearing unused tiles. The text helper expands encoded token `0xF7` using the six decimal divisors, with a u16 number/count and `destination + count - 1` return, including `destination - 1` for empty output. It has no destination-capacity check or bounded search for a missing source terminator.

The effect pool contains five task controls; allocation initializes only their +8 words. Teardown waits on the captured initial controls but reloads the manager to free and clear its current pool field, without assuming those pointers stay identical across yields. The indicator starter leaves +8 equal to 60 and the stack-allocation field +0x20 zero if allocation fails; stack pointer field +0x10 is not written on that path. The callback performs exactly 30 iterations, mutates the documented input mask and clears its task-control +8 on exit; this is not a guaranteed elapsed-frame duration. The collection copier transfers either 12 or 75 complete 16-byte records, without inferring shop/stash meaning from the mode alone.

The frozen worker input, exact line/pointer/terminator precision overlays and original proofs remain preserved privately. Complete ranges equal the verified EUR ROM and local ELF. Canonical symbols, matching code, generated progress reports and the separate data-source conversion are unchanged.


## Workers A01/A02: link requests and player effect pools

Seven previously unidentified EUR functions were independently reviewed from original complete ranges, producer/receiver paths and callers pinned at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The class/palette message is supported by original rendering instructions, including class-strided resource selection and the palette-byte offset. The renderer's NONMATCHING C is only a reading aid; the valid original palette sequence begins at `08012E76`. The scene-selection message carries ten halfwords used to select layout rows and spawn records, rather than an unexplained byte block.

The two full-HP damage messages differ in the receiver's own-sender exclusion; absence of that filter does not establish transport loopback or completed death. The save request starts a separate task only when its control is idle, and its payload affects conditional reset after the save/dialog workflow. Queue acceptance alone proves neither delivery nor save/reset success. Declared eight-byte transport chunks contain trailing bytes that these producers do not initialize; the three-chunk layout message writes only twenty bytes.

The allocator creates sixteen per-player task controls and records, with additional shared pools only for index zero. Teardown waits only on each current base control, reloading pointer globals after yields; it does not inspect every task slot or establish whole-pool quiescence. Bounds, allocation success, pointer stability and bounded waiting are not inferred.

Frozen worker originals, independent peer corrections and full-range ROM/ELF receipts are preserved privately. The coordinator re-read the seven original bodies and functional consumer witnesses, and a separate reviewer approved the corrected semantics. Canonical symbols, code, data, claims and generated progress files are unchanged.


## Workers A03/B02: ability status calculations, palettes and scripted routes

Eleven new EUR identities were independently reviewed against complete original bodies and functional consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The ability damage calculator receives an optional resistance-array pointer, not a target index. Resistance growth returns the original kind rather than a gain Boolean, and kind two has a different clamp threshold. The status roll preserves signed initial division, subsequent unsigned modifier division and unsigned comparison, without inventing a probability clamp. Unsupported kinds can still be requested by the fixed-position effect starter and later exit without animation; allocation failure writes both its descriptor and task stack-allocation field.

Palette callbacks snapshot selected banks and preserve the current destination bit fifteen. Their original word loads advance two bytes; this is not silently rewritten into a safe halfword-load contract. Fading does not force the final gray endpoint, and modulation does not restore the saved palette. Packed starter arguments, the enable-pointer lifetime and the shared fixed task control were checked separately.

The sprite route callback waits for signal `0xF1FFF111`, then consumes twenty-four-byte records. It interpolates before increasing progress and does not force an endpoint draw. Duration greater than 1024 produces a zero progress step, so termination then depends on the abort path. Interpolation rounds the two products separately. The starter searches fifteen embedded task controls by scheduler-list membership and does not validate stack allocation. Request, animation completion and exact elapsed duration remain distinct claims.

Original worker inputs, exact peer overlays, the explicit hexadecimal descriptor-offset clarification and complete ROM/ELF receipts are preserved privately. The coordinator read the full original bodies and consumer witnesses; a separate reviewer approved all eleven corrected rows. Canonical symbols, matching code, data and worker claims remain unchanged.


## Workers B03/B04: scene messages, menu formatting and cleanup

Ten previously unidentified EUR functions were reviewed against complete original bodies and relevant consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The scene-message callback parses encoded control tokens and draws two, four or eight rows through three starters sharing one fixed task control. Its width helper counts encoded text columns, not measured pixels; the two/eight-line modes still issue draw calls for empty lines. Parsing remains unbounded and zero iteration limit still parses before finalization.

The stage/team starter selects callbacks by a scene flag, with functional meaning corroborated by original team-field writes and their winner-group consumers, and by timed-stage records and item selection. Team setup compares a signed halfword selection with four; only the other branch reads its low byte, adds three and writes the player team byte. This distinction preserves the high byte's effect on the equality test. Draft callbacks were used to locate paths, not treated as equivalent C.

The numeric formatter expands every token from the same saved unsigned sixteen-bit input, handles the source terminator and centers by encoded columns. It has no capacity check or bounded search for a missing terminator. Decimal width returns zero for zero and caps at six. Two cleanup callbacks unconditionally clear the manager pointee before freeing it; the inventory variant frees without that write. The full-screen item-menu finalizer serves modes three through six, so a collection-only name was rejected. Cleanup twins have the same operations but different relative call bytes and remain separate canonical functions.

Frozen worker inputs, peer corrections, the signed-halfword/byte correction and precise terminator wording remain preserved privately. The coordinator read all ten original bodies and relevant consumer witnesses; independent semantic review covered the corrected candidates. No symbols, code, data, claims or generated progress reports are changed.


## Workers A04/B05: ability dispatch, attached visuals and parallax

Ten previously unidentified EUR functions were independently reviewed against original complete bodies and matched source at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. Ability dispatch distinguishes task-start paths from kind six's local buff and attached visual. Kind five applies locally to the owner or handles nearby allied candidates, without proving free effect capacity or valid enemy-owner behavior. Starting an attached animation does not establish application of the corresponding ability.

The hit callback invokes its processor once before abort testing and ignores the result. Its starter packs coordinates without masking the shifted X contribution, so arbitrary inputs need not round-trip. Palette bank `0x17` means 23, and the task scheduling key is `0x34`. The shared `1FD64` helper conditionally accumulates a narrowed percentage, substitutes one for zero and updates its serial only on that path; alias names do not establish a general stat refresh.

The five parallax callbacks distinguish source positions from display offsets, preserve machine-width accumulation and truncation, and loop indefinitely while yielding. Signed modulo 320 and masking with 511 differ for negative coordinates. The modulo callback's extra stores change cached tile-row values, which the renderer may subsequently overwrite; they do not prove a menu-layout or map-dimension change. Its name was narrowed accordingly.

Frozen originals, exact peer corrections and explicit numeric-unit clarifications remain preserved privately. The coordinator read all ten original bodies, matched C and relevant consumer witnesses; a separate reviewer approved the corrected semantics. Complete ranges match the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress reports remain unchanged.


## Worker A05: allied buffs, transformation and persistent hits

Five previously unidentified EUR functions were reviewed against complete matched C bodies, original instruction witnesses and functional consumers pinned at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. Three handlers write resistance, four-attribute and combat-bonus effects. Their update thresholds, source replacement and local/remote recipient paths differ; visual startup does not establish effect capacity or successful application.

The consumer chooses the source's base class at halfword `+0x0C`, whereas the producers test graphic class `+0x64`. No invariant equating these fields is assumed. The resistance consumer adds one signed scalar at effect `+0x1C` to all six resistances; the fact that the producer fills six fields does not prove six independent consumer values. Timer and source-flag conditions still govern whether a written effect contributes.

The transformation handler reuses an effect-slot selector, not a heap allocator. The selector accepts timer minus one or a compatible minus-two record; it need not return a wholly unused slot. The form record's consumer establishes transformed graphics, palette and attributes, without proving any particular named spell or completed rendering.

The persistent player-centered hit callback preserves the original termination polarities, up to 180 completed body iterations and early paths that do not yield. Local cancellation calls the cleanup helper twice through its shared exit; insufficient enemy resource returns before that cleanup. Uninitialized enemy-path state and unchecked owner domains remain explicit limits, rather than being repaired in the naming evidence.

Worker originals and exact peer corrections remain frozen privately. The coordinator independently read the five full matched bodies and relevant original consumer/control-flow witnesses; a separate reviewer approved the corrected semantics. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Workers B14/A13: text-identified rooms and temporary visibility

Four new EUR identities were independently reviewed from original bodies and consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. Two room handlers are anchored by their scheduled NPC population, installed interaction callback and directly selected English text: `8A744 -> 2DAF0 -> 595E0 -> 14013D` identifies the Knight's Guild; `8A984 -> 2E444 -> 45F44 -> 1402A1` identifies the Klantol Times editing room in that interaction's initial dialogue branch. Numeric display IDs alone were not used to identify either room.

The coordinator independently checked language-zero pointer slots, complete resource byte hashes and two-byte headers, then inspected a static raster made from the original font glyphs using the matched font resolver and tile-copy layout. This is a source-data witness, not execution of the game. Kitchen and Angela-related candidates remain private proposals because their text does not close the room identity.

The player visibility callback advances its animation, sets local/remote-dependent flags, yields sixty times and reevaluates local identity while clearing. It does not establish invulnerability or a guaranteed flag lifetime if identity changes. Its starter finds a free mask bit but marks it only after task registration; it does not reserve the slot before allocating.

Original renderer branches establish that bit eighteen takes precedence over bit nineteen in one draw path, while another reached path tests bit nineteen before drawing/upload. The NONMATCHING renderer C is only a reading aid. Original action-byte bit-six and flag-origin witnesses were checked separately, and literal/data intervals from an initial unmapped window are explicitly excluded from instruction evidence. No unconditional invisibility rule is inferred across all render paths.

Frozen originals, exact status/offset/visibility corrections, static glyph and ROM/ELF receipts remain preserved privately. The coordinator read the four complete original bodies, matched C and pertinent consumer paths; independent semantic review approved the corrected rows. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A06: projectile and staggered ability callbacks

Five previously unidentified EUR identities were reviewed against complete matched C bodies and original control-flow witnesses at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. They distinguish straight flight, straight segments with retargeting between segments, conditional impact-task startup, staggered cone effects and a multi-hit homing projectile. No spell title or completed damage is inferred from the resource number or an attempted hit.

Retargeting can follow segment cancellation or timeout, and the selector excludes the prior ID only in its enemy scan. The straight impact callback starts its impact task only after a qualifying trigger; timeout alone does not start it. The staggered callback's empty-target animation path lacks the cancellation checks used by its populated-target path.

The homing callback's cooldown decrements a halfword and tests the old value's bit fifteen; zero therefore becomes `0xFFFF` for one completed iteration before resetting. Its animation index is the narrowed level minus one, replaced with zero when bit fifteen is set, rather than an unsigned maximum. Hit-budget and level domains remain unchecked. Two callbacks have no unconditional remote-player serial increment at their epilogues; conditional increments inside hit processing are recorded separately.

Frozen worker originals, exact peer corrections and the final animation-index overlay remain preserved privately. The coordinator read all five full matched bodies, the target-selector consumer and original instructions for the corrected arithmetic and epilogues. Independent semantic review covers the corrected candidates. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker B06: menu previews, dialogue and scene exits

Five previously unidentified EUR identities were reviewed against complete matched C bodies, selected original instruction paths and pertinent consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The player-stat preview draws twelve signed comparisons without equipping its candidate. Its status-builder call can update auxiliary player fields, so a general claim of no side effects was removed. The localized equipment summary traverses six references and three modifiers, retaining gaps in modifier layout indices.

The message dialog keeps its name-stream cursor across repeated encoded `FC` tokens rather than resetting for each occurrence. Its input can already be asserted when acknowledgment begins; suspend/error exits clear the manager bit and skip normal slide-out. Local buffer capacity, finite acknowledgment time and input debouncing are not inferred.

The ordered three-item subtype classifier selects output tables in the item-combination consumer. This establishes its functional role without assigning unproved material names to kind nine or its subtype values. The three-entry scene-exit helper requests transition mode three, prepares destination fields and returns one; neither screen-window hiding nor subsequent scene-load completion follows from that return alone.

Frozen originals and exact peer/root wording corrections remain preserved privately. The coordinator read all five matched bodies, the combination consumer and original parser/transition witnesses. Independent semantic review approved the corrected meanings. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A07: ability hits, healing and staggered animations

Five previously unidentified EUR functions were reviewed against complete matched bodies and relevant original instruction paths at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The position-based hit processor uses inclusive independent-axis bounds and returns encounter/processing masks; these do not certify applied damage. Player/enemy authority and history gates differ, including which special kinds bypass the ordinary damage/status processor.

The target processor writes pending damage, knockback and status state, with partially initialized packet fields and explicit unsafe pointer domains. Status rolling precedes the enemy status-allocation gate, so skipping allocation does not imply skipping RNG or later packet submission. The healing handler narrows additions before signed maximum comparisons and stores narrowed square-root distances, not squared distances. Its self-recovery threshold uses the last scanned player's signed maximum shifted arithmetically right one; no own-maximum or initialized-pointer invariant is invented. Enemy status-removal thresholds use computed healing amount rather than level.

Three forward animations share a saved low-halfword serial for local hit suppression; another writer can replace the enemy's serial and permit repetition. Cancellation inside a completed-animation branch can prevent that pass from reaching its completion count. The starter marks its mask only after registration and does not report hit or animation completion.

Frozen originals, exact peer corrections and the final signed-shift overlay remain preserved privately. The coordinator read all five full matched C bodies and original witnesses for status-roll ordering and the recovery shift. Independent semantic review approved the corrected rows. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker B07: area-entry prompts and falling damage indicators

Five previously unidentified EUR functions were reviewed against complete matched bodies and original configured ranges at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The position setter takes two unsigned halfword pixel coordinates and updates world and companion positions. The entry prompt tests the entire input halfword and uses an unsigned Y bound; its movement wait can finish on a scene exit without establishing arrival. The starter waits for player flag `0x4000` without a timeout and requests the prompt rather than executing it inline.

The falling indicator integrates height and velocity while scene predicates can suppress drawing. Its returned sprite object is dereferenced unchecked, and variants outside zero and one leave the frame uninitialized. The vertical adjustment subtracts the arithmetic right shift of height, rather than shifting its negation. The original final call reaches `sub_08079458` through `sub_08079888`: this consumer attempts area damage to destructibles, enemies and the local player under their respective gates. It does not spawn an unspecified entity or prove that damage was applied.

The periodic task attempts the falling callback only when its predicate and low seven tick bits are zero, with random pixel X from eighty through three hundred ninety-nine. Queue acceptance and animation completion are unchecked; a guaranteed cadence does not follow. Frozen worker originals and exact peer/root precision overlays remain preserved privately. Independent semantic review approved these identities. The coordinator read all five bodies, the complete damage consumer and original arithmetic, branch and callback witnesses. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker B08: bouncing hazards and scene offsets

Five previously unidentified EUR identities were reviewed against complete matched bodies and original configured ranges at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The bouncing hazard advances left, rebounds vertically and attempts one local-player hit on overlap. Its draw predicates do not stop motion or hit checks. Invalid lane selectors leave Y uninitialized, and the initial animation counters are not initialized. The lane coordinator can enqueue hazards even on its initialization pass; requests do not certify acceptance or completion.

The vertical oscillator and diagonal layer-three scroller use incoming preserved R4 without initializing it. Their first phase or accumulator therefore is not a conventional R0 argument or guaranteed zero. The oscillator chooses scene or camera-tracking offsets; the diagonal scroller pauses its subtraction during the full-screen menu and updates display offsets rather than source cells. Relevant original setter and camera-consumer paths corroborate these roles.

The autoscroll scene requests the falling area-damage chain identified in B07. It supplies full guard-index word `0x80000000`, not a preformed mask: the original receiver preserves this word and the task starter computes the mask using a register shift. The guard can remain set even when no task slot is available. Its halfword store at scene-global `+0x70` is recorded by address; the C field alias alone does not establish a map-dimension change. Transition mode three prepares next-resource state without demonstrating screen hiding or a completed scene load. Frozen originals and exact precision overlays remain preserved privately. Independent semantic review approved the corrected meanings. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A08: enemy projectiles and area-damage requests

Six previously unidentified EUR functions were reviewed against complete matched bodies and original configured ranges at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. Three projectile callbacks aim once and distinguish ordinary damage, scene-object collision and area-damage task creation. Their starters write priority before allocation and store a null allocation pointer on failure; occupancy is marked only after scheduler registration. Packed target arguments retain only the incoming low halfword.

The first callback writes player serial history even when the hit roll fails; only its stop flag depends on the audio predicates in that branch. Enemy damage processing has a separate authority predicate, and a failed enemy roll can write through an uninitialized player-base register. The collision-probing callback mixes shifted enemy coordinates with fixed-point projectile coordinates in its enemy path. Close invalid player states can consume the lifetime counter without movement or a yield. The zero-damage scene-object probe still writes class/state and submits a request; it is not a pure query.

The area-damage projectile directly requests subtypes four or five through `sub_08079888`, whose consumer uses timer zero for those variants. Its separate no-hit path queues request subtypes two or three through `sub_0806818C`; acceptance, delivery and completion are unchecked. Direct-hit handling suppresses that fallback even if task creation fails. Early windup abort and later owner cancellation also have distinct request behavior. No spell name, safe universal target domain or guaranteed damage follows.

Frozen originals and exact peer/root precision overlays remain preserved privately. The coordinator read all six full matched bodies and relevant original paths, plus complete scene-object and request consumers. Independent semantic review approved the corrected rows. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A09: attached healing and buff activation visuals

Five previously unidentified EUR animation callbacks were reviewed against complete matched bodies, original configured ranges and pertinent consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. Normalized original bodies differ only in the two animation-index constants. Each follows its entity position, advances the animation even when drawing is suppressed, narrows the completion result to a halfword and yields on the final iteration before clearing its task bit. No callback applies healing or changes stats itself.

Dispatcher and producer paths distinguish healing, resistance, combat-bonus, four-attribute and self-buff activation. The resistance consumer reads one signed scalar at effect `+0x1C` and adds it to six resistance values; the producer's six equal payload halfwords do not establish independent resistance inputs. Producer graphic-class and consumer base-class fields are distinct, without an invented equality invariant. The combat-bonus role does not choose an unproved attack-versus-defense meaning.

The self-buff visual can be requested after allocation failure or for a remote owner without a local buff update. Visual startup therefore does not certify successful insertion, upgrade, recovery or completion. Frozen originals and exact peer corrections remain preserved privately. The coordinator read all five matched bodies, the complete first original body and the exact normalized twin differences, plus dispatcher and relevant producer/consumer paths. Independent semantic review approved the corrected rows. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A16: critical markers, ally-buff visuals and scene exits

Three previously unidentified EUR identities were reviewed against complete matched bodies, original configured ranges and pertinent consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The critical-marker sender queues a full word, while the receiver compares its low byte against active enemy IDs. The original receiver enters a shared tail that sets mask two in enemy byte `+0x201`, not `+0x1FD` suggested by a source bitfield alias. It also clears halfword `+0x8A` and sets the scene notification halfword. The caller's critical branch establishes the marker role, without proving successful critical damage or a particular animation.

The ally-buff callback follows a live entity and animates resource `0x5008D`, animation nine. Its producer and dispatcher establish kind twenty and the timed ally-buff role. Timer and level stores narrow to halfwords, and the producer's enemy-owner path can use an uninitialized player pointer; this limitation does not remove the visual callback's explicit enemy-coordinate branch. Drawing suppression does not stop animation stepping or the final yield. Visual startup does not establish successful buff insertion or completion.

The scene-exit sender copies the current destination word into its request; it does not choose that destination. Receiver and matched credits caller close the transition-request role. The credits wait can finish on its separate abort predicate without the scene-exit flag. Partially initialized payloads, full queues and absent recipients remain explicit. Frozen originals and exact peer/root corrections are preserved privately. The coordinator read all three full matched and original bodies plus relevant caller/receiver paths. Independent semantic review approved the corrected rows. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A10: player projectile variants and starters

Six previously unidentified EUR identities were reviewed against complete matched bodies, original configured ranges and pertinent consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The first projectile uses signed sine values multiplied by forty-five and divided by ten, with a doubled initial displacement. The piercing callback stops on encounters only for kind zero; nonzero variants continue past hit and object probes, while terrain still stops them. The spread callback adjusts fallback facing and starts one projectile per starter call.

Original instructions preserve the allocation-failure path that dereferences incoming R5, which is initialized only on the separate full-pool recovery branch. The spread starter combines the shifted spread word with the complete incoming parameter; upper parameter bits can therefore contribute to the callback's spread halfword. These behaviors do not establish safe allocation recovery or a masked parameter ABI.

Projectile encounter flags are not damage acknowledgments. Void hit helpers can reject work, saved serials are narrowed while some consumers initially store full words, and remote paths can use uninitialized attack data before authority checks. The shared collision consumer uses inclusive independent-axis bounds on shifted wrapping word differences. No spell title, Euclidean radius, continuous homing or completed damage is inferred.

Frozen originals and exact peer corrections remain preserved privately. The coordinator read all six full matched bodies, inline movement/wait helpers, relevant consumers and original arithmetic, piercing, allocation and argument-packing witnesses. Independent semantic review approved the corrected rows. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A11: staggered area abilities and completion gates

Three previously unidentified EUR functions were reviewed against complete matched bodies, original configured ranges and pertinent consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. The rectangular handler processes its selected targets after the animation loop, including cancellation exits. The forward-cone handler instead attempts target processing only when each animation reports completion. Both retain unsafe final player-pointer waits on enemy-owner paths; no initialized-pointer or finite-wait invariant is invented.

The third handler submits secondary-impact kind fifteen requests. The starter reaches the fixed-position selector, which rejects that kind through its default path; a request therefore does not establish that a secondary visual appeared. Its no-target fallback and the cone handler's fallback loop lack the cancellation checks used by their populated-target loops. Authority gates for damage attempts and the independently issued secondary requests remain distinct.

Halfword narrowing, fixed animation-array capacities, cost and target-domain behavior remain explicit in the evidence. Frozen originals and exact peer/root corrections are preserved privately. The coordinator read all three complete matched bodies, the fixed-position starter/selector and relevant original cancellation, completion and request witnesses. Independent semantic review approved the corrected rows. Complete configured ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Confirmed public proposals: render suppression and game-menu requests

Six existing public proposals now have evidence-backed semantic names and confirmed status. No catalog row is added or reordered. Four wrappers set or clear player mask two, with two also requesting a flags update. Original player-task control flow skips the main animation/render block and independently damage-number drawing when that mask is set. Its shared tail yields and loops or cleans up; the branch does not resume the skipped render block as an ordinary helper return.

Two wrappers set or clear mask `0x00400000`, gating the input path that requests the four-choice animated game menu. The original initializer and scheduler arguments establish the player base used by these consumers. Clearing the gate does not open a menu; setting it does not cancel an active menu or block every direct starter call. Queue acceptance, peer agreement, universal invisibility and invulnerability remain unproved and are not claimed. The two mask `0x1000` proposals remain unchanged and proposed.

The coordinator read the six complete matched wrappers and original bodies, initializer/task argument wiring, shared-tail behavior, queue producer and relevant menu/render instruction paths. Independent semantic review supports these six promotions. The large player-task C draft is not treated as equivalent C; its original instructions provide the consumer evidence. Exact old/new rows and independent receipts remain preserved privately. Complete configured wrapper ranges equal the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Worker A12: returning drain ability projectile

One previously unidentified EUR callback was reviewed against its complete matched body, original configured range and pertinent consumers at `8bbfb589bf6ab55018ae7e465fc0e674879c81fa`. Its sprite-derived parameter uses bits fourteen through sixteen inclusive, three bits. Descriptor level remains separate. The initially resolved enemy, later collision candidate and player candidate are distinct pointers; the original target domain still chooses the follow path even if a later player scan detected the encounter.

Cancellation can end the bounded follow loop while execution continues through damage-basis calculation, return flight and conditional healing. The damage helper can reject processing, and the separately calculated drain basis does not certify HP lost. Return termination does not prove arrival. HP additions narrow to a halfword before the signed maximum comparison; the popup value is capped independently of actual gain. Enemy-owner and nonlocal paths retain uninitialized-pointer/amount limitations, and the enemy healing destination is the initially resolved target rather than the caster.

Frozen originals and exact peer/root corrections remain preserved privately. The coordinator read the complete matched callback and heal-number helper, the drain-basis consumer and relevant original bitfield, domain, cancellation, unsigned scaling and narrowed-healing paths. Independent semantic review approved the corrected row. The complete configured range equals the EUR ROM and linked ELF. Canonical symbols, code, data, claims and generated progress files remain unchanged.


## Character allocation menu and monster-card catalog

Five previously unidentified EUR functions now have reviewed semantic names: the stat/skill allocation menu and its starter, plus the monster-card catalog, starter and manager finalizer. The coordinator read all five complete matched bodies, relevant structures and original commit, preview, transfer, resource and lifecycle instructions. Complete configured ranges equal the EUR ROM and linked ELF. Independent semantic review approved the exact five rows.

Stat and skill edits use local snapshots, with explicit commit and discard paths. Stat preview restores the saved block but also writes runtime player fields; this is not a global transaction. Dirty and animation work slots remain path dependent. The catalog deposits kind-eight bag entries before cancellation, clearing only kind/id. Withdrawal initializes only four bytes of a sixteen-byte temporary before the bag helper copies it. The directly selected original resource asks to remove monster cards; the adjacent title provides separate corroboration.

Starter allocation retries, fixed shared task records and absence of activity checks remain explicit. Ordinary cleanup, suspend handling and link-error returns differ; the finalizer only frees and clears the current manager pointer. No rollback or guaranteed task completion is claimed. Canonical symbols, matching code, data, claims and generated progress files remain unchanged. Frozen originals, exact peer reviews and root range receipts are preserved privately.


## Destructible actor and scripted challenge control

Five previously unidentified EUR functions now have reviewed names covering a destructible actor with three subtype-drop attempts, its scene handler, challenge entry/selection gating, timed-or-battle scene dispatch and the timed scripted challenge task. The coordinator read all five complete matched bodies and relevant definitions, original allocation/cleanup, request, route-gate, countdown, script and saved-record paths. Complete configured ranges equal the EUR ROM and linked ELF. Independent semantic review approved the exact five rows.

The actor initializes only six bytes of the sixteen-byte drop record copied by the request producer. Terminal cancellation stops a retry wait but does not prevent the first attempt for the next subtype. Callback registration and scene return values do not prove actor creation, successful pickup or a completed map load. Resource artwork and subtype numbers do not establish a boss or material identity.

The timed task reads its countdown before checking the stage index, can retain an incoming script pointer for unsupported stages and compares an inherited register before assigning its later fractional value. Script entries advance by fifty-six bytes without an independent end bound; timing advances only under the scene flag. Saved best-time fields are word values despite pointer-shaped C declarations. RNG divisor preconditions and finite completion remain unproved. Canonical symbols, code, data, claims and generated progress files remain unchanged; frozen research and independent receipts are preserved privately.


## Item interaction menu and credits sequence

Five previously unidentified EUR functions now have reviewed names for the item-collection interaction menu and starter, its variant-panel message helper, and the credits sprite sequence and starter. The coordinator read all five complete matched bodies, including the message helper cleanup omitted from an earlier excerpt, plus relevant structures, lifecycle helpers, route handling and original control-flow witnesses. Complete configured ranges equal the EUR ROM and linked ELF. Independent semantic review approved the corrected five rows.

Item-menu variants have different saved-record writebacks. One variant attempts to return three records to the bag with a drop fallback, then handles a fourth without that fallback. An inherited register affects an initial animation; no transaction or rollback guarantee is inferred. The message helper can use uninitialized descriptor or register values on single-panel paths, reveals text into an unchecked local buffer and clears its active manager mask on abort.

The credits role is anchored by directly selected original text resources and original-font glyphs reading CAST, STAFF, Director and the closing thanks. Scheduler signals wake route tasks rather than joining them. Message and route waits have link-error checks, but the final teardown wait of one hundred twenty ticks goes directly to SoftReset without another check. Task allocation and synchronization do not establish completed rendering or a guaranteed reset. Canonical symbols, code, data, claims and generated progress files remain unchanged; frozen inputs and exact correction receipts remain private.


## Item detail rendering, synthesis and health-palette actor

Three previously unidentified EUR functions now have reviewed names for detailed item-panel drawing, randomized item synthesis from three records and a destructible actor with health-dependent palette steps. The coordinator read all three complete matched bodies, formatting macros and relevant classification, pricing, damage and cleanup helpers. Complete configured ranges equal the EUR ROM and linked ELF. Independent semantic review approved the exact three rows.

The detailed panel formats descriptions, modifiers and skill-related display values without applying the item. Shared text, resource indices and icon inputs remain unchecked. Synthesis additionally reads metadata beyond the three input records, uses randomized order and recipe classification, and copies its output before later pricing and metadata reads. No input/output alias guard exists. Rare fallback initializes twelve bytes before copying sixteen; inherited registers and property pointers are not initialized on every path. Empty stock can cause an unbounded loop without yielding. The saved word updated through wrapping arithmetic has no demonstrated gameplay field name.

The actor applies pending damage and selects palette steps from signed health percentages, then uses the same cleanup for death and scene exit. Its cleanup helper sets a byte flag; no additional quest or boss identity is inferred. The descriptive names do not promise deterministic synthesis, safe arbitrary inputs, successful equipment application or item drops. Canonical symbols, matching code, data, claims and generated progress files remain unchanged; frozen evidence and independent receipts remain private.


## Scene movement and facing helpers

Five previously unidentified EUR functions now have reviewed names for absolute and relative entity movement, facing assignment, turning toward another entity and gradual facing restoration. The coordinator read all five complete matched bodies and relevant structures, callers, interpolation helper and original instruction paths. Complete configured ranges and the sixteen-byte direction map equal the EUR ROM and linked ELF. Independent semantic review supplied required precision overlays; the public rows retain those exact names and evidence, omitting only redundant private receipt metadata.

Timed movement samples interpolation below its endpoint and does not snap to the requested destination. Durations above one thousand twenty-four produce a zero progress step and an unbounded loop. Movement accepts unchecked map-object selectors, while the three facing helpers support actors, selected enemies and the local player rather than map objects. Footprint updates do not certify collision-safe travel. Shortened per-step waits do not cancel the outer turning loop.

Facing restoration has an original enemy-path defect: it decrements the selector, skips loading the goal and difference, then can address the player through an uninitialized base or update a different enemy while comparing the original one. The semantic name is supported by the initialized actor and player paths; no safe enemy restoration contract is claimed. Canonical symbols, code, data, claims and generated progress files remain unchanged. Frozen proposals, exact overlays and independent receipts remain private.


## Scene animation requests and player rectangle wait

Four previously unidentified EUR functions now have reviewed names for animation requests, animation-and-wait, looped animation and waiting for an eligible player inside a rectangle. The coordinator read all four complete matched bodies and relevant original setup, serialization, sprite-step and completion consumers. Complete configured target and consumer ranges equal the EUR ROM and linked ELF. Independent semantic review supplied required precision overlays. Public evidence references the versioned original player-task ASM; its NONMATCHING C draft is only a navigation aid.

The player loop flag reaches the animation stepper, where a nonzero value restarts the first frame and zero freezes the last frame with a completion result. Actor and enemy flag writes are described without claiming their complete consumer contracts. Animation-and-wait clears the actor completion field, but does not clear the enemy or player completion field before testing it; stale completion can cause immediate return before a new animation runs. No timeout, valid-resource or successful-start guarantee is inferred.

Rectangle waiting decodes replicated coordinates, excludes the specified player flag and scans every player even after an overlap. It always yields before returning, rechecks the player count during the scan and has no cancellation, null-pointer or capacity guard. The rectangle comparison is inclusive and uses zero player extents. Canonical symbols, matching code, data, claims and generated progress files remain unchanged; exact overlays and independent receipts remain private.


## Grayscale conversion, narration and ending epilogue

Three previously unidentified EUR functions now have reviewed names for grayscale palette-bank conversion, typewriter narration and the ending epilogue. The coordinator read all three complete matched bodies and complete configured original ranges. Target ranges and all four English narration resource pointers and payloads equal the EUR ROM and linked ELF. The selected text describes restored peace and ends explicitly, supporting the epilogue role independently of opaque graphics.

Palette conversion averages the three five-bit channels and preserves the high destination bit. It allocates without a null check, reads words at two-byte intervals and validates neither bank capacity nor allocation success. Narration consumes encoded actions every seven outer iterations. Its fixed player-slot-zero name substitution decrements the output column after the last name byte; subsequent ordinary text can overwrite that byte. Control pauses and the final unconditional hold have different cancellation behavior. Buffer and resource limits remain unchecked.

The epilogue sets local-player masks at separate stages, desaturates palettes, runs the four narration resources, cancels active actor tasks and requests the independently identified credits task. This does not establish universal multiplayer freezing or guaranteed rendered completion. Public evidence references versioned source/data paths; frozen private receipts and exact precision overlays remain preserved. Canonical symbols, matching code, data, claims and generated progress files remain unchanged.


## Boss retry and Chaos-domain portals

Four previously unidentified EUR functions now have reviewed names for the boss-retry portal, the Chaos-domain portal and their two task starters. The coordinator read all four complete matched bodies, relevant structures and original readiness, task replacement and cleanup paths. Complete target ranges and both directly selected English resource pointers and payloads equal the EUR ROM and linked ELF. The prompts establish the concrete destinations independently of the shared sprite resource.

Both readiness counters can use a value without a dominating zero initialization. Only after a mismatch resets the counter do three consecutive matching scans establish the threshold. Readiness scanning has an authority predicate that is not equated with player zero. Scene selection gates prompts and drawing without universally gating the polling loop. The Chaos completion path can also be entered through a scene flag without satisfying the readiness scan, and its readiness wait has no finite bound.

Early returns can bypass normal cleanup. Completion-loop iterations are distinct from guarded draw calls. Starters replace existing scene tasks and allocate stacks once without checking allocation success; their finalizer wiring differs. Requesting a destination or starting a task does not prove arrival, completed rendering or peer agreement. Canonical symbols, matching code, data, claims and generated progress files remain unchanged; frozen inputs and exact precision overlays remain private.


## Level exit transition and return-to-castle portal starter

Two previously unidentified EUR functions now have reviewed names for the level exit transition and the return-to-castle portal task starter. The coordinator read the complete matched transition, starter and installed castle-portal callback. Complete target ranges and the directly selected English prompt pointers and payloads equal the EUR ROM and linked ELF. The prompts explicitly identify the next level and Klantol Castle; the existing callback alias remains unchanged.

The exit descriptor contains four unsigned halfwords: tile X/Y, destination and packed flags. Destination is promoted into a scene word; the flags high byte becomes the transition-mode word. Alternate flows, authority predicates and player-state gates affect readiness. A preexisting scene flag can reach finalization without a new destination write; waits and early returns prevent a universal travel guarantee. The castle starter replaces an active task and allocates its stack once without checking allocation success.

The separate readiness-cancellation helper remains a private proposal. Its packet waits establish enqueue acceptance rather than peer acknowledgement. Canonical symbols, matching code, data, claims and generated progress files remain unchanged. Frozen research inputs, primary-range receipts and the exact two-row schema projection are preserved privately.


## Jensen, rest interaction and Temple of Light actor setup

Three previously unidentified EUR scene setup functions now have reviewed role names. The coordinator read all three complete matched bodies and their dialogue callbacks. Exact actor callback pointers connect the setup functions to Jensen's explicit self-introduction, a question offering rest and text identifying the Temple of Light. Complete target and callback ranges plus all five selected English resource slots and payloads equal the EUR ROM and linked ELF. Personal identity is claimed only for Jensen; the other two names describe interactions.

Each setup requests an actor, then separately scans fifteen records for dimensions/flags and for callback installation. A missing scan yields once and skips the corresponding write; these functions return no success handle and do not guarantee actor creation. Their conditional scene-transition wait has no timeout. The rest callback performs its affirmative sequence; the temple callback schedules a prayer sequence rather than itself consuming four items or completing a ritual.

Only the catalog and this English evidence journal change. Prior rows, metadata and canonical symbols are preserved; matching code, data, shard claims and generated progress files remain unchanged. Frozen research and independent review receipts remain private.


## Lester, Galic and Azie actor setup

Three previously unidentified EUR setup functions now have names tied to explicit English self-introductions: Lester, Galic and Azie. The coordinator read the complete matched constructors and dialogue callbacks, checked the original callback-pointer and resource-selection paths, and verified all six complete configured ranges against the EUR ROM and linked ELF. Each selected text pointer and complete payload independently matches both byte sources. Actor kind numbers and neighboring functions are not used as personal-identity proof.

The constructors request their actor, set interaction dimensions and flags when the first lookup succeeds, and separately install the dialogue callback when a second lookup succeeds. Each lookup searches fifteen records; failure yields once and skips its write. These functions expose no success handle or actor-capacity guarantee, and their conditional scene-transition wait has no timeout. Story flags select alternate dialogue without changing the callback identity.

Only the naming catalog and this English evidence journal change. Existing rows, metadata, address order and canonical symbols are preserved. Matching code, data, claims and generated progress remain unchanged; frozen primary proofs and independent review receipts remain private.


## Scene event triggers and actor exit

Three previously unidentified EUR helpers now have reviewed names for a player-rectangle event trigger, an object-break event starter and an actor exit/despawn request. The coordinator read all three complete matched bodies and original ranges, then checked the inclusive overlap test, destruction-state writer, movement interpolation and actor-cleanup consumers. Seven complete configured ranges equal the EUR ROM and linked ELF. The event names describe their trigger roles without inferring a particular scene.

The rectangle helper scans once, returns when nobody overlaps and terminates its current task after a hit even when the thirty-slot event pool is full. The object-break helper captures its callback and argument before waiting for object state twelve; an already satisfied state bypasses its scene-stop check. Both can retry allocation indefinitely after selecting a free slot. The actor exit helper selects animation five, requests quantized relative movement and marks a found actor for deferred cleanup; no exact final displacement or successful despawn is promised for invalid selectors.

Only this journal and the catalog change. Existing rows, metadata and canonical symbols remain intact; matching code, data, shard claims and generated progress are untouched. Frozen primary receipts, independent review and the narrow animation-wording overlay remain private.


## Scene controller, map-area request and monster-card catalog entry

Three previously unidentified EUR functions now have names for initializing and dispatching scene events, requesting a map-area change and opening the monster-card catalog with normal-path scene restoration. The coordinator read the complete matched targets, catalog UI and task starter, and checked original dispatch, map-field and signal paths. Seven complete configured ranges plus the selected English monster-card prompt pointer and payload equal the EUR ROM and linked ELF. The catalog name follows the previously verified UI role rather than assuming a dictionary title.

The scene controller restores several resume modes and dispatches variant callbacks from records with stride 0x124. One branch calls a separate event handler and then tests a retained register without assigning its return value. Startup barriers may wait indefinitely. The map-area request writes the existing scene table at +0x71C, uses an unchecked area index and still changes map/area fields for an out-of-switch map argument. Its short yield period does not prove a background task has stopped.

The catalog entry saves signed halfword scroll values, waits for an exact scheduler signal and restores scene state on its continuing path. Catalog cancellation can bypass its normal wake signal; restoration and completion are not universal guarantees. Only the catalog and this journal change. Prior rows, metadata, canonical symbols, matching code, data, claims and generated progress remain unchanged; frozen inputs and precision overlays remain private.
