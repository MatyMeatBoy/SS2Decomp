# Naming packet pilot, 2026-11-12

Source revision: `fb07f967a30fbbf8315eabb9a66a73e5fdf82fe0`. Coordinator reservation owner:
`codex-sol-low-nov12`. Three `gpt-6.1-sol` proposers at low reasoning processed one
self-contained packet per request, using the new [naming pipeline](../NAMING_PIPELINE.md).

## Reviewed catalog addition

- `sub_080921E4` (`0x080921E4`): `LoadGraphicsResourceAndPalette`.
- Resolves tile and palette resources; queues sixteen 0x800-byte tile copies and a
  raw or decompressed 0x800-byte payload to the requested VRAM block; waits for
  scheduler signal 1, frees the temporary buffer if non-null, loads sixteen palette
  groups, clears the first palette-shadow halfword and returns the palette address.
- Coordinator read the full body and the BG2 consumer (`src/code_08092D60.c:1552`).
  An independent Sol reviewer accepted the role with two evidence corrections:
  the final alias names palette-shadow storage, not a completion flag; freeing
  the decompression buffer is conditional. These corrections are in the catalog.

## Deferred proposals

These fourteen packets do not establish a meaningful semantic role. No names or
identification credit were added for them. The following observations and questions
are research handoff material, not confirmed identities.

| Canonical function | Observed behavior | Missing evidence |
| --- | --- | --- |
| `sub_0800CCCC` | Reads gUnk_03003478, changes no state, and returns bit 3 as 0 or 1. | What state does bit 3 of gUnk_03003478 represent? Where is this bit set or cleared, and how do callers interpret its return value? |
| `sub_0800CCDC` | Reads gUnk_03003478, sets bit 3 while preserving all other bits, and returns no value. | What does bit 3 of gUnk_03003478 represent? |
| `sub_0800CD00` | Reads gUnk_03003478 without changing state and returns bit 4 as 0 or 1. | What does bit 4 of gUnk_03003478 represent? Where is this bit set or cleared, and how do callers use the returned value? |
| `sub_0800CD34` | Reads gUnk_03003478 without changing state and returns bit 5 as 0 or 1. | What does bit 5 of gUnk_03003478 represent? Where is this bit set or cleared, and how do callers use the returned value? |
| `sub_08019EB8` | Searches five flagged records for the first matching 16-bit key at offset 2, writes value to that record's 16-bit field at offset 0x88 if found, and returns no value. | What objects do the five records represent? What does the key at offset 2 identify? What does the field at offset 0x88 control? |
| `sub_08019F04` | Sets global object halfword offset 0x5A to 1 and byte 0x201 in each selected record whose offset 0x7A bit 2 is set; iterates over five records. | What do the global field 0x5A, selection mask and record fields 0x7A and 0x201 represent? |
| `sub_0801A0A4` | Writes 2 to the signed byte field at offset 0x1DC of arg0 and returns no value. | What object type does arg0 reference? What does the field at offset 0x1DC represent, and what behavior does value 2 select? |
| `sub_0801A0B0` | Uses arg0 as an object pointer, writes zero to its signed byte field at offset 0x1DC without reading the previous value, and returns no value. | What type of object does arg0 point to? What does the byte at offset 0x1DC represent, and how do its readers interpret zero? |
| `sub_08056E78` | Reads the 16-bit field at offset 4 of gUnk_03005CF4, clears bit 4 while preserving all other bits, and returns no value. | What does bit 4 of the field at offset 4 of gUnk_03005CF4 represent? Which code sets or tests this bit, and what behavior does it control? |
| `sub_08056E90` | Reads the 16-bit field at offset 4 of gUnk_03005CF4, changes nothing, and returns bit 4 as 0 or 1. | What does bit 4 of the field at offset 4 of gUnk_03005CF4 represent? How do callers use the returned flag? |
| `sub_08056F78` | Reads the 16-bit field at offset 4 of gUnk_03005CF4 without changing state and returns bit 5 as 0 or 1. | What does bit 5 of the field at offset 4 of gUnk_03005CF4 represent? Where is this bit set or cleared, and how do callers use the result? |
| `sub_08058DB0` | Reads the scene phase and checks local state and connected-player pointed-to low nibbles against 0xE; returns a Boolean without changing persistent state. | What shared condition do scene phase, local state 0xE and the pointed-to low nibble 0xE represent? |
| `sub_0805A4BC` | Checks whether an embedded task is scheduled, otherwise waits and retries allocating 0xC00 bytes, initializes task fields and starts the task with arg; returns nothing. | What does task entry sub_08027C1C do? What do the initialized task fields and arg represent? |
| `sub_0805D190` | Reads the 16-bit field at offset 0x130 of gUnk_030034E0, sets its byte at offset 0x13A to whether that field equals 7, clears the local player's gReset61 reset field otherwise, and has no explicit return value despite its s32 declaration. | What does the field at offset 0x130 represent, and what does its value 7 mean? What behavior is controlled by the byte at offset 0x13A and the per-player gReset61 reset field? Is the s32 return type a decompiler artifact, or do callers use a machine-level return value? |

## Pilot findings and follow-up

The first twelve queue entries were all deferred: no unnamed callees does not
mean a packet contains enough semantic evidence. Flag accessors and field setters
often need their writers, field consumers and type/alias declarations. For the
next round, preserve this deferral list, select richer packets and let the
coordinator attach the missing source evidence before asking another proposer.
Do not repeatedly spend requests on unchanged ambiguous packets.

`name_packets.py check` accepted all fifteen responses and the corrected accepted
response. This mechanical result checks structure, not semantic truth. Reports
and raw packet/answer files are kept under ignored `build/`; generated progress
files and game symbols are not edited. Normal build gates are required before
the catalog commit. Reservations remain live through integration for the accepted
address; deferred reservations can be released after this handoff is preserved.
