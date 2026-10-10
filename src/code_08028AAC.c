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
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A01C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A080);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A104);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A19C);
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
