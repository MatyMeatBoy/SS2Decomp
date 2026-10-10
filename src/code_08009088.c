#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009088);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080090B0);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009138);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080092C8);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080093E4);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080094CC);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009594);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009930);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009B84);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800A03C);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800A298);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800A34C);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800A998);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800AD04);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800AE50);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800AEF4);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800B118);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800B650);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800B7DC);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800B974);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800B9F0);

u32 sub_0800BA6C(void)
{
    return (gUnk_03003170.flags >> 6) & 1;
}

void sub_0800BA80(u16 i)
{
    struct Layer *l = &gUnk_03003170.layers[i];
    if (l->data != 0)
    {
        l->s12 = 0;
        l->s10 = 0;
        l->y = 0;
        l->x = 0;
    }
}

#ifdef NONMATCHING
void *sub_0800BAA4(s16 x, s16 y)
{
    u8 *m = (u8 *)gUnk_03003170.map0;
    return m + ((x >> 3) + (y >> 3) * gUnk_03003170.width0) * 2;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BAA4);
#endif

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BAC4);

void sub_0800BB40(void)
{
    gUnk_03003170.flags |= 2;
}

void sub_0800BB54(void)
{
    gUnk_03003170.flags |= 0xC;
}

u32 sub_0800BB68(void)
{
    u32 r = gUnk_03003170.flags & 0xC;
    if (r != 0)
        r = 1;
    return r;
}

void sub_0800BB80(u16 a, u16 b)
{
    gUnk_03003170.f80 = a;
    gUnk_03003170.f82 = b;
}

void sub_0800BB94(u16 a, u16 b)
{
    gUnk_03003170.offX = a;
    gUnk_03003170.offY = b;
}

void sub_0800BBA8(u16 i, u16 a, u16 b)
{
    if (sub_0800CCCC() == 0)
    {
        gUnk_03003170.layers[i].w2 = a;
        gUnk_03003170.layers[i].w3 = b;
    }
}

void sub_0800BBD8(u16 i, u16 a, u16 b)
{
    if (sub_0800CCCC() == 0)
    {
        gUnk_03003170.layers[i].w0 = a;
        gUnk_03003170.layers[i].w1 = b;
    }
}

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BC08);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BC44);

#ifdef NONMATCHING
u32 sub_0800BCA0(s32 x, s32 y, s32 which)
{
    u8 *map; u16 *w; s32 ix, iy;
    if (which == 0) { map = (u8 *)gUnk_03003170.map0; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width0; }
    else { map = (u8 *)gUnk_03003170.map1; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width1; }
    return map[(ix + iy * *w) * 2];
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BCA0);
#endif

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BCDC);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BCFC);

#ifdef NONMATCHING
u32 sub_0800BD1C(void)
{
    u16 lv = gUnk_03003170.curLevel; if (gUnk_0847846C[lv].count - 1 == gUnk_03003170.f90) return 1; return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BD1C);
#endif

void sub_0800BD48(s32 i, u16 v)
{
    gUnk_03003170.layers[i].s16 = v;
}

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BD5C);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BEC0);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800C9F4);

void sub_0800CB30(void) {
    gUnk_03003478 = 0;
}

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800CB3C);

s32 sub_0800CB78(void) {
    return gUnk_03003478 & 1;
}

void sub_0800CB88(void) {
    gUnk_03003478 &= ~1;
}

s32 sub_0800CB9C(void) {
    return ((u32) gUnk_03003478 >> 1) & 1;
}

void sub_0800CBAC(void) {
    gUnk_03003478 |= 1;
}
