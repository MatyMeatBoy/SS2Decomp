#include "global.h"

void sub_0805D094(void)
{
    u8 *base = (u8 *)gUnk_030034E0;
    *(u8 *)(base + 0x109) =
        (*(u16 *)(base + 0x100) == 4 && sub_0805D210(base + 0x100) != 0);
}
void sub_0805D0E8(void)
{
    u8 *base = (u8 *)gUnk_030034E0;
    u8 *state = base + 0x110;
    base[0x119] = (*(u16 *)state == 3 && sub_0805D278(state) != 0);
}

void sub_0805D13C(void)
{
    u8 *base = (u8 *)gUnk_030034E0;
    u8 *state = base + 0x120;
    base[0x129] = (*(u16 *)state == 5 && sub_0805D2E0(state) != 0);
}
void sub_0805D190(void)
{
    u8 *base = *(u8 **)0x030034E0;
    if (*(u16 *)(base + 0x130) == 7) {
        base[0x13A] = 1;
    } else {
        u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
        *(u16 *)(state + 0xC6) = 0;
        base[0x13A] = 0;
    }
}
void sub_0805D1E0(void)
{
    u8 *base = gUnk_030034E0;
    *(u8 *)(base + 0x149) = (*(u16 *)(base + 0x140) == 6);
}
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D210);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D278);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D2E0);
u32 sub_0805D348(void)
{
    u8 *entry = (u8 *)gUnk_030034E0 + 0x150;
    u32 i;
    for (i = 0; i <= 0x18; i++, entry += 0x10)
        if (*(u16 *)entry == 0xA && *(u32 *)(entry + 4) <= 0x1869F)
            return 1;
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D37C);
s32 sub_0805D3D4(void) {
    s32 var_r3;
    u32 var_r2;
    void *var_r1;

    var_r3 = 0;
    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x150;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0) == 0xA) {
            var_r3 += M2C_FIELD(var_r1, s32 *, 4);
        }
        var_r1 += 0x10;
        var_r2 += 1;
    } while (var_r2 <= 0x18U);
    return var_r3;
}
s32 sub_0805D404(void) {
    s32 var_r3;
    u32 var_r2;
    void *var_r1;

    var_r3 = 0;
    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x2E0;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0) == 0xA) {
            var_r3 += M2C_FIELD(var_r1, s32 *, 4);
        }
        var_r1 += 0x10;
        var_r2 += 1;
    } while (var_r2 <= 0x4AU);
    return var_r3;
}
void *sub_0805D434(void)
{
    u8 *entry = gUnk_03005D58;
    u32 i;
    for (i = 0; i < 16; i++, entry += 0x20)
        if ((*(u16 *)(entry + 0xA) & 3) == 0)
            return entry;
    return 0;
}
void *sub_0805D460(u32 id)
{
    u8 *entry = gUnk_03005D58;
    u32 i;
    for (i = 0; i < 16; i++, entry += 0x20)
        if ((*(u16 *)(entry + 0xA) & 1) != 0 && *(u16 *)(entry + 0xC) == (u16)id)
            return entry;
    return 0;
}
void *sub_0805D498(u32 id)
{
    u8 *entry = gUnk_03005D58;
    u32 i;
    for (i = 0; i < 16; i++, entry += 0x20)
        if (*(u16 *)(entry + 0xA) == 2 && *(u16 *)(entry + 0xC) == (u16)id)
            return entry;
    return 0;
}
s32 sub_0805D4C4(u16 arg0) {
    s32 var_r4;
    u32 var_r2;
    void *var_r1;

    var_r4 = 0;
    var_r1 = gUnk_03005D58;
    var_r2 = 0;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0xC) == arg0) {
            M2C_FIELD(var_r1, s16 *, 0xA) = 0;
            M2C_FIELD(var_r1, u16 *, 0xC) = 0U;
            var_r4 = 1;
        }
        var_r2 += 1;
        var_r1 += 0x20;
    } while (var_r2 <= 0xFU);
    return var_r4;
}
extern u16 gUnk_03005D5C;
void sub_0805D4F4(void)
{
    u32 i;
    gUnk_03005D5C = 1;
    for (i = 0; i < 16; i++) {
        M2C_FIELD((u8 *)gUnk_03005D58 + i * 0x20, u16 *, 0xA) = 0;
        M2C_FIELD((u8 *)gUnk_03005D58 + i * 0x20, u16 *, 0xC) = 0;
    }
}
void sub_0805D518(void) {
    u16 temp_r0;
    u32 var_r3;
    void *var_r2;

    var_r2 = gUnk_03005D58;
    var_r3 = 0;
    do {
        temp_r0 = 0x20 & M2C_FIELD(var_r2, u16 *, 8);
        if (temp_r0 == 0) {
            M2C_FIELD(var_r2, u16 *, 0xA) = temp_r0;
            M2C_FIELD(var_r2, u16 *, 0xC) = temp_r0;
        }
        var_r3 += 1;
        var_r2 += 0x20;
    } while (var_r3 <= 0xFU);
}
s32 sub_0805D548(s32 arg0) {
    u32 var_r2;
    void *var_r1;

    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x150;
loop_1:
    if ((M2C_FIELD(var_r1, u16 *, 0) == 1) && (M2C_FIELD(var_r1, u16 *, 2) == arg0)) {
        return (s32) var_r2;
    }
    var_r1 += 0x10;
    var_r2 += 1;
    if (var_r2 > 0x18U) {
        return -1;
    }
    goto loop_1;
}
void sub_0805D580(u32 index)
{
    if (index <= 0x18)
        M2C_FIELD((u8 *)gUnk_030034E0 + index * 0x10 + 0x150, u16 *, 0) = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D5A0);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D5F4);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D650);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D6B8);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D720);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D854);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805DC1C);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805DE98);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805DF38);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805E0C4);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805EE6C);
