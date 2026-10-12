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
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A19C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A228);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A590);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A644);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A7DC);
s32 sub_0802A9B0(void) {
    register u32 var_r5 asm("r5") = 0x533;
    register u8 **seqAddr asm("r6");
    register u8 **globalAddr asm("r0");
    register u8 *seq asm("r1");
    s32 var_r7;
    register volatile u16 *attrs asm("r4");
    register s32 var_r3 asm("r3");
    register u16 temp_r1 asm("r1");
    register u16 temp_r2 asm("r2");
    do {
        u8 *temp_r0 = (u8 *)sub_08007290(0x140000 | var_r5);
        attrs = (volatile u16 *)(temp_r0 + 2);
        var_r7 = 1;
        var_r3 = 0;
        temp_r2 = *(u16 *)(temp_r0 + 2);
        if (temp_r2 != 0xFF) {
            globalAddr = (u8 **)&gUnk_030034E0;
            seq = *globalAddr;
            seqAddr = globalAddr;
            if (temp_r2 != seq[0]) goto block_9;
            do {
                var_r3++;
                temp_r1 = attrs[var_r3];
                if (temp_r1 == 0xFF) break;
                if (temp_r1 != (*seqAddr)[var_r3]) {
                    var_r7 = 0;
                    break;
                }
            } while (1);
        }
        if (var_r7 != 0 && ((u8 *)gUnk_030034E0)[var_r3] == 0xFD) return var_r5 - 0x533;
block_9:
        asm volatile (".ltorg");
        var_r5++;
    } while (var_r5 <= 0x53F);
    return -1;
}
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
