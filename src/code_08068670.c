#include "global.h"

void sub_08068670(void) {
    sub_08001538(gUnk_03006258);
    sub_08001538(gUnk_03006368);
    sub_08001538(gUnk_03006300);
    gUnk_03006258 = 0;
    gUnk_03006368 = 0;
    gUnk_03006300 = 0;
}
u32 sub_080686A4(const void *src)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x98;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x98;
    CpuSet(src, entry + 8, 0x04000008);
    entry[1] = 4;
    gUnk_03006338 = index + 1;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080686F4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068758);
u32 sub_080687A8(const u8 *arg0)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x98;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9B;
    *(u32 *)(entry + 8) = *(const u16 *)(arg0 + 0xC);
    entry[1] = 1;
    gUnk_03006338 = index + 1;
    return 1;
}
s32 sub_080687E8(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x98;
    *(u32 *)(p + 4) = 1;
    *p = 0x9F;
    *(u32 *)(p + 8) = 1;
    p[1] = 1;
    gUnk_03006338++;
    return 1;
}
u32 sub_08068820(void *a, void *b, void *c)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x98;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA4;
    *(void **)(entry + 8) = a;
    *(void **)(entry + 0xC) = b;
    *(void **)(entry + 0x10) = c;
    entry[1] = 2;
    gUnk_03006338 = index + 1;
    return 1;
}
s32 sub_08068868(void) {
    return 1;
}
s32 sub_0806886C(void) {
    return 1;
}
s32 sub_08068870(void) {
    return 1;
}
void *sub_08068874(void)
{
    void *p = (void *)gUnk_03006300;
    if (M2C_FIELD(p, u32 *, 4) == 1)
        return p;
    return NULL;
}
s32 sub_0806888C(void)
{
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068894);
void sub_080688F4(void) {

}
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080688F8);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806898C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068A00);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068F9C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069080);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069224);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069388);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080694AC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080698D4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069A30);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069AEC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069BBC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069C44);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806A19C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806A88C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806ABC0);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806B3C4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806BE24);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806C568);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806CDF0);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806D4A4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806D7EC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806DB1C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806DE94);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806E7D4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806F0CC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806FE1C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806FF1C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080710DC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072390);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072D5C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807356C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807386C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08073CF4);
