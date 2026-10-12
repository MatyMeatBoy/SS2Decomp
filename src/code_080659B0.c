#include "global.h"

void sub_08066898(void);
extern void sub_08066720();
extern u8 *sub_08002118();
void sub_08064E14(void);
void sub_0806690C(u32 peer);
void sub_08065A1C(void);
extern u32 sub_08001638(u32 size);
extern void sub_0806335C(void);
extern M2C_UNK sub_08000274_task(void *) __asm__("sub_08000274");

extern s32 gUnk_03006030;

void sub_080659B0(void *arg0, s16 arg1)
{
  s8 *new_var;
  s8 *new_var2;
  int new_var3;
  new_var3 = 0;
  new_var = (s8 *) arg0;
  *((s16 *) (new_var + 0x2C)) = arg1;
 do { new_var2 = new_var + 0x30; } while (0);
  if (1)
  {
    *((s16 *) new_var2) = 0;
  }
  *((s16 *) (new_var + 0x32)) = 0;
  *((s16 *) (new_var + 0x2E)) = new_var3;
}
void sub_080659BC(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4, s32 arg5) {
    sub_08007CF0(arg1, arg2, arg3, (u16) arg4, (s32) (u8) arg5, arg0 + 0x1C, M2C_FIELD(arg0, s32 *, 8), M2C_FIELD(arg0, s32 *, 0));
}
void sub_080659F4(s32 *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  if (arg1 == arg2)
  {
    *arg0 = arg1;
    if (1)
    {
      return;
    }
  }
  *arg0 = (((s32) (arg2 * arg3)) >> 0xA) + (((s32) (arg1 * (0x400 - arg3))) >> 0xA);
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065A1C);
#ifdef NONMATCHING
void sub_08065A90(u32 a, u32 b)
{
    u8 *obj;
    u32 mem;
    obj=(u8 *)0x030061B0; if(sub_08000470((u32)obj))return;
    *(u32 *)(obj+8)=0x3C;
    do { mem=sub_08001638(0x200); if(!mem)sub_080003F0(); } while(!mem);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+0xC)=(u32)sub_08065A1C;
    *(u32 *)(obj+0x10)=mem+0x1FC; *(u32 *)(obj+0x24)=0; sub_08000274_(obj,a,b);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065A90);
#endif
s32 sub_08065AE8(void)
{
  int new_var;
 do { if (sub_08058DB0() == 0) { return 0; } return 1; } while (0); new_var = 0; do { } while (new_var);
}
void sub_08065AFC(void)
{
    struct Unk030061E0 *task = &gUnk_030061E0;
    u32 index;
    u32 memory;

    if (sub_08000470((u32)task) != 0)
        return;
    index = sub_080020F4();
    gUnk_03003CE0[index].flags |= 0x80;
    task->f8 = 0x3C;
    memory = sub_08001638(0x400);
    task->f20 = (void *)memory;
    task->fC = sub_0806335C;
    task->f10 = (u8 *)memory + 0x3FC;
    task->f24 = 0;
    sub_08000274_task(task);
}
void sub_08065B58(void)
{
    u32 i;
    gUnk_03006030 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006030 + i * 0x28, s32 *, 8) = 0;
}
#ifdef NONMATCHING
void sub_08065B84(void)
{
    u32 i;
    s32 ptr = gUnk_03006030;
    for (i = 0; i < 4; i++, ptr += 0x28) {
        while (sub_08000470(ptr) != 0)
            sub_080003F0();
    }
    sub_08001538(gUnk_03006030);
    gUnk_03006030 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065B84);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065BD0);
#ifdef NONMATCHING
void sub_08065C50(u32 arg)
{
    u8 *obj;
    u32 mem;
    obj = (u8 *)0x03002840;
    if(!sub_08000470((u32)obj)) *(u32 *)(obj+8)=0x3C;
    do { mem=sub_08001494(0xC00); if(!mem) sub_080003F0(); } while(!mem);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+0xC)=(u32)sub_08064E14;
    *(u32 *)(obj+0x10)=mem+0xBFC; *(u32 *)(obj+0x24)=0; sub_08000274(obj,arg);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065C50);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065CA8);
