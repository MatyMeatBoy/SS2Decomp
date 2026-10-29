#include "global.h"

extern u8 gUnk_03002710[];

extern void sub_08003984();
extern void sub_0800608C(void);
extern void sub_080066BC(void);
extern void sub_08005B88(void);
#define gUnk_03003480 (*(struct Unk030061E0 *)gUnk_03003480)

void sub_08006C14_(void) __asm__("sub_08006C14");

void sub_08006C30_(u16 s) __asm__("sub_08006C30");

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
    u32 *p;
    u32 want, got, i, v;
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
void sub_08002658(void)
{
    s32 temp_r2;

    temp_r2 = (s32) sub_08001494(0x400);
    gUnk_030027E0.uC = sub_0800232C;
    gUnk_030027E0.u10 = temp_r2 + 0x3FC;
    gUnk_030027E0.u20 = temp_r2;
    gUnk_030027E0.u0 = 0;
    gUnk_030027E0.u18 = 0;
    gUnk_030027E0.u8 = 1;
    gUnk_030027E0.u24 = 0;
    sub_08000274(&gUnk_030027E0.u0, 0);
}
#ifdef NONMATCHING
extern u16 gUnk_03001308;
extern u16 gUnk_0300130C;

void sub_08002694(void)
{
    u16 *sl;
    s32 var_r4;
    s32 var_r6;
    s32 var_r8;
    s32 var_r9;
    struct {
        u8 sp4[0x34];
        u16 sp38;
        u16 sp3A;
        u32 sp3C;
        u16 *sp40;
        u16 *sp44;
    } L;

    sub_0805F07C();
    sub_080003F0();
    sub_08006E64(1);
    L.sp44 = (u16 *) &L.sp3C;
    L.sp40 = &L.sp38;
    sl = &L.sp3A;
loop_1:
    sub_080003F4(0x14);
    if (*(u8 *) &gUnk_0300129C & 0x80) {
        sub_08000940();
    }
    if (sub_08002228() != 0) {
        sub_080020E0();
    }
loop_6:
    if (sub_08002228() != 0) {
        sub_080003F0();
        goto loop_6;
    }
    if (sub_08002228() == 0) {
        sub_0800208C(1);
    }
    var_r9 = 0;
    sub_080013F8();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_08000A34(1, 0, 0, 0, var_r9);
    sub_080009F8(0xF00, 0, 1);
    sub_080009C0(0x1200, 0, 1);
    L.sp3C = (L.sp3C & 0xFFFF0000) | 0x1C08;
    sub_08000AA8(0, L.sp44);
    *(u16 *) &L.sp3C = 0x1D00;
    sub_08000AA8(1, L.sp44);
    gUnk_03001250[0] = 0;
    gUnk_03001250[1] = 0;
    gUnk_03001250[2] = 0;
    gUnk_03001250[3] = 0;
    gUnk_03001250[4] = 0;
    gUnk_03001250[5] = 0;
    gUnk_03001250[6] = 0;
    gUnk_03001250[7] = 0;
    sub_0800BCDC(0x37, 1, 0x06000000, 0, 0x10);
    if ((u32) gUnk_03003470 <= 4U) {
        switch (gUnk_03003470) {
        case 0:
            sub_08065158(L.sp4, 0x50000, 0xE, 1, 0);
            break;
        case 1:
            sub_08065158(L.sp4, 0x5015A, 0xE, 1, 0);
            break;
        case 2:
            sub_08065158(L.sp4, 0x50158, 0xE, 1, 0);
            break;
        case 3:
            sub_08065158(L.sp4, 0x50159, 0xE, 1, 0);
            break;
        case 4:
            sub_08065158(L.sp4, 0x50157, 0xE, 1, 0);
            break;
        }
    }
    sub_080003F0();
    sub_080003F0();
    gUnk_03002838 = 0;
    var_r8 = 1;
    var_r6 = 0;
    *L.sp40 = 0;
    *sl = 0;
    sub_08006C70(0xC5);
    for (var_r4 = 0; var_r4 <= 0x13; var_r4++) {
        sub_080003F0();
    }
    if (sub_0801AB24() != 0) {
        sub_0801AB50(6);
    } else {
        sub_0801AA34(6);
    }
    while (var_r8 != 0) {
        if (var_r6 == 0) {
            if ((*(u16 *) &gUnk_03001324 & 8)) {
                var_r6 = 1;
                sub_08006D08(0xF);
            }
        } else {
            if (gUnk_03001308 & 0x80) {
                sub_08006D08(0xE);
                gUnk_03002838 = 1;
                goto block_28F8;
            }
            if (gUnk_03001308 & 0x40) {
                sub_08006D08(0xE);
                gUnk_03002838 = 0;
                goto block_28F8;
            }
            if ((*(u16 *) &gUnk_03001324 & 1)) {
                if (!(gUnk_0300130C & 8) || sub_08092080() == 0) {
                    sub_08006D08(0xF);
                    var_r8 = 0;
                } else {
                    gUnk_03002838 = 3;
                    sub_08006D08(0xF);
                    goto done_293E;
                }
            }
        }
block_28F8:
        if (var_r6 != 0) {
            sub_08065230(L.sp4, 0x78, 0x82, 0, (u16) gUnk_03002838);
        } else {
            sub_08065370(L.sp4, 4, (s32) L.sp40, (s32) sl, 1);
            sub_08065230(L.sp4, 0x78, 0x88, 4, *L.sp40);
        }
        sub_080003F0();
    }
done_293E:
    sub_08006C30(2);
    if (var_r6 != 0) {
        *L.sp40 = 0;
        *sl = 0;
    }
    sub_0801ABE8(3);
    while (sub_0801AAE0() == 0) {
        if (var_r6 != 0) {
            if (var_r9 == 0) {
                sub_08065370(L.sp4, (u16) (gUnk_03002838 + 1), (s32) L.sp40, (s32) sl, 1);
                sub_08065230(L.sp4, 0x78, 0x64, (u16) (gUnk_03002838 + 1), *L.sp40);
            } else {
                sub_08065230(L.sp4, 0x78, 0x64, 0, (u16) gUnk_03002838);
            }
        } else {
            sub_08065370(L.sp4, 4, (s32) L.sp40, (s32) sl, 1);
            sub_08065230(L.sp4, 0x78, 0x70, 4, *L.sp40);
        }
        sub_08065230(L.sp4, 0x78, 0x5A, 3, 0);
        sub_080003F0();
    }
    sub_08065204(L.sp4);
    sub_0805F07C();
    if (gUnk_03002838 == 1) {
        if (sub_08002228() == 0) {
            sub_0800208C(1);
        }
        sub_080065B0();
        goto loop_1;
    }
    if ((u32) gUnk_03002838 < 1U) {
        if (sub_08002228() != 0) {
            sub_080020E0();
        }
        while (sub_08002228() != 0) {
            sub_080003F0();
        }
        sub_0800208C(0);
        sub_080065B0();
        goto loop_1;
    }
    if (gUnk_03002838 == 2) {
        sub_08088914();
        goto loop_1;
    }
    if (gUnk_03002838 == 3) {
        sub_080920E4();
    }
    goto loop_1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002694);
