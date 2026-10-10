#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080571A4);
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
    return sub_08000470();
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
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057624);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057644);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_0805768C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080576A8);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080576C4);
s32 sub_080576E0(void) {
    return sub_080020F4();
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080576EC);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057780);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_0805782C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080578BC);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_0805790C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057934);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_0805795C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057984);
u8 sub_080579AC(void) {
    return sub_0801DE60();
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080579BC);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080579D8);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057A20);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057A5C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057AA4);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057AE8);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057B2C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057B64);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057B98);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057BD0);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057C0C);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057C34);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057C6C);
