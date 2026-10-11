#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080542C4);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_0805442C);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054514);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080545A0);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054644);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054748);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054904);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054CE8);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054FB8);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055174);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055558);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080557CC);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080558D0);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055974);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055A60);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055BA4);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055C58);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055D1C);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055E74);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080560D0);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080563F0);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08056494);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08056538);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_0805664C);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080567D4);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08056CB4);
void sub_08056D2C(void)
{
    u8 *base = *(u8 **)0x03005CF4;
    u8 *resource = base + 0x1794;
    if (sub_08000470((u32)resource) != 0) {
        sub_080003A8((u32)resource);
        while (sub_08000470((u32)resource) != 0)
            sub_080003F0();
    }
    u32 ptr = *(u32 *)0x03005CF4;
    sub_08001538(ptr);
    *(u32 *)0x03005CF4 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08056D80);
void sub_08056E24(void) { M2C_FIELD(gUnk_03005CF4, u16 *, 4) |= 8; }
void sub_08056E38(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFF7 & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056E50(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 3) & 1;
}
void sub_08056E64(void) { M2C_FIELD(gUnk_03005CF4, u16 *, 4) |= 0x10; }
void sub_08056E78(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFEF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056E90(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 4) & 1;
}
void sub_08056EA4(void) {
    if (sub_08000470(gUnk_03005CF4 + 0x17E4) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x17E4);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08056ED0);
s32 sub_08056F78(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 5) & 1;
}
void sub_08056F8C(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFDF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
void sub_08056FA4(void) { M2C_FIELD(gUnk_03005CF4, u16 *, 4) |= 0x20; }
void sub_08056FB8(u16 arg0, u16 arg1) {
    sub_08026CD0(arg0, arg1, 0);
}
void sub_08056FCC(void) { M2C_FIELD(gUnk_03005CF4, u16 *, 4) |= 0x40; }
void sub_08056FE0(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFBF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056FF8(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 6) & 1;
}
s32 sub_0805700C(void)
{
  s32 var_r2;
  s8 *new_var2;
  s8 *new_var;
  u32 var_r1;
  var_r2 = 0;
  var_r1 = 0;
  new_var2 = (new_var = ((s8 *) gUnk_03004210) + 4);
  do
  {
    if (((1 << var_r1) & (*((s32 *) new_var2))) != 0U)
    {
      var_r2 += 1;
    }
    var_r1 += 1;
  }
  while (var_r1 <= 0x16U);
  return var_r2;
}
u16 sub_08057038(void)
{
    u32 bits = *(u32 *)(*(u32 *)0x03004210 + 0xC), count = 0, mask;
    for (mask = 1 << 10; mask <= (1 << 19); mask <<= 1)
        if (bits & mask) count++;
    return count;
}
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08057068);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080570DC);
void sub_08057170(void)
{
    u8 *base = (u8 *)gUnk_03005CF4 + 0x1C8;
    u32 i, j;
    for (i = 0; i < 20; i++)
        for (j = 0; j < 5; j++)
            base[i * 5 + j] = 0;
}
