#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080443EC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080444C0);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080445E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08044D1C);
void sub_08044E34(s32 arg0) {
    register s32 arg asm("r8") = arg0;
    s32 *base;
    u32 mask;
    register s32 count asm("r4");
    register s32 oldBit asm("r5");
    s32 value;
    register s32 temp asm("r0");
    mask = 1;
    base = &gUnk_03005CF4;
start:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    oldBit = (value >> 5) & mask;
    count = 1;
    goto wait;
dec:
    temp = count - 1;
    asm volatile("" : "+r" (temp));
    count = (u16)temp;
    if (count == 0) goto compare;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
compare:
    count = 1;
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    if (oldBit == ((value >> 5) & count)) goto start;
    sub_0802939C(arg, 1);
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08044EB4);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804534C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080455F0);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045660);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045764);
void sub_08045AFC(void)
{
    u8 *base = (u8 *)*(u32 *)0x03005CF4;
    u32 primary = sub_0800CE30() ? 0x1C3 : 0x1B7;
    u32 clear;
    if ((base[primary] >> 7) == 0) return;
    clear = sub_0800CE30() ? 0x1C5 : 0x1B9;
    base[clear] &= (u8)~0x21;
    sub_0805C7B8(0);
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045B68);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045E38);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045F44);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08046490);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080469DC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08046F28);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047474);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804778C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047970);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047B2C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080480E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804819C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08048570);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08048A74);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08049DC4);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08049EBC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804A188);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804A478);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804A89C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804AE48);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804AF80);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B054);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B100);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B32C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B61C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B8EC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B984);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804BC38);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804BEF8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C150);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C408);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C4E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C5A8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C67C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C948);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804CBBC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804D020);
