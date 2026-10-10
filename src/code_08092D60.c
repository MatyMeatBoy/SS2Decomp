#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08092D60);
void sub_08092DB8(void) {
    gUnk_03000259 = 0;
}
void sub_08092DC4(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000260 = (s32) sub_08001494(0x28U));
  if (temp_r0 != 0)
  {
    *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
    gUnk_03000258 = 4;
  }
}
void sub_08092DF0(void) {
    if (gUnk_03000260 != 0) {
        if (sub_08000470() != 0) {
            sub_080003A8(gUnk_03000260);
        }
        sub_08001538(gUnk_03000260);
        gUnk_03000260 = 0;
    }
}
void sub_08092E1C(s8 arg0) {
    gUnk_0300025C = arg0;
}
void sub_08092E28(s8 arg0) {
    gUnk_03000258 = arg0;
}
s16 sub_08092E34(void) {
    return gUnk_0300025A;
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08092E40);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08092EB4);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08092F58);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080933A0);
void sub_08093404(void) {
    gUnk_03000268 = 0;
    sub_08000FD4(0x800);
    sub_080003F0();
    sub_080012D8(0);
    sub_080011E4(0);
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_0809342C);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093498);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080934D4);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093584);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093BAC);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080941B4);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080943F8);
void sub_08094490(void) {
    gUnk_03000275 = 1;
}
u8 sub_0809449C(void) {
    return gUnk_03000275;
}
void sub_080944A8(void) {
    gUnk_03000274 = 1;
}
void sub_080944B4(void) {
    gUnk_03000274 = 0;
    gUnk_03000275 = 0;
    do {
        gUnk_03000270 = sub_08001494(0x28);
        sub_080003F0();
    } while (gUnk_03000270 == 0);
    M2C_FIELD(gUnk_03000270, s32 *, 8) = 0;
}
void sub_080944F0(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (gUnk_03000270 != 0) {
        if (sub_08000470() != 0) {
            sub_080003A8(gUnk_03000270);
        }
        sub_08001538(gUnk_03000270);
        gUnk_03000270 = 0;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094530);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094590);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094638);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080948E0);
void sub_08094948(void)
{
  s32 temp_r0;
  int new_var;
  temp_r0 = (gUnk_03000278 = (s32) sub_08001494(0x28U));
  if (temp_r0 != 0)
  {
    new_var = 8;
    *((s32 *) (((s8 *) temp_r0) + new_var)) = 0;
  }
}
void sub_08094968(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (gUnk_03000278 != 0) {
        if (sub_08000470() != 0) {
            sub_080003A8(gUnk_03000278);
        }
        sub_08001538(gUnk_03000278);
        gUnk_03000278 = 0;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080949A8);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094A00);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094AB8);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094DEC);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094E84);
void sub_08094EA4(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (gUnk_0300027C != 0) {
        if (sub_08000470() != 0) {
            sub_080003A8(gUnk_0300027C);
        }
        sub_08001538(gUnk_0300027C);
        gUnk_0300027C = 0;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094EE4);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094F3C);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080953F8);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08095518);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080955CC);
void sub_080955EC(u16 a, u16 b)
{
    gUnk_03000280.w4 = a;
    gUnk_03000280.w6 = b;
}
void sub_080955F8(u16 a, u16 b)
{
    gUnk_03000280.w8 = a;
    gUnk_03000280.wA = b;
}
void sub_08095604(s16 arg0, s16 arg1) {
    M2C_FIELD(&gUnk_03000280, s16 *, 0) = arg0;
    M2C_FIELD(&gUnk_03000280, s16 *, 2) = arg1;
}
void sub_08095610(u8 v)
{
    gUnk_03000280.b0C = v;
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_0809561C);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08095A60);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08095AD8);
