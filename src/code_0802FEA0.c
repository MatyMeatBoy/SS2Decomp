#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0802FEA0);
extern u8 *gState30480 asm("gUnk_03005CF4");
void sub_08030480(s32 arg)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg, 0);
    if (sub_0800CE30()) field = *(u32 *)(gState30480 + 0x7C);
    else field = *(u32 *)(gState30480 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310939);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310938);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310937);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310936);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310935);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310934);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310933);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310932);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310931);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else  {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310930);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    sub_08029788(arg);
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}

extern u8 *gState308B4 asm("gUnk_03005CF4");
void sub_080308B4(void)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    if (sub_0800CE30()) { base = gState308B4; field = 0x1BE; }
    else { base = gState308B4; field = 0x1B2; }
    switch (base[field]) {
    case 0:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310940);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    case 1:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310941);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    case 2:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310942);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    case 3:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310943);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        value = 3;
        if (sub_0800CE30()) { base = gState308B4; field = 0x1BF; }
        else { base = gState308B4; field = 0x1B3; }
        base += field; *base = value;
        break;
    case 4:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310944);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}

extern u8 *gState30B28 asm("gUnk_03005CF4");
void sub_08030B28(s32 arg)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg, 0);
    if (sub_0800CE30()) field = *(u32 *)(gState30B28 + 0x7C);
    else field = *(u32 *)(gState30B28 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311074);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311073);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311072);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311071);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311070);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311069);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311068);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311067);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311066);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else  {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311065);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}

INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08030F54);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803145C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031580);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080316A4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803188C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080319F0);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031B54);
extern u8 gS03003170[] asm("gUnk_03003170");
static inline void Keep31CB8(u8 *b, u32 n)
{
    s16 *px = (s16 *)(b + 0x7C);
    s32 x = *px;
    s16 *py = (s16 *)(b + 0x7E);
    s32 y = *py;
    sub_08084F9C(n);
    sub_080003F4(0x11201100);
    *px = x;
    *py = y;
}
void sub_08031CB8(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 9);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
void sub_08031D88(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 8);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
void sub_08031E58(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 7);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
void sub_08031F28(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 2);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031FF8);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08032598);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803294C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08032DE4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08033198);
extern void sub_08045764(void);

void sub_08033520(s32 arg0)
{
  s32 r4;
  struct Player *pl;
  long new_var2;
  s32 new_var;
  pl = &gUnk_03003CE0[sub_080020F4()];
  pl->flags |= 1;
  sub_0800D0F4();
  sub_0802949C(arg0, 0);
  while (sub_0805F184() != 0)
  {
    sub_080003F0();
  }

  r4 = sub_0805DF38(1, 0xF, 2, 0, -2, 0x001404EB);
  while (sub_0805EEFC(r4) == 0)
  {
    sub_080003F0();
  }

  if (sub_0805EF14(r4) != 0)
  {
    if (!(gUnk_030027D0 & 0x20))
    {
      sub_08006D08(0x32);
    }
    sub_08068070((u32) (&sub_08045764), 0);
  }
  while (sub_0805F184() != 0)
  {
    sub_080003F0();
  }

  r4 = (new_var = sub_0805DF38(1, 0xF, 2, 0, -2, 0x001404EC));
  while (sub_0805EEFC(r4) == 0)
  {
    sub_080003F0();
  }

  new_var2 = sub_0805EF14(r4);
  if (new_var2 != 0)
  {
    if (!(gUnk_030027D0 & 0x20))
    {
      sub_08006D08(0x32);
    }
    sub_08068070((u32) (&sub_08045764), 1);
  }
  sub_08029788(arg0);
  ;
  (&gUnk_03003CE0[sub_080020F4()])->flags &= ~1;
  sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08033650);
void sub_08033B3C(void)
{
  s32 r4;
  u8 *p;
  s32 idx;
  struct Player *new_var2[2];
  new_var2[0] = &gUnk_03003CE0[sub_080020F4()];
  new_var2[1] = new_var2[0];
  new_var2[1]->flags = new_var2[1]->flags | 1;
  sub_0800D0F4();
  if ((*((s32 *) (gUnk_030034E0 + 0x20))) > 0xC6)
  {
    while (sub_0805F184() != 0)
    {
      sub_080003F0();
    }

 do { while (sub_0805EF90() != 0) { sub_080003F0(); } r4 = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A9); while (sub_0805EEFC(r4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); } } while (0);
  }
  else
  {
    while (sub_0805F184() != 0)
    {
      sub_080003F0();
    }

    while (sub_0805EF90() != 0)
    {
      sub_080003F0();
    }

    r4 = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A8);
    while (sub_0805EEFC(r4) == 0)
    {
      if (sub_0800CDF8() != 0)
      {
        sub_0805EFBC();
        break;
      }
      sub_080003F0();
    }

  }
  new_var2[1] = &gUnk_03003CE0[sub_080020F4()];
  new_var2[1]->flags = new_var2[1]->flags & (~1);
  sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08033C40);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08034488);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08034900);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08034A5C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08034F64);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803540C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08035914);
