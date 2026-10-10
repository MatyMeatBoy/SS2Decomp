#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801AAF8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801AB24);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801AB50);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801AB90);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801ABE8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801AC24);
s32 sub_0801AC78(void) {
    s32 var_r2;

    var_r2 = 0;
    if (!(0x16 & (u16) gUnk_03000028)) {
        var_r2 = 1;
    }
    if ((var_r2 != 0) && (gUnk_03000026 == -1) && (gUnk_03000022 == 0)) {
        return 1;
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801ACB8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B264);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B58C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B6F4);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B720);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B74C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B8A8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801BA74);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801C8F0);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801CC10);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801CCC8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D028);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D34C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D7AC);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DB94);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DD9C);
void sub_0801DDB8(s32 arg0) {
    CpuSet(gUnk_030034E0 + 0x10, arg0, 0x04000008);
}
void sub_0801DDD4(s32 arg0) {
    CpuSet(arg0, gUnk_030034E0 + 0x10, 0x04000008);
}
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DDF0);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DE18);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DE3C);
u8 sub_0801DE60(void)
{
  u16 temp_r0;
  temp_r0 = *((u16 *) (((s8 *) gUnk_030034E0) + 0xA));
  if (temp_r0 != 8)
  {
    return (u8) temp_r0;
  }
  if (temp_r0)
  {
    return 6U;
  }
  else
  {
    return 6U;
  }
}
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DE78);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DE98);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DEB8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DF08);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DF4C);
s32 sub_0801DF80(void) {
    return gUnk_030034E0;
}
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DF8C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DFE8);
void sub_0801E024(void *arg0) {
    u16 temp_r7;
    u8 temp_r8;

    temp_r7 = M2C_FIELD(arg0, u16 *, 0x64);
    temp_r8 = M2C_FIELD(arg0, u8 *, 0x66);
    sub_0801BA74(arg0, 0, arg0 + 0x38, arg0 + 0x58, gUnk_030034E0 + 0x30);
    if ((s32) M2C_FIELD(arg0, s16 *, 0xC4) > (s32) (s16) M2C_FIELD(arg0, u16 *, 0x62)) {
        M2C_FIELD(arg0, s16 *, 0xC4) = (s16) M2C_FIELD(arg0, u16 *, 0x62);
    }
    if ((temp_r7 != M2C_FIELD(arg0, u16 *, 0x64)) || (temp_r8 != M2C_FIELD(arg0, u8 *, 0x66))) {
        sub_0806617C();
        sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
    }
}
u16 sub_0801E0A0(void) {
    return M2C_FIELD(gUnk_030034E0, u16 *, 0xC);
}
u16 sub_0801E0AC(s32 arg0, s32 arg1) {
    u16 var_r0;

    var_r0 = M2C_FIELD((arg0 + ((u32) (arg1 << 0x10) >> 0xE)), u16 *, 4);
    if (var_r0 == 7) {
        var_r0 = 8;
    }
    return var_r0;
}
void sub_0801E0BC(void *arg0, u16 arg1) {
    u16 temp_r1;

    temp_r1 = arg1;
    M2C_FIELD(arg0, u16 *, 0) = temp_r1;
    M2C_FIELD(arg0, u16 *, 2) = temp_r1;
    M2C_FIELD(arg0, u16 *, 4) = temp_r1;
    M2C_FIELD(arg0, u16 *, 6) = temp_r1;
    M2C_FIELD(arg0, u16 *, 8) = temp_r1;
    M2C_FIELD(arg0, u16 *, 0xA) = temp_r1;
}
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E0D0);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E104);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E12C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E164);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E1A4);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E1D8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E20C);
