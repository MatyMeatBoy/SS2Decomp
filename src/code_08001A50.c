#include "global.h"
#include "lib/agb_flash/agb_flash.h"

extern u8 gUnk_03000018;
extern u16 (*ProgramFlashSector)(u16, u8 *);
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
    const u16 *supportedIds = (const u16 *)0x080B99C8;
    u16 flashId;
    u32 i;

    IdentifyFlash();
    flashId = gFlash->ids.joined;
    for (i = 0; i < 5 && supportedIds[i] != flashId; i++)
        ;
    gUnk_03000018 = (i < 5);
    if (gUnk_03000018)
        SetFlashTimerIntr(2, (void (**)(void))0x030012B8);
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

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001BE4);

s32 sub_08001DF0(u32 playerId)
{
    extern u8 gUnk_03002710[];
    volatile u8 *buffer;
    u32 flags;
    u32 activeMask;
    u32 playerCount;
    u32 acknowledged;
    u32 currentId;
    u32 i;

    playerId = (u8)playerId;
    flags = *(volatile u32 *)&gUnk_030027D0;
    if ((flags & 2) == 0)
        return 1;

    if ((*(volatile u32 *)&gUnk_03002730 & 0x80) != 0) {
        flags = *(volatile u32 *)&gUnk_030027D0;
        if ((flags & 2) != 0) {
            activeMask = *(volatile u32 *)&gUnk_03002730;
            playerCount = ((activeMask >> 8) & 1) + ((activeMask >> 9) & 1) +
                ((activeMask >> 10) & 1) + ((activeMask >> 11) & 1);
        } else {
            playerCount = 1;
        }

        acknowledged = 0;
        for (i = 1; i < playerCount; i++) {
            flags = *(volatile u32 *)&gUnk_030027D0;
            currentId = (flags & 2) != 0 ? ((*(vu32 *)0x04000128 >> 30) & 3) : 0;
            if (i == currentId)
                buffer = gUnk_03002710;
            else
                buffer = (u8 *)&gUnk_03002770 + i * 0x18;

            if (buffer[8] == 0x4F && buffer[9] == 0x4B && buffer[10] == playerId)
                acknowledged++;
        }

        if (acknowledged < playerCount - 1) {
            flags = *(volatile u32 *)&gUnk_030027D0;
            currentId = (flags & 2) != 0 ? ((*(vu32 *)0x04000128 >> 30) & 3) : 0;
            if (currentId == 0)
                buffer = gUnk_03002710;
            else
                buffer = (u8 *)&gUnk_03002770;
            buffer[8] = 0x4F;
            buffer[9] = 0x4B;
            buffer[10] = 0x53;
            buffer[11] = (u8)playerId;
            return 1;
        }

        flags = *(volatile u32 *)&gUnk_030027D0;
        currentId = (flags & 2) != 0 ? ((*(vu32 *)0x04000128 >> 30) & 3) : 0;
        if (currentId == 0)
            buffer = gUnk_03002710;
        else
            buffer = (u8 *)&gUnk_03002770;
        buffer[8] = 0x4E;
        buffer[9] = 0x4F;
        buffer[10] = 0x53;
        buffer[11] = 0x53;
        return 0;
    }

    flags = *(volatile u32 *)&gUnk_030027D0;
    currentId = (flags & 2) != 0 ? ((*(vu32 *)0x04000128 >> 30) & 3) : 0;
    if (currentId == 0)
        buffer = gUnk_03002710;
    else
        buffer = (u8 *)&gUnk_03002770 + currentId * 0x18;
    buffer[8] = 0x4F;
    buffer[9] = 0x4B;
    buffer[10] = (u8)playerId;

    flags = *(volatile u32 *)&gUnk_030027D0;
    currentId = (flags & 2) != 0 ? ((*(vu32 *)0x04000128 >> 30) & 3) : 0;
    if (currentId == 0)
        buffer = gUnk_03002710;
    else
        buffer = (u8 *)&gUnk_03002770 + currentId * 0x18;
    if (buffer[8] == 0x4F || buffer[9] == 0x4B || buffer[10] == 0x53 ||
        buffer[11] == playerId)
        return 1;
    return 0;
}

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
