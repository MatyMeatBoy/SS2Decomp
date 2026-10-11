#include "global.h"

extern u32 gUnk_03006338;

void sub_08067B4C(void) {

}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08067B50);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08067B9C);
void sub_08067BF8(void) {
    sub_08065E38(0x37564);
}
s32 sub_08067C08(void) {
    return sub_080682B8(0x37564);
}
s32 sub_08067C18(void) {
    return sub_08068330(0x37564);
}
u32 sub_08067C28(const u32 *arg0)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x98;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x87;
    *(u32 *)(entry + 8) = *arg0;
    entry[1] = 1;
    gUnk_03006338 = index + 1;
    return 1;
}
s32 sub_08067C68(s32 arg0)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x98;
    *(u32 *)(p + 4) = 1; *p = 0x88; *(u32 *)(p + 8) = arg0; p[1] = 1;
    gUnk_03006338++; return 1;
}
s32 sub_08067CA8(s32 arg0)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x98;
    *(u32 *)(p + 4) = 1; *p = 0x89; *(u32 *)(p + 8) = arg0; p[1] = 1;
    gUnk_03006338++; return 1;
}
u32 sub_08067CE8(void *arg0)
{
    u8 *entry;
    u32 index = gUnk_03006338;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x98;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xB0;
    *(void **)(entry + 8) = arg0;
    entry[1] = 1;
    gUnk_03006338 = index + 1;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08067D28);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08067D74);
extern s32 gUnk_03005CF4;
s32 sub_08067DC8(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x98;
    *(u32 *)(p + 4) = 1; *p = 0x8D;
    *(u32 *)(p + 8) = *(u32 *)((u8 *)(uintptr_t)gUnk_03005CF4 + 0x40); p[1] = 1;
    gUnk_03006338++; return 1;
}
 s32 sub_08067E08(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x98;
    *(u32 *)(p + 4) = 1; *p = 0x90;
    *(u32 *)(p + 8) = *(u32 *)((u8 *)(uintptr_t)gUnk_03005CF4 + 0x3C); p[1] = 1;
    gUnk_03006338++; return 1;
}
s32 sub_08067E48(void)
{
    return M2C_FIELD(gUnk_03006300, u32 *, 4) == 2;
}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08067E60);
s32 sub_08067EC8(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x98;
    *(u32 *)(p + 4) = 1;
    *p = 0x93;
    *(u32 *)(p + 8) = 0;
    p[1] = 2;
    gUnk_03006338++;
    return 1;
}
static s32 sub_08067Fxx(s32 a, s32 b, s32 c, u8 type)
{ u8 *p; if (gUnk_03006338 > 0x31) return 0; p=(u8 *)(uintptr_t)gUnk_03006300+gUnk_03006338*0x98; *(u32 *)(p+4)=1; *p=type; *(u32 *)(p+8)=(b<<16)|a; *(u32 *)(p+0xc)=c; p[1]=1; gUnk_03006338++; return 1; }
s32 sub_08067F04(s32 a,s32 b,s32 c){return sub_08067Fxx(a,b,c,0x9c);}
s32 sub_08067F4C(s32 a,s32 b,s32 c){return sub_08067Fxx(a,b,c,0x9d);}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08067F94);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08067FE0);
u32 sub_08068030(u32 value)
{
    u32 *count = (u32 *)0x03006338;
    u8 *entry;
    if (*count > 0x31) return 0;
    entry = *(u8 **)0x03006300 + *count * 0x98;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA1;
    *(u32 *)(entry + 8) = value;
    entry[1] = 1;
    (*count)++;
    return 1;
}
u32 sub_08068070(u32 a, u32 b) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x98; *(u32 *)(e+4)=1;e[0]=0xA3;*(u32 *)(e+8)=a;*(u32 *)(e+0xC)=b;e[1]=1;(*n)++;return 1; }
u32 sub_080680B4(u32 a, u32 b) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x98; *(u32 *)(e+4)=1;e[0]=0xA2;*(u32 *)(e+8)=a;*(u32 *)(e+0xC)=b;e[1]=1;(*n)++;return 1; }
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_080680F8);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08068144);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_0806818C);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_080681F4);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_0806823C);
s32 sub_080682A4(void)
{
    return gUnk_03006338 > 0x31;
}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_080682B8);
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08068330);
void sub_08068384(void)
{
    u32 count = sub_08002164();
    for (u32 i = 0; i < count; i++) {
        u32 *entries = (u32 *)(0x03006260 + i * 0x28);
        u32 *state = (u32 *)(0x03006210 + i * 4);
        for (u32 j = 0; j < 10; j++) entries[j] = (u32)-1;
        *state = 0;
    }
}
void sub_080683CC(void) {
    sub_08065F08(0x37564);
}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_080683DC);
u32 sub_08068450(u32 value)
{
    u32 *count=(u32 *)0x03006338; u8 *e; if (*count>0x31) return 0;
    e=*(u8 **)0x03006300 + *count*0x98;
    *(u32 *)(e+4)=1; e[0]=0xAC; *(u32 *)(e+8)=value&0xFF; e[1]=1; (*count)++; return 1;
}
u8 sub_08068490(void) {
    return gUnk_0300636C;
}
void sub_0806849C(void) { gUnk_0300636C = 0xFF; }
u32 sub_080684A8(u32 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x98; *(u32 *)(e+4)=1;e[0]=0xAD;*(u32 *)(e+8)=value&255;e[1]=1;(*n)++;return 1; }
u8 sub_080684E8(void) {
    return gUnk_03006224;
}
void sub_080684F4(void) { gUnk_03006224 = 0xFF; }
u32 sub_08068500(u32 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x98; *(u32 *)(e+4)=1;e[0]=0xAE;*(u32 *)(e+8)=value&255;e[1]=1;(*n)++;return 1; }
u8 sub_08068540(void) {
    return gUnk_03006228;
}
void sub_0806854C(void) { gUnk_03006228 = 0xFF; }
s32 sub_08068558(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x98;
    *(u32 *)(p + 4) = 1;
    *p = 0xAF;
    *(u32 *)(p + 8) = 1;
    p[1] = 1;
    gUnk_03006338++;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08068590);
u32 sub_080685F0(u32 value)
{
    u32 rem = value & 7;
    if (rem)
        value += 8 - rem;
    return value >> 3;
}
INCLUDE_ASM("asm/nonmatchings/code_08067B4C", sub_08068600);
