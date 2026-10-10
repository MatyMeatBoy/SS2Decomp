#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E244);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E278);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E2CC);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E324);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E378);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E3D8);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E438);
s32 sub_0801E46C(void *arg0, void *arg1) {
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r1;

    sub_080020F4();
    temp_r3 = M2C_FIELD(arg1, s32 *, 0x10);
    temp_r1 = M2C_FIELD(arg0, s32 *, 0x20);
    temp_r2 = temp_r1 + 1;
    var_r0 = temp_r2 * 3;
    temp_r1_2 = temp_r1 + 0xD;
    if (var_r0 < temp_r1_2) {
        var_r0 = temp_r1_2;
    }
    if (temp_r3 > var_r0) {
        var_r1 = temp_r2 * 9;
    } else {
        var_r1 = temp_r3 * 3;
    }
    if (M2C_FIELD(arg1, u8 *, 0x22) == 3) {
        var_r1 *= 0xA;
    }
    return var_r1;
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E4B0);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E4CC);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E538);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E550);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E594);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E5B0);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E988);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801ED8C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801EF14);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F024);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F1C4);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F2CC);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F320);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F374);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F79C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F99C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FB14);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FC34);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FD64);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FDD0);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020680);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020D40);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020E08);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020F74);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080210A8);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021214);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0802133C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021490);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080215E4);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080216BC);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080217D8);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021960);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021AD8);
void sub_08021C6C(void) {

}
void sub_08021C70(void) {

}
s32 sub_08021C74(u16 arg0, u16 arg1, u16 arg2) {
    u16 temp_r5;
    u16 var_r0;

    temp_r5 = arg0;
    var_r0 = (u16) ((u16) ((s32) (((u32) ((((u16) sub_080008C8() % 50U) << 0x10) + 0x640000) >> 0x10) * ((s32) (temp_r5 * temp_r5 * 0xA) / (s32) (temp_r5 + arg1))) / (s32) arg2) / 10U);
    if (var_r0 == 0) {
        var_r0 = 1;
    }
    return (s32) var_r0;
}
u16 sub_08021CE4(u16 arg0, u16 arg1) {
    return __divsi3((arg1 + 0x64) * arg0, 0x64);
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021D00);
void sub_08021D88(void) {
    gUnk_03005CE0 = sub_08001494(0x500);
    gUnk_03005CE4 = 0;
}
void sub_08021DAC(void) {
    sub_08001538(gUnk_03005CE0);
    gUnk_03005CE0 = 0;
}