void sub_080359E8(s32 arg0) {
    u16 count;
start:
    sub_0802939C(arg0, 0);
    count = 0xF0;
    goto wait1;
dec1:
    count--;
    if (count == 0) goto stage2;
wait1:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec1;
stage2:
    sub_0802926C(arg0, 1);
    sub_0802926C(arg0, 1);
    sub_0802926C(arg0, 1);
    count = 0x64;
    goto wait2;
dec2:
    count--;
    if (count == 0) goto stage3;
wait2:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec2;
stage3:
    sub_08029174(arg0, 2);
    count = 0xC8;
    goto wait3;
dec3:
    count--;
    if (count == 0) goto stage4;
wait3:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec3;
stage4:
    sub_08029174(arg0, 3);
    count = 0xB4;
    goto wait4;
dec4:
    count--;
    if (count == 0) goto start;
    goto wait4;
wait4:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec4;
    goto start;
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08035A88);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08035B18);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080368F4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080376CC);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08037B04);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08037DFC);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080384D4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803898C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08038D18);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080392B4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080399E4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08039F00);
void sub_0803A460(s32 arg0) {
    register u32 offset asm("r2");
    u8 *p;
    u32 flags;
    u32 msg;
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)|=1;
    sub_0800D0F4();
    sub_0802949C(arg0,0);
    if(sub_0800CE30()) flags=*(u32 *)((u8 *)gUnk_03005CF4+0x7C);
    else flags=*(u32 *)((u8 *)gUnk_03005CF4+0x74);
    if(flags & 0x200) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14013A);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 256) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140139);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 128) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140138);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 64) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140137);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 32) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140136);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 16) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140135);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 8) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140134);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 4) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140133);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 2) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140132);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 1) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140131);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140130);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)&=~1;
    sub_0800D108();
}
void sub_0803A8F0(void) {
    register u32 offset asm("r2");
    u8 *p;
    u32 flags;
    u32 msg;
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)|=1;
    sub_0800D0F4();
    if(sub_0800CE30()) flags=*(u32 *)((u8 *)gUnk_03005CF4+0x7C);
    else flags=*(u32 *)((u8 *)gUnk_03005CF4+0x74);
    if(flags & 0x200) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012F);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 256) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012E);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 128) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012D);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 64) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012C);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 32) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012B);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 16) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012A);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 8) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140129);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 4) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140128);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 2) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140127);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 1) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140126);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140125);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)&=~1;
    sub_0800D108();
}
void sub_0803AD74(void) {
    u8 *p;
    u32 msg;
    register u32 offset asm("r2");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    msg = sub_0805DF38(1, 15, 2, 0, -1, 0x140122);
    while (sub_0805EEFC((void *)msg) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    msg = sub_0805DF38(1, 15, 2, 0, -1, 0x140123);
    while (sub_0805EEFC((void *)msg) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) &= ~1;
    sub_0800D108();
}
static inline u32 t38_getAE6C(u32 mask) {
    register u8 *base asm("r0");
    register u32 bits asm("r0");
    register u32 m asm("r1");
    if (sub_0800CE30()) {base=(u8 *)gUnk_03005CF4 + 0x80; m=mask; bits=*(u32 *)base;}
    else {base=(u8 *)gUnk_03005CF4; m=mask; bits=*(u32 *)(base+0x78);}
    return bits & m;
}
static inline u8 *t38_findAE6C(u32 arg) {
    register u32 key asm("r2")=arg;
    u8 *p=(u8 *)gUnk_03005CF4+0x7A4;
    u32 i;
    for(i=0;i<15;i++,p+=0x70) if(*(u32 *)p==key) return p;
    sub_080003F0(); return 0;
}
static inline void t38_setAE6C(u32 arg) {
    register u32 value asm("r4");
    register u32 key asm("r2")=arg;
    register u8 *p asm("r0");
    u32 idx;
    value=3;
    if(arg>0x100000) {p=t38_findAE6C(key);if(p) *(u16 *)(p+0x42)=value;}
    else if(arg!=0) {
        register u8 **address asm("r1");
        register u8 *entry asm("r1");
        register u32 off asm("r0");
        idx=arg-1;
        if(idx<5) {address=(u8 **)&gUnk_030056F4;off=idx*0x2E0;entry=*address;entry+=off;sub_08019EB8(*(u16 *)(entry+2),3);}
    }
    else {register u32 off asm("r0");off=sub_080020F4()*0x14C;p=(u8 *)gUnk_03003CE0+off;*(u16 *)(p+0x11E)=value;}
}
static inline u32 t38_getFirstAE6C(u32 mask) {
    register u8 *base asm("r0");
    register u32 bits asm("r4");
    register u32 m asm("r1");
    if (sub_0800CE30()) {base=(u8 *)gUnk_03005CF4 + 0x80; m=mask << 14; bits=*(u32 *)base;}
    else {base=(u8 *)gUnk_03005CF4; m=mask << 14; bits=*(u32 *)(base+0x78);}
    return bits & m;
}
void sub_0803AE6C(u32 arg0) {
    s32 var_r0;
    s32 var_r4;
    register u8 *temp_r1 asm("r1");
    register u32 one asm("r4");
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u8 *temp_r2_2;
    register u32 endOffset asm("r2");

    {register u32 off asm("r1");register u32 bits asm("r0");register u8 *base asm("r0");
    off=0x14C * sub_080020F4();base=(u8 *)gUnk_03003CE0;temp_r1=(u8 *)off;temp_r1+= (u32)base;
    bits=*(u32 *)(temp_r1+0x30);one=1;bits|=one;*(u32 *)(temp_r1+0x30)=bits;}
    sub_0800D0F4();
    var_r4=t38_getFirstAE6C(one);
    var_r0=t38_getAE6C(0x100);
    if (var_r0 && !var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140278U);
    while (sub_0805EEFC((void *) temp_r4) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
        if(sub_0800CE30()) {
            register u8 *p asm("r1");register u32 mask asm("r2");register u32 bits asm("r0");
            p=(u8 *)gUnk_03005CF4+0x80; mask=0x4000;bits=*(u32 *)p;*(u32 *)p=bits|mask;
        } else {
            register u8 *p asm("r2");register u32 mask asm("r1");register u32 bits asm("r0");
            p=(u8 *)gUnk_03005CF4;mask=0x4000;bits=*(u32 *)(p+0x78);*(u32 *)(p+0x78)=bits|mask;
        }
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x32U);
        }
    } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140274U);
    while (sub_0805EEFC((void *) temp_r4_2) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
    }
    sub_0802939C(arg0, 0);
    sub_0802949C(arg0, 0);
    t38_setAE6C(arg0);
    while (sub_0805F184() != 0) sub_080003F0();
    temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x140275U);
    while (sub_0805EEFC((void *) temp_r4_3) == 0) sub_080003F0();
    if (sub_0805EF14((u8 *) temp_r4_3) != 0) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140276U);
    while (sub_0805EEFC((void *) temp_r4_4) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
    } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140277U);
    while (sub_0805EEFC((void *) temp_r4_5) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
    }
    sub_08029788(arg0);
    sub_0802939C(arg0, 3);
    endOffset = sub_080020F4();
    endOffset *= 0x14C;
    temp_r2_2 = (u8 *)gUnk_03003CE0 + endOffset;
    (*(u32 *)(temp_r2_2 + 0x30)) = (s32) ((*(u32 *)(temp_r2_2 + 0x30)) & ~1);
    sub_0800D108();
}
void sub_0803B194(void) {
    register u32 offset asm("r2");
    u8 *p;
    u32 flags;
    u32 msg;
    register u32 off asm("r1");
    register u8 *base asm("r0");
    register s32 raw asm("r0");
    s32 shifted;
    register u32 one asm("r0");
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)|=1;
    sub_0800D0F4();
    if(sub_0800CE30()) flags=*(u32 *)((u8 *)gUnk_03005CF4+0x7C);
    else flags=*(u32 *)((u8 *)gUnk_03005CF4+0x74);
    if(sub_0800CE30()) {base=(u8 *)gUnk_03005CF4;off=0x1C6;}
    else {base=(u8 *)gUnk_03005CF4;off=0x1BA;}
    raw=*(base+off);shifted=raw >> 2;one=1;
    if(shifted & one) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014C);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 0x200) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014B);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 256) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014A);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 128) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140149);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 64) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140148);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 32) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140147);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 16) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140146);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 8) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140145);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 4) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140144);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 2) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140143);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 1) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140142);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140141);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)&=~1;
    sub_0800D108();
}
