#include "global.h"

void sub_08057CAC(u32 index)
{
    u32 bit = 1 << (index - 1); u8 *base=*(u8 **)0x03005CF4;
    if(!sub_0800CE30()) *(u32 *)(base+0x78) &= ~bit;
    else *(u32 *)(base+0x80) &= ~bit;
}
s32 sub_08057CEC(void)
{
    if (sub_0800CE30() == 0)
        return M2C_FIELD((void *)gUnk_03005CF4, s32 *, 0x78);
    return M2C_FIELD((void *)gUnk_03005CF4 + 0x80, s32 *, 0);
}
void sub_08057D14(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x50) = arg0;
}
s32 sub_08057D20(void) {
    return M2C_FIELD(gUnk_03005CF4, s32 *, 0x50);
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08057D2C);
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08057DD0);
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08057E74);
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08057F18);
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08057FBC);
void sub_08058048(u32 x, u32 y, u16 kind, u32 value)
{
    u8 data[16];
    if (kind == 0xA) {
        *(u16 *)&data[0] = kind;
        *(u32 *)&data[4] = value;
    } else {
        *(u16 *)&data[0] = kind;
        *(u16 *)&data[2] = (u16)value;
        for (u32 i = 4; i <= 15; i++)
            data[i] = 0;
    }
    while (sub_08067B9C(x << 8, y << 8, data) == 0)
        sub_080003F0();
}
u32 sub_08058094(void)
{
    u8 *base = *(u8 **)0x030034E0;
    u32 total = 0;
    u8 *entry = base + 0x150;
    for (u32 i = 0; i <= 0x18; i++, entry += 0x10)
        if (*(u16 *)entry == 0xA) total += *(u32 *)(entry + 4);
    u32 count = *(u16 *)(base + 0x6A);
    u32 limit = count * 15 - count;
    entry = base + 0x2E0;
    for (u32 i = 0; i < limit; i++, entry += 0x10)
        if (*(u16 *)entry == 0xA) total += *(u32 *)(entry + 4);
    return total;
}
void sub_080580EC(void) {
    sub_0807C014();
}
u32 sub_080580F8(u16 a, u16 b)
{
    u8 *base=(u8 *)0x030034E0; u32 count=0, i;
    for(i=0;i<=0x4A;i++,base+=0x10)
        if(*(u16 *)(base+0x2E0)==a && *(u16 *)(base+2)==b) count++;
    return count;
}
u32 sub_0805813C(u16 a, u16 b)
{
    u8 *base=(u8 *)0x030034E0; u32 count=0, i;
    for(i=0;i<=0x18;i++) { u8 *e=base+0x150+i*0x10; if(*(u16 *)e==a && *(u16 *)(e+2)==b) count++; }
    return count;
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_0805817C);
void sub_080581E4(u16 a, u16 b, u32 count)
{
    u8 *base = (u8 *)0x030034E0 + 0x150;
    for (u32 i = 0; i <= 0x18 && count != 0; i++) {
        u8 *entry = base + i * 0x10;
        if (*(u16 *)entry == a && *(u16 *)(entry + 2) == b) {
            *(u16 *)entry = 0;
            *(u16 *)(entry + 2) = 0;
            count--;
        }
    }
}
s32 sub_08058240(void)
{
    return M2C_FIELD(&gUnk_03003CE0[sub_080020F4()], s32 *, 0x8C) >> 8;
}
s32 sub_08058260(void)
{
    return M2C_FIELD(&gUnk_03003CE0[sub_080020F4()], s32 *, 0x90) >> 8;
}
void sub_08058280(void)
{
    u8 *entry=*(u8 **)0x030056F4; u32 flags=*(u32 *)0x030056FC, i;
    for(i=0;i<=4;i++,entry+=0x2E0)
        if((flags&(1<<i)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=0;
    sub_08019F04();
}
s32 sub_080582C0(void)
{
  int new_var;
 do { if (sub_0805CFA0() >= 0) { return 1; do { } while (new_var); } return 0; } while (0);
}
void sub_080582D4(u32 value)
{
    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();
    sub_0805DF38(1, 0xF, 2, 0, 0x2D, 0xA00000 | (value & 0xFFFF));
}
void sub_08058318(s32 arg0)
{
    while (!sub_0805EEFC(arg0))
        sub_080003F0();
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08058334);
void sub_080583EC(void) {
    sub_0805EFBC();
    do {
        sub_080003F0();
    } while (sub_0805F184() != 0);
}
void sub_08058404(s32 arg0) {
    if ((arg0 != 0) && (sub_08000470((u32)arg0) != 0)) {
        sub_080003A8(arg0);
    }
}
s32 sub_08058420(void)
{
  s8 *new_var;
  u16 *new_var2;
  s32 *new_var3;
  new_var = (s8 *) gUnk_03005CF4;
  new_var2 = (u16 *) (new_var + 4);
  if ((((u16) (*new_var2)) >> 4) & 1)
  {
    return 1;
  }
  new_var3 = &gUnk_03005CF4;
  if ((gUnk_03005CF4 && (*new_var3)) && (*new_var3))
  {
  }
  return sub_08019C3C();
}
void sub_08058444(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2] = { x << 8, y << 8 };
    u32 result = 0;
    u32 packed = (u16)a | b;
    u8 *entry = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A + 0x8C;
    while (sub_08021FE0(entry, pos, &result, &packed) == 0)
        sub_080003F0();
}
void sub_08058498(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2] = { x << 8, y << 8 };
    u32 result = 0;
    u32 packed = (u16)a | b;
    u8 *entry = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A + 0x8C;
    for (;;) {
        if (sub_08021FE0(entry, pos, &result, &packed) == 0) {
            if (sub_08058608() != 0) return;
            sub_080003F0();
        } else if (*(u16 *)(entry + 0x14) & 1) {
            return;
        }
    }
}
void sub_080584FC(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) | (1 << arg0));
}
void sub_08058510(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) & ~(1 << arg0));
}
s32 sub_08058524(s32 bit)
{
    return (M2C_FIELD(gUnk_03005CF4, u32 *, 0x38) & (1 << bit)) != 0;
}
u32 sub_0805853C(u32 bit, u32 alternate)
{
    u8 *base = *(u8 **)0x03005CF4;
    u32 offset = alternate ? 0x1C3 : 0x1B7;
    return (base[offset + (bit >> 3)] >> (bit & 7)) & 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08058574);
