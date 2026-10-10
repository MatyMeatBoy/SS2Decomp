#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059534);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_080595E0);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805968C);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059738);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_080597E4);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059890);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805990C);
void sub_08059954(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) | (1 << arg0));
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059968);
void sub_080599B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) & ~(1 << arg0));
}
void sub_080599C4(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_080599D8);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059A40);
void sub_08059A94(s32 arg0)
{
  s32 temp_r4;
  temp_r4 = arg0;
  temp_r4 = temp_r4 - 1;
  if (sub_0800CE30() != 0)
  {
    *((s32 *) (((s8 *) gUnk_03005CF4) + 0x80)) = (s32) ((*((s32 *) (((s8 *) gUnk_03005CF4) + 0x80))) | (1 << temp_r4));
    return;
  }
  *((s32 *) (((s8 *) gUnk_03005CF4) + 0x78)) = (s32) ((*((s32 *) (((s8 *) gUnk_03005CF4) + 0x78))) | (1 << temp_r4));
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059AD0);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059B84);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059C38);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059CEC);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059DA0);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059E54);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059F08);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059FBC);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A004);
void sub_0805A040(void) {
    sub_08028AAC(8, 0x38, 0x30, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A054);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A088);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A0EC);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A138);
void sub_0805A194(s32 arg0)
{
 do { loop_1: sub_08028D98(arg0, 0, -1, 3); sub_08028D98(arg0, 0, 1, 3); goto loop_1; } while (0);
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A1B4);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A258);
void sub_0805A2B8(void) {
    sub_08028AAC(8, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A2E4);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A318);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A350);
void sub_0805A384(s32 arg0) {
    if ((arg0 != 0) && (sub_08000470() != 0)) {
        sub_080003A8(arg0);
    }
    sub_08068820(sub_0805A3B0, 0, 0);
}
void sub_0805A3B0(void) {
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x17BU);
    }
    sub_08028AAC(7, 0x270F, 0x270F, 0);
    sub_08028D98(6, 0, -0xC, 0x3C);
}
void sub_0805A3F0(s32 arg0) {
    sub_08068070(sub_0805A404, arg0);
}
void sub_0805A404(s32 arg0) {
    if ((sub_0800CCCC() == 0) && !(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
    sub_08028AAC(arg0, 0x270F, 0x270F, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A43C);
void sub_0805A474(s32 arg0) {
    sub_08028AAC(arg0, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
s32 sub_0805A4A0(u32 index)
{
    return M2C_FIELD((u8 *)gUnk_03005CF4 + 0x22 + index * 2, u16 *, 0) - 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A4BC);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A550);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_0805A58C);
void sub_0805A60C(s32 arg0) {
    sub_0802413C(arg0, 0);
}
void sub_0805A618(s32 arg0) {
    sub_0802413C(arg0, 1);
}
void sub_0805A624(s32 arg0) {
    sub_0802413C(arg0, 2);
}
