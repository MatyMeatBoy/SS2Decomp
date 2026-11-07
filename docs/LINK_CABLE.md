# Link cable (multiplayer) driver

The game uses the standard AGB SDK **MultiSio010214** library (version string at ROM 0x080B99B8).
Reference sources with the same layout: Sonic Advance 2 `src/multi_sio.c` (older field names differ slightly).

Work area: `gUnk_030024B0` (`struct MultiSioArea`, 0x220 bytes, see `include/structs.h`; alias `gMultiSioArea`).
Each `MultiSioPacket` buffer occupies 0x20 bytes: a 4-byte header
(frameCounter, recvErrorFlags, checksum), 24 application bytes and 4 trailing
`overrunCatch` bytes. The send/receive checksum covers the first 14 halfwords
(0x1C bytes). See `include/structs.h:174-180` and matched
`src/code_080016C8.c:126-180`; this separates storage size from application data.

| Function | Address | Role | Status |
|---|---|---|---|
| MultiSioInit | sub_0800170C | reset regs, copy ISR to IWRAM, set buffers | matched C |
| MultiSioMain | sub_08001804 | per-frame: `(void *send24, void *recv4x24)` -> status flags | matched C |
| MultiSioSendDataSet | sub_0800191C | copy 24 bytes into next send buffer, checksum | matched C |
| MultiSioRecvDataCheck | sub_08001990 | verify checksums, copy 4x24 bytes | matched C |
| MultiSioStart / Stop | sub_08001A50 / sub_08001A64 | start flag / disable SIO+timer3 | matched C |
| RecvBufChange (ARM, IWRAM copy gUnk_030026D0) | sub_080004B8 | swap recv buffers with IRQs off | asm |
| MultiSioIntr (ARM, IWRAM copy gUnk_03002390) | sub_080004F8 | SIO/timer3 interrupt: send/recv word machine | asm |
| IE/IME helpers | sub_08000EF4 (IME off), sub_08000F2C (IME on), sub_08000FD4 (IE clear mask), sub_08000F64 (IE set mask) | | matched |

Candidate transport interception points include `sub_08001804` (MultiSioMain),
which exchanges 24-byte application blocks and returns a status word (bits 0-3 recvSuccessFlags, 7 parent,
8-11 connectedFlags, 12 hardError, 13 invalid id, 15+ counter).
The emulator SIOCNT/SIOMULTI hardware boundary is another possible interception point.
Neither boundary alone establishes a complete online-play contract.
Game-level link/session routines `sub_08001BE4`, `sub_08001DF0`, `sub_0800208C`,
`sub_080020F4` and `sub_08002118` have matched C at source revision
`47dde703fb3749813bd4cdb783c8fc5b2b5d9d6b`. `sub_080020F4` reads the player ID;
`sub_08002118(id)` selects the local send block or a peer receive block.

## Application protocol on top of MultiSio (found by reading sub_08066720 / sub_0806690C / sub_08001DF0 / sub_08001BE4)

The cooperative link-session task `sub_08001BE4`, when resumed, calls
`sub_08001804(gUnk_03002710 /*send block, 24 B*/, gUnk_03002770 /*recv blocks, 4 x 24 B*/)` and stores the status word in
`gUnk_03002730` (bits 0-3 recvSuccess, 7 parent, 8-11 connected, 12 hard error). Flags word `gUnk_030027D0`:

- `0x1`: active.
- `0x2` (bit 1): set after the initial valid-peer acquisition in cable mode.
  It remains clear during cable bring-up as well as in loopback/single player;
  clear bit 1 alone does not identify loopback.
- `0x4` (bit 2): enables the error waits described below. It is not a proved lobby-handshake permission.
- `0x8`: error-wait flag, set before the error wait.
- `0x10` (bit 4): at least one connected peer lacks receive-success data in the current session iteration.
  The loop clears it first, then sets it for any missing receive-success bit, before checking timeout thresholds.
  It is not itself a timeout flag.