#ifdef NONMATCHING
u32 sub_08065D50(void)
{
    u32 count = gUnk_03006338;
    u8 *entry;
    u8 *source = (u8 *)gUnk_030034E0;
    u32 i;

    if (count > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x81;
    for (i = 0; i < 10; i++)
        entry[8 + i] = source[i];
    entry[1] = 2;
    gUnk_03006338 = count + 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065D50);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065DAC);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065E38);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065F08);
#ifdef NONMATCHING
u32 sub_08065FE8(void)
{
    u32 index = gUnk_03006338;
    u8 *entry;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x85;
    CpuSet((u8 *)gUnk_03005CF4 + 0x22, entry + 8, 0xA);
    entry[1] = 3;
    gUnk_03006338 = index + 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065FE8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806603C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080660EC);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806617C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066220);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080662C4);
#ifdef NONMATCHING
u32 sub_080663A4(u32 index)
{
    u32 count = gUnk_03006338;
    u8 *entry;
    u8 *source;

    if (count > 0x31)
        return 0;

    entry = (u8 *)gUnk_03006300 + count * 0x88;
    source = (u8 *)gUnk_030056F4 + index * 0x2E0;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x92;
    *(u32 *)(entry + 8) = *(u16 *)(source + 2);
    *(u32 *)(entry + 0xC) = *(u32 *)(source + 0x14);
    *(u32 *)(entry + 0x10) = *(u32 *)(source + 0x18);
    entry[1] = 2;
    gUnk_03006338 = count + 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080663A4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066404);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066490);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066520);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080665B0);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066624);
#ifdef NONMATCHING
/* Link message broadcast (lobby data sync). msg[0] = tag, msg[1] = number of 8-byte chunks, msg+8 = payload.
 * Writes into our MultiSio send block (sub_08002118(myId) + 8): [0]=id/cmd, [1]=cmd (0xB1 announce, 0xB2 chunk, 0x80 idle),
 * [2]=chunk number, [4..11]=8 payload bytes. Peers acknowledge by echoing bytes into their own block at offset 0x14+id. */
