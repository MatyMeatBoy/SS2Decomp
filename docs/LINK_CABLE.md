# Link cable (multiplayer) driver

The game uses the standard AGB SDK **MultiSio010214** library (version string at ROM 0x080B99B8).
Reference sources with the same layout: Sonic Advance 2 `src/multi_sio.c` (older field names differ slightly).

Work area: `gUnk_030024B0` (`struct MultiSioArea`, 0x220 bytes, see `include/structs.h`; alias `gMultiSioArea`).
Packets are 0x20 bytes: 4-byte header (frameCounter, recvErrorFlags, checksum) + 24 bytes (`MULTI_SIO_BLOCK_SIZE`) of user data per player, 4 players.

| Function | Address | Role | Status |
|---|---|---|---|
| MultiSioInit | sub_0800170C | reset regs, copy ISR to IWRAM, set buffers | matched C |
| MultiSioMain | sub_08001804 | per-frame: `(void *send24, void *recv4x24)` -> status flags | C draft (NONMATCHING) |
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