#endif
void sub_08002A54(void)
{
    s32 temp_r2;

    temp_r2 = (s32) sub_08001494(0x200);
    gUnk_03002810.uC = sub_08002694;
    gUnk_03002810.u10 = temp_r2 + 0x1FC;
    gUnk_03002810.u20 = temp_r2;
    gUnk_03002810.u24 = 0;
    gUnk_03002810.u8 = 1;
    sub_08000274(&gUnk_03002810.u0, 0);
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
#ifdef NONMATCHING
union Bg3984 { struct { u32 cnt:16; u32 spare:16; } bits; u16 half; u32 word; };
struct Reg3984 { u16 h0,v0,h1,v1,h2,v2,h3,v3; };
extern struct Reg3984 reg3984 asm("gUnk_03001250");
extern u16 keys3984 asm("gUnk_03001324");
M2C_UNK memcpy(u8 *, s32 *, s32);                   /* extern */
M2C_UNK sub_080009F8(s32, s32, s32);                /* extern */
void sub_08006550(u16, u16, u16);                /* extern */
M2C_UNK sub_0801A3D0(u8 *, u16, u16);               /* extern */
M2C_UNK sub_0801A664(s32, s32);                     /* extern */
M2C_UNK sub_0801A6D4(s32);                          /* extern */
M2C_UNK sub_0801AB50(s32);                          /* extern */
M2C_UNK sub_08058688(s32);                          /* extern */
M2C_UNK sub_08065158(u8 *, s32, s32, s32, s32);     /* extern */
M2C_UNK sub_08065264(u8 *, s32, s32, s32, s32);     /* extern */
extern u16 gUnk_03001308;
extern s32 gUnk_080B99D4;
extern M2C_UNK gUnk_08366E0C;
extern M2C_UNK gUnk_08366E0E;
extern u16 gUnk_08366E34[];
extern u16 gUnk_08366EFC[];
extern u16 gUnk_08366FC4[];
struct Sprite3984 { u8 first[12]; u8 *data; u8 rest[36]; };
struct Resource3984 { u32 id; u8 rest[0x54]; };
extern struct Resource3984 resource3984[] asm("gUnk_08479140");

void sub_08003984(u8 *arg0, s32 arg1) {
    u32 gridResultC5;
    u32 gridResult2C5;
    s32 language = 2;
    s32 nextChar03984, nextChar13984, nextChar23984, nextChar33984, nextChar43984;
    s32 drawOffset3984;
    s32 cursorYStep3984;
    u32 keyboardGap3984;
    s32 setupZero3984;
    u32 drawOne3984, ninthZero3984;
    u32 cleanupZero3984, cleanupMask3984, cleanupEnd3984;
    u32 firstName3984;
    u32 deleteChar3984;
    u32 deleteMaskC6;
    u32 selectionZeroC6;
    u32 nameZero3984;
    s32 textWidth3984;
    u32 input3984;
    u16 navKeys3984;
    u16 widths[10], heights[10], x[10], y[4];
    struct Sprite3984 icons[9], labels[9];
    struct Sprite3984 cursor;
    u8 panel[0x34], pair[4], buffer[0x21], rows3984[2][0x21];
    u16 lastWidth;
    u16 lastHeight;
    union Bg3984 bg;
    u16 state;
    u16 selection;
    u16 current;
    u16 next;
    u16 index;
    u16 substate;
    u32 prev;
    s32 cursorX;
    s32 cursorY;
    u8 *handle;
    u8 *text;
    u32 status;
    s32 item;
    s32 phase;
    u32 count;
    u32 oldCount;
    u16 timer;
    s32 targetX;
    s32 targetY;
    s32 offsetX;
    s32 offsetY;
    s32 newX;
    s32 newY;
    u16 *menuWidthsC6, *menuHeightsC6;
    u16 *var_r1_8;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_6;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r3_2;
    s32 temp_r3_4;
    s32 temp_r3_5;
    s32 temp_r4_11;
    s32 temp_r4_15;
    s32 temp_r4_16;
    s32 temp_r4_18;
    s32 temp_r4_9;
    s32 temp_r6_6;
    s32 var_r0_2;
    s32 var_r0_7;
    s32 var_r1_7;
    s32 var_r3;
    s32 var_r3_4;
    s32 var_r5;
    u16 var_r6;
    u16 *temp_r4_10;
    u16 *temp_r5_14;
    u16 *temp_r5_3;
    u16 *temp_r5_4;
    u16 *temp_r5_5;
    u16 *temp_r5_6;
    u16 *var_r0;
    u16 *var_r0_3;
    u16 *var_r1_3;
    u16 *var_r1_4;
    u16 *var_r1_5;
    u16 *var_r2;
    u16 *var_r4_2;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_14;
    u16 temp_r0_19;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r1_5;
    u32 temp_r2_2;
    u16 temp_r4_14;
    u16 temp_r4_22;
    u32 temp_r5_10;
    u16 var_r0_10;
    u16 var_r0_11;
    u16 var_r0_12;
    u16 var_r0_13;
    u16 var_r0_14;
    u16 var_r0_8;
    u16 var_r0_9;
    u16 var_r1_6;
    u16 var_r2_3;
    u16 var_r4;
    u16 var_r5_2;
    u16 var_r9;
    u32 temp_r0_18;
    u32 temp_r0_6;
    u32 temp_r0_7;
    u32 temp_r0_8;
    u32 temp_r0_9;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r4_12;
    u32 temp_r4_13;
    u32 temp_r4_20;
    u32 temp_r4_21;
    u32 temp_r4_2;
    u32 temp_r4_8;
    u32 temp_r5_9;
    u32 temp_r6;
    u32 temp_r6_2;
    u32 temp_r6_7;
    u32 temp_r6_8;
    u32 var_r3_3;
    u32 var_r8;
    u8 *temp_r0_15;
    u8 *temp_r1_4;
    u8 *temp_r1_7;
    u8 *temp_r2_4;
    u8 *temp_r2_5;
    u8 *temp_r2_6;
    u8 *temp_r3;
    u8 *temp_r3_3;
    register u8 *temp_r4_19 asm("r4");
    u8 *temp_r4_7;
    u8 *temp_r5;
    u8 *temp_r5_13;
    u8 *temp_r5_2;
    u8 *temp_r6_3;
    u8 *temp_r6_4;
    u8 *temp_r6_5;
    u8 *var_r0_6;
    u8 *var_r2_2;
    u8 *var_r3_2;
    u8 *var_r5_3;
    u8 *var_r7;
    u32 temp_r0_10;
    u32 temp_r0_11;
    u8 temp_r0_16;
    u8 temp_r0_17;
    u8 temp_r0_22;
    u8 var_r1_2;
    void *temp_r0_3;

    memcpy(&pair[0], &gUnk_080B99D4, 2);
    memcpy(&cursor, sub_080653CC(), 0x34);
    switch (gUnk_03003470) {
    case 0: sub_08065158(panel, 0x50002, 0, 0x80000000, 0); break;
    case 1: sub_08065158(panel, 0x5015B, 0, 0x80000000, 0); break;
    case 2: sub_08065158(panel, 0x5015C, 0, 0x80000000, 0); break;
    case 3: sub_08065158(panel, 0x5015D, 0, 0x80000000, 0); break;
    case 4: sub_08065158(panel, 0x5015E, 0, 0x80000000, 0); break;
    }
    sub_0801A6D4(0);
    reg3984.v0 = setupZero3984 = 0;
    reg3984.h0 = setupZero3984;
    reg3984.v1 = setupZero3984;
    reg3984.h1 = setupZero3984;
    reg3984.v2 = setupZero3984;
    reg3984.h2 = setupZero3984;
    reg3984.v3 = setupZero3984;
    reg3984.h3 = setupZero3984;
    sub_0801A664(2, 0x11);
    bg.bits.cnt = 0x1B00;
    sub_08000AA8(1U, &bg.half);
    bg.half = 0x1F03;
    sub_08000AA8(3U, &bg.half);
    {
        register u32 vramC7 asm("r4") = 0x06000000;
        register u32 paletteC7 asm("r5") = 0xF;
        sub_0800BCDC(0x15, 3, vramC7, 0U, paletteC7);
        sub_0800BCDC(0x16, 2, vramC7, 0U, paletteC7);
        sub_0800B650(0x3B, 0x1B, vramC7, 0U, paletteC7);
        sub_0800B650(0x40000017, 0x1A, vramC7, 0U, paletteC7);
        sub_0800B650(0x12, 0x19, vramC7, 0U, paletteC7);
        sub_0800B650(0x18, 0x18, vramC7, 0U, paletteC7);
    }
    sub_0800903C(4, 8, 1, 8, 0x10, setupZero3984);
    sub_080009F8(0x200, 0, 1);
    handle = ((u8 *(*)(s32))sub_08007290)(0x10023);
    var_r6 = 0;
    do {
        temp_r5 = (u8 *)&icons[var_r6];
        sub_08065158(temp_r5, var_r6 + 0x5006B, 0, 1, setupZero3984);
        sub_08065158((u8 *)&labels[var_r6], resource3984[var_r6].id, 0, 1, setupZero3984);
        M2C_FIELD(temp_r5, s8 *, 0x1C) = var_r6;
        temp_r1 = var_r6 * 2;
        x[var_r6] = setupZero3984;
        {
            register u32 initWidthC8 asm("r0") = (u32)widths;
            initWidthC8 += temp_r1;
            *(u16 *)initWidthC8 = setupZero3984;
        }
        heights[var_r6] = setupZero3984;
        var_r6 = (u16) (var_r6 + 1);
    } while ((u32) var_r6 <= 8U);
    sub_080003F0();
    sub_080003F0();
    sub_0801AB50(3);
    ((u8 *(*)(s32))sub_08007290)(0x140441);
    substate = 0;
    index = 0;
    state = 0;
    selection = 0xA;
    prev = 8;
    timer = 0;
    lastHeight = (u16) state;
    lastWidth = (u16) state;
    temp_r3 = ((u8 *)&y[2]);
    M2C_FIELD(temp_r3, u16 *, 0) = (u16) state;
    temp_r5_2 = ((u8 *)&y[0]);
    M2C_FIELD(temp_r5_2, u16 *, 0) = (u16) state;
    M2C_FIELD(temp_r3, u16 *, 2) = (u16) state;
    M2C_FIELD(temp_r5_2, u16 *, 2) = (u16) state;
    current = 0;
    cursorX = 0;
    cursorY = 0;
    phase = 0;
    item = 0;
    status = 0;
    oldCount = 0;
    newX = (s32) M2C_FIELD(((u8 *)&gUnk_08366E0C), u16 *, 0);
    newY = (s32) M2C_FIELD(((u8 *)&gUnk_08366E0C), u16 *, 2);
    targetX = (s32) M2C_FIELD(((u8 *)&gUnk_08366E0C), u16 *, 0);
    targetY = newY;
    sub_08058688(0x71);
    while (1) {
    temp_r0 = sub_0801AAE0();
    if (temp_r0 == 0) {
        keys3984 = (u16) temp_r0;
    }
    sub_08000AF0(0x19U, cursor.data + 0x120, 1U);
    temp_r4_2 = timer;
    if (temp_r4_2 > 6U) goto block_374;
    switch (temp_r4_2) {                            /* switch 2 */
    case 0:                                         /* switch 2 */
        if (keys3984 == 1) {
            sub_0805865C(0xF);
            reg3984.h0 = 0;
            timer = 1;
            sub_0801A664(0, 5);
            sub_08001108(0x1FU);
            sub_0800115C((u32) sub_080066A8);
            bg.half = 0x1B00;
            sub_08000AA8(1U, &bg.half);
            sub_080009C0(0x200, 0, 1);
            sub_08000D8C();
        } else {
            var_r7 = ((u8 *(*)(s32))sub_08007290)(0x140441);
            var_r7 += 2;
            rows3984[0][0] = 0;
            rows3984[1][0] = 0;
            var_r8 = 0;
            for (; var_r8 <= 1U; var_r8++) {
                var_r6 = 0;
                var_r1_2 = *var_r7;
                if (var_r1_2 != 0xFD) {
                    do {
                        rows3984[var_r8][var_r6] = var_r1_2;
                        if (var_r1_2 == 0xFF) {
                            var_r7++;
                            break;
                        }
                        var_r6++;
                        var_r7++;
                        var_r1_2 = *var_r7;
                    } while (var_r1_2 != 0xFD);
                }
                rows3984[var_r8][var_r6] = 0xFD;
                if (var_r6 == 0)
                    break;
                temp_r4_7 = rows3984[var_r8];
                sub_0801A3D0(temp_r4_7, (u16)(0xF - ((u32)sub_0801A638(temp_r4_7) >> 1)), (u16)(var_r8 * 2));
                if (*var_r7 == 0xFD)
                    break;
            }
            if (status++ <= 0x1DU) {
                item = 1;
            } else if ((u32) status > 0x1DU) {
                item = 0;
            }
            if ((u32) status > 0x28U) {
                status = 0;
            }
            if (item == 0) {

            } else {
                sub_0801A3D0(&pair[0], 0x1CU, (u16) (var_r8 * 2));
            }
        }
        goto block_374;
    case 1:                                         /* switch 2 */
        temp_r6 = state;
        switch (temp_r6) {                          /* switch 3; irregular */
        case 0:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            temp_r2_2 = 0x10 & navKeys3984;
            if (temp_r2_2 != 0) {
                state = 1;
block_90:
                sub_0805865C(0xE);
                var_r2 = &widths[1];
                var_r1_3 = &heights[1];
block_91:
                *var_r1_3 = 0;
                *var_r2 = 0;
            } else {
                var_r4 = 0x60 & navKeys3984;
                if (var_r4 != 0) {
                    state = 6;
                    if (arg1 != 0) {
                        state = 8;
                    }
                    temp_r1_2 = state;
                    menuWidthsC6 = &widths[temp_r1_2];
                    menuHeightsC6 = &heights[temp_r1_2];
                    *menuHeightsC6 = temp_r2_2;
                    *menuWidthsC6 = temp_r2_2;
                    sub_0805865C(0xE);
                } else if (!(0x80 & navKeys3984)) {

                } else {
                    state = 4;
                    sub_0805865C(0xE);
                    var_r1_4 = &widths[4];
                    var_r0 = &heights[4];
block_98:
                    *var_r0 = var_r4;
                    *var_r1_4 = var_r4;
                }
            }
            break;
        case 1:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            if (0x10 & navKeys3984) {
                state = 5;
                sub_0805865C(0xE);
                var_r2 = &widths[5];
                var_r1_3 = &heights[5];
                goto block_91;
            }
            var_r4 = 0x20 & navKeys3984;
            if (var_r4 != 0) {
                state = 0;
                sub_0805865C(0xE);
                var_r0 = &widths[0];
                heights[0] = (u16) state;
                *var_r0 = (u16) state;
            } else if (!(0x80 & navKeys3984)) {

            } else {
                state = 7;
                sub_0805865C(0xE);
                var_r1_4 = &widths[7];
                var_r0 = &heights[7];
                goto block_98;
            }
            break;
        case 2:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            var_r4 = 0x50 & navKeys3984;
            if (var_r4 != 0) {
                state = 6;
                sub_0805865C(0xE);
                var_r2 = &widths[6];
                var_r1_3 = &heights[6];
                goto block_91;
            }
            if (!(0x80 & navKeys3984)) {

            } else {
                state = 3;
                sub_0805865C(0xE);
                var_r1_4 = &widths[3];
                var_r0 = &heights[3];
                goto block_98;
            }
            break;
        case 3:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            var_r4 = 0x10 & navKeys3984;
            if (var_r4 != 0) {
                state = 4;
                sub_0805865C(0xE);
                var_r2 = &widths[4];
                var_r1_3 = &heights[4];
                goto block_91;
            }
            var_r5_2 = 0x20 & navKeys3984;
            if (var_r5_2 != 0) {
                state = 2;
                sub_0805865C(0xE);
                var_r1_4 = &widths[2];
                var_r0 = &heights[2];
                goto block_98;
            }
            if (0x40 & navKeys3984) {
                state = 4;
                sub_0805865C(0xE);
                var_r1_5 = &widths[4];
                var_r0_3 = &heights[4];
block_102:
                *var_r0_3 = var_r5_2;
                *var_r1_5 = var_r5_2;
            }
            break;
        case 4:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            var_r4 = 0x10 & navKeys3984;
            if (var_r4 != 0) {
                state = 0;
                sub_0805865C(0xE);
                var_r0 = &widths[0];
                heights[0] = (u16) state;
                *var_r0 = (u16) state;
            } else {
                var_r5_2 = 0x20 & navKeys3984;
                if (var_r5_2 != 0) {
                    state = 2;
                    ((s32 (*)(s32))sub_0805865C)(0xE);
                    var_r1_4 = &widths[2];
                    var_r0 = &heights[2];
                    goto block_98;
                }
                var_r4 = 0x40 & navKeys3984;
                if (var_r4 != 0) {
                    state = 6;
                    if (arg1 != 0) {
                        state = 8;
                    }
                    ((s32 (*)(s32))sub_0805865C)(0xE);
                    temp_r4_8 = state;
                    var_r1_5 = &(&widths[0])[temp_r4_8];
                    var_r0_3 = &heights[temp_r4_8];
                    goto block_102;
                }
                if (!(0x80 & navKeys3984)) {

                } else {
                    state = 3;
                    ((s32 (*)(s32))sub_0805865C)(0xE);
                    var_r1_4 = &widths[3];
                    var_r0 = &heights[3];
                    goto block_98;
                }
            }
            break;
        case 5:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            var_r4 = 0x20 & navKeys3984;
            if (var_r4 != 0) {
                state = 1;
                goto block_90;
            }
            if (!(0x80 & navKeys3984)) {

            } else {
                state = 7;
                ((s32 (*)(s32))sub_0805865C)(0xE);
                var_r1_4 = &widths[7];
                var_r0 = &heights[7];
                goto block_98;
            }
            break;
        case 6:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            var_r5_2 = 0x20 & navKeys3984;
            if (var_r5_2 != 0) {
                state = 2;
                sub_0805865C(0xE);
                var_r2 = &widths[2];
                var_r1_3 = &heights[2];
                goto block_91;
            }
            var_r4 = 0x10 & navKeys3984;
            if (var_r4 != 0) {
                temp_r2_3 = arg1;
                state = (u32) ((s32) ((0 - temp_r2_3) | temp_r2_3) >> 0x1F);
                temp_r6_2 = state & 8;
                state = temp_r6_2;
                sub_0805865C(0xE);
                var_r1_5 = &(&widths[0])[temp_r6_2];
                var_r0_3 = &heights[temp_r6_2];
                goto block_102;
            }
            if (!(0x80 & navKeys3984)) {

            } else {
                state = 4;
                ((s32 (*)(s32))sub_0805865C)(0xE);
                var_r1_4 = &widths[4];
                var_r0 = &heights[4];
                goto block_98;
            }
            break;
        case 7:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            var_r4 = 0x20 & navKeys3984;
            if (var_r4 != 0) {
                state = 1;
                goto block_90;
            }
            if (0x40 & navKeys3984) {
                state = 5;
                sub_0805865C(0xE);
                var_r1_4 = &widths[5];
                var_r0 = &heights[5];
                goto block_98;
            }
            break;
        case 8:                                     /* switch 3 */
            navKeys3984 = gUnk_03001308;
            var_r4 = 0x10 & navKeys3984;
            if (var_r4 != 0) {
                state = 0;
                sub_0805865C(0xE);
                var_r0 = &widths[0];
                heights[0] = (u16) state;
                *var_r0 = (u16) state;
            } else {
                var_r5_2 = 0x20 & navKeys3984;
                if (var_r5_2 != 0) {
                    state = 6;
                    sub_0805865C(0xE);
                    var_r1_4 = &widths[6];
                    var_r0 = &heights[6];
                    goto block_98;
                }
                if (0x80 & navKeys3984) {
                    state = 4;
                    sub_0805865C(0xE);
                    var_r1_5 = &widths[4];
                    var_r0_3 = &heights[4];
                    *var_r0_3 = var_r5_2;
                    *var_r1_5 = var_r5_2;
                }
            }
            break;
        }
        input3984 = keys3984;
        if (input3984 == 1) {
            sub_0805865C(0xF);
            selectionZeroC6 = 0;
            M2C_FIELD(arg0, u8 *, 1) = (u8) state;
            reg3984.h0 = selectionZeroC6;
            gUnk_03003474 = selectionZeroC6;
            sub_0801A664(0, 0xA);
            timer = 3;
            var_r7 = ((u8 *(*)(s32))sub_08007290)((state + 0x454) | 0x140000);
            var_r7 += 2;
            var_r6 = 0;
            firstName3984 = *var_r7;
            var_r5_3 = arg0 + 0x10;
            if (firstName3984 == 0xFF) {
                M2C_FIELD(arg0, u8 *, 0x10) = 0xFD;
            } else {
loop_107:
                var_r5_3[var_r6] = *(var_r7 + var_r6);
                var_r6 += 1;
                if ((u32) var_r6 <= 8U) {
                    if (*(var_r7 + var_r6) == 0xFF) {
                        var_r5_3[var_r6] = 0xFD;
                    } else {
                        goto loop_107;
                    }
                }
            }
            var_r5_3[(nextChar03984 = var_r6 + 1)] = nameZero3984 = 0;
            selection = 0xA;
            sub_08000E48();
            sub_080009F8(0x200, 0, 1);
            if (state != 8) {

            } else {
                sub_0801A664(0, 2);
                reg3984.h0 = nameZero3984;
                var_r9 = (u16) sub_0801A638(var_r5_3);
                next = var_r9;
                current = 0;
                bg.half = 0xD800;
                sub_08000AA8(1U, &bg.half);
                sub_080009C0(0x200, 0, 1);
                sub_0800903C(0xC, 0x28, 1, 8, 6, (s32) current);
                sub_08006550(0x10, 9, 0x32);
                timer = 5;
            }
            goto block_374;
        } else if (input3984 == 2) {
            sub_080009F8(0x200, 0, 1);
            sub_0805865C(0x10);
            sub_0801A664(0, 0xA);
            sub_0801ABE8(6);
            while (sub_0801AAE0() == 0) {
                sub_080003F0();
            }
            sub_08000E48();
            sub_080003F0();
            sub_080003F0();
            goto finish3984;
        } else {
            var_r7 = ((u8 *(*)(s32))sub_08007290)((state + 0x454) | 0x140000);
            var_r7 += 2;
            {
                register u32 titleWidthC8 asm("r0");
                register u32 titleBaseC8 asm("r2");
                register u32 titleIndexC8 asm("r4");
                register u16 *titleXC8 asm("r5");
                register u16 *titleYC8 asm("r4");
                register s32 titleXValueC8 asm("r1");
                titleWidthC8 = sub_0801A638(var_r7);
                titleBaseC8 = (u32)&gUnk_08366E0C;
                titleIndexC8 = state * 4;
                titleXC8 = (u16 *)(titleIndexC8 + titleBaseC8);
                titleXValueC8 = *titleXC8 - titleWidthC8 * 4;
                titleBaseC8 += 2;
                titleIndexC8 = titleIndexC8 + titleBaseC8;
                titleYC8 = (u16 *)titleIndexC8;
                ((void (*)(const u8 *, s32, s32))sub_0801A764)(var_r7, titleXValueC8, *titleYC8 - 0x28);
                newX = *titleXC8;
                newY = *titleYC8;
            }
            temp_r4_11 = state * 2;
            var_r7 = ((u8 *(*)(s32))sub_08007290)((temp_r4_11 + 0x42F) | 0x140000);
            var_r7 += 2;
            sub_0801A3D0(var_r7, (u16) (0xF - ((u32) sub_0801A638(var_r7) >> 1)), 1U);
            temp_r1_3 = substate;
            substate = (u32) (u16) (temp_r1_3 + 1);
            if ((u32) prev <= temp_r1_3) {
                substate = 0;
                temp_r0_5 = index + 1;
                index = (u32) temp_r0_5;
                if ((u32) temp_r0_5 > 7U) {
                    index = 0;
                    prev = sub_080008C8();
                    prev &= 7;
                    prev += 1;
                }
            }
            if (substate == 0) {
                sub_08001348(handle + ((index << 7) + 0x7000), (void *)0x06007000, 0x80U);
            }
            temp_r5_9 = newX - targetX;
            if (selection != state) {
                count = 0;
                phase = 0;
                status = 0;
                oldCount = 0;
                gUnk_03003474 = (s32) status;
                var_r6 = 0;
                do {
                    (&buffer[0])[var_r6] = 0xFD;
                    var_r6 += 1;
                } while ((u32) var_r6 <= 0x1FU);
                text = ((u8 *(*)(s32))sub_08007290)((temp_r4_11 + 0x430) | 0x140000);
                text += 2;
                selection = state;
            }
            temp_r0_6 = status;
            status = temp_r0_6 + 1;
            if (temp_r0_6 > 2U) {
                status = 0;
                temp_r1_4 = text;
                if (*temp_r1_4 == 0xFF) {
                    text = temp_r1_4 + 1;
                }
                temp_r3_3 = text;
                if (*temp_r3_3 == 0xFE) {
                    text = temp_r3_3 + 3;
                }
                if (*text == 0xFD) {
                    text = ((u8 *(*)(s32))sub_08007290)((temp_r4_11 + 0x430) | 0x140000);
                    text += 2;
                }
                temp_r4_12 = oldCount;
                temp_r6_3 = text;
                (&buffer[0])[temp_r4_12] = *temp_r6_3;
                text = temp_r6_3 + 1;
                temp_r4_13 = temp_r4_12 + 1;
                oldCount = temp_r4_13;
                if (temp_r4_13 > 0x1FU) {
                    oldCount = 0;
                    buffer[0x20] = 0xFD;
                    phase = 1;
                }
            }
            if (phase != 0) {
                gUnk_03003474 += 1;
                temp_r0_7 = count + 1;
                count = temp_r0_7;
                if (temp_r0_7 > 7U) {
                    count = 0;
                    status = 0xA;
                } else {
                    status = 0;
                }
            }
            sub_0801A3D0(&buffer[0], 0U, 4U);
            targetX = targetX + ((s32) (temp_r5_9 + (temp_r5_9 >> 0x1F)) >> 1);
            temp_r3_4 = targetY;
            temp_r0_8 = newY - temp_r3_4;
            targetY = temp_r3_4 + ((s32) (temp_r0_8 + (temp_r0_8 >> 0x1F)) >> 1);
            if (__builtin_abs(newX - targetX) <= 1) {
                targetX = newX;
            }
            if (__builtin_abs(newY - targetY) <= 1) {
                targetY = newY;
            }
            if (state == 7) {
                sub_08065230(&cursor, targetX - 0xA, targetY - 4, 0x15U, 0);
            } else {
                sub_08065230(&cursor, targetX, targetY, 0xBU, 0);
            }
            goto block_374;
        }
        break;
    case 2:                                         /* switch 2 */
        if (keys3984 == 1) {
            sub_0805865C(0xF);
            reg3984.h0 = 0;
            timer = 3;
            sub_0801A664(0, 5);
        } else {
            temp_r0_9 = status;
            status = temp_r0_9 + 1;
            if (temp_r0_9 <= 0x1DU) {
                item = 1;
            } else if ((u32) status > 0x1DU) {
                item = 0;
            }
            if ((u32) status > 0x28U) {
                status = 0;
            }
            if (item == 0) {

            } else {
                var_r0_6 = &pair[0];
                var_r1_6 = 0x1C;
                goto block_206;
            }
        }
        goto block_374;
    case 3:                                         /* switch 2 */
        temp_r5_10 = 0x20 & gUnk_03001308;
        if (temp_r5_10 != 0) {
            cursorX = 5;
            sub_0805865C(0xE);
            temp_r6_4 = arg0;
            temp_r0_10 = M2C_FIELD(temp_r6_4, u8 *, 2) - 1;
            M2C_FIELD(temp_r6_4, u8 *, 2) = temp_r0_10;
            if (!(temp_r0_10 & 0x80)) {

            } else {
                M2C_FIELD(temp_r6_4, u8 *, 2) = 9U;
            }
            goto block_175;
        }
        temp_r4_14 = 0x10 & gUnk_03001308;
        if (temp_r4_14 != 0) {
            cursorY = 5;
            sub_0805865C(0xE);
            temp_r6_5 = arg0;
            temp_r0_11 = M2C_FIELD(temp_r6_5, u8 *, 2) + 1;
            M2C_FIELD(temp_r6_5, u8 *, 2) = temp_r0_11;
            if ((u32) (u8) temp_r0_11 > 9U) {
                M2C_FIELD(temp_r6_5, u8 *, 2) = (u8) temp_r5_10;
            }
            goto block_175;
        }
        if (keys3984 == 1) {
            sub_0805865C(0xF);
            sub_0801A664(0, 2);
            reg3984.h0 = temp_r4_14;
            var_r9 = 0;
            temp_r0_12 = (u16) sub_0801A638(arg0 + 0x10);
            next = (u32) temp_r0_12;
            if ((u32) temp_r0_12 > 7U) {
                next = 7;
            }
            bg.half = 0xD800;
            sub_08000AA8(1U, &bg.half);
            sub_080009C0(0x200, 0, 1);
            sub_0800903C(0xC, 0x28, 1, 8, 6, 0);
            sub_08006550(0x10, 9, 0x32);
            timer = 5;
            current = 0;
        } else {
            if (keys3984 == 2) {
                sub_0805865C(0x10);
                timer = 0;
                M2C_FIELD(arg0, s8 *, 2) = 0;
            }
block_175:
            var_r7 = ((u8 *(*)(s32))sub_08007290)((M2C_FIELD(arg0, u8 *, 2) + 0x4C5) | 0x140000);
            if (state != 2) {
                register u32 menuIndexC9 asm("r2");
                u32 menuLanguageC9;
                temp_r5_13 = var_r7 + 2;
                {
                    register u32 titleWidthC9 asm("r0");
                    register u32 titleBaseC9 asm("r2");
                    u32 titleIndexC9;
                    register u32 titleXValueC9 asm("r1");
                    titleWidthC9 = sub_0801A638(temp_r5_13);
                    titleBaseC9 = (u32)&gUnk_08366E0C;
                    titleIndexC9 = state * 4;
                    titleXValueC9 = titleIndexC9 + titleBaseC9;
                    titleXValueC9 = *(u16 *)titleXValueC9;
                    titleXValueC9 -= titleWidthC9 * 4;
                    titleBaseC9 += 2;
                    titleBaseC9 = titleIndexC9 + titleBaseC9;
                    titleBaseC9 = *(u16 *)titleBaseC9;
                    titleBaseC9 -= 0x28;
                    ((void (*)(const u8 *, s32, s32))sub_0801A764)(temp_r5_13, titleXValueC9, titleBaseC9);
                    menuLanguageC9 = gUnk_03003470;
                    menuIndexC9 = titleIndexC9;
                }
                switch (menuLanguageC9) {            /* switch 5 */
                case 0:
                    offsetX = 0x23;
                    offsetY = 0x1D;
                    break;
                case 1:
                    offsetX = 0x2B;
                    offsetY = 0x25;
                    break;
                case 2:
                    offsetX = 0x23;
                    offsetY = 0x1D;
                    break;
                case 3:
                    offsetX = 0x2B;
                    offsetY = 0x25;
                    break;
                case 4:
                    offsetX = 0x23;
                    offsetY = 0x1D;
                    break;
                }
                if ((u32) M2C_FIELD(arg0, u8 *, 2) <= 8U) {
                    var_r7 = (u8 *)&cursor;
                    var_r4_2 = (u16 *)&gUnk_08366E0C;
                    temp_r5_14 = (u16 *)(menuIndexC9 + (u8 *)var_r4_2);
                    var_r1_7 = *temp_r5_14;
                    var_r1_7 -= offsetX;
                    var_r1_7 -= cursorX;
                    var_r4_2 = (u16 *)((u32)var_r4_2 + 2);
                    var_r4_2 = (u16 *)(menuIndexC9 + (u32)var_r4_2);
                    sub_08065230(var_r7, var_r1_7, *var_r4_2 - 0x20, 3U, 2);
                    var_r1_7 = *temp_r5_14;
                    var_r1_7 += offsetY;
                    var_r1_7 += cursorY;
                } else {
                    s32 selectorStepC10;
                    var_r7 = (u8 *)&cursor;
                    var_r4_2 = (u16 *)&gUnk_08366E0C;
                    temp_r5_14 = (u16 *)(menuIndexC9 + (u8 *)var_r4_2);
                    var_r1_7 = *temp_r5_14;
                    var_r1_7 -= offsetX;
                    var_r1_7 -= (selectorStepC10 = cursorX + 5);
                    var_r4_2 = (u16 *)((u32)var_r4_2 + 2);
                    var_r4_2 = (u16 *)(menuIndexC9 + (u32)var_r4_2);
                    sub_08065230(var_r7, var_r1_7, *var_r4_2 - 0x20, 3U, 2);
                    var_r1_7 = *temp_r5_14;
                    var_r1_7 += offsetY;
                    {
                        selectorStepC10 = cursorY + 5;
                        var_r1_7 += selectorStepC10;
                    }
                }
                goto block_198;
                        } else {
                switch (gUnk_03003470) {            /* switch 6 */
                case 0:                             /* switch 6 */
                    offsetX = 0x23;
                    offsetY = 0x18;
                    break;
                case 1:                             /* switch 6 */
                    offsetX = 0x2B;
                    offsetY = 0x28;
                    break;
                case 2:                             /* switch 6 */
                    offsetX = 0x23;
                    offsetY = 0x18;
                    break;
                case 3:                             /* switch 6 */
                    offsetX = 0x2B;
                    offsetY = 0x20;
                    break;
                case 4:                             /* switch 6 */
                    offsetX = 0x23;
                    offsetY = 0x18;
                    break;
                }
                if ((u32) M2C_FIELD(arg0, u8 *, 2) <= 8U) {
                    {
                        register u8 *shortTextC10 asm("r0");
                        u32 shortBaseC10;
                        register u32 shortIndexC10 asm("r4");
                        register s32 shortXC10 asm("r1");
                        shortTextC10 = var_r7 + 2;
                        shortBaseC10 = (u32)&gUnk_08366E0C;
                        shortIndexC10 = state * 4;
                        temp_r5_14 = (u16 *)(shortIndexC10 + shortBaseC10);
                        shortXC10 = *temp_r5_14 - 9;
                        shortBaseC10 += 2;
                        var_r4_2 = (u16 *)(shortIndexC10 + shortBaseC10);
                        ((void (*)(const u8 *, s32, s32))sub_0801A764)(shortTextC10, shortXC10, *var_r4_2 - 0x28);
                    }
                    var_r7 = (u8 *)&cursor;
                    sub_08065230(var_r7, *temp_r5_14 - (drawOffset3984 = cursorX + 0x10), *var_r4_2 - 0x20, 3U, 2);
                    var_r1_7 = (drawOffset3984 = offsetY + 0x18) + *temp_r5_14 + cursorY;
block_198:
                    sub_08065230(var_r7, var_r1_7, *var_r4_2 - 0x20, 3U, 1);
                    goto after198;
                }
                var_r7 = var_r7 + 2;
                textWidth3984 = sub_0801A638(var_r7);
                {
                    register u32 longBaseC9 asm("r2");
                    u32 longStateC9;
                    register u32 longIndexC9 asm("r4");
                    register s32 longXC9 asm("r1");
                    longBaseC9 = (u32)&gUnk_08366E0C;
                    longStateC9 = state;
                    longIndexC9 = longStateC9 * 4;
                    temp_r5_14 = (u16 *)(longIndexC9 + longBaseC9);
                    longXC9 = *temp_r5_14 - (drawOffset3984 = textWidth3984 * 4 - 0x18);
                    longBaseC9 += 2;
                    var_r4_2 = (u16 *)(longIndexC9 + longBaseC9);
                    ((void (*)(const u8 *, s32, s32))sub_0801A764)(var_r7, longXC9, *var_r4_2 - 0x28);
                }
                var_r7 = (u8 *)&cursor;
                    sub_08065230(var_r7, *temp_r5_14 - (drawOffset3984 = cursorX + 0x10), *var_r4_2 - 0x20, 3U, 2);
                var_r7 = (u8 *)&cursor;
                    sub_08065230(var_r7, (drawOffset3984 = offsetY + 0x18) + *temp_r5_14 + (cursorYStep3984 = cursorY + 9), *var_r4_2 - 0x20, 3U, 1);
                        }
after198:
            if (!(gUnk_03002344 & 3)) {
                temp_r6_6 = cursorX;
                if (temp_r6_6 != 0) {
                    cursorX = (s32) (u16) (temp_r6_6 - 1);
                }
                temp_r3_5 = cursorY;
                if (temp_r3_5 != 0) {
                    cursorY = (s32) (u16) (temp_r3_5 - 1);
                }
            }
            var_r7 = ((u8 *(*)(s32))sub_08007290)(0x140442);
            var_r0_6 = var_r7 + 2;
            var_r1_6 = 0;
block_206:
            sub_0801A3D0(var_r0_6, var_r1_6, 0U);
        }
        goto block_374;
    case 4:                                         /* switch 2 */
        input3984 = keys3984;
        if (0x20 & input3984) {
            if (current != 0) {
                sub_0805865C(0xC6);
            }
            current = 0;
            goto block_221;
        }
        if (0x10 & input3984) {
            if (current == 0) {
                sub_0805865C(0xC7);
            }
            current = 1;
            goto block_221;
        }
        temp_r0_13 = input3984;
        if (temp_r0_13 == 1) {
            sub_0805865C(0xF);
            timer = 5;
            if (current == 0) {
                timer = 6;
            }
            goto block_220;
        }
        if (temp_r0_13 == 2) {
            sub_0805865C(0x10);
            timer = 5;
block_220:
            sub_0801A664(0x12, 2);
        } else {
block_221:
            sub_08065370(&panel[0], 4U, (s32) ((u8 *)&y[0]), (s32) ((u8 *)&y[2]), 1);
            sub_08065370(&panel[0], 5U, (s32) &y[1], (s32) &y[3], 1);
            if (current != 0) {
                sub_08065230(&panel[0], 0xD2, 0x8E, 9U, 0);
                {
                    register u16 *panelReadC7 asm("r1") = (u16 *)temp_r5_2;
                    sub_08065264(&panel[0], 0xE2, 0x8E, 5, (s32)panelReadC7[1]);
                }
                sub_08065230(&panel[0], 0xC2, 0x8E, 4U, (s32) *(u16 *)((u8 *)&y[0]));
            } else {
                sub_08065230(&panel[0], 0xD2, 0x8E, 8U, (s32) current);
                temp_r4_19 = ((u8 *)&y[0]);
                sub_08065230(&panel[0], 0xE2, 0x8E, 5U, (s32) M2C_FIELD(temp_r4_19, u16 *, 2));
                sub_08065264(&panel[0], 0xC2, 0x8E, 4, (s32) M2C_FIELD(temp_r4_19, u16 *, 0));
            }
            sub_0801A3D0(((u8 *(*)(s32))sub_08007290)(0x140443) + 2, 2U, 0x12U);
            ((void (*)(const u8 *, s32, s32))sub_0801A764)(arg0 + 0x10, 0x58U, 0x10U);
        }
        goto block_374;
    case 5:                                         /* switch 2 */
        sub_08000C08(8, 2);
        input3984 = keys3984;
        if (0x100 & input3984) {
            var_r5_3 = arg0 + 0x10;
            if ((u32) var_r9 > 6U) {

            } else {
                if ((next == var_r9) || (var_r5_3[var_r9] == 0xFD)) {
                    var_r5_3[var_r9] = 0x51;
                    var_r5_3[(nextChar13984 = var_r9 + 1)] = 0xFD;
                    var_r9++;
                    next = var_r9;
                } else {
                    var_r0_8 = var_r9 + 1;
                    goto block_236;
                }
                goto block_237;
            }
        } else if (0x200 & input3984) {
            var_r5_3 = arg0 + 0x10;
            if (var_r9 == 0) {

            } else {
                var_r0_8 = var_r9 - 1;
block_236:
                var_r9 = var_r0_8;
block_237:
                sub_0805865C(0xE);
            }
        } else if (0x40 & gUnk_03001308) {
            sub_0805865C(0x62);
            var_r5_3 = arg0 + 0x10;
            switch (language) {
            case 0: case 1:
                temp_r6_7 = current;
                if (temp_r6_7 <= 0x13U) {
                    gridResultC5 = temp_r6_7 + 0x50;
                    goto gridStoreC5;
                } else current = (u16)(current - 0x14);
                break;
            case 2:
                temp_r4_20 = current;
                if (temp_r4_20 <= 0x17U) {
                    gridResult2C5 = temp_r4_20 + 0x78;
                    goto gridStore2C5;
                } else current = (u16)(current - 0x18);
                break;
            }
        } else if (0x80 & gUnk_03001308) {
            sub_0805865C(0x62);
            var_r5_3 = arg0 + 0x10;
            switch (language) {
            case 0: case 1:
                temp_r6_8 = current;
                if (temp_r6_8 > 0x4FU) {
                    gridResultC5 = temp_r6_8 - 0x50;
                gridStoreC5:
                    current = (u16)gridResultC5;
                } else current = (u16)(current + 0x14);
                break;
            case 2:
                temp_r4_21 = current;
                if (temp_r4_21 > 0x77U) {
                    gridResult2C5 = temp_r4_21 - 0x78;
                gridStore2C5:
                    current = (u16)gridResult2C5;
                } else current = (u16)(current + 0x18);
                break;
            }
        } else if (0x10 & gUnk_03001308) {
            sub_0805865C(0x62);
            var_r5_3 = arg0 + 0x10;
            switch (language) {
            case 0: case 1:
                if ((u16)((u32)current % 20U) == 0x13) current = (u16)(current - 0x13);
                else current = (u16)(current + 1);
                break;
            case 2:
                if ((u32)(u16)((u32)current % 24U) > 0x16U) current = (u16)(current - 0x17);
                else current = (u16)(current + 1);
                break;
            }
        } else {
            temp_r4_22 = 0x20 & gUnk_03001308;
            if (temp_r4_22 != 0) {
                sub_0805865C(0x62);
                var_r5_3 = arg0 + 0x10;
                switch (language) {
                case 0: case 1:
                    if ((((u32)current % 20U) << 0x10) == 0) current = (u16)(current + 0x13);
                    else current = (u16)(current - 1);
                    break;
                case 2:
                    if ((((u32)current % 24U) << 0x10) == 0) current = (u16)(current + 0x17);
                    else current = (u16)(current - 1);
                    break;
                }
            } else {
                temp_r0_14 = input3984;
                if (temp_r0_14 == 1) {
                    sub_0805865C(0xF);
                    if (language != 1) {
                        if (language <= 1) {
                            if (language != 0) {
                                var_r5_3 = arg0 + 0x10;
                            } else {
                                var_r2_2 = arg0 + 0x10;
                                var_r3_2 = &var_r2_2[var_r9];
                                var_r1_8 = gUnk_08366E34;
                                goto block_302;
                            }
                        } else if (language != 2) {
                            var_r5_3 = arg0 + 0x10;
                        } else {
                            var_r2_2 = arg0 + 0x10;
                            var_r3_2 = &var_r2_2[var_r9];
                            var_r1_8 = gUnk_08366FC4;
                            goto block_302;
                        }
                    } else {
                        var_r2_2 = arg0 + 0x10;
                        var_r3_2 = &var_r2_2[var_r9];
                        var_r1_8 = gUnk_08366EFC;
block_302:
                        *var_r3_2 = (u8) var_r1_8[current];
                        var_r5_3 = var_r2_2;
                    }
                    if ((u32) var_r9 <= 6U) {
                        var_r9 += 1;
                        if ((u32) var_r9 <= (u32) next) {

                        } else {
                            var_r5_3[var_r9] = 0xFD;
                            next = var_r9;
                        }
                    } else {
                        var_r5_3[(nextChar23984 = var_r9 + 1)] = 0xFD;
                    }

                } else if (temp_r0_14 == 2) {
                    sub_0805865C(0x10);
                    if (var_r9 == next) {
                        temp_r2_4 = arg0 + 0x10;
                        temp_r2_4[var_r9] = 0xFD;
                        temp_r2_4[(nextChar33984 = var_r9 + 1)] = (s8) temp_r4_22;
                        var_r9 -= 1;
                        deleteMaskC6 = 0x8000 & var_r9;
                        var_r5_3 = temp_r2_4;
                        if (deleteMaskC6) {
                            var_r9 = 0;
                            if (M2C_FIELD(arg0, u8 *, 0x10) == 0xFD) {
                                timer = 3;
                                sub_080009F8(0x200, 0, 1);
                                sub_0800903C(4, 8, 1, 8, 0x10, 0);
                                sub_08006544();
                                if (M2C_FIELD(arg0, u8 *, 1) == 8) {
                                    sub_0801A664(0, 2);
                                    timer = 0;
                                    sub_08000C08(0x10, 8);
                                }
                            }
                        }
                        next = var_r9;
                    } else {
                    temp_r0_15 = arg0 + 0x10;
                    temp_r2_5 = &temp_r0_15[var_r9];
                    deleteChar3984 = *temp_r2_5;
                    var_r5_3 = temp_r0_15;
                    if (deleteChar3984 == 0x51) {
                        var_r9 -= 1;
                        if (!(0x8000 & var_r9)) {

                        } else {
                            timer = 3;
                            sub_080009F8(0x200, 0, 1);
                            sub_0800903C(4, 8, 1, 8, 0x10, (s32) temp_r4_22);
                            sub_08006544();
                            if (M2C_FIELD(arg0, u8 *, 1) == 8) {
                                sub_0801A664(0, 2);
                                timer = 0;
                                sub_08000C08(0x10, 8);
                            }
                            var_r9 = 0;
                        }
                    } else {
                        *temp_r2_5 = 0x51;
                        if (var_r9 == 0) {
                            timer = 3;
                            sub_080009F8(0x200, 0, 1);
                            sub_0800903C(4, 8, 1, 8, 0x10, (s32) var_r9);
                            sub_08006544();
                            if (M2C_FIELD(arg0, u8 *, 1) == 8) {
                                sub_0801A664(0, 2);
                                timer = 0;
                                sub_08000C08(0x10, 8);
                            }
                        }
                    }

                    }
                } else {
                    var_r5_3 = arg0 + 0x10;
                    if (temp_r0_14 == 8) {
                        if (sub_0801A638(var_r5_3) != 0) {
                            var_r3_3 = 0;
                            var_r6 = 0;
                            temp_r0_16 = M2C_FIELD(arg0, u8 *, 0x10);
                            if (temp_r0_16 != 0x51) {
                                temp_r1_6 = 0xFD ^ temp_r0_16;
                                var_r3_3 = (u32) ((0 - temp_r1_6) | temp_r1_6) >> 0x1F;
                            } else {
loop_330:
                                var_r6 += 1;
                                if ((u32) var_r6 <= 7U) {
                                    temp_r0_17 = var_r5_3[var_r6];
                                    if (temp_r0_17 != 0x51) {
                                        if (temp_r0_17 != 0xFD) {
                                            var_r3_3 += 1;
                                        }
                                    } else {
                                        goto loop_330;
                                    }
                                }
                            }
                            if (var_r3_3 != 0) {
                                sub_08000C08(0x10, 8);
                                timer = 4;
                                current = 0;
                                sub_0805865C(0xDC);
                            } else {
                                sub_0805865C(0x61);
                            }
                        } else {
                            sub_0805865C(0x61);
                        }
                    }

                }
            }
        }
        switch (language) {                                /* switch 8; irregular */
        case 0:                                     /* switch 8 */
            reg3984.h1 = 2;
            reg3984.v1 = 2;
            break;
        case 1:                                     /* switch 8 */
            reg3984.h1 = 0x100;
            reg3984.v1 = 0;
            break;
        case 2:                                     /* switch 8 */
            reg3984.h1 = 0;
            reg3984.v1 = 0x100;
            break;
        }
        switch (language) {
        case 0:
        case 1:
                temp_r0_19 = (u16) ((u32) current % 20U);
                newX = (temp_r0_19 * 8) + (keyboardGap3984 = (((u32) ((temp_r0_19 / 5U) << 0x10) >> 0xC) + 0xF));
                newY = ((u32) (((u32) current / 20U) << 0x10) >> 0xC) + 0x30;
            break;
        case 2:
                    temp_r0_18 = ((u32) current % 24U) << 0x10;
                    newX = (temp_r0_18 >> 0xD) + (keyboardGap3984 = (((temp_r0_18 >> 0x14) * 0x10) + 0x10));
                    newY = ((u32) (((u32) current / 24U) << 0x10) >> 0xC) + 0x30;
            break;
        }
        ((void (*)(const u8 *, s32, s32))sub_0801A764)(var_r5_3, 0x58U, 0x10U);
        sub_08065370(&cursor, 5U, (s32) &lastWidth, (s32) &lastHeight, 1);
        sub_080659BC(&cursor, (var_r9 * 8) + 0x58, 0x18, 5U, (s32) lastWidth, 1);
        targetX += (newX - targetX) / 2;
        targetY += (newY - targetY) / 2;
        if (__builtin_abs(newX - targetX) <= 1) {
            targetX = newX;
        }
        if (__builtin_abs(newY - targetY) <= 1) {
            targetY = newY;
        }
        sub_08065230(&cursor, targetX, targetY, 0x10U, 0);
        goto block_374;
    case 6:                                         /* switch 2 */
        var_r3_4 = 0;
        var_r6 = 8;
        temp_r2_6 = arg0 + 0x10;
        cleanupZero3984 = 0;
        cleanupMask3984 = 0x8000;
        cleanupEnd3984 = 0xFD;
loop_363:
        temp_r1_7 = &temp_r2_6[var_r6];
        temp_r0_22 = M2C_FIELD(temp_r1_7, u8 *, 0);
        if (temp_r0_22 == 0xFD) {
            var_r3_4 = 1;
            goto block_368;
        }
        if (var_r3_4 == 1) {
            if (temp_r0_22 == 0x51) {
                M2C_FIELD(temp_r1_7, u8 *, 0) = cleanupEnd3984;
                temp_r2_6[(nextChar43984 = var_r6 + 1)] = cleanupZero3984;
                goto block_368;
            }
        } else {
block_368:
            var_r6 -= 1;
            if (!(var_r6 & cleanupMask3984)) {
                goto loop_363;
            }
        }
        sub_0801ABE8(6);
        sub_080003F0();
        sub_080003F0();
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_08006544();
        sub_0801A664(0, 0x13);
        sub_080003F0();
        *arg0 = 1;
        goto finish3984;
    }
finish3984:
    /* Preserve caller ABI; the scheduler consumes only the low32 signal tag. */
    ((void (*)(unsigned long long))sub_08000420)(0x25A112EBFULL);
    goto epilogue3984;
block_374:
        var_r6 = 0;
loop_375:
        if ((u32) (u16) (timer - 4) > (drawOne3984 = 1, 2U)) {
            if (state == var_r6) {
                temp_r5_3 = &x[var_r6];
                *temp_r5_3 = drawOne3984;
                sub_08000AF0(var_r6 + 0x10, labels[var_r6].data + (M2C_FIELD(arg0, u8 *, 2) << 5), 1U);
                sub_08065370((u8 *)&icons[var_r6], *temp_r5_3, (s32) &(&widths[0])[var_r6], (s32) (&heights[var_r6]), 0);
            } else {
                temp_r5_4 = &x[var_r6];
                *temp_r5_4 = 0;
                sub_08000AF0(var_r6 + 0x10, labels[var_r6].data, 1U);
                sub_08065370((u8 *)&icons[var_r6], *temp_r5_4, (s32) &(&widths[0])[var_r6], (s32) (&heights[var_r6]), drawOne3984);
            }
        }
        var_r8 = 0x34;
        {
            register u8 *drawSpriteC8 asm("r0");
            register u32 drawIndexC8 asm("r2");
            register u32 drawBaseC8 asm("r3");
            register u32 drawXC8 asm("r1");
            register u32 drawYBaseC8 asm("r4");
            drawSpriteC8 = (u8 *)icons + var_r8 * var_r6;
            drawIndexC8 = var_r6 * 4;
            drawBaseC8 = (u32)&gUnk_08366E0C;
            drawXC8 = drawIndexC8 + drawBaseC8;
            drawXC8 = *(u16 *)drawXC8;
            drawYBaseC8 = (u32)&gUnk_08366E0E;
            drawIndexC8 += drawYBaseC8;
            drawIndexC8 = *(u16 *)drawIndexC8;
            sub_080659BC(drawSpriteC8, drawXC8, drawIndexC8, x[(u32)var_r6], (s32)widths[var_r6], drawOne3984);
        }
        var_r6 += 1;
        if ((u32) var_r6 <= 7U) {
            goto loop_375;
        }
        if (arg1 == 0) {

        } else {
            if ((u32) (u16) (timer - 4) > 2U) {
                if (state == var_r6) {
                    temp_r5_5 = &x[var_r6];
                    ninthZero3984 = 0;
                    *temp_r5_5 = 1;
                    sub_08000AF0(var_r6 + 0x10, labels[var_r6].data + (M2C_FIELD(arg0, u8 *, 2) << 5), 1U);
                    sub_08065370((u8 *)&icons[var_r6], *temp_r5_5, (s32) &(&widths[0])[var_r6], (s32) (&heights[var_r6]), ninthZero3984);
                } else {
                    temp_r5_6 = &x[var_r6];
                    *temp_r5_6 = 0;
                    sub_08000AF0(var_r6 + 0x10, labels[var_r6].data, 1U);
                    sub_08065370((u8 *)&icons[var_r6], *temp_r5_6, (s32) &(&widths[0])[var_r6], (s32) (&heights[var_r6]), 1);
                }
            }
            {
                register u8 *drawSpriteC7 asm("r0");
                register u8 *drawBaseC7 asm("r2");
                register u32 drawIndexC7 asm("r3");
                register s32 drawXC7 asm("r1");
                s32 drawYC7;
                register u32 ninthWidthC9 asm("r4");
                drawSpriteC7 = (u8 *)&icons[var_r6];
                drawBaseC7 = (u8 *)&gUnk_08366E0C;
                drawIndexC7 = var_r6 * 4;
                drawXC7 = *(u16 *)(drawIndexC7 + (u32)drawBaseC7);
                drawBaseC7 += 2;
                drawIndexC7 = (u32)(drawIndexC7 + (u32)drawBaseC7);
                drawYC7 = *(u16 *)drawIndexC7;
                sub_080659BC(drawSpriteC7, drawXC7, drawYC7, x[(u32)var_r6], *(u16 *)(ninthWidthC9 = (u32)widths, ninthWidthC9 += var_r6 * 2), 1);
            }
        }
        sub_080003F0();
        continue;

    }
epilogue3984:
    return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08003984);
#endif
struct FadeColor5A24 { u32 red:5; u32 green:5; u32 blue:5; };
struct FadeDest5A24 { u16 red:5; u16 green:5; u16 blue:5; };
extern void fadeCopy5A24(const void *, void *, u32) asm("CpuSet");
void sub_08005A24(u32 range, s32 percent)
{
    u32 start;
    u16 *backup;
    struct FadeColor5A24 *source;
    struct FadeDest5A24 *dest;
    u16 *out;
    u16 *in;
    u32 banks;
    u32 colors;
    u32 i;
    u16 target;
    u16 factor;
    s32 difference;
    start = (u16)range;
    banks = range >> 16;
    target = (s32)((u32)(percent << 16) >> 6) / 100;
    gUnk_0300001C = 1;
    backup = (u16 *)sub_08001494(banks << 5);
    fadeCopy5A24((u8 *)&gUnk_03001F40 + (start << 5), backup, (banks << 3) | 0x04000000);
    colors = banks << 4;
    asm("" : "+r"(colors));
    factor = 0x400;
    while (factor > target) {
        dest = (struct FadeDest5A24 *)((u8 *)&gUnk_03001F40 + (start << 5));
        source = (struct FadeColor5A24 *)backup;
        i = 0;
        difference = factor - target;
        while (i < colors) {
            dest->red = (source->red * factor) >> 10;
            dest->green = (source->green * factor) >> 10;
            dest->blue = (source->blue * factor) >> 10;
            i++;
            dest = (struct FadeDest5A24 *)((u8 *)dest + 2);
            source = (struct FadeColor5A24 *)((u8 *)source + 2);
        }
        if (difference > 1) factor = factor - (difference >> 1);
        else factor = factor - 1;
        sub_08000B38();
        sub_080003F0();
    }
    if (gUnk_0300001C != 0) {
        i = (u32)&gUnk_0300001C;
        do { sub_080003F0(); } while (*(s32 *)i != 0);
    }
    if (!(gUnk_0300001C & 2)) {
        dest = (struct FadeDest5A24 *)((u8 *)&gUnk_03001F40 + (start << 5));
        source = (struct FadeColor5A24 *)backup;
        i = 0;
        while (i < colors) {
            *(u16 *)dest = *(u16 *)source;
            i++;
            dest = (struct FadeDest5A24 *)((u8 *)dest + 2);
            source = (struct FadeColor5A24 *)((u8 *)source + 2);
        }
        sub_08000B38();
    }
    sub_080003F0();
    sub_08001538((s32)backup);
}
#ifdef NONMATCHING
extern u16 pressed5B asm("gUnk_03001324");
extern void finish5B(unsigned long long) asm("sub_08000420");
struct Menu5B { u8 pad[5], f5, f6, f7; };
struct Task5B {u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24;};
extern struct Task5B task5B asm("gUnk_03002840");
extern u16 data5B asm("gUnk_080B99D4");
extern u8 *resource5B(u32) asm("sub_08007290");
extern void sprite5B(void *,u32,s32,s32,s32) asm("sub_08065158");
extern void text5B(u8 *,u16,u16) asm("sub_0801A3D0");
extern void copy5B(void *,const void *,u32) asm("memcpy");
extern void mode5B(s32) asm("sub_0801A6D4");
extern void fade5B(s32,s32) asm("sub_0801A664");
extern void reg5B(s32,s32,s32) asm("sub_080009F8");
extern void start5B(s32) asm("sub_0801AB50");
extern void callback5B(void) asm("sub_08002B70");
extern u16 keys5B asm("gUnk_03001308");
extern void sub_080066A8(void);
void menu5B(struct Menu5B *) asm("sub_08005B88");
void menu5B(struct Menu5B *arg) {
    u16 sp4[2],sp8[2];
    u8 spC[0x34],sp40[0x34],sp74[4],sp78[33],sp9C[36];
    struct Menu5B *spC0;
    s32 spC4,spC8;
    u32 spCC;
    s32 spD0;
    u32 spD4,spD8;
    s32 spDC,spE0,spE4,spE8;
    u32 spEC;
    s32 spF0;
    s32 temp_r0;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r3_2;
    s32 var_sl;
    u32 temp_r0_2;
    u32 temp_r1;
    u32 temp_r2;
    u32 temp_r2_2;
    u32 temp_r6;
    u32 var_r3;
    u32 var_r6;
    u32 var_r8;
    u8 *var_r4;
    u8 *var_r7;
    u8 temp_r1_2;
    u8 temp_r2_5;
    u8 var_r9;
    u32 temp_r0_3;


    spC0 = arg;
    copy5B(&sp74, &data5B, 2);
    sprite5B(&sp40, 0x50002, 0, -1, 0);
    sprite5B(&spC, 0x50006, 0, -1, 0);
    mode5B(0);
    gUnk_03001250[1] = 0;
    gUnk_03001250[0] = 0;
    gUnk_03001250[3] = 0;
    gUnk_03001250[2] = 0;
    gUnk_03001250[5] = 0;
    gUnk_03001250[4] = 0;
    gUnk_03001250[7] = 0;
    gUnk_03001250[6] = 0;
    fade5B(0, 0x13);
    reg5B(0xE00, 0, 1);
    start5B(3);
    spC4 = 0;
    spC8 = 0xA;
    sp8[0] = *(u16 *)&spC4;
    sp4[0] = *(u16 *)&spC4;
    sp8[1] = *(u16 *)&spC4;
    sp4[1] = *(u16 *)&spC4;
    spD0 = 0;
    spCC = 0;
    spD8 = 0;
    spE8 = 0x2C;
    spE4 = 8;
    spDC = 8;
    spE0 = 0x2C;
    var_r9 = spC0->f7;
    var_sl = 0;
    spF0 = (s32) (u8) sub_08001108(0x6EU);
    spEC = sub_0800115C((u32) sub_080066A8);
    sub_08000D8C();
loop_1:
    temp_r0 = sub_0801AAE0();
    if (temp_r0 == 0) {
        pressed5B = (u16) temp_r0;
    }
    switch (var_sl) {                               /* irregular */
    case 0:
        if (pressed5B == 1) {
            if (spC4 == 1) {
                if (spC0->f5 == 0) {
                    var_sl = 3;
                    var_r9 = 0;
                } else {
                    var_sl = 1;
                    spE8 = 0x62;
                    spE4 = 0x3C;
                }
            } else {
                var_sl = 3;
            }
            sub_0805865C(0xF);
            goto block_43;
        }
        if ((spC4 == 1) && (0x40 & pressed5B)) {
            sub_0805865C(0xE);
            spE8 = 0x2C;
            spC4 = 0;
            goto block_43;
        }
        if ((spC4 == 0) && (0x80 & pressed5B)) {
            sub_0805865C(0xE);
            spE8 = 0x52;
            spC4 = 1;
            goto block_43;
        }
        if (pressed5B != 2) {
            goto block_43;
        }
        sub_0805865C(0x10);
        sub_0801ABE8(6);
loop_24:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_24;
        }
        if (sub_08000470((u32) &task5B) != 0) {
            sub_080003A8((s32) &task5B);
        }
        temp_r0_3 = (u32) sub_08001494(0x1000U);
        task5B.fC = (u32)callback5B;
        task5B.f10 = temp_r0_3 + 0xFFC;
        task5B.f20 = temp_r0_3;
        task5B.f8 = 1;
        task5B.f24 = 0;
        sub_08000274(&task5B, 0);
        sub_08000E48();
        sub_0800115C(spEC);
        sub_08001108((u8) spF0);
        fade5B(0, 0x14);
        sub_080003F0();
        return;
    case 1:
        if (0x20 & keys5B) {
            if ((spC4 == 1) && (var_r9 == 1)) {
                sub_0805865C(0xE);
            }
            var_r9 = 0;
        } else if (0x10 & keys5B) {
            if ((spC4 == 1) && (var_r9 == 0)) {
                sub_0805865C(0xE);
            }
            var_r9 = 1;
        } else if (pressed5B == 1) {
            var_sl = 3;
            sub_0805865C(0xF);
            fade5B(0, 0xA);
            sub_08000E48();
            spEC = sub_0800115C(spEC);
            sub_08001108((u8) spF0);
            reg5B(0x200, 0, 1);
        } else if (pressed5B == 2) {
            var_sl = 0;
            spE4 = 8;
            sub_0805865C(0x10);
            spE8 = 0x52;
            if (spC4 == 0) {
                spE8 = 0x3C;
            }
        }
    default:
block_43:
        if (spC0->f5 != 0) {
            sub_08065230(&spC, 0x50, 0x64, 0x26U, (s32) ((u32) ((0 - var_r9) | var_r9) >> 0x1F));
            var_r0 = 0;
            if (var_r9 == 0) {
                var_r0 = 1;
            }
            sub_08065230(&spC, 0x78, 0x64, 0x27U, var_r0);
        }
        temp_r6 = spE8 - spE0;
        temp_r1 = spE4 - spDC;
        if (spC8 != spC4) {
            spD4 = 0;
            spD0 = 0;
            var_r3 = 0;
            spCC = 0;
            spD8 = 0;
            gUnk_03003474 = 0;
            do {
                (sp78)[var_r3] = 0xFD;
                var_r3 += 1;
            } while (var_r3 <= 0x1FU);
            var_r7 = resource5B((spC4 + 0x451) | 0x140000) + 2;
            spC8 = spC4;
        }
        temp_r0_2 = spCC;
        spCC = temp_r0_2 + 1;
        if (temp_r0_2 > 2U) {
            spCC = 0;
            if (*var_r7 == 0xFF) {
                var_r7 += 1;
            }
            if (*var_r7 == 0xFE) {
                var_r7 += 3;
            }
            if (*var_r7 == 0xFD) {
                var_r7 = resource5B((spC4 + 0x451) | 0x140000) + 2;
            }
            (sp78)[spD8] = *var_r7;
            var_r7 += 1;
            temp_r2 = spD8 + 1;
            spD8 = temp_r2;
            if (temp_r2 > 0x1FU) {
                spD8 = 0;
                sp78[32] = 0xFD;
                spD0 = 1;
            }
        }
        if (spD0 != 0) {
            gUnk_03003474 += 1;
            temp_r2_2 = spD4 + 1;
            spD4 = temp_r2_2;
            if (temp_r2_2 > 7U) {
                spD4 = 0;
                spCC = 0xA;
            } else {
                spCC = 0;
            }
        }
        text5B(sp78, 0, 0xEU);
        temp_r2_3 = spE0 + ((s32) (temp_r6 + (temp_r6 >> 0x1F)) >> 1);
        spE0 = temp_r2_3;
        var_r0_2 = spE8 - temp_r2_3;
        if (var_r0_2 < 0) {
            var_r0_2 = 0 - var_r0_2;
        }
        if (var_r0_2 <= 1) {
            spE0 = spE8;
        }
        temp_r2_4 = spDC + ((s32) ((temp_r1 >> 0x1F) + temp_r1) >> 1);
        spDC = temp_r2_4;
        var_r0_3 = spE4 - temp_r2_4;
        if (var_r0_3 < 0) {
            var_r0_3 = 0 - var_r0_3;
        }
        if (var_r0_3 <= 1) {
            spDC = spE4;
        }
        sub_08065230(&spC, spDC, spE0, 0x15U, 0);
        var_r4 = resource5B(0x14044D) + 2;
        var_r8 = 0;
        var_r6 = 0x40000;
loop_73:
        var_r3_2 = 0;
        temp_r1_2 = *var_r4;
        if (temp_r1_2 != 0xFD) {
            sp9C[0] = temp_r1_2;
            if (temp_r1_2 != 0xFF) {
loop_75:
                var_r3_2 += 1;
                var_r4 += 1;
                temp_r2_5 = *var_r4;
                if (temp_r2_5 != 0xFD) {
                    (sp9C)[var_r3_2] = temp_r2_5;
                    if (temp_r2_5 == 0xFF) {
                        goto block_77;
                    }
                    goto loop_75;
                }
            } else {
block_77:
                var_r4 += 1;
            }
        }
        (sp9C)[var_r3_2] = 0xFD;
        if (var_r3_2 != 0) {
            text5B(sp9C, 2, var_r6 >> 0x10);
            if (*var_r4 != 0xFD) {
                var_r6 += 0x20000;
                var_r8 += 1;
                if (var_r8 <= 1U) {
                    goto loop_73;
                }
            }
        }
        text5B(resource5B(0x14044E) + 2, 2, 9U);
        sub_080003F0();
        if (var_sl != 3) {
            goto loop_1;
        }
        sub_0801ABE8(6);
loop_85:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_85;
        }
        fade5B(0, 0x14);
        sub_080003F0();
        fade5B(0, 0x14);
        sub_080003F0();
        if (spC4 == 0) {
            spC0->f6 = (s8) spC4;
        } else {
            spC0->f6 = 1;
        }
        spC0->f7 = var_r9;
        finish5B(0x25A112EBFULL);
        return;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08005B88);