void sub_08066720(u8 *msg)
{
    u8 *peers[4];
    u32 myId, n, i, k, acked, pos, lastPos, wait, j;
    u8 *buf, *src, *q;

    *(u32 *)(msg + 4) = 2;
    myId = sub_080020F4();
    buf = sub_08002118(myId) + 8;
    for (i = 0; i < sub_08002164(); i++)
        peers[i] = (u8 *)sub_08002238(i) + 0x14 + myId;
    n = sub_08002164();
    for (;;) {
        do {
            buf[0] = 0xB1;
            buf[1] = msg[0];
            buf[2] = msg[1];
            sub_080003F0();
            acked = 0;
            for (k = 0; k < n; k++) {
                if (*peers[k] == msg[0])
                    acked++;
            }
        } while (acked < n);
        wait = 0;
        lastPos = 0;
        pos = 0;
        if (msg[1] != 0) {
            src = msg + 8;
            do {
                buf[1] = 0xB2;
                buf[0] = myId;
                buf[2] = (pos >> 1) + 1;
                *(u32 *)(buf + 4) = *(u32 *)src;
                *(u32 *)(buf + 8) = *(u32 *)(src + 4);
                sub_080003F0();
                acked = 0;
                for (k = 0; k < n; k++) {
                    if (0x7F - (pos >> 1) == *peers[k])
                        acked++;
                }
                if (acked == n) {
                    src += 8;
                    pos += 2;
                    lastPos = pos;
                    wait = 0;
                } else if (lastPos == pos) {
                    wait++;
                }
                if (wait > 0x3C)
                    goto retry;
            } while (pos < msg[1] * 2);
        }
        if (wait > 0x3C)
            continue;
        buf[2] = pos + 1;
        sub_0800224C();
        gUnk_03006338--;
        if ((s32)gUnk_03006338 < 0)
            gUnk_03006338 = 0;
        q = (u8 *)gUnk_03006300;
        for (j = 0; j < gUnk_03006338; j++)
            memcpy(q + j * 0x88, q + (j + 1) * 0x88, 0x88);
        *(u32 *)(q + j * 0x88 + 4) = 0;
        buf[1] = 0x80;
        return;
    retry:
        ;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066720);
#endif
/* Link sender task spawner: when the first queued message (gUnk_03006300[0], 0x88 bytes) is pending (+4 == 1),
 * start sub_08066720 as a task on it (task object = *gUnk_03006368, stack 0x800). */
void sub_08066898(void)
{
    u8 *q;
    u8 *msg;
    u8 *t;

    sub_08002118(sub_080020F4());
    for (;;) {
        q = (u8 *)gUnk_03006300;
        msg = (*(u32 *)(q + 4) == 1) ? q : 0;
        if (msg != 0 && sub_08000470(gUnk_03006368) == 0) {
            while ((*(u32 *)((u8 *)gUnk_03006368 + 0x20) = (u32)sub_08001494(0x800)) == 0)
                sub_080003F0();
            t = (u8 *)gUnk_03006368;
            *(u32 *)(t + 0xC) = (u32)sub_08066720;
            *(u32 *)(t + 0x10) = *(u32 *)(t + 0x20) + 0x7FC;
            *(u32 *)(t + 8) = 0x65;
            *(u32 *)(t + 0x24) = 0;
            sub_08000274_(t, (u32)msg, 0);
        }
        sub_080003F0();
    }
}
#ifdef NONMATCHING
/* Link message RECEIVER (one task per peer, `peer` = sender id 0..3). See docs/LINK_CABLE.md and docs/LINK_MESSAGES.md.
 * Draft reconstructed from the asm/Ghidra (NOT byte-matching): offsets and control flow follow the original, helper
 * names are the raw addresses. Phase A waits for an announce block (blk[0]==0xB1, tag blk[1] in 0x81..0xB0, blk[2] chunks),
 * phase B acks the tag until the sender switches to chunk mode (blk[1]==0xB2), phase C receives 8-byte chunks into a 0x100
 * byte buffer acking each one, then the tag is dispatched. All waits are VBlank-synchronised stop-and-wait handshakes. */
#define XF(n) extern u32 x_##n() __asm__(#n);
XF(sub_080168FC) XF(sub_08016A7C) XF(sub_08056E24) XF(sub_08056E64) XF(sub_08056FB8) XF(sub_08057170)
XF(sub_08057328) XF(sub_08057430) XF(sub_0805865C) XF(sub_0805AB20) XF(sub_0805B2C4) XF(sub_0805B618)
XF(sub_0805BD5C) XF(sub_0805D37C) XF(sub_0805D460) XF(sub_0805D498) XF(sub_0805D4C4) XF(sub_08065918)
XF(sub_08065C50) XF(sub_08066490) XF(sub_0800CC98) XF(sub_0800CE30) XF(sub_0800D12C)
XF(sub_08019BF8) XF(sub_08007290) XF(sub_0801D7AC) XF(sub_0801DB94) XF(sub_0801E104) XF(sub_0801E164)
XF(sub_0801E1A4) XF(sub_0801E244) XF(sub_0801F2CC) XF(sub_0801F320) XF(sub_08021E44) XF(sub_08022200)
XF(sub_0802230C) XF(sub_08074DE8) XF(sub_08079888) XF(sub_08079CC4) XF(sub_080793BC) XF(sub_080008C8)
XF(sub_08000420)
extern u8 *gRxEntities asm("gUnk_030056F4");
extern u32 gRxEntityMask asm("gUnk_030056FC");
extern u8 *gRxGameState asm("gUnk_03005CF4");
extern u32 gRxRingIdx[] asm("gUnk_03006210");
extern u32 gRxRing[] asm("gUnk_03006260");
extern u32 gRxFlag asm("gUnk_03006220");
extern u8 *gRxQueue asm("gUnk_03006300");
extern u32 gRxQueueCount asm("gUnk_03006338");
extern u32 gRxLinkState asm("gUnk_03002730");
extern u8 *gRxProfile asm("gUnk_030034E0");
extern u8 *gRxMiscP asm("gUnk_03006440");
extern u8 gRxByteA asm("gUnk_0300636C");
extern u8 gRxByteB asm("gUnk_03006224");
extern u8 gRxByteC asm("gUnk_03006228");
#define RX_PL(i) ((u8 *)gUnk_03003CE0 + (i) * 0x14C)
#define RX_ENT(i) (gRxEntities + (i) * 0x2E0)
#define RX_ENQ(tag, chunks, e) \
    do { \
        if (gRxQueueCount < 0x32) { \
            (e) = gRxQueue + gRxQueueCount * 0x88; \
            *(u32 *)((e) + 4) = 1; \
            *(e) = (tag); \
            (e)[1] = (chunks); \
            gRxQueueCount++; \
        } \
    } while (0)

void sub_0806690C(u32 peer)
{
    u32 d[64];
    u32 myId, i, chunks, tag, cnt, last, wait, idx;
    u8 *ack, *blk, *pl, *ent, *e;

    myId = sub_080020F4();
    ack = sub_08002118(myId) + 0x14 + peer;
    blk = (u8 *)sub_08002238(peer) + 8;
    for (;;) {
        /* phase A: wait for an announce */
        for (;;) {
            tag = 0;
            sub_080003F0();
            if (blk[0] == 0xB1 && blk[1] > 0x80 && blk[1] < 0xB1) {
                chunks = blk[2];
                tag = blk[1];
            }
            *ack = 0x80;
            if (tag != 0)
                break;
        }
        /* phase B: ack the tag until the sender starts the chunks */
        cnt = 0;
        do {
            *ack = tag;
            sub_080003F0();
            if (gRxLinkState & (1 << peer)) {
                cnt++;
                if (cnt > 0x3C)
                    goto restart;
                if (blk[1] == 0xB2)
                    break;
            }
        } while (1);
        /* phase C: receive the chunks */
        last = 0xFFFFFFFF;
        wait = 0;
        idx = 0;
        if (chunks != 0) {
            do {
                idx = blk[2] - 1;
                if (idx < 0x100) {
                    d[idx * 2] = *(u32 *)(blk + 4);
                    d[idx * 2 + 1] = *(u32 *)(blk + 8);
                    *ack = 0x80 - blk[2];
                    sub_080003F0();
                    if (last == blk[2]) {
                        if (gRxLinkState & (1 << peer))
                            wait++;
                    } else {
                        wait = 0;
                        last = blk[2];
                    }
                    if (wait > 0x3C)
                        goto restart;
                    idx = blk[2] - 1;
                }
            } while (idx < chunks);
        }
        if (wait > 0x3C)
            continue;
        *ack = blk[2];
        sub_0800224C();
        pl = RX_PL(peer);
        switch (tag - 0x81) {
        case 0: /* profile: 10 bytes -> Player+2 */
            for (i = 0; i < 10; i++)
                pl[2 + i] = ((u8 *)d)[i];
            break;
        case 1: /* two u16 at Player+0xC; remote also +0x64/+0x66 */
            *(u16 *)(pl + 0xC) = d[0];
            *(u16 *)(pl + 0xE) = d[0] >> 16;
            if (peer != sub_080020F4()) {
                *(u16 *)(pl + 0x64) = d[0];
                pl[0x66] = d[0] >> 16;
            }
            break;
        case 2:
            if (peer != sub_080020F4())
                *(u16 *)(pl + 0x10) = d[0];
            break;
        case 3: /* ring of 9 words per peer */
            gRxRing[gRxRingIdx[peer] + peer * 10] = d[0];
            gRxRingIdx[peer]++;
            if (gRxRingIdx[peer] > 9)
                gRxRingIdx[peer] = 9;
            break;
        case 4:
            CpuSet(d, gRxGameState + 0x22, 10);
            break;
        case 5:
            x_sub_080168FC(d);
            gRxFlag = 0;
            break;
        case 6:
            x_sub_08016A7C(d[0]);
            break;
        case 7: /* entity id == d[0]: set bit 1 of +0x7A */
            for (i = 0; i < 5; i++) {
                if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                    *(u16 *)(RX_ENT(i) + 0x7A) |= 1;
                    break;
                }
            }
            break;
        case 8: /* remote only: entity id == d[0] -> state 10, flag 0x80 */
            if (peer != sub_080020F4()) {
                for (i = 0; i < 5; i++) {
                    if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                        ent = RX_ENT(i);
                        *(u16 *)(ent + 0xC) = 10;
                        *(u16 *)(ent + 0x7A) |= 0x80;
                        *(u16 *)(ent + 0x4A) = *(u16 *)(ent + 0x5C);
                        *(u32 *)(ent + 0x4C) = *(u16 *)(ent + 0x4A);
                        break;
                    }
                }
            }
            break;
        case 9: /* player-vs-player / player-vs-entity hit (see docs/LINK_MESSAGES.md) */
        case 10:
            break;
        case 0xB:
            if (peer != sub_080020F4())
                *(u32 *)(pl + 0x30) = d[0];
            break;
        case 0xC:
            *(u32 *)(gRxGameState + 0x40) = d[0];
            x_sub_08056E64();
            break;
        case 0xD:
            if (peer != sub_080020F4())
                CpuSet(d, pl + 0x58, 0x0400000C);
            break;
        case 0xE:
            if (peer != sub_080020F4())
                CpuSet(d, pl + 0x38, 0x04000008);
            break;
        case 0xF:
            *(u32 *)(gRxGameState + 0x38) |= d[0];
            break;
        case 0x10: /* remote only: entity (id = d[1]>>16) velocity */
            if (peer != sub_080020F4()) {
                for (i = 0; i < 5; i++) {
                    if ((gRxEntityMask & (1 << i)) && (d[1] >> 16) == *(u16 *)(RX_ENT(i) + 2)) {
                        *(u32 *)(RX_ENT(i) + 0x1FC) = d[0];
                        *(u32 *)(RX_ENT(i) + 0x200) = d[1];
                        break;
                    }
                }
            }
            break;
        case 0x11:
            if (peer != sub_080020F4()) {
                for (i = 0; i < 5; i++) {
                    if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                        *(u32 *)(RX_ENT(i) + 0x14) = d[1];
                        *(u32 *)(RX_ENT(i) + 0x18) = d[2];
                    }
                }
            }
            break;
        case 0x12:
        case 0x2E:
            x_sub_08056E24();
            break;
        case 0x13: /* damage list: d[0] entries of {s16 amount, u8 target, u8 flag}, hp slots 0x24 bytes apart */
            if (peer != sub_080020F4()) {
                u8 *src = (u8 *)&d[1];
                for (i = 0; i < d[0]; i++, src += 4) {
                    u8 *slot = *(u8 **)gRxEntities;
                    (void)slot;
                }
            }
            break;
        case 0x14: /* host only: spawn from payload, re-enqueue as tag 0x98 */
        case 0x15:
        case 0x16:
            if (sub_080020F4() == 0) {
                u8 *r = (u8 *)x_sub_0805B2C4(d[0], d[1], d[2] & 0xFFFF, &d[3]);
                if (sub_08002164() > 1)
                    x_sub_0802230C(*(u32 *)r, *(u32 *)(r + 4), 1);
                RX_ENQ(0x98, 4, e);
                if (gRxQueueCount != 0 && e != 0)
                    CpuSet(r, e + 8, 0x04000008);
            }
            break;
        case 0x17:
            if (sub_080020F4() != 0) {
                u32 *q = (u32 *)x_sub_0805B618();
                for (i = 0; i < 8; i++)
                    q[i] = d[i];
            }
            break;
        case 0x1D: /* tag 0x9E */
            x_sub_08065918(pl, d[0]);
            break;
        case 0x1E:
            x_sub_0800D12C();
            x_sub_08056FB8(*(u16 *)(RX_PL(myId) + 0x2E), *(u16 *)(RX_PL(myId) + 0x2C));
            x_sub_08057170();
            x_sub_0805865C(0x24);
            break;
        case 0x1F:
            x_sub_0801D7AC(peer, myId, d[0] >> 16, d[0] & 0xFFFF);
            break;
        case 0x20:
            for (i = 0; i < 5; i++) {
                if ((gRxEntityMask & (1 << i)) && (d[0] & 0xFF) == *(u16 *)(RX_ENT(i) + 2)) {
                    *(u8 *)(RX_ENT(i) + 0x201) |= 2; /* shared tail at 0x08066AFC */
                    *(u16 *)(RX_ENT(i) + 0x8A) = 0;
                    *(u16 *)(gRxGameState + 0xC) = 0;
                }
            }
            break;
        case 0x22:
            x_sub_08057328(d[1], d[0]);
            break;
        case 0x23:
            x_sub_08057430(d[1], d[0], d[2]);
            break;
        case 0x24:
            x_sub_080793BC(peer);
            break;
        case 0x25:
            *(u16 *)(pl + 0x11E) = d[0];
            break;
        case 0x27:
            x_sub_08079888(d[0] & 0xFFFF, d[1], d[2], (d[0] >> 16) & 0xFFFF, d[3]);
            break;
        case 0x28:
            x_sub_08065C50(d[0]);
            break;
        case 0x29:
            x_sub_08079CC4(d[0] & 0xFFFF, d[1], d[2], (d[0] >> 16) & 0xFFFF, d[3]);
            break;
        case 0x2B:
        case 0x2C:
        case 0x2D:
            break;
        case 0x2F: /* tag 0xB0: entity id == d[0] -> state 10, flag 0x80 */
            for (i = 0; i < 5; i++) {
                if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                    *(u16 *)(RX_ENT(i) + 0x7A) |= 0x80;
                    *(u16 *)(RX_ENT(i) + 0xC) = 10;
                    break;
                }
            }
            break;
        default:
            break;
        }
    restart:
        ;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806690C);
