#include "global.h"
#include "lib/agb_flash/agb_flash.h"
#include "lib/agb_flash/flash_internal.h"

extern u8 gUnk_03000018;
extern u32 VerifyFlashSector(u16 sectorNum, u8 *src);
extern u32 gUnk_03002740[];
extern void sub_080022A4(void);
extern void sub_08001BE4(void);
#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))

#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))

struct MemBlock {
    u32 prev:31;
    u32 used:1;
    struct MemBlock *next;
    struct MemBlock *prevFree;
    struct MemBlock *nextFree;
};

struct Heap {
    struct MemBlock head;
    void *start;
    u32 size;
};

void sub_08001A50(void)
{
    if (gUnk_030024B0[0])
        gUnk_030024B0[8] = 1;
}
void sub_08001A64(void)
{
    sub_08000EF4();
    sub_08000FD4(0xC0);
    sub_08000F2C();
    REG_SIOCNT = 0x2003;
    *(vu32 *)0x0400010C = 0xC352;
    *(vu16 *)0x04000202 = 0xC0;
    gUnk_030024B0[8] = 0;
}
void sub_08001AA4(void)
{
    extern const u16 gFlashSupportedIds[] asm("gUnk_080B99C8");
    extern const struct FlashType * volatile flashDevice asm("gFlash");
    extern volatile u8 flashSupported asm("gUnk_03000018");
    extern void (*flashTimerSlot)(void) asm("gUnk_030012B8");
    const u16 *supportedIds;
    u8 i;
    IdentifyFlash();
    supportedIds = gFlashSupportedIds;
    for (i = 0; i <= 4; i++) {
        if (flashDevice->ids.joined == *supportedIds++) break;
    }
    if (i > 4) flashSupported = 0;
    else flashSupported = 1;
    if (flashSupported)
        SetFlashTimerIntr(2, &flashTimerSlot);
}
void sub_08001B04(u16 sector, u32 offset, void *dest, u32 size) {
    ReadFlash(sector, offset, dest, size);
}
u32 sub_08001B14(u16 sector, u8 *src)
{
    u32 r;
    u16 t;
    if (gUnk_03000018 == 0)
        r = 1;
    else {
        sub_08000EF4();
        t = ProgramFlashSector(sector, src);
        sub_08000F2C();
        r = t;
    }
    return r;
}
u32 sub_08001B54(u16 sector, u8 *src)
{
    u32 r;
    if (gUnk_03000018 == 0)
        r = 1;
    else
        r = VerifyFlashSector(sector, src);
    return r;
}
void sub_08001B78(void)
{
    sub_0801A508();
    sub_0805F020();
    sub_0805F134();
    sub_0801A70C();
    sub_0801A9BC();
    sub_0800207C();
    sub_0806514C();
    sub_08001AA4();
    sub_0805F1B0();
    sub_08092094();
    gUnk_03003470 = 0;
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_08006E84();
    sub_08002658();
    sub_08002A54();
    sub_080003F0();
    sub_080003F0();
    while (1) {
        sub_080003F0();
        sub_08008C1C();
    }
}
extern u32 gLinkPrevState asm("gUnk_03002728");
extern u32 gLinkTimeout asm("gUnk_0300272C");
extern u8 gLinkSendBuf[] asm("gUnk_03002710");
extern u8 gLinkRecvBufs[] asm("gUnk_03002770");
extern u32 gLinkFlags asm("gUnk_030027D0");
extern u32 gLinkState asm("gUnk_03002730");
extern void sub_080003F4();
extern void sub_080586B4();
void sub_08001BE4(void)
{
    u32 cnt[4];
    u32 i;
    u32 errs;
    u32 myId;
    u32 st;

    sub_0800170C();
    gLinkFlags = 1;
    gLinkState = 0;
    sub_08002298(0x50);
    for (i = 0; i < 4; i++)
        cnt[i] = 0;
    while (cnt[0] <= 0x3B) {
        sub_080003F0();
        if (gLinkFlags & 0x40000000)
            break;
        gLinkPrevState = gLinkState;
        gLinkState = sub_08001804(gLinkSendBuf, gLinkRecvBufs);
        sub_08001A50();
        if (gLinkState & 0xE00)
            cnt[0]++;
    }
    cnt[0] = 0;
    errs = 0;
    gLinkFlags |= 2;
    myId = sub_080020F4();
    if (!(gLinkFlags & 0x40000000)) {
        do {
            sub_080003F0();
            gLinkPrevState = gLinkState;
            st = sub_08001804(gLinkSendBuf, gLinkRecvBufs);
            gLinkState = st;
            gLinkFlags &= ~0x10;
            if (st & 0x1000) {
                errs++;
                if (errs > 5 && (gLinkFlags & 4)) {
                    gLinkFlags |= 8;
                    sub_080003F4(0x1F40);
                    gLinkFlags &= ~8;
                }
            } else {
                errs = 0;
            }
            gLinkFlags &= ~0x20;
            for (i = 0; i < sub_08002164(); i++) {
                if (!(gLinkState & (1 << i))) {
                    cnt[i]++;
                    gLinkFlags |= 0x10;
                } else {
                    cnt[i] = 0;
                }
                if (gLinkTimeout == 0x50 && cnt[i] > 0x3C)
                    gLinkFlags |= 0x20;
            }
            for (i = 0; i < sub_08002164(); i++) {
                if (i != myId && cnt[i] > gLinkTimeout) {
                    if (gLinkFlags & 4) {
                        gLinkFlags |= 8;
                        sub_080003F4(0x1F40);
                        goto next;
                    }
                    cnt[i] = 0;
                }
            }
        next:
            if (gLinkFlags & 0x20)
                sub_080586B4(0);
            sub_08001A50();
        } while (!(gLinkFlags & 0x40000000));
    }
    sub_08001A64();
    gLinkFlags = 0x80000000;
    gLinkState = 0;
    sub_0800035C();
}
#ifdef NONMATCHING
extern u32 gLinkFlags asm("gUnk_030027D0");
extern u32 gLinkState asm("gUnk_03002730");
extern u8 gLinkRxBuf[] asm("gUnk_03002710");
extern u8 gLinkPeerBufs[] asm("gUnk_03002770");
#define LINK_CUR() (((gLinkFlags & 2) != 0) ? ((*(vu32 *)0x04000128 << 26) >> 30) : 0)