#endif
#ifdef NONMATCHING
extern u16 pressed6C asm("gUnk_03001324");
extern void finish6C(unsigned long long) asm("sub_08000420");
struct Menu6C { u8 pad[5], f5, f6, f7; };
struct Task6C {u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24;};
extern struct Task6C task6C asm("gUnk_03002840");
extern u16 data6C asm("gUnk_080B99D4");
extern u8 *resource6C(u32) asm("sub_08007290");
extern void sprite6C(void *,u32,s32,s32,s32) asm("sub_08065158");
extern void text6C(u8 *,u16,u16) asm("sub_0801A3D0");
extern void copy6C(void *,const void *,u32) asm("memcpy");
extern void mode6C(s32) asm("sub_0801A6D4");
extern void fade6C(s32,s32) asm("sub_0801A664");
extern void reg6C(s32,s32,s32) asm("sub_080009F8");
extern void start6C(s32) asm("sub_0801AB50");
extern void callback6C(void) asm("sub_08002B70");
extern u16 keys6C asm("gUnk_03001308");
extern void sub_080066A8(void);
void menu6C(struct Menu6C *) asm("sub_0800608C");
void menu6C(struct Menu6C *arg) {
    u16 sp4[2],sp8[2];
    u8 spC[0x34],sp40[0x34],sp74[4],sp78[33],sp9C[36];
    struct Menu6C *spC0;
    s32 spC4,spC8;
    u32 spCC;
    s32 spD0;
    u32 spD4,spD8;
    s32 spDC,spE0,spE4,spE8;
    u32 spEC;
    s32 spF0;
    s32 temp_r0;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r3_2;
    s32 var_sl;
    u32 temp_r0_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r6;
    u32 var_r3;
    u32 var_r6;
    u32 var_r8;
    u8 *var_r4;
    u8 *var_r7;
    u8 temp_r1_5;
    u8 temp_r2_2;
    u8 var_r9;
    u32 temp_r0_3;


    spC0 = arg;
    copy6C(&sp74, &data6C, 2);
    sprite6C(&sp40, 0x50002, 0, -1, 0);
    sprite6C(&spC, 0x50006, 0, -1, 0);
    mode6C(0);
    gUnk_03001250[1] = 0;
    gUnk_03001250[0] = 0;
    gUnk_03001250[3] = 0;
    gUnk_03001250[2] = 0;
    gUnk_03001250[5] = 0;
    gUnk_03001250[4] = 0;
    gUnk_03001250[7] = 0;
    gUnk_03001250[6] = 0;
    fade6C(0, 0x13);
    reg6C(0xE00, 0, 1);
    start6C(3);
    spC4 = 0;
    spC8 = 0xA;
    sp8[0] = *(u16 *)&spC4;
    sp4[0] = *(u16 *)&spC4;
    sp8[1] = *(u16 *)&spC4;
    sp4[1] = *(u16 *)&spC4;
    spD0 = 0;
    spCC = 0;
    spD8 = 0;
    spE8 = 0x52;
    spE4 = 8;
    spDC = 8;
    spE0 = 0x52;
    var_r9 = spC0->f7;
    var_sl = 0;
    spC4 = 1;
    spF0 = (s32) (u8) sub_08001108(0x6EU);
    spEC = sub_0800115C((u32) sub_080066A8);
    sub_08000D8C();
loop_1:
    temp_r0 = sub_0801AAE0();
    if (temp_r0 == 0) {
        pressed6C = (u16) temp_r0;
    }
    if (var_sl == 0) goto state0;
    if (var_sl == 1) goto state1;
    goto block_34;
state0:
    if (pressed6C == 1) {
    if (spC4 == 1) {
        var_sl = 3;
        if (spC0->f5 != 0) {
            var_sl = 1;
            spE8 = 0x62;
            spE4 = 0x3C;
        }
    } else {
        var_sl = 3;
    }
    sub_0805865C(0xF);
        goto block_34;
    }
    if (pressed6C == 2) {
    sub_0805865C(0x10);
    sub_0801ABE8(6);
loop_16:
    if (sub_0801AAE0() == 0) {
        sub_080003F0();
        goto loop_16;
    }
    sub_08000E48();
    sub_0800115C(spEC);
    sub_08001108((u8) spF0);
    if (sub_08000470((u32) &task6C) != 0) {
        sub_080003A8((s32) &task6C);
    }
    temp_r0_3 = (u32) sub_08001494(0x1000U);
    task6C.fC = (u32)callback6C;
    task6C.f10 = temp_r0_3 + 0xFFC;
    task6C.f20 = temp_r0_3;
    task6C.f8 = 1;
    task6C.f24 = 0;
    sub_08000274(&task6C, 0);
    fade6C(0, 0x14);
    sub_080003F0();
    return;
    }
    goto block_34;
state1:
    if (0x20 & keys6C) {
        if ((spC4 == 1) && (var_r9 == 1)) {
            sub_0805865C(0xE);
        }
        var_r9 = 0;
    } else if (0x10 & keys6C) {
        if ((spC4 == 1) && (var_r9 == 0)) {
            sub_0805865C(0xE);
        }
        var_r9 = 1;
    } else if (pressed6C == 1) {
        var_sl = 3;
        var_r9 = 0;
        sub_0805865C(0xF);
        fade6C(0, 0xA);
        sub_08000E48();
        spEC = sub_0800115C(spEC);
        sub_08001108((u8) spF0);
        reg6C(0x200, 0, 1);
    } else if (pressed6C == 2) {
        var_sl = 0;
        spE4 = 8;
        sub_0805865C(0x10);
        spE8 = 0x52;
    }
    goto block_34;
block_34:
    if (spC0->f5 != 0) {
        sub_08065230(&spC, 0x50, 0x64, 0x26U, (s32) ((u32) ((0 - var_r9) | var_r9) >> 0x1F));
        var_r0 = 0;
        if (var_r9 == 0) {
            var_r0 = 1;
        }
        sub_08065230(&spC, 0x78, 0x64, 0x27U, var_r0);
    }
    temp_r6 = spE8 - spE0;
    temp_r1 = spE4 - spDC;
    if (spC8 != spC4) {
        spD4 = 0;
        spD0 = 0;
        var_r3 = 0;
        spCC = 0;
        spD8 = 0;
        gUnk_03003474 = 0;
        do {
            (sp78)[var_r3] = 0xFD;
            var_r3 += 1;
        } while (var_r3 <= 0x1FU);
        var_r7 = resource6C(0x140453) + 2;
        spC8 = spC4;
    }
    temp_r0_2 = spCC;
    spCC = temp_r0_2 + 1;
    if (temp_r0_2 > 2U) {
        spCC = 0;
        if (*var_r7 == 0xFF) {
            var_r7 += 1;
        }
        if (*var_r7 == 0xFE) {
            var_r7 += 3;
        }
        if (*var_r7 == 0xFD) {
            var_r7 = resource6C(0x140453) + 2;
        }
        (sp78)[spD8] = *var_r7;
        var_r7 += 1;
        temp_r1_2 = spD8 + 1;
        spD8 = temp_r1_2;
        if (temp_r1_2 > 0x1FU) {
            spD8 = 0;
            sp78[32] = 0xFD;
            spD0 = 1;
        }
    }
    if (spD0 != 0) {
        gUnk_03003474 += 1;
        temp_r1_3 = spD4 + 1;
        spD4 = temp_r1_3;
        if (temp_r1_3 > 7U) {
            spD4 = 0;
            spCC = 0xA;
        } else {
            spCC = 0;
        }
    }
    text6C(sp78, 0, 0xEU);
    temp_r1_4 = spE0 + ((s32) (temp_r6 + (temp_r6 >> 0x1F)) >> 1);
    spE0 = temp_r1_4;
    var_r0_2 = spE8 - temp_r1_4;
    if (var_r0_2 < 0) {
        var_r0_2 = 0 - var_r0_2;
    }
    if (var_r0_2 <= 1) {
        spE0 = spE8;
    }
    temp_r2 = spDC + ((s32) ((temp_r1 >> 0x1F) + temp_r1) >> 1);
    spDC = temp_r2;
    var_r0_3 = spE4 - temp_r2;
    if (var_r0_3 < 0) {
        var_r0_3 = 0 - var_r0_3;
    }
    if (var_r0_3 <= 1) {
        spDC = spE4;
    }
    sub_08065230(&spC, spDC, spE0, 0x15U, 0);
    var_r4 = resource6C(0x14044D) + 2;
    var_r8 = 0;
    var_r6 = 0x40000;
loop_64:
    var_r3_2 = 0;
    temp_r1_5 = *var_r4;
    if (temp_r1_5 != 0xFD) {
        sp9C[0] = temp_r1_5;
        if (temp_r1_5 != 0xFF) {
loop_66:
            var_r3_2 += 1;
            var_r4 += 1;
            temp_r2_2 = *var_r4;
            if (temp_r2_2 != 0xFD) {
                (sp9C)[var_r3_2] = temp_r2_2;
                if (temp_r2_2 == 0xFF) {
                    goto block_68;
                }
                goto loop_66;
            }
        } else {
block_68:
            var_r4 += 1;
        }
    }
    (sp9C)[var_r3_2] = 0xFD;
    if (var_r3_2 != 0) {
        text6C(sp9C, 2, var_r6 >> 0x10);
        if (*var_r4 != 0xFD) {
            var_r6 += 0x20000;
            var_r8 += 1;
            if (var_r8 <= 1U) {
                goto loop_64;
            }
        }
    }
    text6C(resource6C(0x140450) + 2, 2, 9U);
    sub_080003F0();
    if (var_sl != 3) {
        goto loop_1;
    }
    sub_0801ABE8(6);
loop_76:
    if (sub_0801AAE0() == 0) {
        sub_080003F0();
        goto loop_76;
    }
    gUnk_03001250[1] = 0;
    gUnk_03001250[0] = 0;
    gUnk_03001250[3] = 0;
    gUnk_03001250[2] = 0;
    gUnk_03001250[5] = 0;
    gUnk_03001250[4] = 0;
    gUnk_03001250[7] = 0;
    gUnk_03001250[6] = 0;
    fade6C(0, 0x14);
    sub_080003F0();
    fade6C(0, 0x14);
    sub_080003F0();
    if (spC4 == 0) {
        spC0->f6 = 0;
    } else {
        spC0->f6 = 1;
    }
    finish6C(0x25A112EBFULL);
    return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800608C);
