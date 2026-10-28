#include "global.h"

s32 sub_0801AAF8(void)
{
    if (gUnk_03000026 == 1 && gUnk_03000022 > gUnk_03000020)
        return 1;
    return 0;
}
u32 sub_0801AB24(void)
{
    extern volatile u16 flagBits asm("gUnk_03000028");
    register s32 flags asm("r1") = flagBits;
    s32 result;
    if (!(flags & 8)) result = 2 & (-((s16)(flags & 0x20) != 0));
    else result = 1;
    return result;
}
void sub_0801AB50(u16 arg0)
{
    u32 m = 0x21;
    gUnk_03000026 = -1;
    gUnk_03000020 = arg0;
    gUnk_03000022 = 0;
    sub_08000420(100);
    gUnk_03000028 = (gUnk_03000028 | 4) & -m;
}
void sub_0801AB90(u16 arg0) {
    register volatile u16 *p asm("r2");
    register u16 value asm("r0");
    if (((s32)gUnk_03000026 >= 0) || !(0x8000 & gUnk_03000022)) {
        gUnk_03000026 = -1;
        gUnk_03000020 = arg0;
        gUnk_03000022 = arg0;
        sub_08000420(0x64);
        p = &gUnk_03000028;
        value = *p;
        asm volatile("movs r1, #16\n\t.hword 0x4308\n\tmovs r1, #9\n\t.hword 0x4249\n\t.hword 0x4008" : "+r"(value) : : "r1", "memory");
        *p = value;
    }
}
void sub_0801ABE8(u32 arg0) {
    int new_var;
    gUnk_03000026 = 1;
    gUnk_03000020 = arg0;
    gUnk_03000022 = 0;
    sub_08000420(0x64);
    new_var = 0x21;
    gUnk_03000028 = (gUnk_03000028 | 0xC) & (-new_var);
}
#ifdef NONMATCHING
void sub_0801AC24(u16 value)
{
    u16 *state = (u16 *)0x03000026;
    u16 *current = (u16 *)0x03000022;
    u16 *limit = (u16 *)0x03000020;
    if (*(s16 *)state == 1 && *current > *limit)
        return;
    *state = 1;
    *limit = value;
    *current = 0;
    sub_08000420(0x64);
    *(u16 *)0x03000028 &= (u16)~9;
    *(u16 *)0x03000028 |= 0x30;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801AC24);
#endif
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
#ifdef NONMATCHING
void sub_0801B6F4(u16 *p, s32 delta)
{
    s16 d = (s16)delta;
    u32 i;
    for (i = 0; i < 6; i++)
        p[i] += d;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B6F4);
#endif
#ifdef NONMATCHING
void sub_0801B720(u16 *p, s32 delta)
{
    s16 d = (s16)delta;
    u32 i;
    for (i = 0; i < 6; i++)
        p[i] -= d;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B720);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B74C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B8A8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801BA74);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801C8F0);
#ifdef NONMATCHING
void sub_0801CC10(s32 index, s16 delta)
{
    u8 *target;
    u8 *current = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    u8 *other = (u8 *)gUnk_03003CE0 + index * 0x14C;
    s32 dx, dy;
    target = *(u8 **)(other + 0x148);
    dx = ((*(s32 *)(current + 0x8C) << 5) >> 16) - ((s16)(*(u16 *)target >> 7));
    if (dx < 0) dx = -dx;
    dy = ((*(s32 *)(current + 0x90) << 5) >> 16) - ((s16)((*(u16 *)(target + 2) << 20) >> 23));
    if (dy < 0) dy = -dy;
    if (current == other) {
        s16 *value = (s16 *)(current + 0xC4);
        if (*value > 0) *value += delta;
    } else if (dx <= 13 && dy <= 9) {
        s16 *value = (s16 *)(current + 0xC4);
        if (*value > 0) *value += delta;
    }
    if (*(s16 *)(current + 0xC4) > *(s16 *)(current + 0x62))
        *(u16 *)(current + 0xC4) = *(u16 *)(current + 0x62);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801CC10);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801CCC8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D028);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D34C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D7AC);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DB94);
