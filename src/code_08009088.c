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
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BA6C);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BA80);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BAA4);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BAC4);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BB40);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BB54);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BB68);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BB80);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BB94);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BBA8);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BBD8);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BC08);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BC44);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BCA0);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BCDC);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BCFC);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BD1C);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BD48);
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
