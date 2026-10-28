#include "global.h"
extern void sub_080923B4();
extern struct Task01E8 gTask01E8 asm("gUnk_030001E8");
struct Task01E8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void sub_08090B84(), sub_08090E38(), sub_080910A8(), sub_080912CC(), sub_080914F0(), sub_08091714(), sub_08091938(), sub_08091B5C(), sub_08091CF8();
extern u32 gWord0300016C asm("gUnk_0300016C");
extern u32 gTbl03000198[] asm("gUnk_03000198");
extern struct Task0170 gTask0170 asm("gUnk_03000170");
struct Task0170 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void sub_080904A4();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct Task01C0 gTask01C0 asm("gUnk_030001C0");
struct Task01C0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u16 gUnk_03001324_16 asm("gUnk_03001324");

void sub_080904A4(void);
void sub_0802704C(u32 arg0);

extern void sub_08095A60(void);
extern void sub_08095AD8(void);
extern void sub_08092CB8(void);
extern void sub_080923FC(void);
extern void sub_08092EB4(void);
extern void sub_08092F58(void);
extern void sub_080934D4(void);
extern void sub_08093584(void);
extern void sub_080943F8(void);
extern void sub_08093BAC(void);
extern void sub_08094590(void);
extern void sub_08094638(void);
extern void sub_08094A00(void);
extern void sub_08094AB8(void);
extern void sub_08095518(void);
extern void sub_08094F3C(void);
extern u32 gUnk_03000210;
extern u32 gUnk_03000230;
typedef void (*Handler)(void);

INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FB5C);
#ifdef NONMATCHING
u32 sub_0808FBDC(u32 arg0)
{
    u8 *base = *(u8 **)0x03005CF4;

    if (*(u16 *)(base + 0x10) == 0) {
        sub_0802704C(arg0);
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
    *(u32 *)(base + 0x71C) = ((u32 *)0x0850DE28)[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    *(u16 *)(base + 0x36) = 6;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FBDC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FC50);
void sub_0808FD88(void) {
    u32 i;
    sub_0805795C();
    sub_080169C8();
    while ((sub_080B6068() << 24) == 0) sub_080003F0();
    sub_08058790();
    sub_08058688(0x172);
    for (i = 0; i <= 0x16; i++) {
        sub_080889D4(i + 0x483, 0x1A4);
        if (sub_080021A8() != 0) break;
        sub_08057624(0x1A7);
    }
    if (sub_08002204() != 0) sub_08067DC8();
    while (sub_08056E90() == 0 && sub_080021A8() == 0) sub_08057624(1);
}
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FE04);
#ifdef NONMATCHING
u32 sub_0808FEB8(u32 arg0)
{
    u8 *base = *(u8 **)0x03005CF4;

    if (*(u16 *)(base + 0x10) == 0) {
        sub_0802704C(arg0);
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
    *(u32 *)(base + 0x71C) = ((u32 *)0x0850F894)[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FEB8);
#endif
#ifdef NONMATCHING
u32 sub_0808FF28(u32 arg0)
{
    u8 *base = *(u8 **)0x03005CF4;

    if (*(u16 *)(base + 0x10) == 0) {
        sub_0802704C(arg0);
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
    *(u32 *)(base + 0x71C) = ((u32 *)0x08510530)[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FF28);
#endif
#ifdef NONMATCHING
u32 sub_0808FF98(u32 arg0)
{
    u8 *base = *(u8 **)0x03005CF4;

    if (*(u16 *)(base + 0x10) == 0) {
        sub_0802704C(arg0);
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
    *(u32 *)(base + 0x71C) = ((u32 *)0x08511538)[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FF98);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090008);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809007C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809011C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080901A8);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809021C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090290);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090330);
#ifdef NONMATCHING
u32 sub_080903C4(u32 arg0)
{
    u8 *base = *(u8 **)0x03005CF4;

    if (*(u16 *)(base + 0x10) == 0) {
        sub_0802704C(arg0);
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
    *(u32 *)(base + 0x71C) = ((u32 *)0x0851810C)[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080903C4);
#endif
s32 sub_08090434(s32 arg0, s32 arg1) {
    return (s32) (arg1 * arg0) >> 8;
}
#ifdef NONMATCHING
s32 sub_0809043C(s32 arg0, s32 arg1)
{
    return (arg0 << 8) / arg1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809043C);
#endif
s32 sub_0809044C(s32 arg0, s32 arg1)
{
  unsigned long long new_var;
  new_var = ((s64) arg0) * arg1;
  return (s32) (new_var >> 16);
}
s32 sub_08090470(s32 arg0, s32 arg1)
{
    s64 a = arg0; s64 b = arg1; return (s32)((a << 16) / b);
}
s32 sub_08090494(s32 arg0) {
    return 0x10000 / arg0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080904A4);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090B84);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090E38);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080910A8);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080912CC);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080914F0);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091714);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091938);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091B5C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091CF8);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091E94);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091F20);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091F9C);