void sub_080585F4(s32 arg0, s32 arg1) {
    sub_0805D37C(arg0 << 8, arg1 << 8);
    sub_080687A8((const u8 *)gUnk_03005CF4);
}
s32 sub_08058608(void) {
    return sub_0800CCCC();
}
u16 sub_08058614(void)
{
    return gUnk_03003170.f90;
}
void sub_08058620(const s16 *arg0)
{
    u8 *state = (u8 *)gUnk_03005CF4;
    u16 index = *(u16 *)(state + 0xA);
    if (*arg0 != 0) {
        *(const s16 **)(state + 0x724 + index * 4) = arg0;
        sub_08023ED8(arg0, index);
        *(u16 *)(state + 0xA) = index + 1;
    }
}
void sub_0805865C(s32 arg0)
{
    if ((gUnk_030027D0 & 0x20) == 0)
        sub_08006D08(arg0);
}
void sub_0805867C(void) {
    sub_08006D5C();
}
s32 sub_08058688(s32 value)
{
    s32 old = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0)
        sub_08006CB4(value);
    return old;
}
s32 sub_080586B4(void)
{
    s32 value = gUnk_03005CF8;
    if (value)
        sub_08006CD0(value);
    gUnk_03005CF8 = 0;
    return value;
}
s32 sub_080586D0(void) {
    s32 temp_r5;

    temp_r5 = gUnk_03005CF8;
    sub_08006C30();
    gUnk_03005CF8 = 0;
    return temp_r5;
}
void sub_080586EC(u32 index, u32 x, u32 y)
{
    if (index == 0)
        return;
    u32 bit = 1u << (index - 1);
    while ((gUnk_030056FC & bit) == 0)
        sub_080003F0();
    u8 *entry = (u8 *)gUnk_030056F4 + (index - 1) * 0x2E0;
    *(u32 *)(entry + 0x30) = x;
    *(u32 *)(entry + 0x34) = y;
    *(u32 *)(entry + 0x38) = 0;
    *(u32 *)(entry + 0x3C) = 0;
}
void sub_0805874C(void) {
    sub_0801A388();
}
void sub_08058758(s32 arg0, s32 arg1, s32 arg2) {
    sub_08073E2C(arg0 << 8, arg1 << 8, arg2, 1);
}
void sub_08058768(s32 arg0, s32 arg1, s32 arg2) {
    sub_08073E2C(arg0 << 8, arg1 << 8, arg2, 0);
}
void sub_08058778(void) {
    sub_0805C7B8();
}
s32 sub_08058784(void) {
    return sub_0805CDF8();
}
