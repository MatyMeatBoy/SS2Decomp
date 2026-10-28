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
extern u32 gUnk_084F794C[];
u32 sub_0808D4AC(u32 arg)
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
extern void sub_0809AEE8(void);
extern void sub_0808D654(void);
s32 sub_0808D594(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_0809AEE8, (u32)sub_0809D574);
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0801674C((u32)sub_0808D654, 0);
    sub_0800CD9C();
fail:
    return 0;
}
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
extern u32 gUnk_084FA298[];
u32 sub_0808DA20(u32 arg)
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
    table = gUnk_084FA298;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d520:
    return 0;
}
extern void sub_0809D878(void);
s32 sub_0808DA94(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_0809D878, (u32)sub_0809F8C8);
    sub_0800CD9C();
fail:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808DB38);
extern u32 gUnk_084FD06C[];
extern void sub_0808E130(void);
u32 sub_0808DE08(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_08057328(0, sub_0808E130);
        gUnk_03003170.pad72 = 0x14;
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
    table = gUnk_084FD06C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d520:
    return 0;
}
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
extern void sub_0808DB38(void);
u32 sub_0808DF14(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_08057328(0, sub_0808DB38);
        sub_0805865C(0xF7);
        goto fail_d520;
    }
    if (sub_08056E90() == 0)
        goto fail_d520;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0805867C(0xF7);
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
fail_d520:
    if (sub_08002204() && !(gUnk_03002344 & 0x7F)) {
        if ((7 & sub_080008C8()) == 4) {
            sub_08068070((u32)sub_0808DB38, 0);
            sub_08068070((u32)sub_0808DB38, 1);
            sub_08068070((u32)sub_0808DB38, 2);
            sub_08068070((u32)sub_0808DB38, 3);
        } else {
            sub_08068070((u32)sub_0808DB38, 3 & sub_080008C8());
        }
    }
    return 0;
}
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
extern void sub_0809FB6C(void);
s32 sub_0808E090(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_0809FB6C, (u32)sub_080A0F64);
fail:
    return 0;
}
extern u16 gUnk_03003200;
void sub_0808E130(void)
{
    u16 value;
    u16 phase;
    u16 *state = &gUnk_03003200;
    for (;;) {
        phase++;
        if (phase > 255) phase = 0;
        value = (s32)(gUnk_080B9704[phase] << 18) >> 24;
        if (*state == 0)
            ((void (*)(s32, s32))sub_0800BB94)(0, (s16)-value);
        else
            ((void (*)(s32, s32))sub_0800BB80)(0, (s16)-value);
        sub_080003F0();
    }
}
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
extern void sub_080A1208(void);
extern void sub_080A2698(void);
u32 sub_0808E2FC(u32 arg)
{
    u32 zero;
    u32 one;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            gs=(u8 *)gUnk_03005CF4;
            one=1;
            *(u16 *)(gs+0x30)=one;
            *(u16 *)(gs+0x24)=one;
            return one;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A1208,(u32)sub_080A2698);
        sub_0800CD9C();
    }
    return 0;
}
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
extern void sub_080A27B8(void);
extern void sub_080A49A8(void);
u32 sub_0808E488(u32 arg)
{
    u32 zero;
    u8 *gs;
    u8 *next;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            next=(u8 *)gUnk_03005CF4;
            *(u16 *)(next+0x10)=zero;
            *(u16 *)(next+0x30)=1;
            *(u16 *)(next+0x24)=1;
            return 1;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A27B8,(u32)sub_080A49A8);
        sub_0800CD9C();
    }
    return 0;
}
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
void sub_0808E94C(void)
{
    s32 value = 0;
    s32 step = 0x2A;
    sub_0800BD48(3, 0);
    for (;;) {
        value += step;
        ((void (*)(s32, s32, s32))sub_0800BBA8)(3, (value << 8) >> 16, 0);
        sub_080003F0();
    }
}
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
extern void scrollE9B8(u32,s32,u32) asm("sub_0800BBD8");
void sub_0808E9B8(void)
{
    s32 x = 0;
    s32 dx = 0x2AA;
    s32 y = 0;
    s32 dy = 0x88;
    for (;;) {
        x += dx;
        y += dy;
        sub_0800903C(2,0x1C,1,4,0xC,0);
        scrollE9B8(1,x>>8,0);
        scrollE9B8(3,y>>8,0);
        sub_080003F0();
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E9FC);
extern u32 tableEAD8[] asm("gUnk_08508B54");
extern void sub_080B0288(void);
extern void sub_080B0F9C(void);
u32 sub_0808EAD8(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080B0288,(u32)sub_080B0F9C);
        sub_0800CD9C();
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableEAD8;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
extern u32 tableEB68[] asm("gUnk_08508B54");
extern void sub_080AF3F4(void);
extern void sub_080B0F70(void);
u32 sub_0808EB68(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AF3F4,(u32)sub_080B0F70);
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableEB68;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
extern void sub_080A8164(void);
extern void sub_0808ECD0(void);
extern void sub_080A97E0(void);
u32 sub_0808EBF4(u32 arg)
{
    u32 zero;
    u32 one;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            gs=(u8 *)gUnk_03005CF4;
            one=1;
            *(u16 *)(gs+0x30)=one;
            *(u16 *)(gs+0x24)=one;
            return one;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_08057328(0,(u32)sub_0808ECD0);
        sub_0801674C((u32)sub_080A8164,(u32)sub_080A97E0);
    }
    return 0;
}
extern s16 scrollPosECA0 asm("gUnk_030031EC");
extern void scrollECA0(u32,s32,u32) asm("sub_0800BBA8");
void sub_0808ECA0(void)
{
    s16 *pos = &scrollPosECA0;
    for (;;) {
        if (sub_0800CC98() == 0) {
            sub_0800BD48(3,0);
            scrollECA0(3,*pos/2,0);
        }
        sub_080003F0();
    }
}
void sub_0808ECD0(void)
{
    s32 value;
    s32 step;
    sub_0800BD48(3,0);
    step=0x2A;
    for (;;) {
        if (sub_0800CC98() == 0) {
            u32 mask;
            value -= step;
            mask=(value>>8)&0xF;
            sub_0800BBD8(3,mask,mask);
        }
        sub_080003F0();
    }
}
extern void scrollECFC(s32,s32,s16) asm("sub_0800BBA8");
void sub_0808ECFC(void)
{
    u8 *base;
    s16 *pos;
    s32 width;
    gUnk_03003170.layers[1].y=30;
    gUnk_03003170.layers[2].y=30;
    base=(u8 *)&gUnk_03003170;
    pos=(s16 *)(base+0x7E);
    width=320;
    for (;;) {
        if (sub_0800CC98()==0) {
            sub_0800BD48(1,0);
            sub_0800BD48(2,0);
            scrollECFC(1,0,(*pos*2)%width);
            scrollECFC(2,0,(*pos*15/10)%width);
        } else {
            *(u16 *)(base+0x1A)=21;
            *(u16 *)(base+0x32)=40;
        }
        sub_080003F0();
    }
}
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
extern void sub_080A9950(void);
extern void sub_080AB2D8(void);
u32 sub_0808EF54(u32 arg)
{
    u32 zero;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            return 1;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A9950,(u32)sub_080AB2D8);
        sub_0800CD9C();
    }
    return 0;
}
extern void sub_080B4C34(void);
extern void sub_080B6324(void);
u32 sub_0808EFEC(u32 arg)
{
    u32 zero;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            return 1;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080B4C34,(u32)sub_080B6324);
        sub_0800CD9C();
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F088);
extern u32 tableF15C[] asm("gUnk_0850C6E8");
extern void sub_0808F1E4(void);
u32 sub_0808F15C(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_0808F1E4,0);
        sub_0800CD9C();
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableF15C;
    *(u32 *)dest=table[0x13];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F1E4);
extern s16 scrollPosF6A8 asm("gUnk_030031EE");
void sub_0808F6A8(void)
{
    s16 *pos = &scrollPosF6A8;
    const u32 mask=0x1FF;
    for (;;) {
        if (sub_0800CC98() == 0) {
            sub_0800BD48(1,0);
            sub_0800BD48(2,0);
            sub_0800BBA8(1,0,(*pos * 2)&mask);
            sub_0800BBA8(2,0,(*pos * 15 / 10)&mask);
        }
        sub_080003F0();
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F700);
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F9E0);