s32 sub_0805EEDC(void *arg0) { return *((u8 *)arg0 + 0x30) == 3; }
s32 sub_0805EEEC(void *arg0) { return *((u8 *)arg0 + 0x30) == 0; }
s32 sub_0805EEFC(void *arg0)
{
    return arg0 != NULL && M2C_FIELD(arg0, u32 *, 0x74) == 0;
}
s32 sub_0805EF14(void *arg0)
{
    return arg0 != NULL && M2C_FIELD(arg0, u16 *, 0x80) == 0;
}
void sub_0805EF2C(void)
{
    u32 i;
    for (i = 0; i < 4; i++) {
        u8 bit = (u8)(1u << i);
        if ((gUnk_03005D70 & bit) != 0) {
            u8 *entry = (u8 *)gUnk_03005D64 + i * 0x34;
            if (sub_08000470((u32)entry) != 0)
                sub_080003A8((u32)entry);
            gUnk_03005D70 &= (u8)~bit;
        }
    }
}
void sub_0805EF84(void *arg0, u16 value)
{
    if (arg0 != NULL)
        *(u16 *)((u8 *)arg0 + 0x80) = value;
}
u32 sub_0805EF90(void)
{
    u32 i;
    for (i = 0; i < 4; i++)
        if ((gUnk_03005D70 >> i) & 1)
            return 1;
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805EFBC);
extern s32 gUnk_03005D64;
extern u8 gUnk_03005D70;
void sub_0805F020(void)
{
    void *src = sub_08007290((u8 *)(uintptr_t)gUnk_03003470 + 0x10010003);
    CpuFastSet(src, (void *)0x06008000, 0x1000);
    src = sub_08007290((void *)0x00070003);
    sub_08000AF0((u8 *)src + 0x1E0, 0xF, 1);
    gUnk_03005D64 = sub_08001494(0xD0);
    gUnk_03005D70 = 0;
}
void sub_0805F07C(void) {
    sub_08001348(sub_08007290(gUnk_03003470 + 0x10010003), 0x06008000, 0x4000);
    sub_08000AF0(0xF, sub_08007290(0x70003) + 0x1E0, 1);
    sub_080003F0();
}
u32 sub_0805F0C4(void)
{
    u32 i;
    for (i = 0; i < 4; i++)
        if (((gUnk_03005D70 >> i) & 1) == 0)
            return i;
    return 0xFF;
}
void sub_0805F0F0(void *arg0) {
    u8 temp_r1;

    if ((((s32) gUnk_03005D70 >> M2C_FIELD(arg0, u8 *, 0x31)) & 1) && ((temp_r1 = M2C_FIELD(arg0, u8 *, 0x30), (temp_r1 == 1)) || (temp_r1 == 3) || (temp_r1 == 4) || (temp_r1 == 2))) {
        M2C_FIELD(arg0, u8 *, 0x30) = 4U;
        sub_0805865C(0xDD);
    }
}
extern s32 gUnk_03005D68;
extern u8 gUnk_03005D6C;
void sub_0805F134(void)
{
    gUnk_03005D68 = sub_08001494(0x220);
    gUnk_03005D6C = 0;
}
u32 sub_0805F158(void)
{
    u32 i;
    for (i = 0; i < 4; i++)
        if (((gUnk_03005D6C >> i) & 1) == 0)
            return i;
    return 0xFF;
}
u32 sub_0805F184(void)
{
    u32 i;
    for (i = 0; i < 4; i++)
        if ((gUnk_03005D6C >> i) & 1)
            return 1;
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805F1B0);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805FAC0);
