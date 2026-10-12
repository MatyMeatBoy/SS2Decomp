#include "global.h"

#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))
#define SET_IME(v) REG_IME = (gUnk_03000000 = (v))

void sub_08000A8C(struct DispCnt *src, u16 write)
{
    *(u32 *)&gUnk_0300129C = *(u32 *)src;
    if (write)
        REG_DISPCNT = *(u16 *)&gUnk_0300129C;
}
void sub_08000AA8(u16 which, u16 *src)
{
    if (src == 0)
        return;
    switch (which) {
    case 0:
        *(vu16 *)0x04000008 = *src;
        break;
    case 1:
        *(vu16 *)0x0400000A = *src;
        break;
    case 2:
        *(vu16 *)0x0400000C = *src;
        break;
    case 3:
        *(vu16 *)0x0400000E = *src;
        break;
    }
}
void sub_08000AF0(u32 palNum, const void *src, u32 numPals)
{
    CpuFastSet(src, (u8 *)&gUnk_03001F40 + palNum * 32, (numPals * 8) & 0x1FFFFF);
    if (gUnk_03001310 == 0)
    {
        sub_08001348(&gUnk_03001F40, PLTT, 0x400);
        gUnk_03001310++;
    }
}
void sub_08000B38(void) {
    sub_08001348((s32) &gUnk_03001F40, 0x05000000, 0x400);
}
void sub_08000B50(void)
{
    CpuSet(gUnk_03001250, (void *)REG_ADDR_BG0HOFS, 0x24);
}
void sub_08000B68(u16 bg, u16 *out)
{
    if (out)
    {
        switch (bg)
        {
        case 0: *out = REG_BG0CNT; break;
        case 1: *out = REG_BG1CNT; break;
        case 2: *out = REG_BG2CNT; break;
        case 3: *out = REG_BG3CNT; break;
        }
    }
}
void sub_08000BB0(u32 seed)
{
    gUnk_03001318[0] = 0xFA;
    gUnk_03001318[1] = 0x88;
    gUnk_03001318[2] = 0x86;
    gUnk_03001318[3] = 0x04;
}
#ifdef NONMATCHING
void *sub_08000BC8(u32 *src, void **dest)
{
    u32 size, rem;
    size = *src >> 8;
    rem = size & 3; if (rem) size += 4 - rem;
    if (*dest == NULL)
    {
        while ((*dest = (void *)sub_08001494(size)) == NULL)
            sub_080003F0();
    }
    LZ77UnCompWram(src, *dest);
    return *dest;
}
#else
INCLUDE_ASM("asm/nonmatchings/video", sub_08000BC8);
#endif
void sub_08000C08(s16 arg0, s16 arg1) {
    gUnk_03001730 = arg0;
    gUnk_03002348 = arg1;
}
void sub_08000C1C(void)
{
    DmaFill16(3, 0, gUnk_03001250, 4);
    gUnk_03001250[10] = 0x100;
    gUnk_03001250[8] = 0x100;
    gUnk_03001250[18] = 0x100;
    gUnk_03001250[16] = 0x100;
}
#ifdef NONMATCHING
void sub_08000C50(void)
{
    WAIT_NOT_BLANK();
    SET_IME(0);
    REG_IE = (gUnk_03000002 |= INTR_FLAG_HBLANK);
    WAIT_NOT_BLANK();
    SET_IME(1);
    WAIT_NOT_BLANK();
    SET_IME(0);
    REG_DISPSTAT = (gUnk_03000004 |= DISPSTAT_HBLANK_INTR);
    WAIT_NOT_BLANK();
    SET_IME(1);
}
#else
INCLUDE_ASM("asm/nonmatchings/video", sub_08000C50);
#endif
#ifdef NONMATCHING
void sub_08000D0C(void)
{
    WAIT_NOT_BLANK();
    SET_IME(0);
    REG_IE = (gUnk_03000002 &= ~INTR_FLAG_HBLANK);
    WAIT_NOT_BLANK();
    SET_IME(1);
    REG_DISPSTAT = (gUnk_03000004 &= ~DISPSTAT_HBLANK_INTR);
}
#else
INCLUDE_ASM("asm/nonmatchings/video", sub_08000D0C);
#endif
#ifdef NONMATCHING
void sub_08000D8C(void)
{
    WAIT_NOT_BLANK();
    SET_IME(0);
    REG_IE = (gUnk_03000002 |= INTR_FLAG_VCOUNT);
    WAIT_NOT_BLANK();
    SET_IME(1);
    WAIT_NOT_BLANK();
    SET_IME(0);
    REG_DISPSTAT = (gUnk_03000004 |= DISPSTAT_VCOUNT_INTR);
    WAIT_NOT_BLANK();
    SET_IME(1);
}
#else
INCLUDE_ASM("asm/nonmatchings/video", sub_08000D8C);
#endif
#ifdef NONMATCHING
void sub_08000E48(void)
{
    WAIT_NOT_BLANK();
    SET_IME(0);
    REG_IE = (gUnk_03000002 &= ~INTR_FLAG_VCOUNT);
    WAIT_NOT_BLANK();
    SET_IME(1);
    REG_DISPSTAT = (gUnk_03000004 &= ~DISPSTAT_VCOUNT_INTR);
}
#else
INCLUDE_ASM("asm/nonmatchings/video", sub_08000E48);
#endif
