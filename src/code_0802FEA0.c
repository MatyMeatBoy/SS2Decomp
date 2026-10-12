#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0802FEA0);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08030480);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080308B4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08030B28);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08030F54);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803145C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031580);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080316A4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803188C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080319F0);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031B54);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031CB8);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031D88);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031E58);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031F28);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031FF8);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08032598);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803294C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08032DE4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08033198);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08033520);
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
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803A460);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803A8F0);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803AD74);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803AE6C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803B194);
