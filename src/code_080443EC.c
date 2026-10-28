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
void sub_080455F0(s32 arg0) {
    register s32 arg asm("r5") = arg0;
    register s32 mask asm("r6");
    s32 *base = &gUnk_03005CF4;
    s32 value;
    s32 oldBit;
    u16 count;
    register s32 call0 asm("r0");
    register s32 call1 asm("r1");
    register s32 call2 asm("r2");
    register s32 call3 asm("r3");
    mask = 1;
loop:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C5);
    else value = *(u8 *)(*(u32 *)base + 0x1B9);
    oldBit = (value >> 4) & mask;
    if (oldBit != 0) {
        call0 = arg; call1 = 0x79; call2 = 0x186; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    } else {
        call2 = 0x270F; call0 = arg; call1 = 0x270F; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    }
    count = 1;
    goto wait;
dec:
    count = count - 1;
    if (count == 0) goto loop;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
    goto loop;
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045660);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045764);
struct Bits5AFC { u8 b0:5; u8 b5:1; u8 b6:1; u8 b7:1; };
extern u8 *gGS5AFC asm("gUnk_03005CF4");
static inline struct Bits5AFC *SelA_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C3);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B7);
}
static inline struct Bits5AFC *SelB_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C5);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B9);
}
void sub_08045AFC(void)
{
    if (*(u8 *)SelA_5AFC() >> 7) {
        { u8 *q = (u8 *)SelB_5AFC(); s32 m = ~0x20; *q = m & *q; }
        sub_0805C7B8(0);
    }
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
