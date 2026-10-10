#include "global.h"

void sub_08009088(u8 a, u8 b, u8 c, u8 d)
{
    gUnk_03001250[0x3c / 2] = a | (b << 4) | (c << 8) | (d << 12);
}

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

void sub_0800B974(u32 a, u32 b) {
    void *tmp;
    void *p;
    u8 *sh;
    p = (void *) sub_08007290(a);
    if (a & 0x40000000) {
        tmp = (char *) p + 4;
    } else {
        tmp = 0;
        tmp = sub_08000BC8((u32 *) ((char *) p + 4), (void **) &tmp);
    }
    sh = (u8 *) &gUnk_0300129C;
    if ((*(volatile u8 *) sh & 0x80) == 0) {
        sub_08001348(tmp, (void *) (0x06000000 + (b << 11)), 0x800);
    } else {
        CpuFastSet(tmp, (void *) (0x06000000 + (b << 11)), 0x200);
    }
    if ((a & 0x40000000) == 0) {
        sub_080003F0();
        sub_08001538((s32) tmp);
    }
}

void sub_0800B9F0(u32 a, u32 b) {
    void *tmp;
    void *p;
    u8 *sh;
    p = (void *) sub_08007290(a);
    if (a & 0x40000000) {
        tmp = (char *) p + 4;
    } else {
        tmp = 0;
        tmp = sub_08000BC8((u32 *) ((char *) p + 4), (void **) &tmp);
    }
    sh = (u8 *) &gUnk_0300129C;
    if ((*(volatile u8 *) sh & 0x80) == 0) {
        sub_08001348(tmp, (void *) (0x06000000 + (b << 11)), 0x1000);
    } else {
        CpuFastSet(tmp, (void *) (0x06000000 + (b << 11)), 0x400);
    }
    if ((a & 0x40000000) == 0) {
        sub_080003F0();
        sub_08001538((s32) tmp);
    }
}

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
void *sub_0800BAA4(s16 x, s16 y) {
    struct TileSys *t = &gUnk_03003170;
    u16 *m = t->map0;
    s32 a = x;
    s32 b = y;
    s32 idx = (a >> 3) + (b >> 3) * t->width0;
    return m + idx;
}
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

void sub_0800BCDC(s32 a, s32 b, s32 c, u16 d, u16 e) {
    sub_0800B650(a, b + 0x1c, c, d, e);
}

void sub_0800BCFC(s32 a, s32 b, s32 c, u16 d, u16 e) {
    sub_0800B7DC(a, b + 0x1c, c, d, e);
}

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

void sub_0800BD5C(s32 arg) {
    u32 t;
    u32 i;
    u32 buf[3];
    t = sub_08000464();
    sub_080020F4();
    sub_08065CA8();
    sub_08016114();
    sub_08057624(5);
    i = 0;
    while (i < sub_08002164()) {
        sub_080135C4((u16) i);
        i++;
    }
    if (arg == 1) {
        gUnk_03003478 |= 2;
    } else {
        gUnk_03003478 &= ~2;
    }
    sub_08006E64(1);
    sub_0805F07C();
    sub_080090B0();
    sub_0805B21C();
    sub_08022630();
    sub_08021D88();
    sub_08021C6C();
    sub_08065B58();
    sub_080658A0();
    sub_080922B4();
    sub_0805F1B0();
    gUnk_03003474 = 0;
    sub_080003F0();
    while (sub_080021A8() == 0 && sub_0800CD00() == 0 && sub_0800CB78() == 0) {
        sub_080003F0();
    }
    sub_08006DAC();
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
    if (sub_080021A8() != 0) {
        sub_08061910();
        sub_08002304();
        sub_080020E0();
    }
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CBAC();
    sub_080161A4();
    sub_08021DAC();
    sub_08021C70();
    sub_08065B84();
    sub_080658CC();
    sub_08092344();
    if (sub_0801AAF8() == 0) {
        sub_0801ABE8();
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    sub_08000420(0x000514C8);
    sub_08000420(0x11201100);
    sub_0805F07C();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    if (sub_08002228() == 0) {
        sub_080020E0();
        sub_080003F0();
    }
    while (t < sub_08000464()) {
        sub_080003F0();
    }
}

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BEC0);

INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800C9F4);

void sub_0800CB30(void) {
    gUnk_03003478 = 0;
}

void sub_0800CB3C(s32 a) {
    gUnk_030034B0[3] = (s32) sub_0800BD5C;
    gUnk_030034B0[8] = (s32) sub_08001494(0x400);
    gUnk_030034B0[4] = gUnk_030034B0[8] + 0x3FC;
    gUnk_030034B0[2] = 0x64;
    gUnk_030034B0[9] = 0;
    sub_08000274(gUnk_030034B0, a);
}

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
