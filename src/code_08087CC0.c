#include "global.h"

void sub_08086860(void);
void sub_08087CC0(void);
void sub_08087A5C(void);
void sub_08087788(void);
void sub_080878AC(void);

INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08087CC0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080887D4);
void sub_08088914(void)
{
    u8 *obj = (u8 *)0x03006450;
    u32 mem = sub_08001494(0x1000);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0x10) = mem + 0xFFC;
    *(u32 *)(obj + 8) = 0x64;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 0xC) = (u32)sub_08086860;
    sub_08000274(obj, 0);
}
void sub_0808894C(u32 a, u32 b, u32 c, u32 d)
{
    u8 *obj = (u8 *)0x03003480;
    u32 mem = sub_08001494(0x4000);
    u32 packed1 = ((b & 0xFFFF) << 16) | (a & 0xFFFF);
    u32 packed2 = ((d & 0xFFFF) << 16) | (c & 0xFFFF);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0xC) = (u32)sub_08087788;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 8) = 0xA;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274_(obj, packed1, packed2);
}
void sub_0808899C(void)
{
    u8 *obj = (u8 *)0x03006450;
    u32 mem = sub_08001494(0x1000);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0x10) = mem + 0xFFC;
    *(u32 *)(obj + 8) = 0x64;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 0xC) = (u32)sub_08087CC0;
    sub_08000274(obj, 0);
}
void sub_080889D4(u32 arg0, u32 arg1)
{
    u8 *obj = (u8 *)0x030061B0;
    u32 mem = sub_08001494(0xC00);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0xC) = (u32)sub_08087A5C;
    *(u32 *)(obj + 0x10) = mem + 0xBFC;
    *(u32 *)(obj + 8) = 0xA;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274_(obj, arg0, (u16)arg1);
}
void sub_08088A18(u32 a, u32 b, u32 c)
{
    u8 *obj=(u8 *)0x03003480; u32 mem=sub_08001494(0x4000);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+0xC)=(u32)sub_080878AC;
    *(u32 *)(obj+0x10)=mem+0x3FC; *(u32 *)(obj+8)=10; *(u32 *)(obj+0x24)=0;
    sub_08000274_(obj, ((b&0xffff)<<16)|(a&0xffff), c);
}
void sub_08088A60(u32 arg0, u32 arg1)
{
    u8 *obj = (u8 *)0x030061B0;
    u32 mem = sub_08001494(0xC00);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0xC) = (u32)sub_08087A5C;
    *(u32 *)(obj + 0x10) = mem + 0xBFC;
    *(u32 *)(obj + 8) = 0xA;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274_(obj, arg0, (u16)arg1 | 0x10000);
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088AA8);
void sub_08088B24(void *arg0, u32 arg1)
{
    u8 *obj = (u8 *)gUnk_030061B0;
    u32 buffer = sub_08001494(0xC00);
    *(u32 *)(obj + 0x20) = buffer;
    *(u32 *)(obj + 0xC) = (u32)sub_08087A5C;
    *(u32 *)(obj + 0x10) = buffer + 0xBFC;
    *(u32 *)(obj + 8) = 0xA;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274(obj, arg0, (arg1 & 0xFFFF) | 0x80000);
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
void sub_0808AFA4(const u16 *pos)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x8C) = (u32)pos[0] << 8;
    *(u32 *)(state + 0x90) = (u32)pos[1] << 8;
    *(u32 *)(state + 0x94) = *(u32 *)(state + 0x8C);
    *(u32 *)(state + 0x98) = *(u32 *)(state + 0x90);
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFE8);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808B978);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C020);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C0C4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808CB58);
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
void sub_0808D0B0(void) {
    sub_08057934();
    sub_08057984();
    sub_080587E4();
}
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
void sub_0808D118(void) {

}
extern u32 gUnk_084F26E4[];
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
extern u32 gUnk_084F4818[];
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
