#include "global.h"

void sub_0800CF58(void) {
    gUnk_03003478 |= 0x10000;
}
void sub_0800CF6C(void) {
    gUnk_03003478 &= 0xFFFEFFFF;
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800CF80);
void sub_0800CF90(void) {
    gUnk_03003478 |= 0x20000;
}
s32 sub_0800CFA4(void) {
    gUnk_03003478 &= 0xFFFDFFFF;
    return (s32) &gUnk_03003478;
}
s32 sub_0800CFB8(void) {
    return ((u32) gUnk_03003478 >> 0x11) & 1;
}
void sub_0800CFC8(void) {
    gUnk_03003478 |= 0x40000;
}
void sub_0800CFDC(void) {
    gUnk_03003478 &= 0xFFFBFFFF;
}
s32 sub_0800CFF0(void) {
    return ((u32) gUnk_03003478 >> 0x12) & 1;
}
void sub_0800D000(void) {
    gUnk_03003478 |= 0x400000;
}
void sub_0800D014(void) {
    gUnk_03003478 &= 0xFFBFFFFF;
}
s32 sub_0800D028(void) {
    return ((u32) gUnk_03003478 >> 0x16) & 1;
}
void sub_0800D038(void) {
    gUnk_03003478 |= 0x800000;
}
void sub_0800D04C(void) {
    gUnk_03003478 &= 0xFF7FFFFF;
}
s32 sub_0800D060(void) {
    return ((u32) gUnk_03003478 >> 0x17) & 1;
}
void sub_0800D070(void) {
    gUnk_03003478 |= 0x01000000;
}
void sub_0800D084(void) {
    gUnk_03003478 &= 0xFEFFFFFF;
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D098);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D0A8);
void sub_0800D0F4(void) {
    gUnk_03003478 |= 0x800;
}
void sub_0800D108(void) {
    gUnk_03003478 &= 0xFFFFF7FF;
}
s32 sub_0800D11C(void) {
    return ((u32) gUnk_03003478 >> 0xB) & 1;
}
void sub_0800D12C(void) {
    gUnk_03003478 |= 0x100000;
}
void sub_0800D140(void) {
    gUnk_03003478 &= 0xFFEFFFFF;
}
s32 sub_0800D154(void) {
    return ((u32) gUnk_03003478 >> 0x14) & 1;
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D164);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D1B0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D2F4);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D368);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080135C4);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080137A0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013850);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013BC0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013C3C);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013CEC);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013E90);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080140AC);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014170);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014B28);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014C04);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014C8C);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014D60);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014E68);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0801500C);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08015090);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08015150);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080151E0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080152CC);
