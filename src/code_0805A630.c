#include "global.h"

void sub_0805A630(s32 arg0) {
    sub_0802413C(arg0, 3);
}
void sub_0805A63C(s32 arg0) {
    sub_0802413C(arg0, 4);
}
void sub_0805A648(s32 arg0) {
    sub_0802413C(arg0, 5);
}
void sub_0805A654(s32 arg0) {
    sub_0802413C(arg0, 6);
}
void sub_0805A660(s32 arg0) {
    sub_0802413C(arg0, 7);
}
void sub_0805A66C(void)
{
    u8 *base = *(u8 **)0x03005CF4 + 0x1834;
    u32 i;
    for (i = 0; i <= 0x1F; i++, base += 0x28)
        if (sub_08000470((u32)base)) sub_080003A8((u32)base);
}
void sub_0805A6A0(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFEFF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
void sub_0805A6B8(void *arg0)
{
    u32 i;
    for (i = 0; i < M2C_FIELD(arg0, u32 *, 0xC); i++)
        sub_080003F0();
    ((void (*)(s32, s32))M2C_FIELD(arg0, u32 *, 0))(M2C_FIELD(arg0, s32 *, 4), M2C_FIELD(arg0, s32 *, 8));
}
s32 sub_0805A6DC(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 7) & 1;
}
void sub_0805A6F0(void)
{
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) |= 0x80;
}
void sub_0805A704(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFF7F & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A71C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A780);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A7C4);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A874);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A8F8);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A960);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A994);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A9F4);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AA68);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AAB8);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AB20);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AC08);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AD18);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AD78);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE34);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE94);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B068);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B0F0);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B140);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B21C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B2C4);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B4CC);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B618);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B688);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805BD5C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C208);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C4FC);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C620);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C7B8);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB04);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB8C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CDF8);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CFA0);
s32 sub_0805CFCC(void) {
    u32 i;
    u8 *entry = (u8 *)gUnk_030034E0 + 0x2E0;
    for (i = 0; i <= 0x18; i++, entry += 0x10) {
        if (M2C_FIELD(entry, u16 *, 0) == 0)
            return i;
    }
    return -1;
}
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CFF8);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805D028);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805D064);
