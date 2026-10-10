#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08057CAC);
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
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08058048);
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08058094);
void sub_080580EC(void) {
    sub_0807C014();
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_080580F8);
u32 sub_0805813C(u16 a, u16 b)
{
    u8 *base=(u8 *)0x030034E0; u32 count=0, i;
    for(i=0;i<=0x18;i++) { u8 *e=base+0x150+i*0x10; if(*(u16 *)e==a && *(u16 *)(e+2)==b) count++; }
    return count;
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_0805817C);
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_080581E4);
s32 sub_08058240(void)
{
    return M2C_FIELD(&gUnk_03003CE0[sub_080020F4()], s32 *, 0x8C) >> 8;
}
s32 sub_08058260(void)
{
    return M2C_FIELD(&gUnk_03003CE0[sub_080020F4()], s32 *, 0x90) >> 8;
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08058280);
s32 sub_080582C0(void)
{
  int new_var;
 do { if (sub_0805CFA0() >= 0) { return 1; do { } while (new_var); } return 0; } while (0);
}
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_080582D4);
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
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08058444);
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_08058498);
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
INCLUDE_ASM("asm/nonmatchings/code_08057CAC", sub_080586EC);
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
