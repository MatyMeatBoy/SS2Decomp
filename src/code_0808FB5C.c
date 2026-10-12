#include "global.h"

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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FD88);
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
#ifdef NONMATCHING
s32 sub_0809044C(s32 arg0, s32 arg1)
{
    return (s32)(((s64)arg0 * arg1) >> 16);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809044C);
#endif
#ifdef NONMATCHING
s32 sub_08090470(s32 arg0, s32 arg1)
{
    return (s32)(((s64)arg0 << 16) / arg1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090470);
#endif
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
#ifdef NONMATCHING
s32 sub_08092080(void)
{
    return gUnk_03000168 == 0xD;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092080);
#endif
void sub_08092094(void) {
    gUnk_03000168 = 0;
}
#ifdef NONMATCHING
void sub_080920A0(void)
{
    u8 index = gUnk_03000168;
    if (index != 0xD) {
        if (((u8 *)gUnk_0851844E)[index] == gUnk_03001324)
            gUnk_03000168 = index + 1;
        else if (gUnk_03001324 != 0)
            gUnk_03000168 = 0;
    }
    if (gUnk_03000168 == 0xD)
        sub_0805865C(0x33);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080920A0);
#endif
#ifdef NONMATCHING
void sub_080920E4(void)
{
    u8 *obj = (u8 *)gUnk_030001C0;
    *(u32 *)(obj + 0xC) = (u32)sub_080904A4;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 0x20) = sub_08001494(0x800);
    *(u32 *)(obj + 0x10) = *(u32 *)(obj + 0x20) + 0x7FC;
    *(u32 *)(obj + 8) = 0x40;
    *(u32 *)obj = 0;
    *(u32 *)(obj + 0x18) = 0;
    sub_08000274_((void *)gUnk_030001C0, 0, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080920E4);
#endif
#ifdef NONMATCHING
void sub_08092124(void)
{
    void sub_08090B84(void);
    void sub_08090E38(void);
    void sub_080910A8(void);
    void sub_080912CC(void);
    void sub_080914F0(void);
    void sub_08091714(void);
    void sub_08091938(void);
    void sub_08091B5C(void);
    void sub_08091CF8(void);
    u32 *callbacks = (u32 *)0x03000198;
    u8 *task = (u8 *)0x03000170;

    *(u32 *)0x0300016C = 0;
    callbacks[0] = (u32)sub_08090B84;
    callbacks[1] = (u32)sub_08090E38;
    callbacks[2] = (u32)sub_080910A8;
    callbacks[3] = (u32)sub_080912CC;
    callbacks[4] = (u32)sub_080914F0;
    callbacks[5] = (u32)sub_08091714;
    callbacks[6] = (u32)sub_08091938;
    callbacks[7] = (u32)sub_08091B5C;
    callbacks[8] = (u32)sub_08091CF8;
    *(u32 *)(task + 0x24) = 0;
    *(u32 *)(task + 8) = 0x3C;
    *(u32 *)task = 0;
    *(u32 *)(task + 0x18) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092124);
#endif
#ifdef NONMATCHING
void sub_08092190(void)
{
    s32 index = (s16)sub_0800086C();
    index %= 9;
    if (index < 0) index = -index;
    u8 *task = (u8 *)0x03000170;
    *(u32 *)(task + 0xC) = *(u32 *)((u8 *)0x03000198 + index * 4);
    u32 mem = sub_08001494(0x400);
    *(u32 *)(task + 0x20) = mem;
    *(u32 *)(task + 0x10) = mem + 0x3FC;
    sub_08000274((u32)task, 0, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092190);
#endif
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
#ifdef NONMATCHING
void sub_08092348(s32 arg0, s32 arg1, s32 arg2)
{
    u8 *task = (u8 *)0x030001E8;

    *(u32 *)(task + 0xC) = (u32)sub_080923B4;
    *(u32 *)(task + 0x20) = 0;
    while (*(u32 *)(task + 0x20) == 0) {
        *(u32 *)(task + 0x20) = sub_08001494(0x800);
        sub_080003F0();
    }
    *(u32 *)(task + 0x10) = *(u32 *)(task + 0x20) + 0x7FC;
    *(u32 *)(task + 8) = 0x40;
    *(u32 *)task = 0;
    *(u32 *)(task + 0x18) = 0;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274_(task, (s8)arg0, ((s32)(s8)arg1 << 8) | (s8)arg2);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092348);
#endif
s32 sub_080923B0(void) {
    return 3;
}
#ifdef NONMATCHING
void sub_080923B4(u32 index, u32 packed)
{
    typedef void (*Callback)(s32, s32);
    s32 a = (s8)(packed >> 8);
    s32 b = (s8)packed;
    u32 slot = index * 4;
    ((Callback *)((u8 *)gUnk_03000210 + slot))[0](a, b);
    ((Callback *)((u8 *)gUnk_03000230 + slot))[0](a, b);
    sub_08000420(0x12001111);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923B4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923FC);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092CB8);
