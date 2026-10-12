#include "global.h"
void sub_080A47A0(void);
void sub_080A74E8(void);

extern s32 gUnk_0300035C;
extern s32 *gUnk_03000370[];
extern u8 gUnk_030003F4[];
extern u8 gUnk_030003F8[];
extern s32 gUnk_030003E8;
extern s32 gUnk_03000400;
extern s32 gUnk_03000404;
extern s32 gUnk_03000414;

extern s32 gUnk_03000408;
void sub_080A68B0(void);
extern s32 gUnk_0300040C;

INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A3D2C);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4520);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A47A0);
void sub_080A49A8(void)
{
    sub_0805867C(0xDF);
    if (*(s16 *)((u8 *)gUnk_03000368 + 0x5C) != 0) {
        sub_080A4BFC();
        sub_080A4B10();
        sub_080A4A54();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_030003E8);
}
#ifdef NONMATCHING
void sub_080A49EC(void)
{
    u32 i;
    u32 task;

    *(u8 *)0x030003EA = 0;
    *(u8 *)0x030003F0 = 0;
    *(u8 *)0x030003EF = 0;
    *(u8 *)0x030003F2 = 0;
    *(u8 *)0x030003F1 = 0;
    for (i = 0; i <= 2; i++) {
        *(u8 *)(0x030003EC + i) = 0;
        *(u8 *)(0x030003F8 + i) = 0;
    }
    task = (u32)sub_08001494(0x28);
    gUnk_03000358 = task;
    *(u32 *)(task + 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A49EC);
#endif
void sub_080A4A54(void) {
    if (sub_08000470(gUnk_03000358) != 0) {
        sub_080003A8(gUnk_03000358);
    }
    sub_08001538(gUnk_03000358);
    gUnk_03000358 = 0;
}
#ifdef NONMATCHING
void sub_080A4A7C(void)
{
    u8 *task = *(u8 **)0x03000358;
    if (sub_08000470((u32)task) != 0 || *(u32 *)(task + 8) == 0) {
        u32 mem;
        *(u32 *)(task + 8) = 0x44;
        mem = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = mem;
        *(u32 *)(task + 0x10) = mem + 0x3FC;
        *(u32 *)(task + 0xC) = (u32)sub_080A35D0;
        *(u32 *)(task + 0x24) = (u32)sub_080A4AD0;
        sub_08000274((u32)task, 0, 0);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4A7C);
#endif
void sub_080A4AD0(void) {
    gUnk_030056FC &= ~2;
}
#ifdef NONMATCHING
void sub_080A4AE4(void)
{
    u32 i;
    gUnk_0300035C = sub_08001494(0x78);
    for (i = 0; i < 3; i++)
        M2C_FIELD((u8 *)gUnk_0300035C + i * 0x28, s32 *, 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4AE4);
#endif
#ifdef NONMATCHING
void sub_080A4B10(void)
{
    u8 *entry = gUnk_0300035C;
    u32 i;
    for (i = 0; i < 3; i++, entry += 0x28) {
        if (sub_08000470(entry) != 0)
            sub_080003A8(entry);
    }
    sub_08001538(gUnk_0300035C);
    gUnk_0300035C = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4B10);
#endif
#ifdef NONMATCHING
void sub_080A4B48(s32 arg0)
{
    u8 *entry = (u8 *)gUnk_0300035C;
    u16 argIndex = arg0;
    u8 i;

    for (i = 0; i <= 2; i++, entry += 0x28) {
        u32 mem;

        if (sub_08000470((u32)entry) != 0)
            continue;
        if (M2C_FIELD(entry, s32 *, 8) != 0)
            continue;

        M2C_FIELD(entry, s32 *, 8) = argIndex + 0x46;
        mem = sub_08001494(0x400);
        M2C_FIELD(entry, s32 *, 0x20) = mem;
        M2C_FIELD(entry, s32 *, 0x10) = mem + 0x3FC;
        M2C_FIELD(entry, s32 *, 0xC) = (s32)sub_080A3D2C;
        M2C_FIELD(entry, s32 *, 0x24) = (s32)sub_080A4BB0;
        sub_08000274((s32 *)entry, argIndex);
        break;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4B48);
#endif
void sub_080A4BB0(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x46;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000370[obj[2]]);
}
void sub_080A4BE0(void)
{
  s8 *new_var;
  s32 temp_r0;
  temp_r0 = (gUnk_03000360 = (s32) sub_08001494(0x28U));
  new_var = (s8 *) temp_r0;
  *((s32 *) (new_var + 8)) = 0;
}
void sub_080A4BFC(void) {
    if (sub_08000470(gUnk_03000360) != 0) {
        sub_080003A8(gUnk_03000360);
    }
    sub_08001538(gUnk_03000360);
    gUnk_03000360 = 0;
}
#ifdef NONMATCHING
void sub_080A4C24(void)
{
    u8 *entry = gUnk_03000360;
    if (sub_08000470(entry) == 0 && *(u32 *)(entry + 8) != 0)
        return;
    *(u32 *)(entry + 8) = 0x44;
    *(u32 *)(entry + 0x20) = sub_08001494(0x400);
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A47A0;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274_(entry, 0, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4C24);
#endif
void sub_080A4C74(u8 arg0, u8 arg1) {
    if (gUnk_030003F1 != 0xFF) {
        gUnk_030003F2 = gUnk_030003F1;
    }
    gUnk_030003F1 = arg0;
    M2C_FIELD(gUnk_03000368, s16 *, 8) = (s16) arg1;
}
#ifdef NONMATCHING
void sub_080A4CA8(u32 index, u8 a, u8 b, u32 value)
{
    index &= 0xFF;
    gUnk_030003F8[index] = a;
    gUnk_030003F4[index] = b;
    *(u16 *)((u8 *)gUnk_03000370[index] + 8) = (u8)value;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4CA8);
#endif
void sub_080A4CDC(s8 arg0, s8 arg1) {
    gUnk_030003FB = arg1;
    gUnk_030003FC = arg0;
}
void sub_080A4CF0(s8 arg0) {
    gUnk_030003EF = arg0;
}
void sub_080A4CFC(s8 arg0) {
    gUnk_030003F0 = arg0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4D08);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6258);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6510);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A66E0);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A68B0);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6BE8);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A705C);
