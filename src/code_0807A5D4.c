#include "global.h"

void sub_080852AC(void);

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
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084EAC);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084F24);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084F9C);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085014);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085064);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080850C0);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808516C);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080851B8);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085218);
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
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080853DC);
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
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080867F8);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08086860);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087788);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080878AC);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087A5C);
