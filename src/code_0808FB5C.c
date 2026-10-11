#include "global.h"

void sub_080904A4(void);

INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FB5C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FBDC);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FC50);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FD88);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FE04);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FEB8);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FF28);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FF98);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090008);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809007C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809011C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080901A8);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0809021C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090290);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090330);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080903C4);
s32 sub_08090434(s32 arg0, s32 arg1) {
    return (s32) (arg1 * arg0) >> 8;
}
s32 sub_0809043C(s32 arg0, s32 arg1)
{
    return (arg0 << 8) / arg1;
}
s32 sub_0809044C(s32 arg0, s32 arg1)
{
    return (s32)(((s64)arg0 * arg1) >> 16);
}
s32 sub_08090470(s32 arg0, s32 arg1)
{
    return (s32)(((s64)arg0 << 16) / arg1);
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
s32 sub_08092080(void)
{
    return gUnk_03000168 == 0xD;
}
void sub_08092094(void) {
    gUnk_03000168 = 0;
}
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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092124);
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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080921E4);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080922B4);
void sub_08092344(void) {

}
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092348);
s32 sub_080923B0(void) {
    return 3;
}
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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923FC);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092CB8);
