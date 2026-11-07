# Player packet and post-lobby evidence

Source revision: `47dde703fb3749813bd4cdb783c8fc5b2b5d9d6b`. The packet claims below use static source/ASM evidence. Separate replay-entry
traces do not prove complete packet semantics or an end-to-end multiplayer session.
Canonical symbols and production source remain untouched.

## Two parts of the 24-byte transport block

The mailbox in `sub_08066720`/`sub_0806690C` occupies bytes 8 onward. The first 8
bytes also carry continuous player state. It is therefore incorrect to describe
bytes 0..7 as simply free or to replace only mailbox events when considering a
transport implementation. This note identifies a concrete state-writing block;
it does not claim a complete packet specification for every player state.

Matched `sub_080135C4` (`src/code_0800CF58.c:5779-5819`) initializes each player's
`+0x144` pointer through02118(id) and `+0x148` through02238(id). The former selects
the real local send block for own ID and the peer receive block for other IDs;
the latter selects the corresponding receive block. Remote players get state13,
marker byte+2=0xFE and a 0x680-byte task allocation. Local players use the saved
character data and static task stack. All start player task0D368. Field+8 in the
task record is not evidence of task priority.

## Original assembly establishes a concrete word0 layout

`asm/nonmatchings/code_0800CF58/sub_0800D368.s:8157-8217`, label `_080113AE`,
loads `Player+0x144`, preserves individual packed fields and writes:

| Bits in word0 | Observed source | Evidence |
|---|---|---|
|0..3|low 4 bits of state value in r3|8161-8169|
|4..15|Player signed32-bit X at+0x8C shifted right 8|8170-8181|
|16..27|Player Y at+0x90 shifted/masked to 12 bits|8182-8192|
|28..31|Player signed halfword+0x1C, shifted into high nibble|8193-8200|

The same block writes byte4 low 6 bits to0x20 if0CCCC() is nonzero, otherwise0,
while preserving byte4 high 2 bits; it then clears word1 bits 6..9
(lines 8201-8217). The adjacent block `_08011434` repeats the word0 layout and
uses additional state-dependent word1 fields. Draft C identifies the blocks as
states 11/12 (`src/code_0800CF58.c:4225-4253`); this state association is a draft
reading aid, while the cited original assembly proves the packed operations.
Do not extrapolate a single uniform layout for word1 from this one block.

Matched `sub_08095F10` (`src/code_08095B04.c:174-194`) provides independent
consumer evidence: it follows `Player[index]+0x148`, decodes X as the first
halfword>>4, Y as the second halfword&0xFFF, and uses their deltas to select a
facing direction. This supports position semantics independently of draft 0D368.

## Why field-item request kind remains unresolved

Receiver cases 0x14/0x16 (tags 0x95/0x97) pass the sender's receive-block byte4
low 6 bits to5B2C4/5D37C (`src/code_080659B0.c:1237-1285`). This is the packet
field above, not a proved equipped-item record. The matched receiver helper
struct happens to name it kind; that identifier does not prove a resource or
item category. Tag0x96 instead transmits an explicit u16 selector. Keep both
producer/receiver relationships exact while the enum/domain remains unknown.

## Player attribute block cross-check

Matched 1E024 (`src/code_0801AAF8.c:2174-2187`) calls 1BA74 with outputs Player+0x38
and Player+0x58. Matched 1BA74 (`:778 onward`) computes equipment/status-derived
stats in those outputs.1E024 checks changes at+0x64/+0x66 and queues 6617C;
it also clamps current HP+0xC4 to maximum +0x62. This supports attribute/stat
semantics for message 0x8E's 48-byte block and message 0x8F's 32-byte block.
Neither contains the player's position fields+0x8C/+0x90 or the item bag.
Exact labels for every stat byte are outside this bounded note.

## Remaining gaps

- Complete state-by-state word1 layout and the byte4 low 6-bit enum.
- Verify all state writes against original assembly before confirming a complete
  packet model or the semantics of the large NONMATCHING 0D368 routine.
- Runtime timing, host/peer divergence and deterministic EU replay remain untested.
- Other protocol and transport replacement advice in the old link document has
  not received a full behavioral audit; the focused patch only corrects the
  explicitly evidenced stale labels and task relationships.