#ifdef NONMATCHING
void sub_080A74E8(void)
{
    s32 x = 0;
    s32 y = 0;
    u8 index = 0;

    for (;;) {
        s16 angle;
        u16 angleOffset;
        u16 inverseOffset;

        x += 0x2AA;
        y += 0x88;
        angle = gUnk_080B9704[index] >> 6;
        angleOffset = angle + 7;
        inverseOffset = 15 - angle;
        index++;

        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            sub_0800903C(2, 0x3C, 1, angleOffset, inverseOffset, 0);
            sub_0800BBD8(1, x >> 8, 0);
            sub_0800BBD8(3, y >> 8, 0);
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A74E8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A756C);
void sub_080A7DEC(void)
{
    if (*(s16 *)((u8 *)gUnk_03000400 + 0x5C) != 0) {
        sub_080A7E94();
        sub_080A7F5C();
        sub_080A8014();
        sub_080A80D8();
        sub_0805867C(0x1A1);
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_03000404);
}
void sub_080A7E38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
    gUnk_030056FC = 0;
}
#ifdef NONMATCHING
void sub_080A7E68(void)
{
    u32 i;
    gUnk_03000408 = sub_08001494(0x140);
    for (i = 0; i < 8; i++)
        M2C_FIELD((u8 *)gUnk_03000408 + i * 0x28, s32 *, 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7E68);
#endif
#ifdef NONMATCHING
void sub_080A7E94(void)
{
    u8 *entry = gUnk_03000408;
    u32 i;
    for (i = 0; i < 8; i++, entry += 0x28) {
        if (sub_08000470(entry) != 0)
            sub_080003A8(entry);
    }
    sub_08001538(gUnk_03000408);
    gUnk_03000408 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7E94);
#endif
#ifdef NONMATCHING
void sub_080A7ECC(u32 arg0)
{
    u8 *entry = (u8 *)gUnk_03000408;
    u32 i;
    u32 mem;

    arg0 = (u16)arg0;
    for (i = 0; i < 8; i++, entry += 0x28) {
        if (sub_08000470(entry) == 0 && *(u32 *)(entry + 8) == 0) {
            mem = sub_08001494(0x400);
            *(u32 *)(entry + 0x20) = mem;
            if (mem == 0)
                return;

            *(u32 *)(entry + 0x10) = mem + 0x3FC;
            *(u32 *)(entry + 0xC) = (u32)sub_080A68B0;
            *(u32 *)(entry + 0x24) = 0;
            *(u32 *)(entry + 8) = 0x40;
            sub_08000274((M2C_UNK *)entry, arg0);
            return;
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7ECC);
#endif
#ifdef NONMATCHING
void sub_080A7F30(void)
{
    u32 i;
    gUnk_0300040C = sub_08001494(0x50);
    for (i = 0; i < 2; i++)
        M2C_FIELD((u8 *)gUnk_0300040C + i * 0x28, s32 *, 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7F30);
#endif
#ifdef NONMATCHING
void sub_080A7F5C(void)
{
    u32 i;
    s32 ptr = gUnk_0300040C;
    for (i = 0; i < 2; i++, ptr += 0x28) {
        if (sub_08000470(ptr) != 0)
            sub_080003A8(ptr);
    }
    sub_08001538(gUnk_0300040C);
    gUnk_0300040C = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7F5C);
#endif
#ifdef NONMATCHING
void sub_080A7F94(u16 value)
{
    u8 *task;
    u32 i;
    void sub_080A6BE8(void);
    task = (u8 *)gUnk_0300040C;

    for (i = 0; i < 2; i++, task += 0x28) {
        u32 state;
        u32 mem;

        if (sub_08000470((u32)task) != 0)
            continue;
        state = *(u32 *)(task + 8);
        if (state != 0)
            continue;

        mem = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            return;

        *(u32 *)(task + 0x10) = mem + 0x3FC;
        *(u32 *)(task + 0x0C) = (u32)sub_080A6BE8;
        *(u32 *)(task + 0x24) = state;
        *(u32 *)(task + 8) = 0x40;
        sub_08000274_(task, value, 0);
        return;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7F94);
#endif
void sub_080A7FF8(void)
{
  s32 temp_r0;
  gUnk_03000410 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A8014(void) {
    if (sub_08000470(gUnk_03000410) != 0) {
        sub_080003A8(gUnk_03000410);
    }
    sub_08001538(gUnk_03000410);
    gUnk_03000410 = 0;
}
#ifdef NONMATCHING
void sub_080A803C(void)
{
    u8 *task = *(u8 **)0x03000410;
    if (sub_08000470((u32)task) != 0 || *(u32 *)(task + 8) == 0) {
        u32 mem = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0) return;
        *(u32 *)(task + 0x10) = mem + 0x3FC;
        *(u32 *)(task + 0xC) = (u32)sub_080A705C;
        *(u32 *)(task + 0x24) = 0;
        *(u32 *)(task + 8) = 0x40;
        sub_08000274((u32)task, 0, 0);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A803C);
#endif
#ifdef NONMATCHING
s32 sub_080A8090(void *arg0)
{
    u32 value = gUnk_03000414;
    if (value == 0)
        value = 0x4800;
    *(u32 *)((u8 *)arg0 + 4) = value;
    return *(u32 *)((u8 *)gUnk_03000410 + 8) == 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8090);
#endif
void sub_080A80BC(void)
{
  s32 temp_r0;
  gUnk_03000418 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A80D8(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_03000418) != 0) {
        sub_080003A8(gUnk_03000418);
    }
    sub_08001538(gUnk_03000418);
    gUnk_03000418 = 0;
}
#ifdef NONMATCHING
void sub_080A8114(void)
{
    u8 *entry = gUnk_03000418;
    if (sub_08000470(entry) == 0 && *(u32 *)(entry + 8) != 0)
        return;
    *(u32 *)(entry + 8) = 0x44;
    *(u32 *)(entry + 0x20) = sub_08001494(0x200);
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x1FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A74E8;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274_(entry, 0, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8114);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8164);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8F90);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A9100);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A92C0);
