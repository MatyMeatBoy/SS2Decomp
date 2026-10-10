#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08097E28);
void sub_08097EB0(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    gUnk_030002B8 = arg3;
    gUnk_030002B6 = arg2;
    gUnk_030002BA = 0;
    gUnk_030002B0 = arg0;
    gUnk_030002B4 = arg1;
}
s16 sub_08097EE4(void) {
    return gUnk_030002BA;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08097EF0);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08097F70);
void sub_08097FE4(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD = 0;
}
u8 sub_08097FF8(void) {
    return gUnk_030002BC;
}
u8 sub_08098004(void) {
    return gUnk_030002BD;
}
void sub_08098010(u8 arg0) {
    gUnk_030002BC = arg0;
    gUnk_030002BD |= 1;
}
void sub_08098028(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD &= 0xFE;
}
void sub_08098044(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_030002C0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_08098060(void) {
    if (sub_08000470(gUnk_030002C0) != 0) {
        sub_080003A8(gUnk_030002C0);
    }
    sub_08001538(gUnk_030002C0);
    gUnk_030002C0 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098088);
s32 sub_080980F0(void)
{
    return M2C_FIELD((void *)gUnk_030002C0, u32 *, 8) == 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098108);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098F2C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809919C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099468);
void sub_08099720(void) {
    if (M2C_FIELD(gUnk_030002D0, s16 *, 0x5C) != 0) {
        sub_08099788();
        sub_080656EC();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002D4);
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809975C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099788);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_080997C0);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099838);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809A5E0);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809A834);
void sub_0809ADE8(void) {
    if (M2C_FIELD(gUnk_030002DC, s16 *, 0x5C) != 0) {
        sub_08097C6C();
        sub_0809AE50();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002E0);
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AE24);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AE50);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AE88);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AEE8);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C1B4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C4E8);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C8F4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809CC2C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D374);
void sub_0809D558(void) {
    gUnk_030002E8 = 1;
}
s8 sub_0809D564(void) {
    return (s8) (u8) gUnk_030002E8;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D574);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D5B8);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D5E4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D620);
void sub_0809D6A8(void)
{
  u8 var_r2;
  void *new_var;
  gUnk_030002F8 = (new_var = sub_08001494(0x78U));
  var_r2 = 0;
  do
  {
    *((s32 *) (((s8 *) ((var_r2 * 0x28) + gUnk_030002F8)) + 8)) = 0;
    var_r2 += 1;
  }
  while (((u32) var_r2) <= 2U);
}
void sub_0809D6D8(void)
{
  s32 var_r4;
  u32 var_r5;
  s32 new_var;
  int new_var2;
  new_var = gUnk_030002F8;
  var_r5 = 0;
  var_r4 = new_var;
  do
  {
    if (sub_08000470(var_r4) != 0)
    {
 do { sub_080003A8(var_r4); } while (0);
    }
    var_r4 += 0x28;
    var_r5 += 1;
  }
  while (var_r5 <= 2U);
  new_var2 = 0;
  sub_08001538(gUnk_030002F8);
  gUnk_030002F8 = new_var2;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D710);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D77C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D7E4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D810);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D848);
