#include "global.h"

extern s32 gUnk_03000424;
extern s32 gUnk_030004C8;

INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080A9680);
void sub_080A97E0(void) {
    if (M2C_FIELD(gUnk_0300041C, s16 *, 0x5C) != 0) {
        sub_080A9844();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000420);
}
void sub_080A9818(void)
{
    u32 i;
    gUnk_03000424 = sub_08001494(0x78);
    for (i = 0; i < 3; i++)
        M2C_FIELD((u8 *)gUnk_03000424 + i * 0x28, s32 *, 8) = 0;
}
void sub_080A9844(void) { u8 *p = (u8 *)gUnk_03000424; u32 i; for (i=0;i<3;i++,p+=0x28) { if (sub_08000470((u32)p)) sub_080003A8((u32)p); } sub_08001538(gUnk_03000424); gUnk_03000424=0; }
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080A987C);
u32 sub_080A98E0(u32 a, u32 b, u32 unused, u32 d) { u32 x=sub_080A9910(a,b,d); u32 y=sub_080A9910(a,b,d); return x != y; }
u32 sub_080A9910(s32 *a, s32 *b, s32 *c)
{
    s32 cross = (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0]);
    return cross > 0 ? 1 : (cross < 0 ? (u32)-1 : 0);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080A9950);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AB054);
void sub_080AB2D8(void) {
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000430);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AB2F8);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC214);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC2E8);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC5B4);
extern u16 gUnk_03000438;
void sub_080AC81C(void)
{
    sub_0805867C(0xC2);
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000438);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC844);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AD534);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080ADE30);
void sub_080AE080(void) {
    if (M2C_FIELD(gUnk_03000440, s16 *, 0x5C) != 0) {
        sub_080AE0E4();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030004BE);
}
void sub_080AE0B8(void)
{
    u32 i;
    gUnk_030004C8 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_030004C8 + i * 0x28, s32 *, 8) = 0;
}
void sub_080AE0E4(void) { u8 *p = (u8 *)gUnk_030004C8; u32 i; for (i=0;i<4;i++,p+=0x28) { if (sub_08000470((u32)p)) sub_080003A8((u32)p); } sub_08001538(gUnk_030004C8); gUnk_030004C8=0; }
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AE11C);
extern s32 *gUnk_03000448[];
void sub_080AE184(void)
{
    s32 obj = sub_0800048C();
    u32 index;
    u16 bit;
    M2C_FIELD(obj, s32 *, 8) -= 0x40;
    index = M2C_FIELD(obj, s32 *, 8);
    bit = *(u16 *)gUnk_03000448[index];
    gUnk_030056FC &= ~(1 << bit);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AE1B4);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AE420);
void sub_080AF2AC(void) {
    sub_080AF304();
    sub_08068384();
}
void sub_080AF2BC(void)
{
    u8 count = *(u8 *)0x03000780;
    u8 *block;
    u32 i;
    *(u32 *)0x03000784 = 0;
    block = (u8 *)sub_08001494((u32)count * 0x28);
    *(u32 *)0x03000784 = (u32)block;
    for (i = 0; i < count; i++)
        *(u32 *)(block + i * 0x28 + 8) = 0;
}
void sub_080AF304(void)
{
    u8 *entry = *(u8 **)0x03000784;
    u8 count = *(u8 *)0x03000780;
    u32 i;
    for (i = 0; i < count; i++, entry += 0x28) {
        if (sub_08000470((u32)entry))
            sub_080003A8((u32)entry);
    }
    if (*(u32 *)0x03000784 != 0) {
        sub_08001538(*(u32 *)0x03000784);
        *(u32 *)0x03000784 = 0;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AF350);
extern s32 *gUnk_030004D0;
extern s32 gUnk_030056FC;
void sub_080AF3C4(void) {
    s32 obj = sub_0800048C();
    u32 index;
    u16 bit;
    M2C_FIELD(obj, s32 *, 8) -= 0x44;
    index = M2C_FIELD(obj, s32 *, 8);
    bit = *(u16 *)((u8 *)gUnk_030004D0 + index * 0xAC);
    gUnk_030056FC &= ~(1 << bit);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AF3F4);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B0288);
void sub_080B0F70(void) {
    if (M2C_FIELD(gUnk_03000788, s16 *, 0x5C) != 0) {
        sub_08098060();
    }
    sub_08068384();
    gUnk_030056FC = 0;
}
void sub_080B0F9C(void) {
    if (M2C_FIELD(gUnk_03000788, s16 *, 0x5C) != 0) {
        sub_08098060();
    }
    gUnk_030056FC = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B0FC4);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B1FD4);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B2058);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B2200);
void sub_080B22E8(void) {
    if (M2C_FIELD(gUnk_030007A0, s16 *, 0x5C) != 0) {
        sub_08009088(0, 0, 0, 0);
        sub_08098060();
        sub_080B1FD4();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007A4);
}
void sub_080B2330(void)
{
    u16 *flags = (u16 *)0x03000798;
    u32 i;
    for (i = 0; i < 2; i++) flags[i] = 0;
    *(u32 *)0x030007A8 = sub_08001494(0x28);
    if (*(u32 *)0x030007A8 != 0)
        *(u32 *)(*(u32 *)0x030007A8 + 8) = 0;
}
void sub_080B236C(u32 a, u32 b)
{
    u8 *obj = *(u8 **)0x030007A8;
    if (obj == 0 || sub_08000470((u32)obj) || *(u32 *)(obj + 8) != 0) return;
    u32 mem = sub_08001494(0x400);
    *(u32 *)(obj + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 0xC) = (u32)sub_080B2058;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 8) = 0x3B;
    sub_08000274(obj, b, a, 0);
}
void sub_080B23C8(void)
{
    u8 *base = *(u8 **)0x030056F4;
    u32 i;
    for (i = 1; i <= 4; i++)
        *(u16 *)(base + i * 0x2E0 + 0x7A) |= 1;
}
void sub_080B23FC(void) {
    do {
        gUnk_030007AC = sub_08001494(0x28);
        sub_080003F0();
    } while (gUnk_030007AC == 0);
    M2C_FIELD(gUnk_030007AC, s32 *, 8) = 0;
}
void sub_080B2424(void) {
    if (gUnk_030007AC != 0) {
        if (sub_08000470(gUnk_030007AC) != 0) {
            sub_080003A8(gUnk_030007AC);
        }
        if (gUnk_030007AC != 0) {
            sub_08001538(gUnk_030007AC);
            gUnk_030007AC = 0;
        }
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B2454);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B24B8);
void sub_080B2780(void) {
    if ((M2C_FIELD(gUnk_030007B8, s16 *, 0x5C) != 0) || (M2C_FIELD(gUnk_030007BC, s16 *, 0x5C) != 0)) {
        sub_080B4B7C();
        sub_08097C6C();
        if (sub_08000470(gUnk_030007B0) != 0) {
            sub_080003A8(gUnk_030007B0);
        }
        sub_08001538(gUnk_030007B0);
        gUnk_030007B0 = 0;
        if (sub_08000470(gUnk_030007B4) != 0) {
            sub_080003A8(gUnk_030007B4);
        }
        sub_08001538(gUnk_030007B4);
        gUnk_030007B4 = 0;
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007C8);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B280C);
