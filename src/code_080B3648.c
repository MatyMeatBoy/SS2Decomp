#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B3648);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B44F0);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4690);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4A7C);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4B48);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4B7C);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4BB8);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4C34);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5B90);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5E64);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5F94);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6068);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B60F4);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6178);
void sub_080B6324(void) {
    if (M2C_FIELD(gUnk_030007DC, s16 *, 0x5C) != 0) {
        sub_080B60F4();
        sub_080B6360();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007E0);
}
void sub_080B6360(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_030007E4) != 0) {
        sub_080003A8(gUnk_030007E4);
    }
    if (gUnk_030007E4 != 0) {
        sub_08001538(gUnk_030007E4);
        gUnk_030007E4 = 0;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B63A0);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B63BC);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B640C);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6448);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B64A4);
