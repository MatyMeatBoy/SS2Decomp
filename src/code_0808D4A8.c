#include "global.h"

extern s32 gUnk_030031EC;

extern u32 gUnk_084F794C[] __asm__("gUnk_084F794C");

extern u32 gUnk_084FA298[] __asm__("gUnk_084FA298");

extern u32 gUnk_084FD06C[] __asm__("gUnk_084FD06C");
void sub_0808E130(void);

void sub_080AB2F8(void);
void sub_080AC81C(void);

extern u32 gUnk_0850008C[] __asm__("gUnk_0850008C");
extern u32 gUnk_085028BC[] __asm__("gUnk_085028BC");

void sub_080AC844(void);
void sub_080AE080(void);

extern u32 gUnk_085060D4[] __asm__("gUnk_085060D4");
void sub_080A756C(void);

void sub_080AE1B4(void);
void sub_080AF2AC(void);

#include "global.h"
extern u32 gUnk_0850C6E8[] __asm__("gUnk_0850C6E8");

void sub_0808D4A8(void) {

}
#ifdef NONMATCHING
u32 sub_0808D4AC(u32 arg)
{
    u32 *state;
    u8 *base = *(u8 **)0x03005CF4;
    if (*(u16 *)(base + 0x10) == 0) {
        sub_0802704C(arg);
        return 0;
    }
    if (sub_08056E90() == 0)
        return 0;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)0x03005CF4;
    state = (u32 *)(base + 0x71C);
    *state = ((u32 *)0x084F794C)[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    *(u16 *)(base + 0x30) = 1;
    *(u16 *)(base + 0x24) = 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808D4AC);
#endif
u32 sub_0808D520(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_d520;
    }
    if (sub_08056E90() == 0)
        goto fail_d520;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F794C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d520:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808D594);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808D654);
u32 sub_0808D9AC(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_d9ac;
    }
    if (sub_08056E90() == 0)
        goto fail_d9ac;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FA298;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d9ac:
    return 0;
}
#ifdef NONMATCHING
u32 sub_0808DA20(u32 arg)
{
    u8 *base = *(u8 **)0x03005CF4;
    if (*(u16 *)(base + 0x10) == 0) {
        sub_0802704C(arg);
        return 0;
    }
    if (sub_08056E90() == 0)
        return 0;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)0x03005CF4;
    *(u32 *)(base + 0x71C) = ((u32 *)0x084FA298)[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    *(u16 *)(base + 0x30) = 1;
    *(u16 *)(base + 0x24) = 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808DA20);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808DA94);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808DB38);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808DE08);
u32 sub_0808DE94(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_08057328(0, sub_0808E130);
        goto fail_de94;
    }
    if (sub_08056E90() == 0)
        goto fail_de94;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FD06C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x24) = one;
    *(u16 *)(base + 0x30) = one;
    return one;
fail_de94:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808DF14);
u32 sub_0808E000(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AB2F8, (u32)sub_080AC81C);
        sub_0800CD9C();
        goto fail_e000;
    }
    if (sub_08056E90() == 0)
        goto fail_e000;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800CDAC();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FD06C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x24) = one;
    *(u16 *)(base + 0x30) = one;
    return one;
fail_e000:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E090);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E130);
u32 sub_0808E184(u32 arg)
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
    table = gUnk_0850008C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808E1F8(u32 arg)
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
    table = gUnk_0850008C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808E26C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AC844, (u32)sub_080AE080);
        sub_0800CD9C();
        goto fail_e26c;
    }
    if (sub_08056E90() == 0)
        goto fail_e26c;
    sub_0801ABE8(3);
    sub_0800BB40();
    sub_0800CDAC();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_0850008C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_e26c:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E2FC);
u32 sub_0808E3A0(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_3a0;
    }
    if (sub_08056E90() == 0)
        goto fail_3a0;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085028BC;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_3a0:
    return 0;
}
u32 sub_0808E414(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_414;
    }
    if (sub_08056E90() == 0)
        goto fail_414;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085028BC;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_414:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E488);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E530);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E66C);
u32 sub_0808E774(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A756C, 0);
        sub_08015ED4();
        sub_08015D74();
        goto fail_e774;
    }
    if (sub_08056E90() == 0)
        goto fail_e774;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085060D4;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_e774:
    return 0;
}
u32 sub_0808E7FC(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AE1B4, (u32)sub_080AF2AC);
        sub_0800CD9C();
        goto fail_e7fc;
    }
    if (sub_08056E90() == 0)
        goto fail_e7fc;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085060D4;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_e7fc:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E88C);
#ifdef NONMATCHING
void sub_0808E94C(void)
{
    s32 value = 0;
    sub_0800BD48(3, 0);
    for (;;) {
        value += 0x2A;
        sub_0800BBA8(3, (s16)(value >> 8), 0);
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E94C);
#endif
#ifdef NONMATCHING
void sub_0808E970(void)
{
    while (sub_08056E90() == 0) {
        if (sub_08058DB0() == 0 && (gUnk_03002344 & 0x7F) == 0) {
            u32 value = sub_080008C8() % 0x140;
            sub_08068070((u32)sub_0808E530, value + 0x50);
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E970);
#endif
#ifdef NONMATCHING
void sub_0808E9B8(void)
{
    s32 x = 0, y = 0;
    for (;;) {
        x += 0x2AA;
        y += 0x88;
        sub_0800903C(2, 0x1C, 1, 4, 0xC, 0);
        sub_0800BBD8(1, x >> 8, 0);
        sub_0800BBD8(3, y >> 8, 0);
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E9B8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E9FC);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808EAD8);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808EB68);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808EBF4);
#ifdef NONMATCHING
void sub_0808ECA0(void)
{
    for (;;) {
        if (sub_0800CC98() == 0) {
            s32 value = *(s16 *)gUnk_030031EC;
            sub_0800BD48(3, 0);
            sub_0800BBA8(3, value / 2, 0);
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808ECA0);
#endif
#ifdef NONMATCHING
void sub_0808ECD0(void)
{
    s32 value = 0;
    sub_0800BD48(3, 0);
    for (;;) {
        if (sub_0800CC98() == 0) {
            value -= 0x2A;
            sub_0800BBD8(3, (value >> 8) & 0xF, 0);
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808ECD0);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808ECFC);
u32 sub_0808ED7C(u32 arg)
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
    table = gUnk_0850C6E8;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808EDF0);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808EE98);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808EF54);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808EFEC);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F088);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F15C);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F1E4);
#ifdef NONMATCHING
void sub_0808F6A8(void)
{
    const u32 mask = 0x1FF;
    for (;;) {
        if (sub_0800CC98() == 0) {
            s32 value;
            sub_0800BD48(1, 0);
            sub_0800BD48(2, 0);
            value = *(s16 *)&gUnk_030031EE;
            sub_0800BBA8(1, 0, value * 2 & mask);
            sub_0800BBA8(2, 0, (value * 15 / 10) & mask);
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F6A8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F700);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F9E0);
