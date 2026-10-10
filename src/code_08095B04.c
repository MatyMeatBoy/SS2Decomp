#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095B04);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095D1C);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095E70);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095F10);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095FC8);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096060);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096154);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096274);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096394);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096494);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096594);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096640);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080967D0);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_0809689C);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080968C0);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080969CC);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096AF4);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096BA8);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096D40);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096E20);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096EFC);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096FA0);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080970CC);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080972B8);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097488);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097658);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097978);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080979D8);
void sub_08097A38(u8 i)
{
    gUnk_03000290[i]++;
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097A4C);
void sub_08097A60(u8 i)
{
    gUnk_03000290[i] = 0;
}
s32 sub_08097A74(void *arg0, void *arg1, s32 arg2, s16 arg3) {
    s8 temp_r5;
    void *temp_r0;

    temp_r0 = M2C_FIELD(arg1, void **, 0x148);
    temp_r5 = sub_08096060(arg0, (u16) M2C_FIELD(temp_r0, u16 *, 0) >> 4, (u32) (M2C_FIELD(temp_r0, u16 *, 2) << 0x14) >> 0x14, arg3);
    if (temp_r5 != 0) {
        M2C_FIELD(arg0, u16 *, 8) = sub_08013E90(arg2, arg0 + 0x14, M2C_FIELD(arg0, u16 *, 8), 0, 0);
    }
    return (s32) temp_r5;
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097AC0);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097B24);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097B6C);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097BA4);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097C4C);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097C6C);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097CA8);
void sub_08097D0C(u16 a, u16 b)
{
    gUnk_030002A0.w4 = a;
    gUnk_030002A0.w6 = b;
}
void sub_08097D18(u16 a, u16 b)
{
    gUnk_030002A0.w8 = a;
    gUnk_030002A0.wA = b;
}
void sub_08097D24(u8 v)
{
    gUnk_030002A0.b0D = v;
}
void sub_08097D30(s16 arg0, s16 arg1) {
    M2C_FIELD(&gUnk_030002A0, s16 *, 0) = arg0;
    M2C_FIELD(&gUnk_030002A0, s16 *, 2) = arg1;
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097D3C);
void sub_08097D64(void)
{
    gUnk_030002A0.b0F = 0;
}
void sub_08097D70(void)
{
    gUnk_030002A0.b0F = 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097D7C);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097DBC);
