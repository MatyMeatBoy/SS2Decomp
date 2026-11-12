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
extern u16 screen000[] asm("gUnk_03001250");
extern const u16 languages000[] asm("gUnk_08366DC0");
extern u16 repeatMenu000 asm("gUnk_03001308");
extern u16 pressedMenu000 asm("gUnk_03001324");
extern void spriteInitMenu000(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void spriteDrawMenu000(void *,s32,s32,u32,s32) asm("sub_08065230");
void sub_0800232C(void) {
    u32 sprite[13];
    s32 sp38;
    s32 temp_r0;
    u32 zero;
    register u32 menuInput asm("r1");
    register u32 rightMask asm("r2");
    u32 navigationCondition;
    u32 navigationCopy;
    u32 configValue;
    s32 var_r6;
    u32 var_r4;
    u32 var_r4_2;

    
    temp_r0 = sub_0801AB24();
    if (temp_r0 == 0) {
        sub_08000A34(1, 0, 0, 0, temp_r0);
        sub_080009F8(0xF00, 0, 0);
        sub_080009C0(0x200, 0, 0);
        sp38 = (sp38 & 0xFFFF0000) | 0x1C08;
        sub_08000AA8(0U, (u16 *) &sp38);
        configValue=0x1D03;
        
        *(u16 *)&sp38 = configValue;
        sub_08000AA8(1U, (u16 *) &sp38);
        sub_0800BCDC(0, 1, 0x06000000, 0U, 0x10U);
        sub_08000940();
        sub_0801AB90(0x14);
    } else {
        sub_08000A34(1, 0, 0, 0, 1);
        sub_080009F8(0xF00, 0, 1);
        sub_080009C0(0x200, 0, 1);
        zero=0;
        
        configValue=0x1C08;
        
        *(u16 *)&sp38 = configValue;
        sub_08000AA8(0U, (u16 *) &sp38);
        configValue=0x1D03;
        
        *(u16 *)&sp38 = configValue;
        sub_08000AA8(1U, (u16 *) &sp38);
        sub_0800BCDC(0, 1, 0x06000000, 0U, 0x10U);
        screen000[2] = zero;
        screen000[3] = zero;
        if (sub_0801AB24() == 2) {
            sub_0801AB90(6);
        } else {
            sub_0801AB50(6);
        }
    }
    while (sub_0801AAE0() == 0) {
        sub_080920A0();
        sub_080003F0();
    }
    var_r4 = 0;
    do {
        sub_080920A0();
        sub_080003F0();
        var_r4 += 1;
    } while (var_r4 <= 0xB3U);
    sub_0801AA8C(0x1E);
    while (sub_0801AAE0() == 0) {
        sub_080920A0();
        sub_080003F0();
    }
    sub_0800BCDC(0x4A, 1, 0x06000000, 0U, 0x10U);
    spriteInitMenu000(sprite, 0x50156, 0, 1, 0);
    sub_080009C0(0x1200, 0, 1);
    sub_0801AA34(6);
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
    var_r4_2 = 0;
    while (!(1 & pressedMenu000)) {
        switch (var_r4_2) {                         /* irregular */
        case 0:
            if (0x10 & repeatMenu000) {
                var_r4_2 = 1;
                sub_08006D08(0xEU);
                var_r6 = 0x10;
            } else {
                if (!(0x80 & repeatMenu000)) break;
                goto block_30;
            }
            break;
        case 1:
            menuInput=repeatMenu000;
            rightMask=0x10;
            if (rightMask & menuInput) {
                sub_08006D08(0xEU);
                var_r4_2 = 2;
                var_r6 = 0x10;
            } else if (0x20 & menuInput) {
                sub_08006D08(0xEU);
                var_r4_2 = 0;
                var_r6 = 0x20;
            } else if (0x80 & menuInput) {
                navigationCopy=var_r6;
                
                navigationCondition=navigationCopy & rightMask;
                
                if (navigationCondition) {
                    sub_08006D08(0xEU);
                    var_r4_2 = 4;
                } else {
block_30:
                    sub_08006D08(0xEU);
                    var_r4_2 = 3;
                }
            }
            break;
        case 2:
            if (0x20 & repeatMenu000) {
                var_r4_2 = 1;
                var_r6 = 0x20;
                goto block_46;
            }
            if (0x80 & repeatMenu000) {
                var_r4_2 = 4;
                goto block_46;
            }
            break;
        case 3:
            menuInput=repeatMenu000;
            rightMask=0x10;
            if (rightMask & menuInput) {
                var_r4_2 = 4;
                var_r6 = 0x10;
                goto block_46;
            }
            if (0x40 & menuInput) {
                navigationCopy=var_r6;
                
                navigationCondition=navigationCopy & rightMask;
                
                if (navigationCondition) {
                    var_r4_2 = 1;
                    asm("" : : "r"(var_r4_2));
                } else {
                    var_r4_2 = 0;
                    
                }
                goto block_46;
            }
            break;
        case 4:
            if (0x20 & repeatMenu000) {
                var_r4_2 = 3;
                var_r6 = 0x20;
                goto block_46;
            }
            if (0x40 & repeatMenu000) {
                if (0x10 & var_r6) {
                    var_r4_2 = 2;
block_46:
                    sub_08006D08(0xEU);
                } else {
                    var_r4_2 = 1;
                    sub_08006D08(0xEU);
                }
            }
            break;
        }
        spriteDrawMenu000(sprite, 0x78, 0x50, 1U, (s32) var_r4_2);
        spriteDrawMenu000(sprite, 0x78, 0x50, 0U, 0);
        sub_080003F0();
    }
    sub_08006D08(0xFU);
    sub_0801AA8C(0x3C);
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
    gUnk_03003470 = (s32) languages000[var_r4_2];
    sub_080003F0();
    sub_08000420(0x14);
}
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
extern u16 gUnk_03001308;
extern u16 gUnk_0300130C;
extern void anim2694(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
extern void draw2694(void *, s32, s32, u16, u16) asm("sub_08065230");
extern void init2694(void *, s32, s32, s32, s32) asm("sub_08065158");
extern void bg2694(u16, u32 *) asm("sub_08000AA8");
void sub_08002694(void)
{
    u8 anim[0x34];
    u16 frame, tick;
    struct { u32 lo:16; u32 hi:16; } cnt;
    u16 i;
    s32 running, started, link;

    sub_0805F07C();
    sub_080003F0();
    sub_08006E64(1);
    for (;;) {
        sub_080003F4(0x14);
        if (*(u8 *)&gUnk_0300129C & 0x80)
            sub_08000940();
        if (sub_08002228() != 0)
            sub_080020E0();
        while (sub_08002228() != 0)
            sub_080003F0();
        if (sub_08002228() == 0)
            sub_0800208C(1);
        link = 0;
        sub_080013F8();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_08000A34(1, 0, 0, 0, link);
        sub_080009F8(0xF00, 0, 1);
        sub_080009C0(0x1200, 0, 1);
        cnt.lo = 0x1C08;
        bg2694(0, (u32 *)&cnt);
        cnt.lo = 0x1D00;
        bg2694(1, (u32 *)&cnt);
        gUnk_03001250[0] = link;
        gUnk_03001250[1] = link;
        gUnk_03001250[2] = link;
        gUnk_03001250[3] = link;
        gUnk_03001250[4] = link;
        gUnk_03001250[5] = link;
        gUnk_03001250[6] = link;
        gUnk_03001250[7] = link;
        sub_0800BCDC(0x37, 1, 0x06000000, 0, 0x10);
        switch (gUnk_03003470) {
        case 0:
            init2694(anim, 0x50000, 0xE, 1, 0);
            break;
        case 1:
            init2694(anim, 0x5015A, 0xE, 1, 0);
            break;
        case 2:
            init2694(anim, 0x50158, 0xE, 1, 0);
            break;
        case 3:
            init2694(anim, 0x50159, 0xE, 1, 0);
            break;
        case 4:
            init2694(anim, 0x50157, 0xE, 1, 0);
            break;
        }
        sub_080003F0();
        sub_080003F0();
        gUnk_03002838 = 0;
        running = 1;
        started = 0;
        frame = 0;
        tick = 0;
        sub_08006C70(0xC5);
        for (i = 0; i <= 0x13; i++)
            sub_080003F0();
        if (sub_0801AB24() == 0)
            sub_0801AA34(6);
        else
            sub_0801AB50(6);
        while (running != 0) {
            if (started != 0) {
                if (gUnk_03001308 & 0x80) {
                    sub_08006D08(0xE);
                    gUnk_03002838 = 1;
                    goto draw;
                }
                if (gUnk_03001308 & 0x40) {
                    i = 0;
                    sub_08006D08(0xE);
                    gUnk_03002838 = i;
                    goto draw;
                }
                if (*(u16 *)&gUnk_03001324 & 1) {
                    if ((gUnk_0300130C & 8) && sub_08092080() != 0) {
                        gUnk_03002838 = 3;
                        sub_08006D08(0xF);
                        goto done;
                    }
                    sub_08006D08(0xF);
                    running = 0;
                }
            } else if (*(u16 *)&gUnk_03001324 & 8) {
                started = 1;
                sub_08006D08(0xF);
            }
        draw:
            if (started != 0) {
                draw2694(anim, 0x78, 0x82, 0, gUnk_03002838);
            } else {
                anim2694(anim, 4, &frame, &tick, 1);
                draw2694(anim, 0x78, 0x88, 4, frame);
            }
            sub_080003F0();
        }
    done:
        sub_08006C30(2);
        if (started != 0) {
            frame = 0;
            tick = 0;
        }
        sub_0801ABE8(3);
        while (sub_0801AAE0() == 0) {
            if (started != 0) {
                if (link == 0) {
                    anim2694(anim, gUnk_03002838 + 1, &frame, &tick, 1);
                    draw2694(anim, 0x78, 0x64, gUnk_03002838 + 1, frame);
                } else {
                    draw2694(anim, 0x78, 0x64, 0, gUnk_03002838);
                }
            } else {
                anim2694(anim, 4, &frame, &tick, 1);
                draw2694(anim, 0x78, 0x70, 4, frame);
            }
            draw2694(anim, 0x78, 0x5A, 3, 0);
            sub_080003F0();
        }
        sub_08065204(anim);
        sub_0805F07C();
        switch (gUnk_03002838) {
        case 0:
            if (sub_08002228() != 0)
                sub_080020E0();
            while (sub_08002228() != 0)
                sub_080003F0();
            sub_0800208C(0);
            sub_080065B0();
            break;
        case 1:
            if (sub_08002228() == 0)
                sub_0800208C(1);
            sub_080065B0();
            break;
        case 2:
            sub_08088914();
            break;
        case 3:
            sub_080920E4();
            break;
        }
    }
}
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
struct Save2B70 {
    u8 used;
    u8 cls;
    u8 pal;
    u8 pad3[2];
    u8 copy;
    u8 f6;
    u8 f7;
    u8 pad8[4];
    u16 fC;
    u8 padE[2];
    u8 name[0xC];
    s16 f1C;
    s16 f1E;
    s16 f20;
    s16 f22;
    u8 pad24[8];
    s32 level;
    u8 pad30[0xC];
    s16 f3C;
    s16 f3E;
    u8 pad40[0x20];
    s16 stat[6];
};
struct Chr2B70 {
    u32 f0;
    u32 f4;
    u32 f8;
    u8 *fC;
    u8 pad10[0xC];
    u8 id;
    u8 pad1D[0x17];
};
struct Pos2B70 {
    s32 x;
    s32 y;
};
extern struct Pos2B70 pos2B70[] asm("gUnk_08366DCC");
extern s32 posY2B70[] asm("gUnk_08366DD0");
struct Cls2B70 {
    u32 obj;
    u8 pad[0x54];
};
extern struct Cls2B70 cls2B70[] asm("gUnk_08479140");
extern u8 cursor2B70[] asm("gUnk_080B99D4");
extern u16 keys2B70 asm("gUnk_03001324");
extern u16 rep2B70 asm("gUnk_03001308");
extern u32 sel2B70 asm("gUnk_03002838");
extern s32 mode2B70 asm("gUnk_03003470");
extern u32 *cfg2B70 asm("gUnk_03004210");
extern u16 bgofs2B70[] asm("gUnk_03001250");
extern struct Unk030061E0 task2B70 asm("gUnk_03003480");
extern void *memcpy2B70(void *, const void *, u32) asm("memcpy");
extern struct Save2B70 *alloc2B70(u32) asm("sub_08001494");
extern void *loadAll2B70() asm("sub_0807A378");
extern void *blank2B70(void) asm("sub_080653CC");
extern void init2B70(void *, u32, s32, u32, s32) asm("sub_08065158");
extern void anim2B70(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
extern void draw2B70(void *, s32, s32, u16, s32) asm("sub_08065230");
extern void drawB2B70(void *, s32, s32, s32, s32) asm("sub_08065264");
extern u32 vmode2B70(u8) asm("sub_08001108");
extern u32 handler2B70(u32) asm("sub_0800115C");
extern void se2B70(s32) asm("sub_0805865C");
extern void clear2B70(s32, s32) asm("sub_0801A664");
extern u8 *msg2B70(s32) asm("sub_08007290");
extern u8 *msgB2B70(s32) asm("sub_08007290");
extern void text2B70(u8 *, u16, u16) asm("sub_0801A3D0");
extern void num2B70(s32, s32, s32, s32) asm("sub_0805FB7C");
extern void obj2B70(s32, s32, u16, u16, s32, void *, u32, u32) asm("sub_08007CF0");
extern void pal2B70(u32, const void *, u32) asm("sub_08000AF0");
extern void wait2B70(u64) asm("sub_080003F4");
extern void start2B70() asm("sub_08000274");
extern void erase2B70(u8) asm("sub_0807A2E0");
extern void store2B70(struct Save2B70 *, u8) asm("sub_0807A4B4");
extern void fadeOut2B70(s32) asm("sub_080586D0");
extern void bgmStop2B70(s32) asm("sub_080586B4");
extern void bgmPlay2B70(s32) asm("sub_08058688");
extern void bgmWait2B70(u16) asm("sub_08057624");
extern void winOpen2B70(s32) asm("sub_0801AB50");
extern void winClose2B70(s32) asm("sub_0801ABE8");
extern s32 winDone2B70(void) asm("sub_0801AAE0");
extern void blend2B70(s32, s32, s32, s32, s32, s32) asm("sub_0800903C");
extern void free2B70(void *) asm("sub_08001538");
extern s32 link2B70(void) asm("sub_08002204");
extern void sub_08003984();
extern void sub_0800608C(void);
extern void sub_08005B88(void);
extern void sub_08006694(void);

static inline void run2B70(struct Save2B70 *s)
{
    u8 *buf = (u8 *)alloc2B70(0x2000);

    if (sel2B70 == 1)
        task2B70.fC = sub_0800608C;
    else
        task2B70.fC = sub_08005B88;
    task2B70.f10 = buf + 0x1FFC;
    task2B70.f20 = buf;
    task2B70.f8 = 10;
    task2B70.f24 = 0;
    start2B70(&task2B70, s);
    wait2B70(0x25A112EBFULL);
}

static inline void newGame2B70(struct Save2B70 *s, void *all)
{
    u8 *buf = (u8 *)alloc2B70(0x2000);

    task2B70.fC = sub_08003984;
    task2B70.f10 = buf + 0x1FFC;
    task2B70.f20 = buf;
    task2B70.f8 = 10;
    task2B70.f24 = 0;
    start2B70(&task2B70, s, all);
}

void sub_08002B70_(void) asm("sub_08002B70");
/* Save-slot select screen (8 slots, copy / erase prompts). */
void sub_08002B70_(void)
{
    struct Chr2B70 chars[8];
    u8 objA[0x34];
    u8 objB[0x34];
    u16 frame[8];
    u16 timer[8];
    u16 anim[8];
    u8 cursor[4];
    u16 yesFrame;
    u16 yesTimer;
    u16 noFrame;
    u16 noTimer;
    u32 result;
    u32 slot;
    u32 state;
    u32 prev;
    u32 yes;
    u32 loop;
    u32 blink;
    u16 blinkTimer;
    void *all;
    u32 fade;
    s32 cx, cy, tx, ty;
    struct Save2B70 *saves;
    u32 oldHandler;
    u8 oldMode;
    struct Save2B70 *s;
    u8 *buf;
    void *tmp;
    u8 *str;
    u32 scroll;
    u16 i;
    vu16 *v;
    vu16 *w;
    u32 c;

    memcpy2B70(cursor, cursor2B70, 2);
    sub_08002AA0();
    sub_080003F0();
    sub_080003F0();
    saves = alloc2B70(0x360);
    all = loadAll2B70();
    winOpen2B70(3);
    state = 0;
    slot = 0;
    result = 0;
    blink = 0;
    noTimer = 0;
    yesTimer = result;
    noFrame = result;
    yesFrame = result;
    for (i = 0; i < 8; i++) {
        frame[i] = 0;
        timer[i] = 0;
        if (saves[i].used) {
            init2B70(&chars[i], cls2B70[saves[i].cls].obj, 0, 1, 0);
            anim[i] = 8;
            chars[i].id = i;
        } else {
            tmp = blank2B70();
            memcpy2B70(&chars[i], tmp, 0x34);
            anim[i] = 6;
        }
    }
    memcpy2B70(objA, blank2B70(), 0x34);
    cx = tx = pos2B70[slot].x;
    cy = ty = pos2B70[slot].y;
    switch (mode2B70) {
    case 0:
        init2B70(objB, 0x50002, 0, 0x80000000, 0);
        break;
    case 1:
        init2B70(objB, 0x5015B, 0, 0x80000000, 0);
        break;
    case 2:
        init2B70(objB, 0x5015C, 0, 0x80000000, 0);
        break;
    case 3:
        init2B70(objB, 0x5015D, 0, 0x80000000, 0);
        break;
    case 4:
        init2B70(objB, 0x5015E, 0, 0x80000000, 0);
        break;
    }
    oldMode = vmode2B70(0x88);
    oldHandler = handler2B70((u32)sub_08006694);
    sub_08000D8C();
    bgmPlay2B70(0x6F);
    loop = 1;
    fade = 1;
    do {
        if (winDone2B70() == 0)
            keys2B70 = 0;
        switch (state) {
        case 0:
            if (keys2B70 == 1) {
                se2B70(0xF);
                state = 1;
                clear2B70(0x11, 2);
                break;
            }
            text2B70(msg2B70(0x140445) + 2, 1, 0x11);
            if (blink)
                text2B70(cursor, 0x1C, 0x11);
            if (blinkTimer++ < 0x1E)
                blink = 1;
            else if (blinkTimer > 0x1D)
                blink = 0;
            if (blinkTimer > 0x28)
                blinkTimer = 0;
            break;
        case 1:
            if (keys2B70 == 1) {
                result = 1;
                s = (struct Save2B70 *)(slot * sizeof(struct Save2B70) + (u32)saves);
                if (s->used == 0) {
                    se2B70(0xF);
                    winClose2B70(3);
                    fadeOut2B70(4);
                    while (winDone2B70() == 0)
                        sub_080003F0();
                    bgmStop2B70(0x6F);
                    bgmWait2B70(0x3C);
                    sub_08000E48();
                    oldHandler = handler2B70(oldHandler);
                    vmode2B70(oldMode);
                    newGame2B70(&saves[slot], all);
                    wait2B70(0x25A112EBFULL);
                    if (saves[slot].used == 0) {
                        oldMode = vmode2B70(0x88);
                        oldHandler = handler2B70((u32)sub_08006694);
                        sub_08000D8C();
                        bgmPlay2B70(0x6F);
                        sub_08002AA0();
                        sub_080003F0();
                        sub_080003F0();
                        frame[slot] = 0;
                        timer[slot] = 0;
                        tmp = blank2B70();
                        memcpy2B70(&chars[slot], tmp, 0x34);
                        anim[slot] = 6;
                        winOpen2B70(3);
                    } else {
                        if (sel2B70 == 0) {
                            sub_08088914();
                            wait2B70(0x25A112EBFULL);
                            fade = 0;
                        }
                        loop = 0;
                    }
                } else if (s->fC != 0xFFFF) {
                    winClose2B70(3);
                    fadeOut2B70(4);
                    while (winDone2B70() == 0)
                        sub_080003F0();
                    sub_08000E48();
                    oldHandler = handler2B70(oldHandler);
                    vmode2B70(oldMode);
                    run2B70(&saves[slot]);
                    loop = 0;
                    break;
                } else {
                    if (link2B70() != 0 && s->copy != 0) {
                        state = 7;
                        yes = 0;
                    } else {
                        saves[slot].f7 = 0;
                        result = 1;
                        loop = 0;
                    }
                    se2B70(0xF);
                }
            } else if (keys2B70 == 2) {
                se2B70(0x10);
                result = 0;
                loop = 0;
                break;
            } else if (keys2B70 == 4 && saves[slot].used) {
                state = 2;
                se2B70(0xF);
            }
            if (rep2B70 & 0x20) {
                se2B70(0xE);
                if (slot > 3)
                    slot -= 4;
            } else if (rep2B70 & 0x10) {
                se2B70(0xE);
                if (slot <= 3)
                    slot += 4;
            } else if (rep2B70 & 0x40) {
                se2B70(0xE);
                if (slot == 0)
                    slot = 3;
                else if (slot == 4)
                    slot = 7;
                else
                    slot--;
            } else if (rep2B70 & 0x80) {
                se2B70(0xE);
                if (slot == 3)
                    slot = 0;
                else if (slot == 7)
                    slot = 4;
                else
                    slot++;
            }
            if (slot != prev) {
                prev = slot;
                tx = pos2B70[slot].x;
                ty = pos2B70[slot].y;
            }
            if (saves[slot].used == 0)
                text2B70(msg2B70(0x140449) + 2, 1, 0x11);
            else
                text2B70(msgB2B70(0x14044A) + 2, 1, 0x11);
            break;
        case 2:
            if (rep2B70 & 0x20) {
                if (yes == 1)
                    se2B70(0xC6);
                yes = 0;
            } else if (rep2B70 & 0x10) {
                if (yes == 0)
                    se2B70(0xC7);
                yes = 1;
            } else if (keys2B70 == 1) {
                if (yes == 0) {
                    state = 3;
                    yes = 1;
                    se2B70(0xF);
                } else {
                    state = 1;
                    se2B70(0x10);
                }
            } else if (keys2B70 == 2) {
                state = 1;
                se2B70(0x10);
            }
            if (yes) {
                anim2B70(objB, 5, &yesFrame, &yesTimer, 1);
                draw2B70(objB, 0x78, 0x78, 9, 0);
                drawB2B70(objB, 0x88, 0x78, 5, noFrame);
                draw2B70(objB, 0x68, 0x78, 4, yesFrame);
            } else {
                anim2B70(objB, 4, &noFrame, &noTimer, 1);
                draw2B70(objB, 0x78, 0x78, 8, 0);
                draw2B70(objB, 0x88, 0x78, 5, noFrame);
                drawB2B70(objB, 0x68, 0x78, 4, yesFrame);
            }
            text2B70(msg2B70(0x140446) + 2, 2, 0x11);
            break;
        case 3:
            if (rep2B70 & 0x20) {
                if (yes == 1)
                    se2B70(0xC6);
                yes = 0;
            } else if (rep2B70 & 0x10) {
                if (yes == 0)
                    se2B70(0xC7);
                yes = 1;
            } else if (keys2B70 == 1) {
                if (yes == 0) {
                    state = 4;
                    clear2B70(0x11, 2);
                    break;
                }
                se2B70(0x10);
                state = 1;
            }
            if (yes) {
                anim2B70(objB, 5, &yesFrame, &yesTimer, 1);
                draw2B70(objB, 0x78, 0x78, 9, 0);
                drawB2B70(objB, 0x88, 0x78, 5, noFrame);
                draw2B70(objB, 0x68, 0x78, 4, yesFrame);
            } else {
                anim2B70(objB, 4, &noFrame, &noTimer, 1);
                draw2B70(objB, 0x78, 0x78, 8, 0);
                draw2B70(objB, 0x88, 0x78, 5, noFrame);
                drawB2B70(objB, 0x68, 0x78, 4, yesFrame);
            }
            text2B70(msg2B70(0x140447) + 2, 2, 0x11);
            break;
        case 4:
            sub_08006C14();
            erase2B70(slot);
            sub_08006BF8();
            yes = 1;
            state = 5;
            loadAll2B70(saves);
            tmp = blank2B70();
            memcpy2B70(&chars[slot], tmp, 0x34);
            anim[slot] = 6;
            break;
        case 5:
            if (keys2B70 != 0)
                state = 1;
            text2B70(msg2B70(0x140448) + 2, 2, 0x11);
            if (blink)
                text2B70(cursor, 0x1B, 0x11);
            if (blinkTimer++ < 0x1E)
                blink = 1;
            else if (blinkTimer > 0x1D)
                blink = 0;
            if (blinkTimer > 0x28)
                blinkTimer = 0;
            break;
        case 7:
            draw2B70(objA, 0x82, 0x28, 0x26, yes != 0);
            draw2B70(objA, 0xB4, 0x28, 0x27, yes == 0);
            if (yes)
                str = msg2B70(0x14044C);
            else
                str = msgB2B70(0x14044B);
            text2B70(str + 2, 2, 0x11);
            if (rep2B70 & 0x20) {
                if (yes == 1)
                    se2B70(0xE);
                yes = 0;
            } else if (rep2B70 & 0x10) {
                if (yes == 0)
                    se2B70(0xE);
                yes = 1;
            } else if (keys2B70 == 1) {
                result = 1;
                winClose2B70(3);
                fadeOut2B70(4);
                while (winDone2B70() == 0)
                    sub_080003F0();
                sub_08000E48();
                oldHandler = handler2B70(oldHandler);
                vmode2B70(oldMode);
                saves[slot].f7 = yes;
                if (saves[slot].fC != 0xFFFF) {
                    run2B70(&saves[slot]);
                } else
                    loop = 0;
            } else if (keys2B70 == 2)
                state = 1;
            break;
        }
        cx += (tx - cx) / 2;
        cy += (ty - cy) / 2;
        if (state)
            draw2B70(objA, cx, cy, 0xB, 0);
        for (i = 0; i < 8; i++) {
            anim2B70(&chars[i], anim[i], &frame[i], &timer[i], 1);
            if (saves[i].used)
                pal2B70(i + 16, chars[i].fC + saves[i].pal * 32, 1);
            {
                u32 off = i * 8;
                register u32 tableX asm("r2");
                register u32 tableY asm("r3");
                register u32 address asm("r0");
                s32 x, y;

                tableX = (u32)pos2B70;
                address = off + tableX;
                /* Preserve the X address before loading the separate Y table. */
                
                x = *(s32 *)address;
                tableY = (u32)posY2B70;
                y = *(s32 *)(off + tableY);
                obj2B70(x, y, anim[i], frame[i], 0, &chars[i].id, chars[i].f8, chars[i].f0);
            }
        }
        s = (struct Save2B70 *)(slot * sizeof(struct Save2B70) + (u32)saves);
        num2B70(0x15, 1, s->level + 1, 0);
        if (s->fC != 0xFFFF) {
            if (s->used == 0)
                goto clear;
            v = (vu16 *)0x0600E86E;
            *v++ = 0x1BB;
            *v++ = 0x1BC;
            *v++ = 0x1BD;
            *v++ = 0x1BE;
            *v++ = 0x1BF;
        } else if (s->used) {
            v = (vu16 *)0x0600E86E;
            *v++ = 0x1DB;
            *v++ = 0x1DC;
            *v++ = 0x1DD;
            *v++ = 0x1DE;
            *v++ = 0x1DF;
        } else {
        clear:
            w = (vu16 *)0x0600E86E;
            *w++ = 0;
            *w++ = 0;
            *w++ = 0;
            *w++ = 0;
            *w++ = 0;
        }
        s = (struct Save2B70 *)(slot * sizeof(struct Save2B70) + (u32)saves);
        num2B70(0x15, 5, s->f3C, 0);
        num2B70(0x15, 7, s->f3E, 0);
        num2B70(0x15, 9, s->f22, 0);
        num2B70(0x15, 0xB, s->f1C, 0);
        num2B70(0x15, 0xD, s->f1E, 0);
        num2B70(0x15, 0xF, s->f20, 0);
        num2B70(0x1C, 5, s->stat[0], 0);
        num2B70(0x1C, 7, s->stat[1], 0);
        num2B70(0x1C, 9, s->stat[2], 0);
        num2B70(0x1C, 0xB, s->stat[3], 0);
        num2B70(0x1C, 0xD, s->stat[4], 0);
        num2B70(0x1C, 0xF, s->stat[5], 0);
        if (s->used)
            text2B70(s->name, 0x10, 2);
        else
            clear2B70(2, 2);
        bgofs2B70[6] = scroll >> 8;
        scroll += 0x40;
        sub_080003F0();
    } while (loop);
    if (fade) {
        fadeOut2B70(5);
        winClose2B70(6);
        while (winDone2B70() == 0)
            sub_080003F0();
    }
    sub_080003F0();
    sub_080003F0();
    sub_08000E48();
    handler2B70(oldHandler);
    vmode2B70(oldMode);
    clear2B70(2, 0x11);
    sub_080003F0();
    store2B70(saves, slot);
    if (result) {
        c = *cfg2B70;
        if (c - 3 <= 1) {
            *cfg2B70 = 2;
            sub_08006C14();
            sub_0807A124();
            sub_08006BF8();
            if (saves[slot].f6 == 0)
                *cfg2B70 = c;
        }
    }
    se2B70(0x24);
    blend2B70(0, 0, 0, 0, 0, 0);
    free2B70(saves);
    switch (result) {
    case 0:
        sub_08000420(0x14);
        break;
    case 1:
        switch (sel2B70) {
        case 0:
            sub_0800CB3C(0);
            break;
        case 1:
            sub_08006B2C();
            break;
        }
        break;
    }
}
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
    u32 confirmKeys3984;
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
    u16 *var_r1_8;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_6;
    s32 temp_r2;
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
    u16 *var_r4_2;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_14;
    u16 temp_r0_19;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r1_5;
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
    u16 var_r9;
    u32 temp_r0_18;
    u32 temp_r0_6;
    u32 temp_r0_7;
    u32 temp_r0_8;
    u32 temp_r0_9;
    u32 temp_r1_3;
    u32 temp_r4_12;
    u32 temp_r4_13;
    u32 temp_r4_20;
    u32 temp_r4_21;
    u32 temp_r4_2;
    u32 temp_r5_9;
    u32 temp_r6;
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
    u8 *temp_r4_19;
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
    u8 *nm;
    u8 *var_r7;
    u32 temp_r0_10;
    u32 temp_r0_11;
    u8 temp_r0_16;
    u8 temp_r0_17;
    u8 temp_r0_22;
    u8 var_r1_2;
    void *temp_r0_3;
    u32 vramBase3984 = 0x06000000;
    u32 zeroElse3984 = 0;
    u32 yTable3984 = (u32)&gUnk_08366E0E;

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
        u32 vramC7 = 0x06000000;
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
            u32 initWidthC8 = (u32)widths;
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
                        { u8 *baseC13 = (u8 *)rows3984; u32 offC13 = var_r8 * 0x21; *(baseC13 + (var_r6 + offC13)) = var_r1_2; }
                        if (({ u32 cmpC13; asm("" : "=l"(cmpC13) : "0"(var_r1_2)); cmpC13; }) == 0xFF) {
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
        switch (state) {                            /* menu cursor */
        case 0:
            if ((u16)(gUnk_03001308 & 0x10)) {
                state = 1;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x60)) {
                state = 6;
                if (arg1 != 0)
                    state = 8;
                widths[state] = heights[state] = 0;
                sub_0805865C(0xE);
            } else if ((u16)(gUnk_03001308 & 0x80)) {
                state = 4;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 1:
            if ((u16)(gUnk_03001308 & 0x10)) {
                state = 5;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x20)) {
                state = 0;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x80)) {
                state = 7;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 2:
            if ((u16)(gUnk_03001308 & 0x50)) {
                state = 6;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x80)) {
                state = 3;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 3:
            if ((u16)(gUnk_03001308 & 0x10)) {
                state = 4;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x20)) {
                state = 2;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x40)) {
                state = 4;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 4:
            if ((u16)(gUnk_03001308 & 0x10)) {
                state = 0;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x20)) {
                state = 2;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x40)) {
                state = 6;
                if (arg1 != 0)
                    state = 8;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x80)) {
                state = 3;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 5:
            if ((u16)(gUnk_03001308 & 0x20)) {
                state = 1;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x80)) {
                state = 7;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 6:
            if ((u16)(gUnk_03001308 & 0x20)) {
                state = 2;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x10)) {
                state = arg1 != 0 ? 8 : 0;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x80)) {
                state = 4;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 7:
            if ((u16)(gUnk_03001308 & 0x20)) {
                state = 1;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x40)) {
                state = 5;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        case 8:
            if ((u16)(gUnk_03001308 & 0x10)) {
                state = 0;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x20)) {
                state = 6;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            } else if ((u16)(gUnk_03001308 & 0x80)) {
                state = 4;
                sub_0805865C(0xE);
                widths[state] = heights[state] = 0;
            }
            break;
        }
        confirmKeys3984 = keys3984;
        if (confirmKeys3984 == 1) {
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
            asm("" : : "r"(nameZero3984));
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
        } else if (confirmKeys3984 == 2) {
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
            ((void (*)(unsigned long long))sub_08000420)(0x25A112EBFULL);
            goto epilogue3984;
        } else {
            var_r7 = ((u8 *(*)(s32))sub_08007290)((state + 0x454) | 0x140000);
            var_r7 += 2;
            {
                u32 titleWidthC8;
                u32 titleBaseC8;
                register u32 titleIndexC8 asm("r4");
                u16 *titleXC8;
                u16 *titleYC8;
                s32 titleXValueC8;
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
                { u32 off; sub_08001348(handle + ((index << 7) + (off = 0x7000)), (void *)(vramBase3984 + off), 0x80U); }
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
            asm("" : "=r"(var_r9) : "0"(0));
            temp_r0_12 = (u16) sub_0801A638(arg0 + 0x10);
            next = (u32) temp_r0_12;
            if ((u32) temp_r0_12 > 7U) {
                next = 7;
            }
            bg.half = 0xD800;
            sub_08000AA8(1U, &bg.half);
            sub_080009C0(0x200, 0, 1);
            sub_0800903C(0xC, 0x28, 1, 8, 6, var_r9);
            sub_08006550(0x10, 9, 0x32);
            timer = 5;
            current = var_r9;
        } else {
            if (keys3984 == 2) {
                sub_0805865C(0x10);
                timer = 0;
                M2C_FIELD(arg0, s8 *, 2) = 0;
            }
block_175:
            var_r7 = ((u8 *(*)(s32))sub_08007290)((M2C_FIELD(arg0, u8 *, 2) + 0x4C5) | 0x140000);
            if (state != 2) {
                u32 menuIndexC9;
                u32 menuLanguageC9;
                temp_r5_13 = var_r7 + 2;
                {
                    u32 titleWidthC9;
                    u32 titleBaseC9;
                    u32 titleIndexC9;
                    u32 titleXValueC9;
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
                    var_r1_7 = offsetY + 0x18;
                    asm("" : : "r"(var_r1_7));
                    { register u32 heightC11 asm("r5") = *temp_r5_14; var_r1_7 += heightC11; }
                    var_r1_7 += cursorY;
block_198:
                    sub_08065230(var_r7, var_r1_7, *var_r4_2 - 0x20, 3U, 1);
                    goto after198;
                }
                var_r7 = var_r7 + 2;
                textWidth3984 = sub_0801A638(var_r7);
                {
                    u32 longBaseC9;
                    u32 longStateC9;
                    register u32 longIndexC9 asm("r4");
                    s32 longXC9;
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
        if (keys3984 & 0x20) {
            if (current != 0)
                sub_0805865C(0xC6);
            current = 0;
        } else if (keys3984 & 0x10) {
            if (current == 0)
                sub_0805865C(0xC7);
            current = 1;
        } else if (keys3984 == 1) {
            sub_0805865C(0xF);
            timer = 5;
            if (current == 0)
                timer = 6;
            sub_0801A664(0x12, 2);
            goto block_374;
        } else if (keys3984 == 2) {
            sub_0805865C(0x10);
            timer = 5;
            sub_0801A664(0x12, 2);
            goto block_374;
        }
        sub_08065370(&panel[0], 4U, (s32) &y[0], (s32) &y[2], 1);
        sub_08065370(&panel[0], 5U, (s32) &y[1], (s32) &y[3], 1);
        if (current != 0) {
            sub_08065230(&panel[0], 0xD2, 0x8E, 9U, 0);
            sub_08065264(&panel[0], 0xE2, 0x8E, 5, y[1]);
            sub_08065230(&panel[0], 0xC2, 0x8E, 4U, y[0]);
        } else {
            sub_08065230(&panel[0], 0xD2, 0x8E, 8U, current);
            sub_08065230(&panel[0], 0xE2, 0x8E, 5U, y[1]);
            sub_08065264(&panel[0], 0xC2, 0x8E, 4, y[0]);
        }
        sub_0801A3D0(((u8 *(*)(s32))sub_08007290)(0x140443) + 2, 2U, 0x12U);
        ((void (*)(const u8 *, s32, s32))sub_0801A764)(arg0 + 0x10, 0x58U, 0x10U);
        goto block_374;
    case 5:                                         /* switch 2 */
        sub_08000C08(8, 2);
        if (keys3984 & 0x100) {
            nm = arg0 + 0x10;
            if (var_r9 <= 6) {
                /* Keep the test and store addresses separate through GCSE. */
                if (next == var_r9 || nm[-(-(u32)var_r9 + 1) + 1] == 0xFD) {
                    nm[var_r9] = 0x51;
                    nm[(nextChar13984 = var_r9 + 1)] = 0xFD;
                    var_r9++;
                    next = var_r9;
                } else {
                    var_r9++;
                }
                sub_0805865C(0xE);
            }
        } else if (keys3984 & 0x200) {
            nm = arg0 + 0x10;
            if (var_r9 != 0) {
                var_r9--;
                sub_0805865C(0xE);
            }
        } else if (gUnk_03001308 & 0x40) {
            sub_0805865C(0x62);
            nm = arg0 + 0x10;
            switch (language) {
            case 0:
            case 1:
                if (current < 20)
                    current += 80;
                else
                    current -= 20;
                break;
            case 2:
                if (current < 24)
                    current += 120;
                else
                    current -= 24;
                break;
            }
        } else if (gUnk_03001308 & 0x80) {
            sub_0805865C(0x62);
            nm = arg0 + 0x10;
            switch (language) {
            case 0:
            case 1:
                if (current >= 80)
                    current -= 80;
                else
                    current += 20;
                break;
            case 2:
                if (current >= 120)
                    current -= 120;
                else
                    current += 24;
                break;
            }
        } else if (gUnk_03001308 & 0x10) {
            sub_0805865C(0x62);
            nm = arg0 + 0x10;
            switch (language) {
            case 0:
            case 1:
                if ((u16)(current % 20) == 19)
                    current -= 19;
                else
                    current++;
                break;
            case 2:
                if ((u16)(current % 24) > 22)
                    current -= 23;
                else
                    current++;
                break;
            }
        } else if ((u16)(gUnk_03001308 & 0x20)) {
            sub_0805865C(0x62);
            nm = arg0 + 0x10;
            switch (language) {
            case 0:
            case 1:
                if ((u16)(current % 20) == 0)
                    current += 19;
                else
                    current--;
                break;
            case 2:
                if ((u16)(current % 24) == 0)
                    current += 23;
                else
                    current--;
                break;
            }
        } else if (keys3984 == 1) {
            sub_0805865C(0xF);
            switch (language) {
            case 0:
                { u8 *p = arg0 + 0x10;
                p[var_r9] = gUnk_08366E34[current]; }
                break;
            case 1:
                { u8 *p = arg0 + 0x10;
                p[var_r9] = gUnk_08366EFC[current]; }
                break;
            case 2:
                { u8 *p = arg0 + 0x10;
                p[var_r9] = gUnk_08366FC4[current]; }
                break;
            }
            nm = arg0 + 0x10;
            if (var_r9 <= 6) {
                var_r9++;
                if (var_r9 > next) {
                    nm[var_r9] = 0xFD;
                    next = var_r9;
                }
            } else {
                nm[(nextChar23984 = var_r9 + 1)] = 0xFD;
            }
        } else if (keys3984 == 2) {
            sub_0805865C(0x10);
            if (var_r9 == next) {
                u8 *name = arg0 + 0x10;
                name[var_r9] = 0xFD;
                name[(nextChar33984 = var_r9 + 1)] = 0;
                var_r9--;
                deleteMaskC6 = var_r9 & 0x8000;
                nm = name;
                if (deleteMaskC6) {
                    var_r9 = 0;
                    if (arg0[0x10] == 0xFD) {
                        timer = 3;
                        sub_080009F8(0x200, 0, 1);
                        sub_0800903C(4, 8, 1, 8, 0x10, var_r9);
                        sub_08006544();
                        if (arg0[1] == 8) {
                            sub_0801A664(0, 2);
                            timer = 0;
                            sub_08000C08(0x10, 8);
                        }
                    }
                }
                next = var_r9;
            } else {
                u8 *name = arg0 + 0x10;
                u8 c = name[var_r9];
                nm = name;
                if (c == 0x51) {
                    var_r9--;
                    if (var_r9 & 0x8000) {
                        timer = 3;
                        sub_080009F8(0x200, 0, 1);
                        sub_0800903C(4, 8, 1, 8, 0x10, 0);
                        sub_08006544();
                        if (arg0[1] == 8) {
                            sub_0801A664(0, 2);
                            timer = 0;
                            sub_08000C08(0x10, 8);
                        }
                        var_r9 = 0;
                    }
                } else {
                    nm[var_r9] = 0x51;
                    if (var_r9 == 0) {
                        timer = 3;
                        sub_080009F8(0x200, 0, 1);
                        sub_0800903C(4, 8, 1, 8, 0x10, var_r9);
                        sub_08006544();
                        if (arg0[1] == 8) {
                            sub_0801A664(0, 2);
                            timer = 0;
                            sub_08000C08(0x10, 8);
                        }
                    }
                }
            }
        } else {
            nm = arg0 + 0x10;
            if (keys3984 == 8) {
                if (sub_0801A638(nm) != 0) {
                    var_r3_3 = 0;
                    var_r6 = 0;
                    if (arg0[0x10] != 0x51) {
                        var_r3_3 = arg0[0x10] != 0xFD;
                    } else {
                    loop8_3984:
                        var_r6++;
                        if (var_r6 <= 7) {
                            u8 *q = arg0 + 0x10;
                            temp_r0_17 = q[var_r6];
                            if (temp_r0_17 == 0x51)
                                goto loop8_3984;
                            if (temp_r0_17 != 0xFD)
                                var_r3_3++;
                        }
                    }
                    if (({ register u32 flagC11 asm("r3") = var_r3_3; asm("" : "=r"(flagC11) : "0"(flagC11)); flagC11; }) != 0) {
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
        switch (language) {                                /* switch 8; irregular */
        case 0:                                     /* switch 8 */
            reg3984.h1 = language;
            reg3984.v1 = language;
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
        ((void (*)(const u8 *, s32, s32))sub_0801A764)(arg0 + 0x10, 0x58U, 0x10U);
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
        do {
        if ((u32) (u16) (timer - 4) > (drawOne3984 = 1, 2U)) {
            if (state == var_r6) {
                temp_r5_3 = &x[var_r6];
                *temp_r5_3 = drawOne3984;
                sub_08000AF0(var_r6 + 0x10, labels[var_r6].data + (M2C_FIELD(arg0, u8 *, 2) << 5), 1U);
                sub_08065370((u8 *)&icons[var_r6], *temp_r5_3, (s32) &(&widths[0])[var_r6], (s32) (&heights[var_r6]), zeroElse3984);
            } else {
                temp_r5_4 = &x[var_r6];
                *temp_r5_4 = zeroElse3984;
                sub_08000AF0(var_r6 + 0x10, labels[var_r6].data, 1U);
                sub_08065370((u8 *)&icons[var_r6], *temp_r5_4, (s32) &(&widths[0])[var_r6], (s32) (&heights[var_r6]), drawOne3984);
            }
        }
        var_r8 = 0x34;
        {
            u8 *drawSpriteC8;
            u32 drawIndexC8;
            u32 drawBaseC8;
            u32 drawXC8;
            drawSpriteC8 = (u8 *)icons + var_r8 * var_r6;
            drawIndexC8 = var_r6 * 4;
            drawBaseC8 = (u32)&gUnk_08366E0C;
            drawXC8 = drawIndexC8 + drawBaseC8;
            drawXC8 = *(u16 *)drawXC8;
            drawIndexC8 += yTable3984;
            asm("" : : "r"(drawBaseC8));
            drawIndexC8 = *(u16 *)drawIndexC8;
            sub_080659BC(drawSpriteC8, drawXC8, drawIndexC8, x[(u32)var_r6], (s32)widths[var_r6], drawOne3984);
        }
        var_r6 += 1;
        } while ((u32) var_r6 <= 7U);
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
                u8 *drawSpriteC7;
                u8 *drawBaseC7;
                u32 drawIndexC7;
                s32 drawXC7;
                s32 drawYC7;
                u32 ninthWidthC9;
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
    u16 sp4[2], sp8[2];
    u8 spC[0x34], sp40[0x34], sp74[4], sp78[33], sp9C[36];
    s32 sel, prev;
    u32 timer;
    s32 scroll;
    u32 count, pos;
    s32 x, y, tx, ty;
    u32 vblank;
    u8 vcount;
    s32 state;
    u8 side;
    s32 dy, dx;
    u8 *p, *q, *buf, *txt, *d;
    u32 i, j, n, row;
    u8 c;
    s32 r, d1, d2;

    copy5B(sp74, &data5B, 2);
    sprite5B(sp40, 0x50002, 0, -1, 0);
    sprite5B(spC, 0x50006, 0, -1, 0);
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
    sel = 0;
    prev = 10;
    {
        u16 *b, *a;
        a = sp4;
        b = sp8;
        b[0] = sel;
        a[0] = sel;
        b[1] = sel;
        a[1] = sel;
        asm("" : : "r"(a));
    }
    scroll = 0;
    timer = 0;
    pos = 0;
    ty = 0x2C;
    tx = 8;
    x = 8;
    y = 0x2C;
    side = arg->f7;
    state = 0;
    vcount = (u8)sub_08001108(0x6E);
    vblank = sub_0800115C((u32)sub_080066A8);
    sub_08000D8C();
    do {
        r = sub_0801AAE0();
        if (r == 0)
            pressed5B = r;
        switch (state) {
        case 0:
            if (pressed5B == 1) {
                if (sel == 1) {
                    if (arg->f5 == 0) {
                        state = 3;
                        side = 0;
                    } else {
                        state = 1;
                        ty = 0x62;
                        tx = 0x3C;
                    }
                } else {
                    state = 3;
                }
                sub_0805865C(0xF);
            } else if (sel == 1 && (pressed5B & 0x40)) {
                sub_0805865C(0xE);
                ty = 0x2C;
                sel = 0;
            } else if (sel == 0 && (pressed5B & 0x80)) {
                sub_0805865C(0xE);
                ty = 0x52;
                sel = 1;
            } else if (pressed5B == 2) {
                sub_0805865C(0x10);
                sub_0801ABE8(6);
                while (sub_0801AAE0() == 0)
                    sub_080003F0();
                if (sub_08000470((u32)&task5B) != 0)
                    sub_080003A8((s32)&task5B);
                {
                    u32 stack = (u32)sub_08001494(0x1000);
                    task5B.fC = (u32)callback5B;
                    task5B.f10 = stack + 0xFFC;
                    task5B.f20 = stack;
                    task5B.f8 = 1;
                    task5B.f24 = 0;
                }
                sub_08000274(&task5B, 0);
                sub_08000E48();
                sub_0800115C(vblank);
                sub_08001108(vcount);
                fade5B(0, 0x14);
                sub_080003F0();
                return;
            }
            break;
        case 1:
            if (keys5B & 0x20) {
                if (sel == 1 && side == 1)
                    sub_0805865C(0xE);
                side = 0;
            } else if (keys5B & 0x10) {
                if (sel == 1 && side == 0)
                    sub_0805865C(0xE);
                side = 1;
            } else if (pressed5B == 1) {
                state = 3;
                sub_0805865C(0xF);
                fade5B(0, 0xA);
                sub_08000E48();
                vblank = sub_0800115C(vblank);
                sub_08001108(vcount);
                reg5B(0x200, 0, 1);
            } else if (pressed5B == 2) {
                state = 0;
                tx = 8;
                sub_0805865C(0x10);
                ty = 0x52;
                if (sel == 0)
                    ty = 0x3C;
            }
            break;
        }
        if (arg->f5 != 0) {
            sub_08065230(spC, 0x50, 0x64, 0x26, side != 0);
            sub_08065230(spC, 0x78, 0x64, 0x27, side == 0);
        }
        buf = sp78;
        dy = ty - y;
        dx = tx - x;
        if (prev != sel) {
            count = 0;
            scroll = 0;
            timer = 0;
            pos = 0;
            gUnk_03003474 = 0;
            d = buf;
            for (n = 0; n <= 0x1F; n++)
                d[n] = 0xFD;
            p = resource5B((sel + 0x451) | 0x140000);
            p += 2;
            prev = sel;
        }
        if (timer++ > 2) {
            timer = 0;
            if (*p == 0xFF)
                p++;
            if (*p == 0xFE)
                p += 3;
            if (*p == 0xFD) {
                p = resource5B((sel + 0x451) | 0x140000);
                p += 2;
            }
            buf[pos] = *p++;
            if (++pos > 0x1F) {
                pos = 0;
                sp78[32] = 0xFD;
                scroll = 1;
            }
        }
        if (scroll != 0) {
            gUnk_03003474++;
            if (++count > 7) {
                count = 0;
                timer = 10;
            } else {
                timer = 0;
            }
        }
        text5B(buf, 0, 0xE);
        y += dy / 2;
        d1 = ty - y;
        if (d1 < 0)
            d1 = -d1;
        if (d1 <= 1)
            y = ty;
        x += dx / 2;
        d2 = tx - x;
        if (d2 < 0)
            d2 = -d2;
        if (d2 <= 1)
            x = tx;
        sub_08065230(spC, x, y, 0x15, 0);
        q = resource5B(0x14044D) + 2;
        for (i = 0, row = 0x40000; i <= 1; row += 0x20000, i++) {
            n = 0;
            while ((c = *q) != 0xFD) {
                sp9C[n] = c; if (sp9C[n] == 0xFF) {
                    q++;
                    break;
                }
                n++;
                q++;
            }
            sp9C[n] = 0xFD;
            if (n == 0)
                break;
            text5B(sp9C, 2, row >> 16);
            if (*q == 0xFD)
                break;
        }
        text5B(resource5B(0x14044E) + 2, 2, 9);
        sub_080003F0();
    } while (state != 3);
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    fade5B(0, 0x14);
    sub_080003F0();
    fade5B(0, 0x14);
    sub_080003F0();
    if (sel == 0)
        arg->f6 = 0;
    else
        arg->f6 = 1;
    arg->f7 = side;
    finish5B(0x25A112EBFULL);
}
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
    u16 sp4[2], sp8[2];
    u8 spC[0x34], sp40[0x34], sp74[4], sp78[33], sp9C[36];
    s32 sel, prev;
    u32 timer;
    s32 scroll;
    u32 count, pos;
    s32 x, y, tx, ty;
    u32 vblank;
    u8 vcount;
    s32 state;
    u8 side;
    s32 dy, dx;
    u8 *p, *q, *buf, *txt, *d;
    u32 i, j, n, row;
    u8 c;
    s32 r, d1, d2;

    copy6C(sp74, &data6C, 2);
    sprite6C(sp40, 0x50002, 0, -1, 0);
    sprite6C(spC, 0x50006, 0, -1, 0);
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
    sel = 0;
    prev = 10;
    {
        u16 *b, *a;
        a = sp4;
        b = sp8;
        b[0] = sel;
        a[0] = sel;
        b[1] = sel;
        a[1] = sel;
        asm("" : : "r"(a));
    }
    scroll = 0;
    timer = 0;
    pos = 0;
    ty = 0x52;
    tx = 8;
    x = 8;
    y = 0x52;
    side = arg->f7;
    state = 0;
    sel = 1;
    vcount = (u8)sub_08001108(0x6E);
    vblank = sub_0800115C((u32)sub_080066A8);
    sub_08000D8C();
    do {
        r = sub_0801AAE0();
        if (r == 0)
            pressed6C = r;
        switch (state) {
        case 0:
            if (pressed6C == 1) {
                if (sel == 1) {
                    if (arg->f5 == 0) {
                        state = 3;
                    } else {
                        state = 1;
                        ty = 0x62;
                        tx = 0x3C;
                    }
                } else {
                    state = 3;
                }
                sub_0805865C(0xF);
            } else if (pressed6C == 2) {
                sub_0805865C(0x10);
                sub_0801ABE8(6);
                while (sub_0801AAE0() == 0)
                    sub_080003F0();
                sub_08000E48();
                sub_0800115C(vblank);
                sub_08001108(vcount);
                if (sub_08000470((u32)&task6C) != 0)
                    sub_080003A8((s32)&task6C);
                {
                    u32 stack = (u32)sub_08001494(0x1000);
                    task6C.fC = (u32)callback6C;
                    task6C.f10 = stack + 0xFFC;
                    task6C.f20 = stack;
                    task6C.f8 = 1;
                    task6C.f24 = 0;
                }
                sub_08000274(&task6C, 0);
                fade6C(0, 0x14);
                sub_080003F0();
                return;
            }
            break;
        case 1:
            if (keys6C & 0x20) {
                if (sel == 1 && side == 1)
                    sub_0805865C(0xE);
                side = 0;
            } else if (keys6C & 0x10) {
                if (sel == 1 && side == 0)
                    sub_0805865C(0xE);
                side = 1;
            } else if (pressed6C == 1) {
                state = 3;
                side = 0;
                sub_0805865C(0xF);
                fade6C(0, 0xA);
                sub_08000E48();
                vblank = sub_0800115C(vblank);
                sub_08001108(vcount);
                reg6C(0x200, 0, 1);
            } else if (pressed6C == 2) {
                state = 0;
                tx = 8;
                sub_0805865C(0x10);
                ty = 0x52;
            }
            break;
        }
        if (arg->f5 != 0) {
            sub_08065230(spC, 0x50, 0x64, 0x26, side != 0);
            sub_08065230(spC, 0x78, 0x64, 0x27, side == 0);
        }
        buf = sp78;
        dy = ty - y;
        dx = tx - x;
        if (prev != sel) {
            count = 0;
            scroll = 0;
            timer = 0;
            pos = 0;
            gUnk_03003474 = 0;
            d = buf;
            for (n = 0; n <= 0x1F; n++)
                d[n] = 0xFD;
            p = resource6C(0x140453);
            p += 2;
            prev = sel;
        }
        if (timer++ > 2) {
            timer = 0;
            if (*p == 0xFF)
                p++;
            if (*p == 0xFE)
                p += 3;
            if (*p == 0xFD) {
                p = resource6C(0x140453);
                p += 2;
            }
            buf[pos] = *p++;
            if (++pos > 0x1F) {
                pos = 0;
                sp78[32] = 0xFD;
                scroll = 1;
            }
        }
        if (scroll != 0) {
            gUnk_03003474++;
            if (++count > 7) {
                count = 0;
                timer = 10;
            } else {
                timer = 0;
            }
        }
        text6C(buf, 0, 0xE);
        y += dy / 2;
        d1 = ty - y;
        if (d1 < 0)
            d1 = -d1;
        if (d1 <= 1)
            y = ty;
        x += dx / 2;
        d2 = tx - x;
        if (d2 < 0)
            d2 = -d2;
        if (d2 <= 1)
            x = tx;
        sub_08065230(spC, x, y, 0x15, 0);
        q = resource6C(0x14044D) + 2;
        for (i = 0, row = 0x40000; i <= 1; row += 0x20000, i++) {
            n = 0;
            while ((c = *q) != 0xFD) {
                sp9C[n] = c; if (sp9C[n] == 0xFF) {
                    q++;
                    break;
                }
                n++;
                q++;
            }
            sp9C[n] = 0xFD;
            if (n == 0)
                break;
            text6C(sp9C, 2, row >> 16);
            if (*q == 0xFD)
                break;
        }
        text6C(resource6C(0x140450) + 2, 2, 9);
        sub_080003F0();
    } while (state != 3);
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
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
    if (sel == 0)
        arg->f6 = 0;
    else
        arg->f6 = 1;
    finish6C(0x25A112EBFULL);
}
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
extern u16 pressed66 asm("gUnk_03001324");
union Bg66 { struct { u32 value:16; } bits; u16 raw; };
struct Coord66 {u16 x,y;};
extern const struct Coord66 coords66[] asm("gUnk_080B99D8");
extern u8 *peer66(u32) asm("sub_08002118");
extern void setup66(s32,s32,s32,s32,s32) asm("sub_08000A34");
extern void sprite66(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void draw66(void *,s32,s32,s32,s32) asm("sub_08065230");
extern void anim66(void *,s32,u16 *,u16 *,s32) asm("sub_08065370");
extern void call66_080009F8(s32,s32,s32) asm("sub_080009F8");
extern void call66_0801AA8C(s32) asm("sub_0801AA8C");
extern void call66_0801AB50(s32) asm("sub_0801AB50");
extern void call66_08088914(void) asm("sub_08088914");
extern void call66_0800035C(void) asm("sub_0800035C");
extern void yield66(u64) asm("sub_080003F4");
void sub_080066BC(void)
{
    u8 gfx[0x34];
    u16 count[4];
    u16 a, b;
    union Bg66 bg;
    s32 result;
    s32 active;
    u32 mode;
    u32 timer;
    u8 *peer;
    u32 i;
    u32 n;
    u16 *cnt;

    setup66(1, 0, 0, 0, 1);
    call66_080009F8(0xF00, 0, 1);
    sub_080009C0(0x1200, 0, 1);
    sub_0800BCDC(1, 1, 0x06000000, 0, 0x10);
    bg.bits.value = 0x1D80;
    sub_08000AA8(1, &bg.raw);
    sprite66(gfx, 0x50001, 0, 3, 0);
    sub_080003F0();
    sub_080003F0();
    call66_0801AB50(6);
    result = 0;
    timer = 0;
    active = 0;
    count[3] = 0;
    count[0] = count[1] = count[2] = result;
    if (sub_080020F4() != 0)
        goto select_client;
    peer = peer66(0);
    goto setup;
go_received:
    result = 1;
    goto done;
timed_out:
    peer = peer66(sub_080020F4());
    peer[12] = 0;
    peer[8] = 0;
    peer[9] = 0;
    goto done;
select_client:
    peer = peer66(sub_080020F4());
setup:
    peer[8] = 0x30;
    peer[9] = 0x30;
    peer[12] = 0;
    b = 0;
    a = 0;
    while (sub_0801AAE0() == 0) {
        draw66(gfx, 0x78, 0x3C, 0, (u16)(sub_08002164() - 1));
        sub_080003F0();
    }
    for (;;) {
        if (sub_080020F4() == 0) {
            u32 z;
            const struct Coord66 *c;
            n = 0;
            draw66(gfx, coords66[0].x, coords66[0].y, 1, 0);
            for (i = 1, z = 0, c = &coords66[1], cnt = &count[1]; i < sub_08002164(); c++, cnt++, i++) {
                peer = peer66(i);
                if (!((u32)gUnk_03002730 & (1 << i)))
                    (*cnt)++;
                else
                    *cnt = z;
                if (*cnt > 5) {
                    peer[8] = z;
                    peer[9] = z;
                }
                if (peer[8] == 'O' && peer[9] == 'K') {
                    n++;
                    draw66(gfx, c->x, c->y, 1, z);
                }
            }
            if (sub_080022F4() && n == sub_08002164() - 1) {
                anim66(gfx, 2, &a, &b, 1);
                draw66(gfx, 0x78, 0x3C, 2, a);
                if (pressed66 & 1) {
                    if (!active)
                        sub_08006D08(0xF);
                    result = 1;
                    active = 1;
                }
                if (active) {
                    timer++;
                    peer = peer66(0);
                    peer[8] = 'G';
                    peer[9] = 'O';
                    if (timer > 5)
                        goto done;
                }
            } else {
                active = 0;
                timer = 0;
                peer = peer66(0);
                peer[8] = timer;
                peer[9] = timer;
            }
            peer = peer66(0);
            if (sub_0800CE30())
                peer[10] = 1;
            else
                peer[10] = 0;
            if (**(u32 **)&gUnk_03004210 == 1) {
                peer[10] |= 2;
                mode = 1;
            } else {
                peer[10] &= 0xFD;
                mode = 0;
            }
            if ((pressed66 & 2) && timer == 0) {
                sub_0805865C(0x10);
                result = 0;
                goto done;
            }
        } else {
            u32 z;
            const struct Coord66 *c;
            peer = peer66(sub_080020F4());
            peer[12] = 0;
            peer[8] = 'O';
            peer[9] = 'K';
            peer = peer66(0);
            if (peer[8] == 'G' && peer[9] == 'O')
                goto go_received;
            for (i = 0, z = 0, c = coords66, cnt = count; i < sub_08002164(); c++, cnt++, i++) {
                peer = peer66(i);
                if (!((u32)gUnk_03002730 & (1 << i)))
                    (*cnt)++;
                else
                    *cnt = z;
                if (*cnt > 5) {
                    peer[8] = z;
                    peer[9] = z;
                }
                if (peer[8] == 'O' && peer[9] == 'K') {
                    draw66(gfx, c->x, c->y, 1, z);
                    continue;
                }
                if (i == 0) {
                    if (peer[10] & 1)
                        sub_0800CE08();
                    else
                        sub_0800CE1C();
                    if (peer[10] & 2) mode = 1; else mode = 0;
                    if (*cnt <= 5)
                        draw66(gfx, c->x, c->y, 1, z);
                }
            }
            if ((pressed66 & 2) && !active) {
                result = 0;
                sub_0805865C(0x10);
                active = 1;
                timer = 0;
            }
            if (active && timer++ > 0x3C)
                goto timed_out;
        }
        draw66(gfx, 0x78, 0x3C, 0, (u16)(sub_08002164() - 1));
        sub_080003F0();
    }
done:
    if (result == 1) {
        sub_0801ABE8(6);
        sub_080003F0();
    } else {
        call66_0801AA8C(0xA);
        sub_080003F0();
    }
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    switch (result) {
    case 0:
        peer = peer66(sub_080020F4());
        peer[8] = result;
        peer[9] = result;
        peer[10] = result;
        peer[11] = result;
        sub_080020E0();
        for (i = 0; i < 0x46; i++)
            sub_080003F0();
        sub_08000420(0x14);
        break;
    case 1:
        sub_080021C4();
        if (mode) {
            call66_08088914();
            yield66(0x25A112EBFULL);
        }
        sub_0800CB3C(1);
        break;
    }
    call66_0800035C();
}
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
