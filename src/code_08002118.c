#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002118);
u32 sub_08002164(void)
{
  u32 var_r1;
  u32 var_r2;
  if ((((u32) gUnk_030027D0) >> 1) & 1)
  {
    var_r1 = 0;
    var_r2 = 0;
    do
    {
      if (gUnk_03002730 & (0x100 << var_r1))
      {
        var_r2 += 1;
      }
      var_r1 += 1;
    }
    while (var_r1 <= 3U);
  }
  else
  {
    var_r2 = 1;
  }
  return var_r2;
}
s32 sub_080021A8(void)
{
  if (!(2 & gUnk_030027D0))
  {
    if (gUnk_030027D0)
    {
      return 0;
    }
    else
    {
      return 0;
    }
  }
  return (((u32) gUnk_030027D0) >> 3) & 1;
}
void sub_080021C4(void) {
    gUnk_030027D0 |= 4;
}
void sub_080021D4(void) {
    gUnk_030027D0 &= ~4;
}
s32 sub_080021E8(void)
{
  u32 new_var;
  if (!(2 & gUnk_030027D0))
  {
    if (1)
    {
    }
    if (gUnk_030027D0)
    {
      return 0;
    }
    else
    {
      return 0;
    }
  }
  new_var = (u32) gUnk_030027D0;
  return (new_var >> 4) & 1;
}
s32 sub_08002204(void)
{
  int new_var;
  new_var = 1;
  if (!(gUnk_030027D0 & 2))
  {
 do { if (new_var) { return new_var; } else { return new_var; } } while (0);
  }
  return (((u32) gUnk_03002730) >> 7) & 1;
}
s32 sub_08002228(void) {
    return gUnk_030027D0 & 1;
}
void *sub_08002238(s32 arg0) {
    return (&((struct Sz24 *)&gUnk_03002770)[arg0]);
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800224C);
void sub_08002298(s32 arg0) {
    gUnk_0300272C = arg0;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080022A4);
s32 sub_080022F4(void) {
    return ((u32) gUnk_030027D0 >> 1) & 1;
}
void sub_08002304(void) {
    if (2 & gUnk_030027D0) {
        gUnk_030027D0 &= ~8;
        sub_08000420(0x1F40);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800232C);
void sub_08002658(void) {
	u32 p = (u32)sub_08001494(0x400);
	s32 z;
	gUnk_030027E0.uC = sub_0800232C;
	gUnk_030027E0.u10 = p + 0x3FC;
	gUnk_030027E0.u20 = p;
	z = 0;
	gUnk_030027E0.u0 = z;
	gUnk_030027E0.u18 = z;
	gUnk_030027E0.u8 = 1;
	gUnk_030027E0.u24 = z;
	sub_08000274(&gUnk_030027E0, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002694);
void sub_08002A54(void) {
	u32 p = (u32)sub_08001494(0x200);
	gUnk_03002810.uC = sub_08002694;
	gUnk_03002810.u10 = p + 0x1FC;
	gUnk_03002810.u20 = p;
	gUnk_03002810.u24 = 0;
	gUnk_03002810.u8 = 1;
	sub_08000274(&gUnk_03002810, 0);
}
u32 sub_08002A8C(void)
{
    u32 r = 0;
    if (gUnk_03002838 == 2)
        r = 1;
    return r;
}
void sub_08002AA0(void)
{
	u32 sp8;
	u16 *p;
	u16 v;
	u32 z;
	sub_08000990(0, 1);
	sub_08000A34(1, 0, 0, 0, 1);
	sub_080009F8(0xF00, 0, 1);
	sub_080009C0(0x1F00, 0, 1);
	sp8 = (0xFFFF0000 & sp8) | 0x1C08;
	sub_08000AA8(0, (u16 *) (&sp8));
	z = 0;
	v = 0x1D01;
	*((u16 *) (&sp8)) = v;
	sub_08000AA8(1, (u16 *) (&sp8));
	v = 0x1E02;
	*((u16 *) (&sp8)) = v;
	sub_08000AA8(2, (u16 *) (&sp8));
	v = 0x1F03;
	*((u16 *) (&sp8)) = v;
	sub_08000AA8(3, (u16 *) (&sp8));
	sub_0800BCDC(0x19, 3, 0x06000000, 0, 0xF);
	sub_0800BCDC(0x14, 2, 0x06000000, 0, 0xF);
	sub_0800BCDC(0x13, 1, 0x06000000, 0, 0xF);
	sub_0800903C(4, 8, 1, 0, 8, z);
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002B70);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08003984);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08005A24);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08005B88);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800608C);
void sub_08006544(void) {
    gUnk_0300001C = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006550);
void sub_080065B0(void) {
    s32 temp_r0;

    if (sub_08000470(&gUnk_03002840) != 0) {
        sub_080003A8((s32) &gUnk_03002840);
    }
    temp_r0 = sub_08001494(0x1000);
    M2C_FIELD(&gUnk_03002840, M2C_UNK **, 0xC) = &sub_08002B70;
    M2C_FIELD(&gUnk_03002840, s32 *, 0x10) = (s32) (temp_r0 + 0xFFC);
    M2C_FIELD(&gUnk_03002840, s32 *, 0x20) = temp_r0;
    M2C_FIELD(&gUnk_03002840, s32 *, 8) = 1;
    M2C_FIELD(&gUnk_03002840, s32 *, 0x24) = 0;
    sub_08000274(&gUnk_03002840, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080065FC);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800663C);
void sub_08006694(void)
{
  short new_var;
  *((s16 *) 0x04000012) = (new_var = 0xFFFC);
}
void sub_080066A8(void) {
    *(s16 *)0x04000010 = (s16) gUnk_03003474;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080066BC);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006B2C);
void sub_08006B60(void) {
    m4aSoundMode(0x93D800);
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006B70);
void sub_08006BB4(u32 mode) {
    m4aSoundMode(mode);
}
void sub_08006BC0(void) {
    gUnk_03002870 = 0;
    gUnk_030028AC = 0;
    sub_08000940();
    m4aMPlayAllStop();
    sub_08006BF8();
loop_1:
    sub_080003F0();
    goto loop_1;
}
void sub_08006BE8(void) {
    m4aMPlayAllStop();
    sub_08006C14();
}
void sub_08006BF8(void) {
    if (gUnk_03002870 == 0) {
        gUnk_03002870 = 1;
        m4aSoundVSyncOn();
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006C14);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006C30);
void sub_08006C70(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if (((u32) temp_r1 <= 0x1ABU) && (gUnk_030028AC != 0)) {
        m4aSongNumStart((s32) temp_r1);
    }
}
void sub_08006C98(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrChange(temp_r1);
    }
}
void sub_08006CB4(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrContinue(temp_r1);
    }
}
void sub_08006CD0(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStop(temp_r1);
    }
}
void sub_08006CEC(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumContinue(temp_r1);
    }
}
void sub_08006D08(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStart((s32) temp_r1);
    }
}
