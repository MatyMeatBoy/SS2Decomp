#include "global.h"
extern void sub_0809F4A8();
extern struct TaskP *gTP03000328 asm("gUnk_03000328");
extern u8 *gP03000324 asm("gUnk_03000324");
extern struct TaskP *gTP03000318 asm("gUnk_03000318");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern void sub_08000274_1(u32) asm("sub_08000274");
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
void sub_0809F4A8(void);
void sub_080A0B44(void);
void sub_080A05B4(u32 mode, void *state);

extern s32 gUnk_03000324;

INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809D878);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809E468);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809EDFC);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809EF84);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F018);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F4A8);
void sub_0809F8C8(void) {
    if (M2C_FIELD(gUnk_03000310, s16 *, 0x5C) != 0) {
        sub_0809FAEC();
        sub_0809FA28();
        sub_0809F934();
        sub_08097C6C();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000314);
}
void sub_0809F90C(void) {
    gUnk_0300031C = 1;
}
void sub_0809F918(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000318 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_0809F934(void) {
    if (sub_08000470(gUnk_03000318) != 0) {
        sub_08000E48();
        sub_0800CC18();
        sub_0800115C(0);
        sub_080011E4(0);
        sub_080009C0(0x400, 0, 0);
        sub_0800903C(0, 0, 0, 0, 0, 0);
        sub_0800BD48(2, 1);
        sub_080003A8(gUnk_03000318);
    }
    sub_08001538(gUnk_03000318);
    gUnk_03000318 = 0;
}
void sub_0809F998(void)
{
    if (sub_08000470((u32)gTP03000318) == 0 && gTP03000318->f8 != 0)
        return;
    do {
        gTP03000318->f20 = sub_08001494(0x400);
        sub_080003F0();
    } while (gTP03000318->f20 == 0);
    gTP03000318->f10 = gTP03000318->f20 + 0x3FC;
    gTP03000318->fC = (u32)sub_0809E468;
    gTP03000318->f24 = 0;
    gTP03000318->f8 = 0x3E;
    sub_08000274_3((u32)gTP03000318, 0, 0);
}
#ifdef NONMATCHING
void sub_0809F9F8(void)
{
    u8 *base = sub_08001494(0xA0);
    u32 i;
    gUnk_03000324 = base;
    if (base != 0) {
        for (i = 0; i < 4; i++)
            *(u32 *)(base + i * 0x28 + 8) = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F9F8);
#endif
void sub_0809FA28(void)
{
    u8 *e;
    u32 i;
    if (gP03000324 == 0)
        return;
    for (i = 0, e = gP03000324; i <= 3; e += 0x28, i++)
        if (sub_08000470((u32)e) != 0)
            sub_080003A8(e);
    i = 0;
    sub_08001538(gP03000324);
    gP03000324 = (u8 *)i;
}
extern void sub_0809F018();
void sub_0809FA64(u16 arg)
{
  struct TaskP *t = (struct TaskP *) gP03000324;
  u32 z;
  u8 i;
  if (t == 0)
  {
    return;
  }
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
  if ((t->f20 = sub_08001494(0x200)) == 0)
  {
    return;
  }
 do { t->f10 = t->f20 + 0x1FC; t->fC = (u32) sub_0809F018; t->f24 = z; t->f8 = 0x40; sub_08000274_2(t, arg); } while (0);
}
void sub_0809FACC(void)
{
  int new_var;
  s8 *new_var2;
  s32 temp_r0;
  temp_r0 = (gUnk_03000328 = (s32) sub_08001494(0x28U));
  new_var = 0;
  new_var2 = (s8 *) temp_r0;
  if (temp_r0 != new_var)
  {
    *((s32 *) (new_var2 + 8)) = new_var;
  }
}
void sub_0809FAEC(void) {
    if (gUnk_03000328 != 0) {
        if (sub_08000470(gUnk_03000328) != 0) {
            sub_080003A8(gUnk_03000328);
        }
        sub_08001538(gUnk_03000328);
        gUnk_03000328 = 0;
    }
}
void sub_0809FB18(void)
{
    u32 mem;
    struct TaskP *t;
    if (gTP03000328 == 0)
        return;
    if (sub_08000470((u32)gTP03000328) == 0 && gTP03000328->f8 != 0)
        return;
    gTP03000328->f8 = 0x40;
    mem = sub_08001494(0x400);
    t = gTP03000328;
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_0809F4A8;
    t->f24 = 0;
    sub_08000274_1((u32)t);
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809FB6C);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A05B4);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A099C);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A0B44);
void sub_080A0F64(void) {
    if (M2C_FIELD(gUnk_0300032C, s16 *, 0x5C) != 0) {
        sub_080A0FC4();
        sub_080A10D4();
        sub_080A118C();
        sub_08097C6C();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000330);
}
void sub_080A0FA8(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000334 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A0FC4(void) {
    if (sub_08000470(gUnk_03000334) != 0) {
        sub_080003A8(gUnk_03000334);
    }
    sub_08001538(gUnk_03000334);
    gUnk_03000334 = 0;
}
extern struct TaskP *gTP03000334 asm("gUnk_03000334");
extern void sub_080A05B4();
void sub_080A0FEC(u8 a, u8 *err)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000334) == 0 && gTP03000334->f8 != 0)
        return;
    mem = sub_08001494(0x400);
    t = gTP03000334;
    t->f20 = mem;
    if (mem == 0) {
        *err = 1;
        return;
    }
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A05B4;
    t->f24 = 0;
    t->f8 = 0x44;
    sub_08000274_3((u32)t, a, (u32)err);
}
void sub_080A104C(void) {
    gUnk_03000339 = 1;
}
void sub_080A1058(void) {
    gUnk_03000339 = 0;
    gUnk_0300033A = 0x14;
}
void sub_080A1070(s8 arg0) {
    gUnk_0300033B = arg0;
}
void sub_080A107C(s8 arg0) {
    gUnk_0300033C = arg0;
}
u8 sub_080A1088(void) {
    return (u8) gUnk_0300033C;
}
void sub_080A1094(void) {
    gUnk_03000338 = 1;
    gUnk_0300033C = 6;
}
void sub_080A10AC(void) {
    gUnk_03000338 = 0;
}
void sub_080A10B8(void)
{
  s32 temp_r0;
  gUnk_03000340 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A10D4(void) {
    if (sub_08000470(gUnk_03000340) != 0) {
        sub_080003A8(gUnk_03000340);
    }
    sub_08001538(gUnk_03000340);
    gUnk_03000340 = 0;
}
extern struct TaskP *gTP03000340 asm("gUnk_03000340");
extern u8 gB0300033B asm("gUnk_0300033B");
extern u8 gB0300033C asm("gUnk_0300033C");
extern u8 gB03000339 asm("gUnk_03000339");
extern u8 gB0300033A asm("gUnk_0300033A");
extern void sub_080A099C();
void sub_080A10FC(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000340) == 0 && gTP03000340->f8 != 0)
        return;
    gB0300033B = 1;
    gB0300033C = 0;
    gB03000339 = 0;
    gB0300033A = 0x14;
    mem = sub_08001494(0x400);
    t = gTP03000340;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A099C;
    t->f24 = 0;
    t->f8 = 0x40;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A1170(void)
{
  int new_var;
  s8 *new_var2;
  s32 temp_r0;
  temp_r0 = (gUnk_03000344 = (s32) sub_08001494(0x28U));
  *((s32 *) (new_var2 = ((s8 *) temp_r0) + (new_var = 8))) = 0;
}
void sub_080A118C(void) {
    if (sub_08000470(gUnk_03000344) != 0) {
        sub_080003A8(gUnk_03000344);
    }
    sub_08001538(gUnk_03000344);
    gUnk_03000344 = 0;
}
extern struct TaskP *gTP03000344 asm("gUnk_03000344");
extern void sub_080A0B44();
void sub_080A11B4(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000344) == 0 && gTP03000344->f8 != 0)
        return;
    mem = sub_08001494(0x400);
    t = gTP03000344;
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A0B44;
    t->f24 = 0;
    t->f8 = 0x46;
    sub_08000274_3((u32)t, 0, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1208);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1DA8);