- `0x20`: a peer has more than 60 consecutive missing receive-success iterations while the configured timeout is 0x50;
  this calls `sub_080586B4`, which stops the remembered song through `sub_08006CD0`
  and clears `gUnk_03005CF8` (`src/code_08057CAC.c:537-543`,
  `src/code_08002118.c:3357-3364`).
- `0x40000000`: request stop; `0x80000000`: stopped.

Evidence: matched `src/code_08001A50.c:150-194` at revision
`47dde703fb3749813bd4cdb783c8fc5b2b5d9d6b`. Mask `0x4` gates
`sub_080003F4(0x1F40)` after more than 5 consecutive hard-error results, or when a
remote peer exceeds the configured missing-receive timeout. Without that mask,
the latter counter is reset. Set/clear helpers are `sub_080021C4`/`sub_080021D4`
in `src/code_08002118.c:74-78`. These are source observations, not a new runtime trace.
Single player = `sub_080022A4` task: copies the send block to recv[0] on each signal-1 resumption/loop iteration (`CpuSet(gUnk_03002710, gUnk_03002770, 0xC)`,
status 0x101). This identifies the local buffer-copy behavior; a network implementation must also preserve the session and scheduling rules below.
Accessors: `sub_080020F4()` own player id, `sub_08002164()` connected players, `sub_08002118(id)` send block of id
(own block = gUnk_03002710, others = recv block), `sub_08002238(id)` recv block of id.

Block layout (24 application bytes, byte offsets): 0..7 continuous player state
(see [packet evidence](LINK_PLAYER_PACKET.md)), 8 command or sender id,
9 message code, 10 count/chunk number,
12..19 8-byte payload, 20..23 acknowledge bytes, one per peer id (peer `p` writes its ack for sender `s` at 0x14+s).
The application has a 50-entry message queue and a stop-and-wait mailbox;
`sub_08066720` announces one queued message and sends its chunks with peer acknowledgements:

- `sub_08066720(msg)` BROADCAST: msg[0]=tag (0x81..0xB0), msg[1]=chunk count, msg+8=payload in 8-byte chunks. Announce
  (block[8]=0xB1,[9]=tag,[10]=count) until every peer acks tag; then chunk i: [8]=myId,[9]=0xB2,[10]=i+1, payload; peers ack
  `0x7F-i`; finally `sub_0800224C()` waits until every connected player answers, and the pending-message queue
  (`gUnk_03006300`, 0x88-byte entries, count `gUnk_03006338`) is popped.
- `sub_0806690C(peerId)` RECEIVER task per peer: waits for announce, acks, copies chunks, then dispatches on the tag via a jump table.
- `sub_08066898` monitors the outgoing queue and starts broadcast task `sub_08066720` (allocation 0x800).
  `sub_08067AFC` starts this queue monitor and calls `sub_08067A68` for every connected peer;
  `sub_08067A68` starts receiver `sub_0806690C` (allocation 0xC00), including for the own ID.
  Evidence: `src/code_080659B0.c:794-815,1566-1582,1629-1643` at the revision above.
  `sub_08001DF0(tag)` is a barrier ("NOS"/"OK" handshake).
- `sub_080135C4(id)` creates the player entity for a link slot: Player+0x144 = send block, +0x148 = recv block of that id.

`sub_080003F0` waits for scheduler signal1 (`asm/nonmatchings/sched/sub_080003F0.s`
and `sub_080003F4.s`). The engine conditionally waits for VBlank and then wakes
signal1 (`src/code_08000EC8.c:138-150`). The protocol counters measure the checks
that increment them, rather than a guaranteed number of elapsed video frames.
The announce phase has no local timeout counter; sender chunk retry and receiver
phase counters have different receive/acknowledgement conditions. See
[the message catalogue](LINK_MESSAGES.md#player-state-and-scheduling).

A transport experiment must preserve the complete 24-byte application block,
status flags, cooperative task scheduling and peer acknowledgement behavior.
The interception points above are source-based leads; no online replacement or
end-to-end multiplayer replay is established by this document.
