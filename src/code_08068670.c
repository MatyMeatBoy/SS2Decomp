#include "global.h"

void sub_08066720(void);

extern u8 gUnk_084EBF1C[];

void sub_08068670(void) {
    sub_08001538(gUnk_03006258);
    sub_08001538(gUnk_03006368);
    sub_08001538(gUnk_03006300);
    gUnk_03006258 = 0;
    gUnk_03006368 = 0;
    gUnk_03006300 = 0;
}
#ifdef NONMATCHING
u32 sub_080686A4(const void *src)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x98;
    CpuSet(src, entry + 8, 0x04000008);
    entry[1] = 4;
    gUnk_03006338 = index + 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080686A4);
#endif
#ifdef NONMATCHING
u32 sub_080686F4(const u8 *arg0)
{
    u8 *entry;
    u32 index = gUnk_03006338;

    if (index > 0x31)
        return 0;
    if (sub_0805CFA0() == -1 &&
        (*(const u16 *)(arg0 + 0x10) != 0xA || sub_0805D348() != 0))
        return 0;

    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x99;
    *(u32 *)(entry + 8) = *(const u16 *)(arg0 + 0xC);
    entry[1] = 1;
    gUnk_03006338 = index + 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080686F4);
#endif
u32 sub_08068758(u16 lo, u16 hi, const u8 *src)
{
    u32 *count;
    u8 *e;
    count=(u32 *)0x03006338; if(*count>0x31)return 0;
    e=*(u8 **)0x03006300+*count*0x88;
    *(u32 *)(e+4)=1; e[0]=0x9A; *(u32 *)(e+8)=((u32)hi<<16)|lo;
    *(u32 *)(e+0xC)=*(const u16 *)(src+0xC); e[1]=1; (*count)++; return 1;
}
#ifdef NONMATCHING
u32 sub_080687A8(const u8 *arg0)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9B;
    *(u32 *)(entry + 8) = *(const u16 *)(arg0 + 0xC);
    entry[1] = 1;
    gUnk_03006338 = index + 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080687A8);
#endif
s32 sub_080687E8(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1;
    *p = 0x9F;
    *(u32 *)(p + 8) = 1;
    p[1] = 1;
    gUnk_03006338++;
    return 1;
}
#ifdef NONMATCHING
u32 sub_08068820(void *a, void *b, void *c)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA4;
    *(void **)(entry + 8) = a;
    *(void **)(entry + 0xC) = b;
    *(void **)(entry + 0x10) = c;
    entry[1] = 2;
    gUnk_03006338 = index + 1;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068820);
#endif
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
    u8 buf[136];
    return 1;
}
#ifdef NONMATCHING
void sub_08068894(u32 a, u32 b)
{
    u8 *obj;
    u32 mem;
    obj=*(u8 **)0x03006368; if(sub_08000470((u32)obj))return;
    do { mem=sub_08001494(0x1000); if(!mem)sub_080003F0(); } while(!mem);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+0xC)=(u32)sub_08066720;
    *(u32 *)(obj+0x10)=mem+0x7FC; *(u32 *)(obj+8)=0x65; *(u32 *)(obj+0x24)=0;
    sub_08000274_(obj,a,b);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068894);
#endif
void sub_080688F4(void) {

}
#ifdef NONMATCHING
void sub_080688F8(u32 index)
{
    volatile u32 *slot = (volatile u32 *)(0x030063B0 + index * 4);
    volatile u32 *global;

    while (*slot != 0 && sub_08000470(*slot) != 0)
        sub_080003F0();
    sub_08001538((s32)*slot);
    *slot = 0;

    global = (volatile u32 *)0x03006370;
    while (*global != 0 && sub_08000470(*global) != 0)
        sub_080003F0();
    sub_08001538((s32)*global);

    slot = (volatile u32 *)(0x03006380 + index * 4);
    sub_08001538((s32)*slot);
    *slot = 0;

    sub_08001538((s32)*global);
    sub_08001538(*(volatile s32 *)0x03006420);
    *global = 0;
    *(volatile u32 *)0x03006420 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080688F8);
#endif
#ifdef NONMATCHING
s32 sub_0806898C(s32 arg0, s32 arg1)
{
    u8 *player;
    u32 tableOffset;
    s32 value;
    s16 candidate;

    player = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    if (arg1 == 0)
        return 0;

    tableOffset = (u32)arg0 * 0x18 + ((u32)arg1 - 1) * 2 + 6;
    value = *(s16 *)(gUnk_084EBF1C + tableOffset) + *(s8 *)(player + 0x6C) * 10;
    if (value < 0)
        value = 0;

    candidate = (s16)(u16)value;
    if (*(s16 *)(player + 0xC2) - (s32)candidate < 0)
        return 0;
    return (s16)(u16)(candidate + 1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806898C);
#endif
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
