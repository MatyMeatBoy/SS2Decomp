#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08028AAC);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08028D98);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_080290E4);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029174);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802926C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802939C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802949C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029788);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802996C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029A7C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029B98);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029CEC);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029E0C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029F54);
void sub_0802A01C(void)
{
  u8 *p = gUnk_030056F4;
  int new_var;
  u32 i = 0;
  do
  {
    if ((gUnk_030056FC & (new_var = 1 << i)) && (8 & (*((u16 *) (p + 0x7A)))))
    {
      *((u16 *) (p + 0x64)) = 0x1E;
      *((u16 *) (p + 0x66)) = 1;
      *((u16 *) (p + 0x7A)) &= 0xFFF7;
    }
    i++;
    p += 0x2E0;
  }
  while (i <= 4);
}
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A080);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A104);
s32 sub_0801ABE8(s32);
s32 sub_080003F4(s32);
void sub_080867F8(void);

void sub_0802A19C(void) {
    s16 *p4;
    s16 *p5;
    s32 a;
    s32 b;
    sub_0800CE40();
    sub_0801ABE8(10);
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    p4 = (s16 *)&gUnk_03003170;
    p5 = p4 + 0x3E;
    a = (s16)p5[0];
    b = (s16)p4[0x3F];
    sub_080867F8();
    sub_080003F4(0x11201100);
    p5[0] = a;
    p4[0x3F] = b;
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
}

INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A228);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A590);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A644);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A7DC);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A9B0);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802AA28);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802B8A4);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802C144);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802C2A0);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802C674);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802CF84);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802D050);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802D200);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802D2C8);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802D568);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802D73C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802D800);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802D8C4);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802DAF0);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802DE0C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802E110);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802E444);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802E6E0);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802E7AC);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802EA50);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802F208);
void sub_0802939C(s32, s32);

void sub_0802F424(s32 arg0) {
    s32 *var_r1;
    u32 var_r2;

    if (sub_08002164() == 1) {
        sub_0802939C(arg0, 5);
        sub_08028D98(arg0, 0x28, 0x64, 0x3C);
        var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
        var_r2 = 0;
        do {
            if (*var_r1 == arg0) {
                goto found;
            }
            var_r2 += 1;
            var_r1 += 0x1C;
        } while (var_r2 <= 0xEU);
    } else {
        sub_0802939C(arg0, 5);
        sub_08028D98(arg0, 0, 0x64, 0x3C);
        var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
        var_r2 = 0;
        do {
            if (*var_r1 == arg0) {
                goto found;
            }
            var_r2 += 1;
            var_r1 += 0x1C;
        } while (var_r2 <= 0xEU);
    }
    sub_080003F0();
    var_r1 = NULL;
found:
    if (var_r1 != NULL) {
        *(u16 *) ((u8 *) var_r1 + 0x36) = 4;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802F4B0);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802F578);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802FA80);
