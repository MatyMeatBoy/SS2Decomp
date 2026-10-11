#include "global.h"

void sub_080967D0(s32 value);

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
void sub_0809689C(void)
{
    gUnk_030002A0.w4 = 0;
    gUnk_030002A0.w6 = 0;
    gUnk_030002A0.w8 = 0;
    gUnk_030002A0.wA = 0;
    gUnk_030002A0.b0C = 0;
    gUnk_030002A0.b0D = 0;
    gUnk_030002A0.pad0E = 0;
    gUnk_030002A0.b0F = 0;
    gUnk_030002A0.w4 = 0x100;
    gUnk_030002A0.w6 = 0x100;
}
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
void sub_08097978(s32 x, s32 y, s32 targetX, s32 targetY, s32 *out)
{
    s16 dx = (s16)(targetX - (x >> 8));
    s16 dy = (s16)(targetY - (y >> 8));
    s16 sine;
    s16 cosine;

    if (dx != 0) {
        u32 angle = ArcTan2(dx, dy) >> 8;
        sine = gUnk_080B9704[angle + 0x40];
        cosine = gUnk_080B9704[angle];
    } else {
        sine = 0;
        cosine = 0x100;
        if (targetY < y)
            cosine = -0x100;
    }

    out[0] = sine;
    out[1] = cosine;
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080979D8);
void sub_08097A38(u8 i)
{
    gUnk_03000290[i]++;
}
void sub_08097A4C(void)
{
    gUnk_03000290[0] = 0;
    gUnk_03000290[1] = 0;
    gUnk_03000290[2] = 0;
    gUnk_03000290[3] = 0;
    gUnk_03000290[4] = 0;
}
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
u32 sub_08097B24(const u8 *obj, s32 x, s32 y, s32 radius)
{
    s32 dx = (s16)x - (s16)(*(s32 *)(obj + 0x14) >> 8);
    s32 dy = (s16)y - (s16)(*(s32 *)(obj + 0x18) >> 8);
    return (s16)radius > Sqrt(dx * dx + dy * dy);
}
u32 sub_08097B6C(s32 x0, s32 y0, s32 x1, s32 y1, s32 radius)
{
    s32 dx = (x0 - x1) << 8, dy = (y0 - y1) << 8;
    u32 distance = Sqrt((u32)(dx * dx + dy * dy));
    return (radius >> 16) > (s32)distance;
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097BA4);
void sub_08097C4C(void)
{
  s8 *new_var2;
  void *new_var;
  void *temp_r0;
  gUnk_03000298 = (temp_r0 = sub_08001494(0x28U));
  new_var2 = (s8 *) temp_r0;
  new_var = (void *) 0;
  if (temp_r0 != new_var)
  {
    *((s32 *) (new_var2 + 8)) = 0;
  }
}
void sub_08097C6C(void)
{
    u32 *obj = *(u32 **)0x03000298;
    if (obj != 0) {
        if (obj[2] != 0) {
            u32 *dst = *(u32 **)0x030034E0;
            *(u16 *)((u8 *)dst + 0x18) = *(u16 *)0x0300029C;
            sub_080003A8((u32)obj);
        }
        sub_08001538((u32)obj);
        *(u32 *)0x03000298 = 0;
    }
}
void sub_08097CA8(u16 value)
{
    u8 *task = (u8 *)gUnk_03000298;
    u32 mem;

    if (task == 0 || *(u32 *)(task + 8) != 0)
        return;

    mem = sub_08001494(0x200);
    *(u32 *)(task + 0x20) = mem;
    if (mem == 0)
        return;

    *(u32 *)(task + 0x10) = mem + 0x1FC;
    *(u32 *)(task + 0x0C) = (u32)sub_080967D0;
    *(u32 *)(task + 0x24) = 0;
    *(u32 *)(task + 8) = 0x4C;
    sub_08000274_(task, (u32)(s32)(s16)value, 0);
    *(u16 *)0x0300029C = *(u16 *)(*(u8 **)0x030034E0 + 0x18);
}
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
void sub_08097D3C(u8 index, s32 scale)
{
    s32 value;
    gUnk_030002A0.b0C = index;
    value = (gUnk_080B9704[index] * (s8)scale) >> 8;
    gUnk_030002A0.b0D = value;
    gUnk_030002A0.pad0E = value;
}
void sub_08097D64(void)
{
    gUnk_030002A0.b0F = 0;
}
void sub_08097D70(void)
{
    gUnk_030002A0.b0F = 1;
}
void sub_08097D7C(u32 angle, u32 scale)
{
    u8 *state = (u8 *)gUnk_030002A0;
    state[0xE] = state[0xD];
    if (state[0xF] == 0) {
        const s16 *table = (const s16 *)gUnk_080B9704;
        state[0xD] = (u8)((table[state[0xC]] * (s8)scale) >> 8);
        state[0xC] += (u8)angle;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097DBC);
