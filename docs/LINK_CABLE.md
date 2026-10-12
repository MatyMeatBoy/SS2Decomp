# Link cable (multiplayer) driver

The game uses the standard AGB SDK **MultiSio010214** library (version string at ROM 0x080B99B8).
Reference sources with the same layout: Sonic Advance 2 `src/multi_sio.c` (older field names differ slightly).

Work area: `gUnk_030024B0` (`struct MultiSioArea`, 0x220 bytes, see `include/structs.h`; alias `gMultiSioArea`).
Packets are 0x20 bytes: 4-byte header (frameCounter, recvErrorFlags, checksum) + 24 bytes (`MULTI_SIO_BLOCK_SIZE`) of user data per player, 4 players.

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

Hook points to reimplement online play without a full decomp: replace `sub_08001804` (MultiSioMain) with a routine that
exchanges the 24-byte blocks over a socket and returns the same status word (bits 0-3 recvSuccessFlags, 7 parent,
8-11 connectedFlags, 12 hardError, 13 invalid id, 15+ counter), or keep the hardware path and intercept SIOCNT/SIOMULTI at the emulator.
Game-level link code (not yet decompiled): sub_08001BE4, sub_08001DF0, sub_0800208C, sub_080020F4, sub_08002118 (read SIOCNT id).

## Application protocol on top of MultiSio (found by reading sub_08066720 / sub_0806690C / sub_08001DF0 / sub_08001BE4)

Per-frame hardware layer: `sub_08001BE4` (link session task, runs once per VBlank) calls
`sub_08001804(gUnk_03002710 /*send block, 24 B*/, gUnk_03002770 /*recv blocks, 4 x 24 B*/)` and stores the status word in
`gUnk_03002730` (bits 0-3 recvSuccess, 7 parent, 8-11 connected, 12 hard error). Flags word `gUnk_030027D0`:
0x1 active, 0x2 link mode (0 = loopback/single player), 0x4 "lobby handshake allowed", 0x8 error shown, 0x10 peer timeout,
0x20 mute sound while a peer is lagging, 0x40000000 request stop, 0x80000000 stopped.
Single player = `sub_080022A4` task: copies the send block to recv[0] every frame (`CpuSet(gUnk_03002710, gUnk_03002770, 0xC)`,
status 0x101). A netplay layer can reproduce exactly this contract (fill gUnk_03002770[i] from the network, read gUnk_03002710).
Accessors: `sub_080020F4()` own player id, `sub_08002164()` connected players, `sub_08002118(id)` send block of id
(own block = gUnk_03002710, others = recv block), `sub_08002238(id)` recv block of id.

Block layout (24 bytes, byte offsets): 0..7 header/free, 8 command or sender id, 9 message code, 10 parameter/chunk number,
12..19 8-byte payload, 20..23 acknowledge bytes, one per peer id (peer `p` writes its ack for sender `s` at 0x14+s).
It is a stop-and-wait mailbox: nothing is queued, every message waits for all peers' acks (60-frame timeout, 0x3C):
- `sub_08066720(msg)` BROADCAST: msg[0]=tag (0x81..0xB0), msg[1]=chunk count, msg+8=payload in 8-byte chunks. Announce
  (block[8]=0xB1,[9]=tag,[10]=count) until every peer acks tag; then chunk i: [8]=myId,[9]=0xB2,[10]=i+1, payload; peers ack
  `0x7F-i`; finally `sub_0800224C()` waits until every connected player answers, and the pending-message queue
  (`gUnk_03006300`, 0x88-byte entries, count `gUnk_03006338`) is popped.
- `sub_0806690C(peerId)` RECEIVER task per peer: waits for announce, acks, copies chunks, then dispatches on the tag via a jump table.
- `sub_08066898` creates the receiver task (stack 0x800) for the own id, `sub_08001DF0(tag)` is a barrier ("NOS"/"OK" handshake).
- `sub_080135C4(id)` creates the player entity for a link slot: Player+0x144 = send block, +0x148 = recv block of that id.
These blocking waits (`sub_080003F0` = VBlankIntrWait inside every loop) are the lockstep; replacing them with a socket
layer means replacing `sub_08001804` and the barrier/broadcast calls, keeping the block contract above.
