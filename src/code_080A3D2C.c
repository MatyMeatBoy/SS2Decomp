#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A3D2C);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4520);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A47A0);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A49A8);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A49EC);
void sub_080A4A54(void) {
    if (sub_08000470(gUnk_03000358) != 0) {
        sub_080003A8(gUnk_03000358);
    }
    sub_08001538(gUnk_03000358);
    gUnk_03000358 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4A7C);
void sub_080A4AD0(void) {
    gUnk_030056FC &= ~2;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4AE4);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4B10);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4B48);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4BB0);
void sub_080A4BE0(void)
{
  s8 *new_var;
  s32 temp_r0;
  temp_r0 = (gUnk_03000360 = (s32) sub_08001494(0x28U));
  new_var = (s8 *) temp_r0;
  *((s32 *) (new_var + 8)) = 0;
}
void sub_080A4BFC(void) {
    if (sub_08000470(gUnk_03000360) != 0) {
        sub_080003A8(gUnk_03000360);
    }
    sub_08001538(gUnk_03000360);
    gUnk_03000360 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4C24);
void sub_080A4C74(u8 arg0, u8 arg1) {
    if (gUnk_030003F1 != 0xFF) {
        gUnk_030003F2 = gUnk_030003F1;
    }
    gUnk_030003F1 = arg0;
    M2C_FIELD(gUnk_03000368, s16 *, 8) = (s16) arg1;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4CA8);
void sub_080A4CDC(s8 arg0, s8 arg1) {
    gUnk_030003FB = arg1;
    gUnk_030003FC = arg0;
}
void sub_080A4CF0(s8 arg0) {
    gUnk_030003EF = arg0;
}
void sub_080A4CFC(s8 arg0) {
    gUnk_030003F0 = arg0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4D08);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6258);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6510);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A66E0);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A68B0);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6BE8);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A705C);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A74E8);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A756C);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7DEC);
void sub_080A7E38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
    gUnk_030056FC = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7E68);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7E94);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7ECC);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7F30);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7F5C);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A7F94);
void sub_080A7FF8(void)
{
  s32 temp_r0;
  gUnk_03000410 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A8014(void) {
    if (sub_08000470(gUnk_03000410) != 0) {
        sub_080003A8(gUnk_03000410);
    }
    sub_08001538(gUnk_03000410);
    gUnk_03000410 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A803C);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8090);
void sub_080A80BC(void)
{
  s32 temp_r0;
  gUnk_03000418 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A80D8(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_03000418) != 0) {
        sub_080003A8(gUnk_03000418);
    }
    sub_08001538(gUnk_03000418);
    gUnk_03000418 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8114);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8164);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8F90);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A9100);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A92C0);