#endif
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
#ifdef NONMATCHING
extern u16 pressed66 asm("gUnk_03001324");
struct Stack66 { u8 gfx[0x34]; u16 count[4], a, b; u32 display; s32 result,active; u32 mode; };
struct Peer66 {u8 pad[8];u8 unk8,unk9,unkA,unkB,unkC;};
struct Coord66 {u16 x,y;};
extern const struct Coord66 coords66[] asm("gUnk_080B99D8");
extern struct Peer66 *peer66(u32) asm("sub_08002118");
extern void setup66(s32,s32,s32,s32,s32) asm("sub_08000A34");
extern void sprite66(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void call66_080003F4(s32,s32) asm("sub_080003F4");
extern void call66_080009F8(s32,s32,s32) asm("sub_080009F8");
extern void call66_0801AA8C(s32) asm("sub_0801AA8C");
extern void call66_0801AB50(s32) asm("sub_0801AB50");
extern void call66_08088914(void) asm("sub_08088914");
extern void call66_0800035C(void) asm("sub_0800035C");
void sub_080066BC(void) {
    struct Stack66 S;
    struct Peer66 *peer;

    const struct Coord66 *var_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r9;
    u16 *var_r5;
    u16 *var_r5_2;
    u32 oldTimer;
    u32 var_r6;
    u32 var_r6_2;
    u32 var_r6_3;
    u32 var_sl;
    const struct Coord66 *var_r8;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
setup66(1, 0, 0, 0, 1);
    call66_080009F8(0xF00, 0, 1);
    sub_080009C0(0x1200, 0, 1);
sub_0800BCDC(1, 1, 0x06000000, 0U, 0x10);
    S.display = (S.display & 0xFFFF0000) | 0x1D80;
    sub_08000AA8(1U, (u16 *) &S.display);
sprite66(&S.gfx, 0x50001, 0, 3, 0);
    sub_080003F0();
    sub_080003F0();
    call66_0801AB50(6);
    S.result = 0;
    var_sl = 0;
    S.active = 0;
    S.count[3] = 0;
    S.count[2] = *(u16 *)&S.result;
    S.count[1] = *(u16 *)&S.result;
    S.count[0] = *(u16 *)&S.result;
    if (sub_080020F4() != 0) {
        goto block_4;
    }
    var_r0 = 0;
    goto block_5;
block_2:
    S.result = 1;
    goto block_69;
block_3:
        peer = peer66(sub_080020F4());
    peer->unkC = 0;
    peer->unk8 = 0;
    peer->unk9 = 0;
    goto block_69;
block_4:
    var_r0 = sub_080020F4();
block_5:
    peer = peer66((u32) var_r0);
    peer->unk8 = 0x30;
    peer->unk9 = 0x30;
    peer->unkC = 0;
    S.b = 0;
    S.a = 0;
    goto loop_7;
block_6:
sub_08065230(&S.gfx, 0x78, 0x3C, 0U, (s32) (u16) (sub_08002164() - 1));
    sub_080003F0();
loop_7:
    if (sub_0801AAE0() == 0) {
        goto block_6;
    }
loop_8:
    if (sub_080020F4() == 0) {
        goto block_10;
    }
    goto block_42;
block_10:
    var_r9 = 0;
sub_08065230(&S.gfx, (s32) coords66[0].x, (s32) coords66[0].y, 1U, 0);
    var_r6 = 1;
    var_r8 = &coords66[1];
    var_r5 = &S.count[1];
    goto loop_20;
block_11:
    peer = peer66(var_r6);
    if (gUnk_03002730 & (1 << var_r6)) {
        goto block_13;
    }
    *var_r5 += 1;
    goto block_14;
block_13:
    *var_r5 = 0;
block_14:
    if ((u32) *var_r5 <= 5U) {
        goto block_16;
    }
    peer->unk8 = 0U;
    peer->unk9 = 0U;
block_16:
    if (peer->unk8 != 0x4F) {
        goto block_19;
    }
    if (peer->unk9 != 0x4B) {
        goto block_19;
    }
    var_r9 += 1;
sub_08065230(&S.gfx, (s32) var_r8->x, (s32) var_r8->y, 1U, 0);
block_19:
    var_r8++;
    var_r5++;
    var_r6 += 1;
loop_20:
    if (var_r6 < sub_08002164()) {
        goto block_11;
    }
    if (sub_080022F4() == 0) {
        goto block_31;
    }
    if (var_r9 != (sub_08002164() - 1)) {
        goto block_31;
    }
sub_08065370(&S.gfx, 2U, (s32) &S.a, (s32) &S.b, 1);
sub_08065230(&S.gfx, 0x78, 0x3C, 2U, (s32) S.a);
    if (!(1 & pressed66)) {
        goto block_27;
    }
    if (S.active != 0) {
        goto block_26;
    }
    sub_08006D08(0xFU);
block_26:
    S.result = 1;
    S.active = 1;
block_27:
    if (S.active == 0) {
        goto block_32;
    }
    var_sl += 1;
    peer = peer66(0U);
    peer->unk8 = 0x47;
    peer->unk9 = 0x4F;
    if (var_sl <= 5U) {
        goto block_30;
    }
    goto block_69;
block_30:
    goto block_32;
block_31:
    S.active = 0;
    var_sl = 0;
    peer = peer66(0);
    peer->unk8 = 0;
    peer->unk9 = 0;
block_32:
    peer = peer66(0U);
    var_r0_2 = sub_0800CE30();
    if (var_r0_2 == 0) {
        goto block_34;
    }
    var_r0_2 = 1;
block_34:
    peer->unkA = (u8) var_r0_2;
    if (*(u32 *)gUnk_03004210 != 1) {
        goto block_36;
    }
    peer->unkA = (u8) (peer->unkA | 2);
    S.mode = 1;
    goto block_37;
block_36:
    peer->unkA = (u8) (0xFD & peer->unkA);
    S.mode = 0;
block_37:
    if (2 & pressed66) {
        goto block_39;
    }
    goto block_68;
block_39:
    if (var_sl == 0) {
        goto block_41;
    }
    goto block_68;
block_41:
    sub_0805865C(0x10);
    S.result = 0;
    goto block_69;
block_42:
        peer = peer66(sub_080020F4());
    peer->unkC = 0;
    peer->unk8 = 0x4F;
    peer->unk9 = 0x4B;
    peer = peer66(0U);
    if (peer->unk8 != 0x47) {
        goto block_45;
    }
    if (peer->unk9 != 0x4F) {
        goto block_45;
    }
    goto block_2;
block_45:
    var_r6_2 = 0;
    var_r7 = coords66;
    var_r5_2 = &S.count[0];
    goto loop_61;
block_46:
    peer = peer66(var_r6_2);
    if (gUnk_03002730 & (1 << var_r6_2)) {
        goto block_48;
    }
    *var_r5_2 += 1;
    goto block_49;
block_48:
    *var_r5_2 = 0;
block_49:
    if ((u32) *var_r5_2 <= 5U) {
        goto block_51;
    }
    peer->unk8 = 0U;
    peer->unk9 = 0U;
block_51:
    if (peer->unk8 != 0x4F) {
        goto block_54;
    }
    if (peer->unk9 != 0x4B) {
        goto block_54;
    }
sub_08065230(&S.gfx, (s32) var_r7->x, (s32) var_r7->y, 1U, 0);
    goto block_60;
block_54:
    if (var_r6_2 != 0) {
        goto block_60;
    }
    if (!(1 & peer->unkA)) {
        goto block_57;
    }
    sub_0800CE08();
    goto block_58;
block_57:
    sub_0800CE1C();
block_58:
    S.mode = (u32) (0 - (u8) (2 & peer->unkA)) >> 0x1F;
    if ((u32) *var_r5_2 > 5U) {
        goto block_60;
    }
sub_08065230(&S.gfx, (s32) var_r7->x, (s32) var_r7->y, 1U, 0);
block_60:
    var_r7++;
    var_r5_2++;
    var_r6_2 += 1;
loop_61:
    if (var_r6_2 < sub_08002164()) {
        goto block_46;
    }
    if (!(2 & pressed66)) {
        goto block_65;
    }
    if (S.active != 0) {
        goto block_66;
    }
    S.result = 0;
    sub_0805865C(0x10);
    S.active = 1;
    var_sl = 0;
block_65:
    if (S.active == 0) {
        goto block_68;
    }
block_66:
    oldTimer = var_sl;
    var_sl += 1;
    if (oldTimer <= 0x3CU) {
        goto block_68;
    }
    goto block_3;
block_68:
sub_08065230(&S.gfx, 0x78, 0x3C, 0U, (s32) (u16) (sub_08002164() - 1));
    sub_080003F0();
    goto loop_8;
block_69:
    if (S.result != 1) {
        goto block_71;
    }
    sub_0801ABE8(6);
    sub_080003F0();
    goto block_73;
block_71:
    call66_0801AA8C(0xA);
block_72:
    sub_080003F0();
block_73:
    if (sub_0801AAE0() == 0) {
        goto block_72;
    }
    if (S.result == 0) {
        goto block_77;
    }
    if (S.result == 1) {
        goto block_80;
    }
    goto block_83;
block_77:
        peer = peer66(sub_080020F4());
    peer->unk8 = *(u8 *)&S.result;
    peer->unk9 = *(u8 *)&S.result;
    peer->unkA = *(u8 *)&S.result;
    peer->unkB = *(u8 *)&S.result;
    sub_080020E0();
    var_r6_3 = 0;
loop_78:
    sub_080003F0();
    var_r6_3 += 1;
    if (var_r6_3 <= 0x45U) {
        goto loop_78;
    }
    sub_08000420(0x14);
    goto block_83;
block_80:
    sub_080021C4();
    if (S.mode == 0) {
        goto block_82;
    }
    call66_08088914();
    call66_080003F4(0x5A112EBF, 2);
block_82:
    sub_0800CB3C(1);
block_83:
    call66_0800035C();
    return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080066BC);
#endif
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
void sub_08006C14_(void)
{
    if (gUnk_03002870 != 0) {
        gUnk_03002870 = 0;
        m4aSoundVSyncOff();
    }
}
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
