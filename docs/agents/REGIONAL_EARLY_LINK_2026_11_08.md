# Early link-helper correspondence: EUR, USA and Japan

Static review checkpoint: 2026-11-08. EUR source context is pinned to `13bfd19e2f8cf89028168b9d666d60036cbdc0c5`; original regional ROM instructions are the correspondence evidence. This note does not add catalog rows or change identification percentages, function boundaries, reconstruction coverage or SDK classification.

## Verified inputs and scope

| Region | Revision | ROM size | SHA1 |
| --- | --- | ---: | --- |
| EU | 0 | 16777216 | `aa1288be9257337abdfe3034898cf6c7aa778fbc` |
| USA | 0 | 16777216 | `541469b319a72ef4bc262483745526ac3eddd925` |
| JP | 0 | 16777216 | `19856388caf5140f7527728bd09e20bcb8924eeb` |

Each ROM was checked independently. The three complete intervals below have matching reachable instruction contracts with independently resolved regional literal pointers; they are not byte-identical. Code/data splits were checked through control flow and PC-relative loads, not by disassembling literal pools as instructions. A root audit and independent read-only review examined these paths and actual callers. No emulator execution, replay synchronization or runtime coverage is claimed.

## Callable entries and contracts

All three regions have these callable entries and end-exclusive intervals. The common addresses are an observation for these helpers only, not a global regional offset rule.

| Interval | Contract in all three ROMs | Semantic correspondence |
| --- | --- | --- |
| `080020F4..08002118` | If `flags & 2`, return `(read32(04000128) >> 4) & 3`; otherwise return zero. | Narrow local-player-ID query corresponding to EUR `LinkGetLocalPlayerId`. |
| `080021A8..080021C4` | If `flags & 2`, return `(flags >> 3) & 1`; otherwise return zero. | Narrow link error-flag query corresponding to EUR `LinkHasErrorFlag`; this does not detect every possible transport error. |
| `08002204..08002228` | If `flags & 2`, return `(transportState >> 7) & 1`; otherwise return one. | Formula correspondence only. Regional transfer of EUR `LinkIsParentOrLoopback` remains held pending an independent USA/JP audit of the transport-state bit-7 derivation. |

All three leaf helpers overwrite their working registers from globals/hardware, require no explicit input argument and return through R0. `02204` reads a software transport-state word, not SIOCNT directly.

## Independently resolved storage and paths

| Region | Flags word | Transport-state word |
| --- | --- | --- |
| EUR | `030027D0` | `03002730` |
| USA | `030028F0` | `03002850` |
| Japan | `03002870` | `030027D0` |

Literal positions `020F4`'s `02104`, `021A8`'s `021B8`, and `02204`'s `02214` resolve to each region's flags word. `02114` is hardware address `04000128`; `02224` resolves to the regional software transport-state word. The `020F4` path branches around its interior flags literal and returns before its hardware literal. `021A8` likewise branches around its flags literal to the bit-3 extraction path.

The initializer at `08001BE4` writes flags=1 and transportState=0 using literals at `08001C1C/08001C20` in each ROM. At `08001C6A..08001C72`, the regional flags word is ORed with mask 2, immediately followed by a real BL at `08001C74` to `080020F4`. The original mask-8 write at `08001CCC..08001CD0` and caller wait/check paths corroborate the narrow error-flag role. This provenance is local evidence; it does not establish a universal flags type or common RAM layout.

| Target | EUR BL instruction | USA BL instruction | Japan BL instruction |
| --- | --- | --- | --- |
| `080020F4` | `08001C74` | `08001C74` | `08001C74` |
| `080021A8` | `0800AABE` | `0800A65A` | `0800A5BE` |
| `08002204` | `0800301C` | `08002DB8` | `08002D64` |

These are decoded BL instructions with coherent surrounding caller paths, not raw halfword-pattern hits. The error-flag callers follow scheduler waiting and branch on the result; the transport-state query callers compare the return against zero. Caller addresses differ beyond the shared early-link block.

## Complete interval hashes

SHA256 includes each complete interval, including its literal/padding bytes. Differences are expected because the resolved RAM addresses differ.

| Region | Start | SHA256 |
| --- | --- | --- |
| EU | `0x80020f4` | `8c50b2a9c112e8bad9d0cdc779adbf0dac99e8a4ced6f65adafa7fcfd67e05b5` |
| EU | `0x80021a8` | `d719886b8386c517b67a9b04cad4539bd05016a11f200ef04e685463c5ab14d3` |
| EU | `0x8002204` | `b95ecba335288afe1f43814528e21d7e3ff2c832fec9d12aaaa074598b8f6df6` |
| USA | `0x80020f4` | `3cf987ad0571b2506264a8c23d0d581cc951ebccae167eb1bb35b91964f427d5` |
| USA | `0x80021a8` | `bd3368024373a0af6c254fca94595a3fb19fa0ff41b4f7716c53f640450bc375` |
| USA | `0x8002204` | `e1f19363ddcb0010aec6fc5d96a6b4b6ee94fc505992e7473231128bb31561e3` |
| JP | `0x80020f4` | `1c43260bc8bf071bbbe7974be7b86737ccd498d5bd34f71b89bd47369c3d5fe2` |
| JP | `0x80021a8` | `a98352ca722e60d95d95354862716769879e3a8c638d12c4b42066f2c6550fc0` |
| JP | `0x8002204` | `44e6000b38f0ef4bc0c368cf7d0a87e158632c7c16a812c3095119377bb0ec76` |

## Remaining limits

Interior-anchor matches and unique opcode prefixes remain discovery aids rather than callable-entry proofs. No name has been transferred from a universal delta or a short pattern match. The software state returned by `01804` still needs a complete regional bit-7 provenance audit before asserting the parent/loopback interpretation for USA and Japan. The frozen research's old movie/savestate material supplies no new runtime proof for these contracts.