u32 sub_08092080(void)
{
    if (gUnk_03000168 == 0xD)
        return 1;
    return 0;
}
void sub_08092094(void) {
    gUnk_03000168 = 0;
}
void sub_080920A0(void)
{
    if (gUnk_03000168 == 0xD)
        return;
    if (gUnk_0851844E[gUnk_03000168] == gUnk_03001324_16)
        gUnk_03000168 = gUnk_03000168 + 1;
    else if (gUnk_03001324_16 != 0)
        gUnk_03000168 = 0;
    if (gUnk_03000168 == 0xD)
        sub_0805865C(0x33);
}
void sub_080920E4(void)
{
    u32 zero;
    gTask01C0.fC = (u32)sub_080904A4;
    zero = 0;
    gTask01C0.f24 = zero;
    gTask01C0.f20 = sub_08001494(0x800);
    gTask01C0.f10 = gTask01C0.f20 + 0x7FC;
    gTask01C0.f8 = 0x40;
    gTask01C0.f0 = zero;
    gTask01C0.f18 = zero;
    sub_08000274_3((u32)&gTask01C0, 0, 0);
}
void sub_08092124(void)
{
    u32 zero;
    gWord0300016C = zero = 0;
    gTbl03000198[0] = (u32)sub_08090B84;
    gTbl03000198[1] = (u32)sub_08090E38;
    gTbl03000198[2] = (u32)sub_080910A8;
    gTbl03000198[3] = (u32)sub_080912CC;
    gTbl03000198[4] = (u32)sub_080914F0;
    gTbl03000198[5] = (u32)sub_08091714;
    gTbl03000198[6] = (u32)sub_08091938;
    gTbl03000198[7] = (u32)sub_08091B5C;
    gTbl03000198[8] = (u32)sub_08091CF8;
    gTask0170.f24 = zero;
    gTask0170.f8 = 0x3C;
    gTask0170.f0 = zero;
    gTask0170.f18 = zero;
}
void sub_08092190(void)
{
    s32 i = (s16)((s16)sub_0800086C() % 9);
    if (i < 0)
        i = -i;
    {
    u8 k = i;
    gTask0170.fC = gTbl03000198[k];
    }
    gTask0170.f20 = sub_08001494(0x400);
    gTask0170.f10 = gTask0170.f20 + 0x3FC;
    sub_08000274_3((u32)&gTask0170, 0, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080921E4);
void sub_080922B4(void)
{
    volatile Handler *a = (volatile Handler *)&gUnk_03000210;
    volatile Handler *b;
    a[6] = sub_08095A60;
    b = (volatile Handler *)&gUnk_03000230;
    b[6] = sub_08095AD8;
    a[7] = sub_08092CB8;
    b[7] = sub_080923FC;
    a[0] = sub_08092EB4;
    b[0] = sub_08092F58;
    a[1] = sub_080934D4;
    b[1] = sub_08093584;
    a[2] = sub_080943F8;
    b[2] = sub_08093BAC;
    a[4] = sub_08094590;
    b[4] = sub_08094638;
    a[5] = sub_08094A00;
    b[5] = sub_08094AB8;
    a[3] = sub_08095518;
    b[3] = sub_08094F3C;
}
void sub_08092344(void) {

}
void sub_08092348(u8 a, u8 b, u8 c)
{
    gTask01E8.fC = (u32)sub_080923B4;
    gTask01E8.f20 = 0;
    do {
        gTask01E8.f20 = sub_08001494(0x800);
        sub_080003F0();
    } while (gTask01E8.f20 == 0);
    gTask01E8.f10 = gTask01E8.f20 + 0x7FC;
    gTask01E8.f8 = 0x40;
    gTask01E8.f0 = 0;
    gTask01E8.f18 = 0;
    gTask01E8.f24 = 0;
    sub_08000274_3((u32)&gTask01E8, (s8)a, ((s8)b << 8) | (s8)c);
}
s32 sub_080923B0(void) {
    return 3;
}
#ifdef NONMATCHING
void sub_080923B4(u32 index, u32 packed)
{
    s32 a;
    s32 b;
    u32 slot;
    typedef void (*Callback)(s32, s32);
    a = (s8)(packed >> 8);
    b = (s8)packed;
    slot = index * 4;
    ((Callback *)((u8 *)gUnk_03000210 + slot))[0](a, b);
    ((Callback *)((u8 *)gUnk_03000230 + slot))[0](a, b);
    sub_08000420(0x12001111);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923B4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923FC);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092CB8);
