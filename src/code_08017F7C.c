#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08017F7C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801801C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019BF8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019C3C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019C8C);
u32 sub_08019CDC(void)
{
    u32 i = 0;
    do {
        i++;
    } while (i <= 4);
    return i;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019CE8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019D34);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019D7C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019DE0);
s32 sub_08019E20(s32 arg0) {
    sub_0800CE30();
    return arg0;
}
s32 sub_08019E30(s32 arg0)
{
  s32 temp_r1;
  s32 var_r4;
  u32 var_r2;
  void *var_r3;
  s32 *new_var;
  var_r3 = gUnk_030056F4;
  var_r4 = 0;
  var_r2 = 0;
  new_var = &gUnk_030056FC;
  do
  {
    temp_r1 = 1 << var_r2;
    if (((*new_var) & temp_r1) && ((*((s32 *) (((s8 *) var_r3) + 0x2C))) == arg0))
    {
      var_r4 |= temp_r1;
    }
    var_r2 += 1;
    var_r3 += 0x2E0;
  }
  while (var_r2 <= 4U);
  return var_r4;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019E74);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019EB8);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019F04);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019F60);
u32 sub_08019FA8(void)
{
    u16 flags = gUnk_03005724;
    u32 i;
    for (i = 0; i <= 1; i++)
        if ((flags >> i) & 1) return 0;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019FD8);
s32 sub_0801A040(u16 arg0) {
    return sub_08019D34(arg0);
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A050);
void sub_0801A0A4(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 2;
}
void sub_0801A0B0(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A0BC);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A120);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A1C8);
s32 sub_0801A270(void) { u32 i; for (i=0;i<=4;i++) if (!(gUnk_030056FC & (1<<i))) return i; return -1; }
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A298);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A2F0);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A328);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A388);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A3D0);
void sub_0801A500(void)
{
}
extern u16 gUnk_03005C94;
extern u16 gUnk_03005C54;
extern u8 gUnk_03005C40[20];
extern u8 gUnk_03005740[];
extern const u8 gUnk_080B9AD0[];

void sub_0801A508(void)
{
    u32 i;
    gUnk_03005C98 = 0;
    gUnk_03005C94 = 0;
    gUnk_03005730 = 0x12;
    sub_0801A558();
    CpuFastSet(gUnk_080B9AD0, (void *)0x0600C000, 0x380);
    for (i = 0; i <= 0x13; i++)
        gUnk_03005C40[i] = 1;
}

void sub_0801A558(void)
{
    u32 i;
    u32 zero = 0;
    for (i = 0; i <= 0x13; i++) {
        if (gUnk_03005C40[i]) {
            CpuFastSet(&zero, gUnk_03005740 + i * 0x40, 0x10);
            gUnk_03005C40[i] = 0;
        }
    }
    gUnk_03005C54 = 0;
    gUnk_03005C98 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A5A8);
void sub_0801A628(void) {

}
void sub_0801A62C(void) {
    gUnk_03005C98 = 1;
}
s32 sub_0801A638(u8 *p)
{
    s32 n = 0;
    while (1) {
        u8 c = *p;
        if (c == 0xFD) break;
        if (c > 0xF1) break;
        n++;
        p++;
    }
    return n;
}
void sub_0801A650(u32 arg0)
{
  if (((u32) gUnk_03005730) > arg0)
  {
    gUnk_03005730 = (u16) arg0;
  }
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A664);
void sub_0801A6D4(u32 mode)
{
    u8 *base = 0;
    if (mode == 0)
        base = sub_08006EE0(0x80006, gUnk_08518938);
    else if (mode == 1)
        base = sub_08006EE0(0x8004A, gUnk_08518938);
    if (mode <= 1)
        base += 0x120;
    sub_08000AF0(base, 0x19, 1);
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A70C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A764);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A7AC);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A9BC);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801AA34);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801AA8C);
s32 sub_0801AAE0(void)
{
  s32 var_r2;
  var_r2 = 0;
  if (!(0x16 & gUnk_03000028))
  {
    var_r2 = 1;
  }
  return var_r2;
}
