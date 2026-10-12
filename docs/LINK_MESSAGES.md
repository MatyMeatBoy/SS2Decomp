# Link message catalogue (game events carried by the MultiSio mailbox)

Source of truth: receiver `sub_0806690C(peerId)` (switch on `tag - 0x81`, jump table, ~48 tags) and the sender side
(`enqueue` wrappers in `src/code_08067B4C.c`). See `docs/LINK_CABLE.md` for the transport (stop-and-wait broadcast).

Send side: a wrapper fills entry `gUnk_03006300[gUnk_03006338++]` (0x88 bytes, max 50): `+0` tag, `+1` number of 8-byte chunks,
`+4` = 1 (pending), `+8..` payload; `sub_08066898` starts task `sub_08066720` on the head entry; it is popped after all peers ack.
Receive side: chunks are collected into a 0x100-byte stack buffer, acked, and then dispatched. Most tags are gameplay *events*
(not per-frame state), applied to `gUnk_03003CE0[peerId]` (struct Player, 0x14C bytes) or to one of 5 shared entities
(`0x2E0` bytes each, id at `+2`, bitmap of live ones in a global).
"Remote only" below means the handler ignores messages that come from our own id.

| tag | producer (matched C) | receiver effect (case = tag-0x81) |
|---|---|---|
| 0x81 | (profile, sent elsewhere) | copy 10 bytes to `Player[peer]+2` |
| 0x82 | sub_08067B50 | `Player+0xC/+0xE` = two u16; remote only: `+0x64`, `+0x66` |
| 0x83 | - | remote only: `Player+0x10` = u16 |
| 0x84 | sub_08068330(callback) | push word into the per-peer ring (9 slots) |
| 0x85 | - | CpuSet 20 bytes to a table (+0x22) |
| 0x86 | - | `sub_080168FC(payload)` then clear a flag |
| 0x87 | sub_08067C28 | `sub_08016A7C(word)` |
| 0x88 | sub_08067C68(arg) | find entity with id==arg, set bit 1 in `+0x7A` |
| 0x89 | sub_08067CA8(arg) | remote only: entity id==arg: `+0xC`=10, `+0x7A \|= 0x80`, copy `+0x5C`->`+0x4A` |
| 0x8A | - | player-vs-player hit: damage (`+0x88`), RNG `% 100` vs `+0x6D`, state 10, `sub_0801E1A4/E164`, `sub_0801DB94` |
| 0x8B | sub_08067D28(src) | (case 10) see Ghidra: bulk copy |
| 0x8C | sub_08067D74() | remote only: `Player+0x30` (flags) = word; sender sends its flags word |
| 0x8D | sub_08067DC8() | `state+0x40` = word; `sub_08056E64()` |
| 0x8E/0x8F | - | remote only: CpuSet payload into Player fields |
| 0x90 | sub_08067DF? | `GameState+0x38 \|= word` |
| 0x91 | - | remote only: entity `+0x1FC/+0x200` = 2 words (velocity) |
| 0x92 | - | entity `+0x14/+0x18` = 2 words |
| 0x93 | sub_08067EC8() | `sub_08056E24()` (also 0xAF sub_08068558 -> case 0x2e) |
| 0x94 | - | damage list: n x (s16 amount, u8 target, u8 flag), applied to 0x24-byte target slots (state 10) |
| 0x95/0x96 | - | host only (own id 0): spawn via `sub_0805B2C4`, re-enqueue as tag 0x98 |
| 0x97 | sub_08067B9C | host only: copy 8 words to `sub_0805B618()` |
| 0x98 | (re-broadcast spawn) | `sub_0805D460(w)`, spawn bookkeeping, enqueue 0x9A/0x9B replies |
| 0x99 | - | `sub_0805D4C4(u16)` |
| 0x9C | sub_08067F04 | `sub_08065918(Player[peer], word)` |
| 0x9E | sub_08067F94(a,b,c) | `sub_0800D12C()`, `sub_08056FB8`, `sub_08057170`, `sub_0805865C(0x24)` |
| 0x9F | - | `sub_0801D7AC(peer, own, hi16, lo16)` |
| 0xA0 | sub_08067FE0(value,handle) | entity with id match -> `sub_08066AFC()` |
| 0xA1 | sub_08068030(value) | entity id match -> `sub_0801E104`, set `+4/+2` fields |
| 0xA2/0xA3 | sub_080680B4 / sub_08068070 | `sub_08057328(b,a)` / `sub_08057430(b,a,c)` |
| 0xA4 | - | `sub_080793BC(peer)` |
| 0xA5 | sub_080680F8(value) | `Player[peer]+0x11E` = u16 |
| 0xA6 | - | round end for own id: score counters (kill tables 1..6), `sub_0805865C(0x91)`, `sub_08074DE8` |
| 0xA7 | sub_08068144(value) | `sub_08079888(...)` |
| 0xA8 | sub_0806818C(5 args) | `sub_08065C50(word)` |
| 0xA9 | sub_080681F4(callback) | `sub_08079CC4(...)` |
| 0xAA | - | lobby/profile block: fills name/setting arrays at `[+0x1B0..]`, sets mode 1 or 2 |
| 0xAB-0xAD | - | store one byte in tables (`0xAC/0xAD/0xAE` have producers sub_08068450/084A8/08500: u8 value) |
| 0xAF | sub_08068558() | `sub_08056E24()` |
| 0xB0 | sub_08067CE8(ptr) | (case 0x2f) entity id match: `+0x7A \|= 0x80`, `+0xC` = 10 |

Entries marked "-" have no matched producer yet (the sender is inline in a larger function). Tags 0x8B, 0x8E-0x90, 0xAB-0xAD
need a second pass; use `tools/scripts/gv.sh sub_0806690C` (Ghidra) for the exact fields.
