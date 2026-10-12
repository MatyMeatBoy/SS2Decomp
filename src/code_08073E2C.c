#include "global.h"

extern s32 sub_08074398(u16, u16, s32);

INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08073E2C);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08073EE8);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807414C);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074398);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074530);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080746A4);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074818);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807498C);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074B00);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074C74);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074DE8);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075088);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075494);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075520);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080756EC);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075778);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080760E8);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080761A4);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08076A88);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08076BA0);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077444);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077508);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077D04);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077DAC);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807854C);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080785F4);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08078B24);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08078BCC);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080793BC);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079458);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079888);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079948);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079CC4);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079D84);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079ED0);
s32 sub_08079FD0(s32 arg0) {
    s16 temp_r1;
    s32 var_r4;
    u32 var_r5;
    void *temp_r6;

    temp_r6 = (&((struct Sz332 *)&gUnk_03003CE0)[sub_080020F4()]);
    var_r4 = 7;
    var_r5 = 0x80000;
loop_1:
    temp_r1 = sub_0806898C(arg0, var_r4) - 1;
    if (((s32) temp_r1 >= 0) && ((s32) M2C_FIELD(temp_r6, s16 *, 0xC2) >= (s32) temp_r1)) {
        return (s32) (var_r5 >> 0x10);
    }
    var_r5 += 0xFFFF0000;
    var_r4 -= 1;
    if (var_r4 <= 0) {
        return 0;
    }
    goto loop_1;
}
u16 sub_0807A028(u16 arg0) {
    return sub_08073EE8(arg0, 0x7FFFFFFF);
}
#ifdef NONMATCHING
u16 sub_0807A040(u16 a, u16 b)
{
    return (u16)sub_08074398(a, b, 0x7FFFFFFF);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A040);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A064);
#ifdef NONMATCHING
void sub_0807A0E0(void *arg0)
{
    u32 offset;
    u16 *field;
    offset = (u32)sub_080020F4() * 0x14C;
    field = (u16 *)(gUnk_03003CE0 + offset + 0xC2);
    *field -= sub_0806898C(M2C_FIELD(arg0, s32 *, 0xC), M2C_FIELD(arg0, s32 *, 0x14)) - 1;
    if ((s16)*field < 0)
        *field = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A0E0);
#endif
void sub_0807A120(void) {

}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A124);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A20C);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A2E0);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A378);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A4B4);
#ifdef NONMATCHING
u8 sub_0807A544(const u8 *data, u32 length)
{
    u8 sum = 0;
    u32 i;
    for (i = 0; i < length; i++)
        sum += data[i];
    return (u8)~sum;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A544);
#endif
#ifdef NONMATCHING
u32 sub_0807A56C(u32 sector)
{
    u8 *data;
    u32 i;
    u8 sum;

    data = sub_08001494(0xCA8);
    sub_08001B04((u16)(u8)sector, 0, data, 0xCA8);
    sum = 0;
    for (i = 0; i < 0xCA4; i++)
        sum += data[i];
    i = (data[0xCA4] == (u8)~sum);
    sub_08001538((s32)data);
    return i;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A56C);
#endif
