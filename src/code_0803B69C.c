#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803B69C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803B720);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803BC3C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C008);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C3C8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C4C0);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C698);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803CC50);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D1F8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D36C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D454);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D99C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803DE84);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803E510);
#ifdef NONMATCHING
void sub_0803E5D8(void)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u8 next;
    if (sub_0800CE30() != 0)
        next = base[0x1C1] + 1;
    else
        next = base[0x1B5] + 1;
    if (sub_0800CE30() != 0)
        base[0x1C1] = next;
    else
        base[0x1B5] = next;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803E5D8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803E638);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803EE88);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803F18C);
void sub_0803F210(s32 arg0) {
    u16 n;

    n = 20;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0x10);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x55);
    }
    n = 10;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0xA);
    n = 58;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0x10);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x55);
    }
    n = 10;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0xA);
    n = 58;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0x10);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x55);
    }
    n = 10;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0xA);
    n = 40;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803F348);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803F454);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803FE34);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080400D4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080402F4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08040530);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0804076C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08041030);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08041B7C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08041E8C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080420C8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08042390);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080425CC);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08042938);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08042BB0);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080435C4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043664);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043850);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043A4C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043B20);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043BF4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043CC8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043D9C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043E70);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043F44);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08044018);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080440EC);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080441C0);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08044318);
