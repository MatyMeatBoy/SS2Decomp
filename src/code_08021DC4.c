#include "global.h"

extern u32 gUnk_03005CFC;
extern u32 gUnk_03005D00;
extern s32 gUnk_03005CF0;
s32 sub_0800048C();
void sub_080226A4(void);

INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021DC4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021E44);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021EC8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021F58);
s32 sub_08021FE0(s32 *arg0, s32 *arg1, u16 *arg2, u16 *arg3) {
    s32 var_r2;
    s32 var_r3;

    s32 dx = arg0[0] - arg1[0];
    s32 dy = arg0[1] - arg1[1];
    var_r2 = dy >> 8;
    var_r3 = dx >> 8;
    if (var_r3 < 0) {
        var_r3 = -var_r3;
    }
    if (var_r3 <= ((s32)(arg2[0] + arg3[0]) >> 1)) {
        if (var_r2 < 0) {
            var_r2 = -var_r2;
        }
        if (var_r2 <= ((s32)(arg2[1] + arg3[1]) >> 1)) {
            return 1;
        }
    }
    return 0;
}
void sub_08022028(u8 *arg0, u8 *arg1, u16 arg2) {
    ArcTan2((s16)((*(s32 *)(arg1 + 0x8C) - *(s32 *)(arg0 + 0)) << 8 >> 16),
            (s16)((*(s32 *)(arg1 + 0x90) - *(s32 *)(arg0 + 4)) << 8 >> 16));
    *(u16 *)(arg1 + 0xCC) = 0;
    *(u16 *)(arg1 + 0xD0) = 0;
    *(u16 *)(arg1 + 0xCE) = 0;
    *(u16 *)(arg1 + 0x88) += arg2;
    *(u16 *)(arg1 + 0x20) = 0xA;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022078);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022100);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022180);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022200);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022284);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802230C);
u32 sub_080223A4(s16 a, s16 b) {
    s16 q = (a + 10) * 125 / (a + b + 20);
    u16 r = (u16)sub_080008C8() % 100;
    if (q >= r) {
        return 1;
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080223F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802247C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022504);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802258C);
void sub_08022630(void) {
    u8 *p;
    u32 q;
    gUnk_03005CF4 = (s32)sub_08001494(0x1E78);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17A0) = (u32)sub_080226A4;
    q = (u32)sub_08001494(0x800);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17B4) = q;
    *(u32 *)(p + 0x17A4) = q + 0x7FC;
    *(u32 *)(p + 0x179C) = 0x46;
    *(u32 *)(p + 0x17B8) = 0;
    *(u16 *)(p + 4) = 0;
    *(u32 *)(p + 0x54) = 0;
    sub_08000274(p + 0x1794,
        0x1794);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080226A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022E60);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023274);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023684);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080239E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023A3C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023ED8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023F98);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802413C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08024538);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080245CC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080257D4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08025890);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026338);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080263B4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080267DC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026858);
extern void sub_08026858(void);
void sub_08026C54(void) {
    s32 *new_var2;
    s32 base;
    s32 p;
    int new_var;
    if (sub_08000470(gUnk_03005CF4 + 0x17E4) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x17E4);
    }
    base = gUnk_03005CF4;
    *((s32 *)(base + 0x17F0)) = (s32)sub_08026858;
    p = (s32)sub_08001494(0x400);
    new_var = 0x1804;
    base = gUnk_03005CF4;
    *((s32 *)(base + new_var)) = p;
    *((s32 *)(base + 0x17F4)) = p + 0x3FC;
    *((s32 *)(base + 0x17EC)) = 0x46;
    *((s32 *)(base + 0x1808)) = 0;
    new_var2 = &base;
    sub_08000274((*new_var2) + 0x17E4, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026CD0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802704C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080277E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027B50);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027C1C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028368);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080283C4);
void sub_08028498(u16 arg0)
{
  u32 *flagp;
  u32 mask;
  u32 flags;
  u32 *tbl;
  u32 off;
  u16 idx;
  idx = arg0 - 4;
  flagp = &gUnk_03005CFC;
  mask = 1 << idx;
  flags = *flagp;
  if (flags & mask)
  {
    tbl = &gUnk_03005D00;
    off = (idx * 3) * 4;
    if ((*((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8))) <= 1)
    {
      *((u32 *) (((u8 *) tbl) + off)) = 0;
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 4)) = 0;
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8)) = 0;
      *flagp = flags & (~mask);
    }
    else
    {
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8)) = (*((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8))) - 1;
    }
  }
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080284F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028830);
void sub_08028918(void) {
    s32 keep;
    s32 p;
    s32 q;
    u32 i;

    keep = sub_0800048C();
    p = gUnk_03005CF4 + 0xE34;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(p)) {
                sub_080003A8(p);
            }
        }
        i++;
        p += 0x28;
    } while (i <= 0x1D);
    p = gUnk_03005CF4 + 0x12E4;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(p)) {
                sub_080003A8(p);
            }
        }
        i++;
        p += 0x28;
    } while (i <= 0x1D);
    q = gUnk_03005CF4 + 0x7A4;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(q + 0x48)) {
                sub_080003A8(q + 0x48);
            }
        }
        i++;
        q += 0x70;
    } while (i <= 0xE);
    gUnk_03005CF0 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080289C0);
