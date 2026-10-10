#include "global.h"

void sub_080571A4(u32 a, u32 b, u32 value)
{
    a &= 0xFF;
    b &= 0xFF;
    value &= 0xFF;
    if (sub_08002204() != 0)
        *((u8 *)gUnk_03005CF4 + 0x1C8 + a * 5 + b) = value;
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080571D8);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057210);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057254);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080572A4);
void sub_080572E4(void)
{
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) |= 0x100;
}
void sub_080572FC(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFEFF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08057314(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 8) & 1;
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057328);
s32 sub_08057390(s32 arg0, void (*arg1)(s32)) {
    return sub_08068070(arg1, arg0);
}
s32 sub_080573A0(s32 arg0, void (*arg1)(s32))
{
    return ((s32 (*)(void (*)(s32), s32))sub_08068820)(arg1, arg0);
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080573B0);
s32 sub_08057424(void) {
    return sub_08000470(gUnk_03000328);
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057430);
void sub_080574B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080574C4);
void sub_080574FC(void) {
    s32 temp_r4;
    s32 var_r5;
    u32 var_r6;

    var_r5 = gUnk_03005CF4 + 0x7A4;
    var_r6 = 0;
    do {
        temp_r4 = var_r5 + 0x48;
        if (sub_08000470(temp_r4) != 0) {
            sub_080003A8(temp_r4);
        }
        var_r6 += 1;
        var_r5 += 0x70;
    } while (var_r6 <= 0xEU);
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057534);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057580);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080575C0);
void sub_08057624(u32 count)
{
    while (count != 0 && !sub_080021A8()) {
        sub_080003F0();
        count--;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057644);
void sub_0805768C(void) { sub_0801ABE8(6); while (!sub_0801AAE0()) sub_080003F0(); }
void sub_080576A8(void) { sub_0801AA34(0x1E); while (!sub_0801AAE0()) sub_080003F0(); }
void sub_080576C4(void) { sub_0801AA8C(0x1E); while (!sub_0801AAE0()) sub_080003F0(); }
s32 sub_080576E0(void) {
    return sub_080020F4();
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080576EC);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057780);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_0805782C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080578BC);
void sub_0805790C(void) { gUnk_03003CE0[sub_080020F4()].flags |= 2; sub_08067D74(); }
void sub_08057934(void) { gUnk_03003CE0[sub_080020F4()].flags &= ~3u; sub_08067D74(); }
void sub_0805795C(void) { gUnk_03003CE0[sub_080020F4()].flags |= 1; sub_0800D0F4(); }
void sub_08057984(void) { gUnk_03003CE0[sub_080020F4()].flags &= ~1u; sub_0800D108(); }
u8 sub_080579AC(void) {
    return sub_0801DE60();
}
void sub_080579BC(void)
{
    M2C_FIELD(&gUnk_03003CE0[sub_080020F4()], u16 *, 0x20) = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080579D8);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057A20);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057A5C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057AA4);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057AE8);
void sub_08057B2C(u32 index, u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    base[(sub_0800CE30() ? 0x1BC : 0x1B0) + index] = (u8)value;
}
u8 sub_08057B64(u32 offset)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    return base[(sub_0800CE30() ? 0x1BC : 0x1B0) + offset];
}
u32 sub_08057B98(u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 bit = 1u << ((value - 1) & 31);
    return *(u32 *)(base + (sub_0800CE30() ? 0x7C : 0x74)) & bit;
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057BD0);
s32 sub_08057C0C(void)
{
    if (sub_0800CE30() == 0)
        return M2C_FIELD(gUnk_03005CF4, s32 *, 0x74);
    return M2C_FIELD(gUnk_03005CF4, s32 *, 0x7C);
}
u32 sub_08057C34(u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 bit = 1u << ((value - 1) & 31);
    u32 flags = sub_0800CE30() ? *(u32 *)(base + 0x80) : *(u32 *)(base + 0x78);
    return flags & bit;
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057C6C);