void sub_0801DD9C(void) {
    sub_0801E024(&gUnk_03003CE0[sub_080020F4()]);
}
void sub_0801DDB8(s32 arg0) {
    CpuSet(gUnk_030034E0 + 0x10, arg0, 0x04000008);
}
void sub_0801DDD4(s32 arg0) {
    CpuSet(arg0, gUnk_030034E0 + 0x10, 0x04000008);
}
void sub_0801DDF0(void *arg0) {
    CpuSet(gUnk_03003D18 + sub_080020F4() * 0x14C, arg0, 0x04000008);
}
void sub_0801DE18(void *arg0) {
    CpuSet(gUnk_03003D38 + sub_080020F4() * 0x14C, arg0, 0x18);
}
void sub_0801DE3C(void *arg0) {
    CpuSet(arg0, gUnk_03003D38 + sub_080020F4() * 0x14C, 0x18);
}
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
void sub_0801DE78(void *arg0) {
    struct S36 { u32 w[9]; } *dst = arg0;
    struct S36 *src = (struct S36 *) ((u8 *) gUnk_030034E0 + 0x30);
    *dst = *src;
}
void sub_0801DE98(void *arg0) {
    struct S36 { u32 w[9]; } *src = arg0;
    struct S36 *dst = (struct S36 *) ((u8 *) gUnk_030034E0 + 0x30);
    *dst = *src;
}
u32 sub_0801DEB8(void)
{
    u8 *table = (u8 *)gUnk_030034E0;
    u8 *item = table + *(u16 *)(table + 0x68) * 0x10;
    u8 *resource;
    if (item[0x79] == 0)
        resource = 0;
    else
        resource = (u8 *)sub_08007290(*(u16 *)(item + 0x72) | 0xB0000);
    if (resource[0x9B] == 9)
        return resource[0xA7];
    return 0;
}
void sub_0801DF08(void) {
    u8 *p = (u8 *) &gUnk_03003CE0[sub_080020F4()];

    u16 v = *(u16 *) (p + 0x62);
    *(u16 *) (p + 0xC4) = v;
    if (sub_0801DE60() == 1) {
        u16 w = *(u16 *) (p + 0x60);
        *(u16 *) (p + 0xC2) = w;
    }
    *(u16 *) (p + 0x20) = 0;
    *(u32 *) (p + 0x30) = 0x40;
}
#ifdef NONMATCHING
u32 sub_0801DF4C(u16 id)
{
    u32 i;
    u8 *base = *(u8 **)0x030056F4;
    if (*(u16 *)(base + 2) == id)
        return 0;
    for (i = 1; i <= 4; i++)
        if (*(u16 *)(base + i * 0x2E0 + 2) == id)
            return i;
    return 5;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DF4C);
