#include "global.h"

void sub_080852AC(void);
void sub_0808381C(void);
void sub_08083AE8(void);
void sub_08085534(void);
extern u8 gUnk_03005740[];
void sub_0801A664(u32 index, u32 value);
void sub_0805FB7C(u32 arg0, u32 arg1, u32 arg2, u32 arg3);

INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807A5D4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807B7B4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807BD78);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807BEA0);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C014);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C114);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C1D8);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C29C);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08080A78);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080811E0);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08081518);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080815F4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08082960);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08082BB0);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808381C);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08083AE8);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084200);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808441C);
void sub_08084EAC(void)
{
    u8 *task = (u8 *)0x03006450;
    u32 mem;

    do {
        gUnk_03006440 = sub_08001494(0x624);
        if (gUnk_03006440 == 0)
            sub_080003F0();
    } while (gUnk_03006440 == 0);
    *(u32 *)gUnk_03006440 = 0;

    do {
        mem = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);

    *(u32 *)(task + 0x10) = mem + 0x3FC;
    *(u32 *)(task + 8) = 0x64;
    *(u32 *)(task + 0x24) = (u32)sub_08085484;
    *(u32 *)(task + 0xC) = (u32)sub_0807A5D4;
    sub_08000274((M2C_UNK *)task, 0);
}
void sub_08084F24(void)
{
    u8 *task = (u8 *)0x03006450;
    u32 mem;

    do {
        gUnk_03006440 = sub_08001494(0x624);
        if (gUnk_03006440 == 0)
            sub_080003F0();
    } while (gUnk_03006440 == 0);
    *(u32 *)gUnk_03006440 = 0;

    do {
        mem = sub_08001494(0x900);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);

    *(u32 *)(task + 0x10) = mem + 0x8FC;
    *(u32 *)(task + 8) = 0x64;
    *(u32 *)(task + 0x24) = (u32)sub_080854A0;
    *(u32 *)(task + 0xC) = (u32)sub_0807B7B4;
    sub_08000274((M2C_UNK *)task, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084F9C);
void sub_08085014(u32 index, u32 count, u32 value)
{
    u16 encoded = (u16)(value + 0x16B) | 0xE000;
    u8 *dst;
    u32 i;
    if (count > 7)
        count = 7;
    dst = (u8 *)gUnk_03005740 + 0x2C + (index + 5) * 0x40;
    for (i = 0; i < count; i++) {
        *(u16 *)dst = encoded;
        dst += 2;
    }
    if (count != 0)
        sub_0801A664(index + 5, 1);
}
void sub_08085064(u32 count)
{
    u32 i;

    if (count <= 9) {
        for (i = 0; i < count; i++)
            *(u16 *)(gUnk_03005740 + 0xE8 + i * 2) = 0xE16B;
        if (count != 0)
            sub_0801A664(3, 1);
    } else {
        *(u16 *)(gUnk_03005740 + 0xE8) = 0xE16B;
        *(u16 *)(gUnk_03005740 + 0xEA) = 0xE16A;
        sub_0805FB7C(0x18, 3, count, 0);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080850C0);
void sub_0808516C(void)
{
    u8 *base = *(u8 **)0x03006440;
    u32 mem;
    do {
        mem = sub_08001494(0xC8);
        *(u32 *)(base + 0x620) = mem;
        if (mem == 0) sub_080003F0();
    } while (mem == 0);
    for (u32 i = 0; i <= 4; i++)
        *(u32 *)(*(u32 *)(base + 0x620) + i * 0x28 + 8) = 0;
}
void sub_080851B8(void)
{
    u8 *base = *(u8 **)0x03006440;
    u8 *entries = *(u8 **)(base + 0x620);
    u32 i;

    for (i = 0; i <= 4; i++) {
        while (sub_08000470((u32)(entries + i * 0x28)) != 0)
            sub_080003F0();
    }

    base = *(u8 **)0x03006440;
    sub_08001538(*(s32 *)(base + 0x620));
    *(u32 *)(base + 0x620) = 0;
}
void sub_08085218(u32 arg0, u32 arg1)
{
    u8 *base = *(u8 **)0x03006440;
    u8 *entry = *(u8 **)(base + 0x620);
    u32 i;
    u32 memory;

    for (i = 0; i <= 4; i++, entry += 0x28) {
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            continue;

        *(u32 *)(entry + 8) = 0x3C;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
        if (memory == 0)
            return;

        *(u32 *)(entry + 0xC) = (u32)sub_08085534;
        *(u32 *)(entry + 0x10) = memory + 0x3FC;
        *(u32 *)(entry + 0x24) = 0;
        sub_08000274_(entry, arg0, arg1);
        return;
    }
}
void sub_0808528C(void) {
    *(s16 *)0x04000012 = 4;
    sub_08001108(0x9F);
    sub_0800115C((s32) &sub_080852AC);
}
void sub_080852AC(void)
{
    *(u16 *)0x04000012 = 0;
    sub_08001108(0x88);
    sub_0800115C((s32)sub_0808528C);
}
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080852CC);
u32 sub_08085330(void)
{
    u8 *base = (u8 *)gUnk_03006440;
    u32 total = 0;
    if (*(u32 *)base == 4) {
        u8 *entry = base + 0x104;
        u32 i;
        for (i = 0; i <= 0x4A; i++, entry += 0x10) {
            if (*(u16 *)entry == 0xA)
                total += *(u32 *)(entry + 4);
        }
    } else {
        total = sub_0805D404();
    }
    return total;
}
void sub_0808536C(void)
{
    s32 p;
    do {
        p = sub_08001494(0x28);
        M2C_FIELD(gUnk_03006440, s32 *, 0x620) = p;
        if (p == 0)
            sub_080003F0();
    } while (p == 0);
}
void sub_08085398(void)
{
    u8 *base = *(u8 **)0x03006440;
    u32 *slot = (u32 *)(base + 0x620);
    u32 value = *slot;
    while (sub_08000470(value) != 0)
        sub_080003F0();
    sub_08001538(value);
    *slot = 0;
}
void sub_080853DC(u32 arg)
{
    u8 *base = *(u8 **)0x03006440;
    u8 *task = *(u8 **)(base + 0x620);
    u32 memory;

    do {
        memory = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = memory;
        if (memory == 0)
            sub_080003F0();
    } while (memory == 0);

    *(u32 *)(task + 8) = 0x50;
    *(u32 *)(task + 0xC) = (u32)(arg == 1 ? sub_08083AE8 : sub_0808381C);
    *(u32 *)(task + 0x10) = memory + 0x3FC;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274((M2C_UNK *)task, (s32)arg);
}
u32 sub_0808543C(void)
{
    u8 *base = *(u8 **)0x03006440;
    u32 total;
    if (*(u32 *)base == 4) {
        total = 0;
        u8 *entry = base + 0x104;
        for (u32 i = 0; i <= 0x4A; i++, entry += 0x10)
            if (*(u16 *)entry == 0xA)
                total += *(u32 *)(entry + 4);
        total += sub_0805D3D4();
    } else {
        total = sub_0805D404();
    }
    return total;
}
void sub_08085484(void)
{
    s32 p = gUnk_03006440;
    if (p) *(s32 *)p = 0;
    sub_08001538(p);
    gUnk_03006440 = 0;
}
void sub_080854A0(void) {
    sub_08001538(gUnk_03006440);
    gUnk_03006440 = 0;
}
void sub_080854B8(void)
{
    u32 zero = 0;
    CpuSet(&zero, (void *)(gUnk_03006440 + 0xF4), 0x05000004);
    *(u32 *)(gUnk_03006440 + 0x1C) = 0x16;
    *(u32 *)(gUnk_03006440 + 0x20) = 0;
}
extern const u32 gUnk_084EBD4C[];
s32 sub_080854E8(u32 value)
{
    s32 result = 6;
    u32 i;
    for (i = 0; i < 6; i++) {
        if (gUnk_084EBD4C[4 + i] <= value)
            return result;
        result--;
    }
    return result;
}
void sub_08085518(void)
{
    s32 p = gUnk_03006440;
    if (p) *(s32 *)p = 0;
    sub_08001538(p);
    gUnk_03006440 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085534);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080855D4);
void sub_080867E0(void) {
    sub_08001538(gUnk_03006478);
    gUnk_03006478 = 0;
}
void sub_080867F8(void)
{
    u8 *task = (u8 *)0x03006450;
    u32 mem;

    do {
        gUnk_03006478 = sub_08001494(0x60);
        if (gUnk_03006478 == 0)
            sub_080003F0();
    } while (gUnk_03006478 == 0);

    do {
        mem = sub_08001494(0xC00);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);

    *(u32 *)(task + 0x10) = mem + 0xBFC;
    *(u32 *)(task + 8) = 0x64;
    *(u32 *)(task + 0x24) = (u32)sub_080867E0;
    *(u32 *)(task + 0xC) = (u32)sub_080855D4;
    sub_08000274((M2C_UNK *)task, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08086860);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087788);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080878AC);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087A5C);
