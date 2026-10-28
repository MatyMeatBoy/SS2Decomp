#include "global.h"
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");

void sub_08086860(void);
void sub_08087CC0(void);
void sub_08087A5C(void);
void sub_08087788(void);
void sub_080878AC(void);

extern u32 gUnk_084F26E4[];

extern u32 gUnk_084F4818[];

INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08087CC0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080887D4);
struct Task6450 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task6450 gTask6450 asm("gUnk_03006450");
void sub_08088914(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08086860;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task3480 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task3480 gTask3480 asm("gUnk_03003480");
extern void sub_08087788();
void sub_0808894C(u16 a, u32 b, u16 c, u32 d)
{
    u32 p1 = b << 16 | a;
    u32 p2 = d << 16 | c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_08087788;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_0808899C(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08087CC0;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task61B0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task61B0 gTask61B0 asm("gUnk_030061B0");
void sub_080889D4(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1);
}
extern void sub_080878AC();
void sub_08088A18(u16 a, u32 b, u32 c)
{
    u32 p1 = b << 16 | a;
    u32 p2 = c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_080878AC;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_08088A60(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x10000);
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088AA8);
void sub_08088B24(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x20000);
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088B6C);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088C24);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088F30);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089204);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089384);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089500);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089784);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080898D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089AE4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089CA0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089EC4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A008);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A294);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A380);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A4D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A744);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A830);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A984);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AA70);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AC08);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AD90);
#ifdef NONMATCHING
void sub_0808AFA4(const u16 *pos)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x8C) = (u32)pos[0] << 8;
    *(u32 *)(state + 0x90) = (u32)pos[1] << 8;
    *(u32 *)(state + 0x94) = *(u32 *)(state + 0x8C);
    *(u32 *)(state + 0x98) = *(u32 *)(state + 0x90);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFA4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFE8);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808B978);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C020);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C0C4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808CB58);
#ifdef NONMATCHING
void sub_0808D05C(void)
{
    u8 *task = (u8 *)0x03006450;
    u32 mem = sub_08001494(0x1000);
    *(u32 *)(task + 0x20) = mem;
    *(u32 *)(task + 0x10) = mem + 0xFFC;
    *(u32 *)(task + 8) = 0x64;
    *(u32 *)(task + 0x24) = (u32)sub_0808D118;
    *(u32 *)(task + 0xC) = sub_0800CB9C() ? (u32)sub_0808C0C4 : (u32)sub_0808AFE8;
    sub_08000274((u32)task, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D05C);
#endif
void sub_0808D0B0(void) {
    sub_08057934();
    sub_08057984();
    sub_080587E4();
}
#ifdef NONMATCHING
void sub_0808D0C4(void)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    if ((*(u32 *)(state + 0x30) & 0x4000) == 0) {
        do {
            sub_08057624(1);
        } while ((*(u32 *)(state + 0x30) & 0x4000) == 0);
    }
    sub_08057DD0(0x78, 0x78, 0x50, (u32)sub_0808C020, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D0C4);
#endif
void sub_0808D118(void) {

}
u32 sub_0808D11C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D190(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D204(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D278);
u32 sub_0808D31C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D390(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D404);