#endif
s32 sub_0801DF80(void) {
    return gUnk_030034E0;
}
s32 sub_0801DF8C(void) {
    u8 *p = (u8 *) &gUnk_03003CE0[sub_080020F4()];
    u32 flags = *(u32 *) (p + 0x30);
    s32 r4;

    if (!(flags & 0x100000)) {
        r4 = 0;
        if (*(u16 *) (p + 0x20) == 0xB) {
            r4 = 1;
        } else if (*(s16 *) (p + 0xC4) == 0) {
            r4 = 1;
        } else if ((s16) (*(u16 *) (p + 0xC4) - *(u16 *) (p + 0x88)) <= 0) {
            r4 = 1;
        } else if (flags & 0x2000) {
            r4 = 1;
        }
        return r4;
    }
    return 0;
}
void sub_0801DFE8(s32 arg0, void *arg1, void *arg2) {
    struct S32 { u32 w[8]; } *d1 = arg1;
    struct S48 { u32 w[12]; } *d2 = arg2;
    struct S32 *s1 = (struct S32 *) gUnk_0848FA48;
    struct S48 *s2;

    *d1 = s1[arg0];
    s2 = (struct S48 *) gUnk_0849E580;
    *d2 = s2[arg0];
}
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
#ifdef NONMATCHING
void sub_0801E0D0(u16 *dst, const u16 *src)
{
    u32 i;
    for (i = 0; i < 6; i++)
        dst[i] += src[i];
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801E0D0);
#endif
void *sub_0801E104(u8 *arg0) {
    u8 *p = arg0 + 0x8c;
    u32 i = 0;

    do {
        if (*(s16 *) p != -1) {
            i++;
            p += 0x28;
        } else {
            return p;
        }
    } while (i <= 7);
    return 0;
}
s32 sub_0801E12C(s32 arg0, s32 arg1, s32 arg2)
{
  u32 var_r1;
  void *var_r3;
  int new_var;
  var_r3 = arg0 + 0x8C;
  var_r1 = 0;
  new_var = -1;
  loop_1:
  if (((*((s16 *) (((s8 *) var_r3) + 0))) == new_var) || (((*((u16 *) (((s8 *) var_r3) + 4))) == arg1) && ((*((u16 *) (((s8 *) var_r3) + 2))) == arg2)))
  {
    return (s32) var_r3;
  }

  var_r1 += 1;
  var_r3 += 0x28;
  if (var_r1 > 7U)
  {
    return 0;
  }
  goto loop_1;
}
s32 sub_0801E164(void *arg0, s32 arg1)
{
  s16 temp_r0;
  u32 var_r1;
  void *var_r2;
  var_r2 = *((void **) (((s8 *) arg0) + 0x34));
  var_r1 = 0;
 do { loop_1: temp_r0 = *((s16 *) (((s8 *) var_r2) + 0)); if ((temp_r0 == (-1)) || (((temp_r0 == (-2)) && ((*((u16 *) (((s8 *) var_r2) + 4))) == arg1)) && ((*((u16 *) (((s8 *) arg0) + 0))) == (*((u16 *) (((s8 *) var_r2) + 2)))))) { return (s32) var_r2; } var_r1 += 1; var_r2 += 0x28; if (var_r1 > 7U) { return 0; } } while (0);
  goto loop_1;
}
void *sub_0801E1A4(u8 *arg0, s32 arg1) {
    u8 *p = *(u8 **) (arg0 + 0x34);
    u32 i = 0;

    do {
        if (*(s16 *) p != -1 && *(u16 *) (p + 4) == arg1 && *(u16 *) (p + 2) == 100) {
            return p;
        }
        i++;
        p += 0x28;
    } while (i <= 7);
    return 0;
}
s32 sub_0801E1D8(void *arg0, s32 arg1, s32 arg2)
{
  u32 var_r1;
  int new_var;
  void *var_r3;
  var_r3 = *((void **) (((s8 *) arg0) + 0x34));
  var_r1 = 0;
  new_var = -1;
  loop_1:
  if ((((*((s16 *) (((s8 *) var_r3) + 0))) != new_var) && ((*((u16 *) (((s8 *) var_r3) + 4))) == arg1)) && (arg2 == (*((u16 *) (((s8 *) var_r3) + 2)))))
  {
    return (s32) var_r3;
  }

  var_r1 += 1;
  var_r3 += 0x28;
  if (var_r1 > 7U)
  {
    return 0;
  }
  goto loop_1;
}
void *sub_0801E20C(u8 *arg0, s32 arg1, s32 arg2) {
    u8 *p = arg0 + 0x8c;
    u32 i = 0;

    do {
        if (*(s16 *) p != -1 && *(u16 *) (p + 4) == arg1 && arg2 == *(u16 *) (p + 2)) {
            return p;
        }
        i++;
        p += 0x28;
    } while (i <= 7);
    return 0;
}
