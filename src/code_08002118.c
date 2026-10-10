#include "global.h"

extern u8 gUnk_03002710[];

u8 *sub_08002118(u32 idx)
{
    u32 id;
    u32 i;
    u8 *p;
    if (gUnk_030027D0 & 2)
        id = (*(vu32 *)0x04000128 << 26) >> 30;
    else
        id = 0;
    i = 0;
    p = (u8 *)&gUnk_03002770;
    for (; i < 4; p += 0x18, i++) {
        if (idx == i) {
            if (i == id)
                return gUnk_03002710;
            return p;
        }
    }
    return 0;
}
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
void sub_0800224C(void)
{
    u32 want, got, i, v;
    u32 *p;
    if (gUnk_030027D0 & 2) {
        want = ((u32)gUnk_03002730 >> 8) & 0xF;
        p = &gUnk_03002730;
        do {
            sub_080003F0();
            got = 0;
            for (i = 0; i < 4; i++) {
                v = *p;
                if (v & (1 << i))
                    got |= 1 << i;
            }
        } while (got != want);
    }
}
void sub_08002298(s32 arg0) {
    gUnk_0300272C = arg0;
}
void sub_080022A4(void)
{
    gUnk_030027D0 = 1;
    do {
        CpuSet(gUnk_03002710, &gUnk_03002770, 0xC);
        gUnk_03002730 = 0x101;
        sub_080003F0();
    } while (!(gUnk_030027D0 & 0x40000000));
    gUnk_03002730 = 0;
    gUnk_030027D0 = 0x80000000;
}
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
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002658);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002694);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002A54);
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
void sub_08006550(u16 arg0, u16 arg1, u16 arg2) {
    s32 ret;
    u32 packed;

    ret = sub_08000470(&gUnk_030061E0);
    if (ret == 0) {
        packed = (arg1 << 16) | arg0;
        gUnk_030061E0.f20 = sub_08001494(0x400);
        gUnk_030061E0.fC = sub_08005A24;
        gUnk_030061E0.f10 = gUnk_030061E0.f20 + 0x3FC;
        gUnk_030061E0.f8 = 10;
        gUnk_030061E0.f24 = ret;
        (sub_08000274_)(&gUnk_030061E0, packed, arg2);
    }
}
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
extern void sub_08003984(void);
extern void sub_0800608C(void);
extern void sub_080066BC(void);
extern void sub_08005B88(void);
#define gUnk_03003480 (*(struct Unk030061E0 *)gUnk_03003480)

void sub_080065FC(s32 a, s32 b)
{
    u8 *p = sub_08001494(
        0x2000);
    gUnk_03003480.fC = sub_08003984;
    gUnk_03003480.f10 = p + 0x1FFC;
    gUnk_03003480.f20 = p;
    gUnk_03003480.f8 = 10;
    gUnk_03003480.f24 = 0;
    ((void (*)(void *, s32, s32))sub_08000274)((void *)&gUnk_03003480,
                 a, b);
}
void sub_0800663C(s32 a)
{
    u8 *p = sub_08001494(
        0x2000);
    if (gUnk_03002838 == 1)
        gUnk_03003480.fC = sub_0800608C;
    else
        gUnk_03003480.fC = sub_08005B88;
    gUnk_03003480.f10 = p + 0x1FFC;
    gUnk_03003480.f20 = p;
    gUnk_03003480.f8 = 10;
    gUnk_03003480.f24 = 0;
    sub_08000274((void *)&gUnk_03003480,
                 a);
}
void sub_08006694(void)
{
  short new_var;
  *((s16 *) 0x04000012) = (new_var = 0xFFFC);
}
void sub_080066A8(void) {
    *(s16 *)0x04000010 = (s16) gUnk_03003474;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080066BC);
void sub_08006B2C(void)
{
    u8 *p = sub_08001494(
        0x400);
    gUnk_030061E0.fC = sub_080066BC;
    gUnk_030061E0.f10 = p + 0x3FC;
    gUnk_030061E0.f20 = p;
    gUnk_030061E0.f8 = 1;
    gUnk_030061E0.f24 = 0;
    sub_08000274((void *)&gUnk_030061E0,
                 0);
}
void sub_08006B60(void) {
    m4aSoundMode(0x93D800);
}
void sub_08006B70(u32 a, u16 v)
{
    struct MusicPlayerInfo *p;
    switch (a) {
    case 0:
        p = &gUnk_030075C0;
        break;
    case 1:
        p = &gUnk_03007600;
        break;
    case 2:
        p = &gUnk_03007640;
        break;
    case 3:
        p = &gUnk_03007690;
        break;
    }
    m4aMPlayVolumeControl(p, 0xF,
                          v);
}
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
void sub_08006C14_(void) __asm__("sub_08006C14");
void sub_08006C14_(void)
{
    if (gUnk_03002870 != 0) {
        gUnk_03002870 = 0;
        m4aSoundVSyncOff();
    }
}
void sub_08006C30_(u16 s) __asm__("sub_08006C30");
void sub_08006C30_(u16 s)
{
    m4aMPlayFadeOut(&gUnk_030075C0,
                    s);
    m4aMPlayFadeOut(&gUnk_03007600,
                    s);
    m4aMPlayFadeOut(&gUnk_03007640,
                    s);
    m4aMPlayFadeOut(&gUnk_03007690,
                    s);
}
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
