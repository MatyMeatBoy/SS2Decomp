#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08017F7C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801801C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019BF8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019C3C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019C8C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019CDC);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019CE8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019D34);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019D7C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019DE0);
s32 sub_08019E20(s32 arg0) {
    sub_0800CE30();
    return arg0;
}
s32 sub_08019E30(s32 arg0)
{
  s32 temp_r1;
  s32 var_r4;
  u32 var_r2;
  void *var_r3;
  s32 *new_var;
  var_r3 = gUnk_030056F4;
  var_r4 = 0;
  var_r2 = 0;
  new_var = &gUnk_030056FC;
  do
  {
    temp_r1 = 1 << var_r2;
    if (((*new_var) & temp_r1) && ((*((s32 *) (((s8 *) var_r3) + 0x2C))) == arg0))
    {
      var_r4 |= temp_r1;
    }
    var_r2 += 1;
    var_r3 += 0x2E0;
  }
  while (var_r2 <= 4U);
  return var_r4;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019E74);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019EB8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019F04);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019F60);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019FA8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019FD8);
s32 sub_0801A040(u16 arg0) {
    return sub_08019D34(arg0);
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A050);
void sub_0801A0A4(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 2;
}
void sub_0801A0B0(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A0BC);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A120);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A1C8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A270);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A298);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A2F0);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A328);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A388);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A3D0);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A500);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A508);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A558);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A5A8);
void sub_0801A628(void) {

}
void sub_0801A62C(void) {
    gUnk_03005C98 = 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A638);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A650);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A664);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A6D4);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A70C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A764);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A7AC);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A9BC);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801AA34);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801AA8C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801AAE0);