void sub_080A1F88(void) {
    u32 var_r4;
    u32 var_r4_2;
    register u32 var_r5 asm("r5");
    register u32 var_r5_2 asm("r5");
    register u32 *ptr asm("r0");
    sub_0805867C(0xC2);
    ptr = &gUnk_03000350;
    var_r5 = 0;
    var_r4 = *ptr;
    do {
        if (sub_08000470(var_r4) != 0) sub_080003A8(var_r4);
        var_r4 += 0x28;
        var_r5 += 1;
    } while (var_r5 <= 7);
    sub_08001538(gUnk_03000350);
    gUnk_03000350 = 0;
    ptr = &gUnk_03000354;
    var_r5_2 = 0;
    var_r4_2 = *ptr;
    do {
        if (sub_08000470(var_r4_2) != 0) sub_080003A8(var_r4_2);
        var_r4_2 += 0x28;
        var_r5_2 += 1;
    } while (var_r5_2 <= 7);
    var_r5_2 = 0;
    sub_08001538(gUnk_03000354);
    gUnk_03000354 = var_r5_2;
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1FF4);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A230C);
void sub_080A2698(void) {
    if (M2C_FIELD(gUnk_03000348, s16 *, 0x5C) != 0) {
        sub_080A1F88();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_0300034C);
}
void sub_080A26D0(void)
{
  long i;
  gUnk_03000350 = sub_08001494(0x140);
  for (i = 0; i < 8; i++)
  {
    *((u32 *) ((((u8 *) gUnk_03000350) + (i * 0x28)) + 8)) = 0;
  }

  gUnk_03000354 = sub_08001494(0x140);
  for (i = 0; i < 8; i++)
  {
    *((u32 *) ((((u8 *) gUnk_03000354) + (i * 0x28)) + 8)) = 0;
  }

}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A2720);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A27B8);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A35D0);
