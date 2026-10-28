#include "global.h"
extern u16 gArr030007D4[] asm("gUnk_030007D4");
extern u8 *gPtr030007EC asm("gUnk_030007EC");
extern void sub_080A4AD0();
extern void sub_080B5F94();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTP030007E4 asm("gUnk_030007E4");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
void sub_080B5F94(void);
void sub_080B6178(void);

INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B3648);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B44F0);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4690);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4A7C);
void sub_080B4B48(void)
{
  u8 var_r2;
  void *temp_r0;
  gUnk_030007D0 = (temp_r0 = sub_08001494(0xA0U));
  if (temp_r0 != ((void *) 0))
  {
    var_r2 = 0;
    do
    {
      *((s32 *) (((s8 *) ((var_r2 * 0x28) + gUnk_030007D0)) + 8)) = 0;
      var_r2 += 1;
    }
    while (((u32) var_r2) <= 3U);
  }
}
extern void sub_08000274_1(u32) asm("sub_08000274");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern u8 *gP030007D0 asm("gUnk_030007D0");
void sub_080B4B7C(void)
{
    u8 *e;
    u32 i;
    if (gP030007D0 == 0)
        return;
    for (i = 0, e = gP030007D0; i <= 3; e += 0x28, i++)
        if (sub_08000470((u32)e) != 0)
            sub_080003A8(e);
    i = 0;
    sub_08001538(gP030007D0);
    gP030007D0 = (u8 *)i;
}
extern void sub_080B4690();
void sub_080B4BB8(u8 a, u16 arg)
{
  struct TaskP *t;
  u32 z;
  u8 i;
  if (gP030007D0 == 0)
  {
    return;
  }
  t = (struct TaskP *) gP030007D0;
  i = 0;
  goto check;
  next:
  i++;

  t = (struct TaskP *) (((u8 *) t) + 0x28);
  check:
  if (i > 3)
  {
    return;
  }

  if ((sub_08000470((u32) t) != 0) || ((z = t->f8) != 0))
  {
    goto next;
  }
  if ((t->f20 = sub_08001494(0x400)) == 0)
  {
    return;
  }
 do { t->f10 = t->f20 + 0x3FC; t->fC = (u32) sub_080B4690; t->f24 = z; t->f8 = arg + 0x40; sub_08000274_3((u32)t, a, arg); } while (0);
}
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4C34);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5B90);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5E64);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5F94);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6068);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B60F4);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6178);
void sub_080B6324(void) {
    if (M2C_FIELD(gUnk_030007DC, s16 *, 0x5C) != 0) {
        sub_080B60F4();
        sub_080B6360();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007E0);
}
void sub_080B6360(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_030007E4) != 0) {
        sub_080003A8(gUnk_030007E4);
    }
    if (gUnk_030007E4 != 0) {
        sub_08001538(gUnk_030007E4);
        gUnk_030007E4 = 0;
    }
}
void sub_080B63A0(void)
{
  s32 temp_r0;
  gUnk_030007E4 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080B63BC(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP030007E4) == 0 && gTP030007E4->f8 != 0)
        return;
    gTP030007E4->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP030007E4;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080B5F94;
    t->f24 = 0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080B640C(void)
{
    u8 i;
    u8 *p;
    u8 **pp;
    i = 0;
    pp = &gPtr030007EC;
    for (; i <= 1; i++)
        gArr030007D4[i] = 0;
    p = (u8 *)sub_08001494(0x28);
    *pp = p;
    if (p != 0)
        *(u32 *)(p + 8) = 0;
}
#ifdef NONMATCHING
void sub_080B6448(u32 a, u32 b)
{
    u8 *obj=*(u8 **)0x030007EC; u32 mem; if(!obj||sub_08000470((u32)obj)||*(u32 *)(obj+8))return;
    mem=sub_08001494(0x400); *(u32 *)(obj+0x20)=mem; if(!mem)return;
    *(u32 *)(obj+0x10)=mem+0x3FC; *(u32 *)(obj+0xC)=(u32)sub_080B6178;
    *(u32 *)(obj+0x24)=0; *(u32 *)(obj+8)=0x3B; sub_08000274_4(obj,b,a,0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6448);
#endif
#ifdef NONMATCHING
void sub_080B64A4(void)
{
    u8 *base = gUnk_030056F4;
    u32 i;
    for (i = 1; i <= 4; i++)
        *(u16 *)(base + i * 0x60 - 0x20 + 0x7A) |= 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B64A4);
#endif
