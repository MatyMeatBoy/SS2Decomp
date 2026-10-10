#include "global.h"

void sub_08000EC8(void) {
    gUnk_03000002 = 0x2000;
    gUnk_03000000 = 0;
    gUnk_03000010 = 0;
    gUnk_03000014 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08000EF4);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08000F2C);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08000F64);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08000FD4);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001040);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080010AC);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080010C8);
void sub_080010DC(void) {
    if (gUnk_03000014 != 0) {
        _call_via_r0();
    }
    *(s16 *)0x04000202 = 2;
    gUnk_03007FF8 |= 2;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001108);
void sub_08001130(void) {
    if (gUnk_03000010 != 0) {
        _call_via_r0();
    }
    *(s16 *)0x04000202 = 4;
    gUnk_03007FF8 |= 4;
}
s32 sub_0800115C(s32 arg0) {
    s32 temp_r2;

    temp_r2 = gUnk_03000010;
    gUnk_03000010 = arg0;
    return temp_r2;
}
void sub_0800116C(void) {
    gUnk_0300234C = 0;
    gUnk_03002350 = 0;
}
void sub_08001180(void) {
    if (gUnk_03002870 != 0) {
        m4aSoundVSync();
    }
    if (gUnk_03002350 != 0) {
        if (gUnk_0300234C != 0) {
            _call_via_r0();
        }
        sub_08000B50();
        sub_08001394();
        gUnk_03002350 = 0;
    }
    if (gUnk_03002870 != 0) {
        m4aSoundMain();
    }
    *(s16 *)0x04000202 = 1;
    gUnk_03007FF8 |= 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080011E4);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001204);
void sub_08001280(void) {
    _call_via_r0(gUnk_03002354);
    *(s16 *)0x04000202 = 0x800;
    gUnk_03007FF8 |= 0x800;
}
void sub_080012AC(void) {
    _call_via_r0(gUnk_03002360);
    *(s16 *)0x04000202 = 0x100;
    gUnk_03007FF8 |= 0x100;
}
s32 sub_080012D8(s32 arg0) {
    s32 temp_r2;

    temp_r2 = gUnk_03002354;
    gUnk_03002354 = arg0;
    return temp_r2;
}
s32 sub_080012E8(s32 arg0) {
    s32 temp_r2;

    temp_r2 = gUnk_03002360;
    gUnk_03002360 = arg0;
    return temp_r2;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080012F8);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001348);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001394);
void sub_080013F8(void) {
    gUnk_03002358 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001404);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001494);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001538);
void sub_08001634(void) {

}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001638);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080016C8);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080016EC);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_0800170C);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001804);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_0800191C);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001990);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001A50);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001A64);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001AA4);
void sub_08001B04(u16 arg0) {
    sub_080B882C(arg0);
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001B14);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001B54);
void sub_08001B78(void) {
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
loop_1:
    sub_080003F0();
    sub_08008C1C();
    goto loop_1;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001BE4);
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001DF0);
void sub_0800207C(void) {
    gUnk_030027D0 = 0x80000000;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_0800208C);
void sub_080020E0(void) {
    gUnk_030027D0 |= 0x40000000;
}
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080020F4);
