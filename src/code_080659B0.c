#include "global.h"

void sub_080659B0(void *arg0, s16 arg1)
{
  s8 *new_var;
  s8 *new_var2;
  int new_var3;
  new_var3 = 0;
  new_var = (s8 *) arg0;
  *((s16 *) (new_var + 0x2C)) = arg1;
 do { new_var2 = new_var + 0x30; } while (0);
  if (1)
  {
    *((s16 *) new_var2) = 0;
  }
  *((s16 *) (new_var + 0x32)) = 0;
  *((s16 *) (new_var + 0x2E)) = new_var3;
}
void sub_080659BC(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4, s32 arg5) {
    sub_08007CF0(arg1, arg2, arg3, (u16) arg4, (s32) (u8) arg5, arg0 + 0x1C, M2C_FIELD(arg0, s32 *, 8), M2C_FIELD(arg0, s32 *, 0));
}
void sub_080659F4(s32 *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  if (arg1 == arg2)
  {
    *arg0 = arg1;
    if (1)
    {
      return;
    }
  }
  *arg0 = (((s32) (arg2 * arg3)) >> 0xA) + (((s32) (arg1 * (0x400 - arg3))) >> 0xA);
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065A1C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065A90);
s32 sub_08065AE8(void)
{
  int new_var;
 do { if (sub_08058DB0() == 0) { return 0; } return 1; } while (0); new_var = 0; do { } while (new_var);
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065AFC);
extern s32 gUnk_03006030;
void sub_08065B58(void)
{
    u32 i;
    gUnk_03006030 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006030 + i * 0x28, s32 *, 8) = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065B84);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065BD0);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065C50);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065CA8);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065D50);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065DAC);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065E38);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065F08);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065FE8);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806603C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080660EC);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806617C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066220);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080662C4);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080663A4);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066404);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066490);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066520);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080665B0);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066624);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066720);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066898);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806690C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08067A68);
s32 sub_08067AC0(void) {
    return 1;
}
s32 sub_08067AC4(void) {
    return 1;
}
s32 sub_08067AC8(void) {
    return 1;
}
s32 sub_08067ACC(void) {
    return 1;
}
s32 sub_08067AD0(void) {
    return 1;
}
s32 sub_08067AD4(void) {
    return 1;
}
s32 sub_08067AD8(void) {
    return 1;
}
s32 sub_08067ADC(void) {
    return 1;
}
s32 sub_08067AE0(void) {
    return 1;
}
s32 sub_08067AE4(void) {
    return 1;
}
s32 sub_08067AE8(void) {
    return 1;
}
void sub_08067AEC(void) {

}
s32 sub_08067AF0(void) {
    return 1;
}
void sub_08067AF4(void) {

}
void sub_08067AF8(void) {

}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08067AFC);