static inline u8 *LinkBuf(u32 idx, u32 cur)
{
    u32 j;
    u8 *p = gLinkPeerBufs;
    for (j = 0; j < 4; j++, p += 0x18) {
        if (idx == j) {
            if (j == cur)
                return gLinkRxBuf;
            return p;
        }
    }
    return 0;
}

s32 sub_08001DF0(u8 tag)
{
    u32 ack;
    u32 n;
    u32 i;
    u32 k;
    u32 parent;
    u8 *buf;

    if (((gLinkFlags >> 1) & 1) == 0)
        return 1;
    if ((gLinkFlags & 2) != 0)
        parent = (gLinkState >> 7) & 1;
    else
        parent = 1;
    if (parent) {
        ack = 0;
        if ((gLinkFlags >> 1) & 1) {
            n = 0;
            for (k = 0; k < 4; k++) {
                if ((0x100 << k) & gLinkState)
                    n++;
            }
        } else {
            n = 1;
        }
        for (i = 1; i < n; i++) {
            buf = LinkBuf(i, LINK_CUR());
            if (buf[8] == 0x4F && buf[9] == 0x4B && buf[10] == tag)
                ack++;
        }
        if (ack >= n - 1) {
            buf = LinkBuf(0, LINK_CUR());
            buf[8] = 0x4E;
            buf[9] = 0x4F;
            buf[10] = 0x53;
            buf[11] = 0x53;
            return 0;
        }
        buf = LinkBuf(0, LINK_CUR());
        buf[8] = 0x4F;
        buf[9] = 0x4B;
        buf[10] = 0x53;
        buf[11] = tag;
        return 1;
    }
    buf = LinkBuf(LINK_CUR(), LINK_CUR());
    buf[8] = 0x4F;
    buf[9] = 0x4B;
    buf[10] = tag;
    buf = LinkBuf(0, LINK_CUR());
    if (buf[8] == 0x4F || buf[9] == 0x4B || buf[10] == 0x53 || buf[11] == tag)
        return 1;
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001DF0);
#endif
void sub_0800207C(void)
{
    gUnk_030027D0 = 0x80000000;
}
void sub_0800208C(s32 mode)
{
    switch (mode) {
    case 0:
        gUnk_03002740[3] = (u32)sub_080022A4;
        break;
    case 1:
        gUnk_03002740[3] = (u32)sub_08001BE4;
        break;
    }
    gUnk_03002740[8] = (u32)sub_08001494(0x400);
    gUnk_03002740[4] = gUnk_03002740[8] + 0x3FC;
    gUnk_03002740[2] = 1;
    gUnk_03002740[9] = 0;
    sub_08000274((void *)gUnk_03002740, 0);
}
void sub_080020E0(void)
{
    gUnk_030027D0 |= 0x40000000;
}
s32 sub_080020F4(void)
{
    u32 r;
    if (!(gUnk_030027D0 & 2))
        r = 0;
    else
        r = (*(vu32 *)0x04000128 << 26) >> 30;
    return r;
}