#endif
#ifdef NONMATCHING
void sub_08067A68(u32 index)
{
    u8 *entry;
    u32 mem;
    entry = *(u8 **)0x03006258 + index*0x28;
    if(sub_08000470((u32)entry)) return;
    *(u32 *)(entry+0xC)=(u32)sub_0806690C;
    mem=sub_08001494(0xC00); *(u32 *)(entry+0x20)=mem;
    *(u32 *)(entry+0x10)=mem+0xBFC; *(u32 *)(entry+8)=0x65;
    *(u32 *)(entry+0x24)=0; sub_08000274(entry,index);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08067A68);
#endif
s32 sub_08067AC0(void) {
    return 1;
}
s32 sub_08067AC4(void) {
    return 1;
}
s32 sub_08067AC8(void) {
    return 1;
}
s32 sub_08067ACC(void) {
    return 1;
}
s32 sub_08067AD0(void) {
    return 1;
}
s32 sub_08067AD4(void) {
    return 1;
}
s32 sub_08067AD8(void) {
    return 1;
}
s32 sub_08067ADC(void) {
    return 1;
}
s32 sub_08067AE0(void) {
    return 1;
}
s32 sub_08067AE4(void) {
    return 1;
}
s32 sub_08067AE8(void) {
    return 1;
}
void sub_08067AEC(void) {

}
s32 sub_08067AF0(void) {
    return 1;
}
void sub_08067AF4(void) {

}
void sub_08067AF8(void) {

}
#ifdef NONMATCHING
void sub_08067AFC(void)
{
    u8 *obj;
    u32 mem;
    u32 i;
    obj = (u8 *)0x03006310;
    *(u32 *)(obj+0xC) = (u32)sub_08066898;
    mem = sub_08001494(0x400);
    *(u32 *)(obj+0x20) = mem;
    *(u32 *)(obj+0x10) = mem + 0x3FC;
    *(u32 *)(obj+8) = 0x65;
    *(u32 *)(obj+0x24) = (u32)sub_08068670;
    sub_08000274_(obj, 0, 0);
    for (i = 0; i < sub_08002164(); i++) sub_08067A68(i);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08067AFC);
#endif
