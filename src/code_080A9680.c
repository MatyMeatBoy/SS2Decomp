#include "global.h"
extern void sub_0801A0BC_2(u32, u32) asm("sub_0801A0BC");
extern u16 sub_08019FD8_3(void *, u32, u32) asm("sub_08019FD8");
extern s32 sub_0801A040_1(u32) asm("sub_0801A040");
extern void sub_0801A0A4_1(void *) asm("sub_0801A0A4");
extern void sub_0801A0B0_1(void *) asm("sub_0801A0B0");
extern u8 *sub_08007870_8p(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
extern u32 sub_08065370_5r(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern u8 gData084AA580[] asm("gUnk_084AA580");
extern u8 gByte0300079C asm("gUnk_0300079C");
extern struct TaskP *gTaskP030007A8 asm("gUnk_030007A8");
extern void sub_08007870_8(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
extern void sub_0800BC08_6(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void sub_08065370_5(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void sub_08065158_5(void *, u32, u32, s32, s32) asm("sub_08065158");
extern u8 *gPtr030007A0 asm("gUnk_030007A0");
extern u16 gHalf030007A4 asm("gUnk_030007A4");
struct Spr2200 { s32 f0, f4, f8, fC, f10, f14, f18; u8 b1C[0x18]; };
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTaskP030007AC asm("gUnk_030007AC");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMask030056FC asm("gUnk_030056FC");
extern u16 gArr03000798[] asm("gUnk_03000798");
extern u8 *gPtr030007A8 asm("gUnk_030007A8");
struct E2E0 { u8 b[0x2E0]; };

void sub_080B2058();
void sub_080AE420(void);
void sub_080AF3C4(void);
void sub_080AD534(void);
void sub_080AE184(void);

extern s32 gUnk_03000424;
extern s32 gUnk_030004C8;

extern u16 gUnk_03000438;

extern s32 *gUnk_03000448[];

extern s32 *gUnk_030004D0;
extern s32 gUnk_030056FC;

struct Player111 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x, y, oldX, oldY; u8 pad9C[0x2C]; u16 lock; u8 padCA[0x82]; };
extern struct Player111 players111[] asm("gUnk_03003CE0");
extern s32 *object111 asm("gUnk_0300041C");
s32 sub_080A9680(void)
{
    s32 playerLine[4];
    s32 objectLine[4];
    struct Player111 *base = players111;
    s32 *px;
    s32 *py;
    s32 srcIndexX, srcIndexY;
    u32 *pf;
    s32 idxF, idxX, idxY;
    s32 ix, jx, iy, jy;
    s32 *dx, *dy;
    s32 *sx, *sy;
    if (base[sub_080020F4()].lock != 0) goto fail;
    idxF = 0x14C * sub_080020F4();
    pf = &base->flags;
    if (*(u32 *)((u8 *)pf + idxF) & 0x2000) goto fail;
    if (base[sub_080020F4()].active == 0) goto fail;
    if (base[sub_080020F4()].state == 14) goto fail;
    if (base[sub_080020F4()].state == 11) goto fail;
    if (base[sub_080020F4()].state == 12) goto fail;
    idxX = 0x14C * sub_080020F4();
    px = &base->x;
    playerLine[0] = *(s32 *)((u8 *)px + idxX) >> 8;
    idxY = 0x14C * sub_080020F4();
    py = &base->y;
    playerLine[1] = *(s32 *)((u8 *)py + idxY) >> 8;
    playerLine[2] = (px[0x53 * sub_080020F4()] + 0xC00) >> 8;
    playerLine[3] = (py[0x53 * sub_080020F4()] - 0x800) >> 8;
    objectLine[0] = (object111[5] - 0x4000) >> 8;
    objectLine[1] = (object111[6] - 0x2000) >> 8;
    objectLine[2] = (object111[5] + 0x4000) >> 8;
    objectLine[3] = (object111[6] + 0x2000) >> 8;
    if (sub_080A98E0(objectLine, objectLine + 2, playerLine, playerLine + 2) != 0) {
        ix = sub_080020F4();
        jx = sub_080020F4();
        dx = (s32 *)((u8 *)px + 0x14C * ix);
        srcIndexX = 0x14C * jx;
        sx = &base->oldX;
        *dx = *(s32 *)((u8 *)sx + srcIndexX);
        iy = sub_080020F4();
        jy = sub_080020F4();
        dy = (s32 *)((u8 *)py + 0x14C * iy);
        srcIndexY = 0x14C * jy;
        sy = &base->oldY;
        *dy = *(s32 *)((u8 *)sy + srcIndexY);
        return 1;
    }
fail:
    return 0;
}
void sub_080A97E0(void) {
    if (M2C_FIELD(gUnk_0300041C, s16 *, 0x5C) != 0) {
        sub_080A9844();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000420);
}
void sub_080A9818(void)
{
  int i;
  u32 mem;
  gUnk_03000424 = sub_08001494(0x78);
  for (i = 0; i < 3; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_03000424) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_080A9844(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_03000424;
  for (i = 0, entry = new_var2; i < 3; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_03000424);
  gUnk_03000424 = i;
}
extern void sub_08000274_1(u32) asm("sub_08000274");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern u8 *gP03000424 asm("gUnk_03000424");
void sub_080A987C(u16 arg)
{
  struct TaskP *t = (struct TaskP *) gP03000424;
  u32 z;
  u8 i;
  i = 0;
  goto check;
  next:
  i++;

  t = (struct TaskP *) (((u8 *) t) + 0x28);
  check:
  if (i > 2)
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
 do { t->f10 = t->f20 + 0x3FC; t->fC = (u32) sub_080A92C0; t->f24 = z; t->f8 = 0x40; sub_08000274_2(t, arg); } while (0);
}
extern u32 sub_080A9910_3(u32, u32, u32) asm("sub_080A9910");
u32 sub_080A98E0(u32 a, u32 b, u32 c, u32 d)
{
    u32 v[2];
    v[0] = sub_080A9910_3(a, b, c);
    v[1] = sub_080A9910_3(a, b, d);
    if (v[0] != v[1])
        return 1;
    return 0;
}
#ifdef NONMATCHING
u32 sub_080A9910(s32 *a, s32 *b, s32 *c)
{
    s32 cross = (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0]);
    return cross > 0 ? 1 : (cross < 0 ? (u32)-1 : 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080A9910);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080A9950);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AB054);
void sub_080AB2D8(void) {
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000430);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AB2F8);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC214);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC2E8);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC5B4);
void sub_080AC81C(void)
{
    sub_0805867C(0xC2);
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000438);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC844);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AD534);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080ADE30);
void sub_080AE080(void) {
    if (M2C_FIELD(gUnk_03000440, s16 *, 0x5C) != 0) {
        sub_080AE0E4();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030004BE);
}
void sub_080AE0B8(void)
{
    u32 i;
    gUnk_030004C8 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_030004C8 + i * 0x28, s32 *, 8) = 0;
}
void sub_080AE0E4(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_030004C8;
  for (i = 0, entry = new_var2; i < 4; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030004C8);
  gUnk_030004C8 = i;
}
struct TaskPE11C { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct TaskPE11C *gTP030004C8 asm("gUnk_030004C8");
extern void sub_080AE184();
extern void sub_080AD534();
void sub_080AE11C(u8 a)
{
    struct TaskPE11C *t = gTP030004C8;
    u8 i;
    i = 0;
    goto check;
next:
    i++;
    t = (struct TaskPE11C *)((u8 *)t + 0x28);
check:
    if (i > 3)
        return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0)
        goto next;
    t->f8 = a + 0x40;
    t->f20 = sub_08001494(0x400);
    t->f10 = t->f20 + 0x3FC;
    t->fC = (u32)sub_080AD534;
    t->f24 = (u32)sub_080AE184;
    sub_08000274_3((u32)t, a, 0);
}
void sub_080AE184(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x40;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000448[obj[2]]);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AE1B4);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AE420);
void sub_080AF2AC(void) {
    sub_080AF304();
    sub_08068384();
}
#ifdef NONMATCHING
void sub_080AF2BC(void)
{
    u8 count = *(u8 *)0x03000780;
    u8 *block;
    u32 i;
    *(u32 *)0x03000784 = 0;
    block = (u8 *)sub_08001494((u32)count * 0x28);
    *(u32 *)0x03000784 = (u32)block;
    for (i = 0; i < count; i++)
        *(u32 *)(block + i * 0x28 + 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AF2BC);
#endif
#ifdef NONMATCHING
void sub_080AF304(void)
{
    u8 *entry = *(u8 **)0x03000784;
    u8 count = *(u8 *)0x03000780;
    u32 i;
    for (i = 0; i < count; i++, entry += 0x28) {
        if (sub_08000470((u32)entry))
            sub_080003A8((u32)entry);
    }
    if (*(u32 *)0x03000784 != 0) {
        sub_08001538(*(u32 *)0x03000784);
        *(u32 *)0x03000784 = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AF304);
#endif
#ifdef NONMATCHING
void sub_080AF350(u32 kind)
{
    u8 *entry = *(u8 **)0x03000784;
    u8 count = *(u8 *)0x03000780;
    u32 i, mem;
    for (i = 0; i < count; i++, entry += 0x28) {
        if (sub_08000470((u32)entry) || *(u32 *)(entry + 8) != 0) continue;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0xC) = (u32)sub_080AE420;
        *(u32 *)(entry + 0x24) = (u32)sub_080AF3C4;
        *(u32 *)(entry + 8) = (kind & 0xFF) + 0x44;
        sub_08000274(entry, kind & 0xFF);
        return;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AF350);
#endif
extern u8 *gP03000784 asm("gUnk_03000784");
extern u8 gB03000780 asm("gUnk_03000780");
extern u8 gArr030004D0[] asm("gUnk_030004D0");
extern u32 gM030056FC asm("gUnk_030056FC");
void sub_080AF3C4(void)
{
  u8 *new_var4;
  u32 *new_var3;
  u16 *new_var;
  u8 *new_var2;
  u8 *obj = (u8 *) sub_0800048C();
  u32 i;
  *((u32 *) (obj + 8)) -= 0x44;
  new_var2 = obj + 8;
  i = *((u32 *) new_var2);
  new_var3 = &gM030056FC;
  new_var4 = gArr030004D0;
  new_var = *((u16 **) (new_var4 + (i * 0xAC)));
  {
    u32 *m = new_var3;
    *m &= ~(1 << (*new_var));
  }
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AF3F4);
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B0288);
void sub_080B0F70(void) {
    if (M2C_FIELD(gUnk_03000788, s16 *, 0x5C) != 0) {
        sub_08098060();
    }
    sub_08068384();
    gUnk_030056FC = 0;
}
void sub_080B0F9C(void) {
    if (M2C_FIELD(gUnk_03000788, s16 *, 0x5C) != 0) {
        sub_08098060();
    }
    gUnk_030056FC = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B0FC4);
void sub_080B1FD4(void)
{
    u8 i;
    if (gPtr030007A8 != 0) {
        if (sub_08000470((u32)gPtr030007A8) != 0)
            sub_080003A8(gPtr030007A8);
        sub_08001538(gPtr030007A8);
        gPtr030007A8 = 0;
        for (i = 1; i <= 4; i++)
            if (gMask030056FC & (1 << i))
                *(u16 *)(((struct E2E0 *)gUnk_030056F4)[i].b + 0x7A) |= 1;
        for (i = 0; i <= 1; i++)
            gArr03000798[i] = 0;
    }
}
#ifdef NONMATCHING
void sub_080B2058(s32 arg0, s32 arg1)
{
    struct Spr2200 s;
    u16 a44;
    u16 a46;
    s16 x48;
    s16 y4A;
    u16 cnt;
    s32 xs;
    s32 ys;
    s32 x;
    s32 y;
    u16 done;
    s32 r;
    u8 k;
    u8 i;
    u16 *e;
    sub_0801A0B0_1(gPtr030007A0);
    sub_08065158_5(&s, 0x50020, 8, -1, 1);
    s.b1C[0] = 7;
    s.b1C[1] = 8;
    a46 = 0;
    a44 = 0;
    cnt = 0;
    sub_0805865C(0x1A5);
    x = arg0 >> 8;
    y = arg1 >> 8;
    xs = x << 16;
    ys = y << 16;
    do {
        if ((r = sub_0800CD8C()) == 0)
            done = sub_08065370_5r(&s, 0, &a44, &a46, r);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (r = sub_0800CD34()) == 0) {
            sub_08000AF0(0x17, (void *)s.fC, 2);
            k = sub_0800BC44(x, y, 0);
            sub_0800BC08_6(xs >> 16, ys >> 16, &x48, &y4A, r, r);
            *(s32 *)(sub_08007870_8p(x48, 0, 0, a44, k, s.b1C, s.f8, s.f0) + 0xC) = y4A;
        }
        sub_080003F0();
    } while (done == 0 || cnt++ > 0x3B);
    if (*(s16 *)(gPtr030007A0 + 0x5C) != 0 && sub_08002204() != 0) {
        for (i = 0; i <= 1; i++) {
            e = &gArr03000798[i];
            if (sub_0801A040_1(*e) == 0) {
                *e = sub_08019FD8_3(gData084AA580, 0, gByte0300079C);
                sub_0801A0BC_2(*e, 3);
                while (sub_0801A040_1(*e) == 0)
                    sub_080003F0();
                break;
            }
        }
    }
    sub_0801A0A4_1(gPtr030007A0);
    gTaskP030007A8->f8 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B2058);
#endif
s32 sub_080B2200(void)
{
    struct Spr2200 s;
    u16 a44;
    u16 a46;
    s16 x48;
    s16 y4A;
    s32 r;
    u8 k;
    u32 sz;
    sub_08065158_5(&s, 0x50089, gHalf030007A4, -1, 0);
    s.b1C[0] = gHalf030007A4;
    sz = 0x18;
    a46 = 0;
    a44 = 0;
    for (;;) {
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (r = sub_0800CD34()) == 0) {
            sub_08000AF0(gHalf030007A4 + 0x10, (void *)s.fC, 1);
            k = sub_0800BC44(*(s32 *)(gPtr030007A0 + 0x14) >> 8, *(s32 *)(gPtr030007A0 + 0x18) >> 8, 0);
            sub_08065370_5(&s, sz, &a44, &a46, r);
            sub_0800BC08_6((*(s32 *)(gPtr030007A0 + 0x14) << 8) >> 16, (*(s32 *)(gPtr030007A0 + 0x18) << 8) >> 16, &x48, &y4A, r, r);
            sub_08007870_8(x48, y4A, sz, a44, k, s.b1C, s.f8, s.f0);
        }
        sub_080003F0();
    }
}
void sub_080B22E8(void) {
    if (M2C_FIELD(gUnk_030007A0, s16 *, 0x5C) != 0) {
        sub_08009088(0, 0, 0, 0);
        sub_08098060();
        sub_080B1FD4();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007A4);
}
void sub_080B2330(void)
{
    u8 i;
    u8 *p;
    u8 **pp;
    i = 0;
    pp = &gPtr030007A8;
    for (; i <= 1; i++)
        gArr03000798[i] = 0;
    p = (u8 *)sub_08001494(0x28);
    *pp = p;
    if (p != 0)
        *(u32 *)(p + 8) = 0;
}
#ifdef NONMATCHING
void sub_080B236C(u32 a, u32 b)
{
    u8 *obj = *(u8 **)0x030007A8;
    u32 mem;
    if (obj == 0 || sub_08000470((u32)obj) || *(u32 *)(obj + 8) != 0) return;
    mem = sub_08001494(0x400);
    *(u32 *)(obj + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 0xC) = (u32)sub_080B2058;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 8) = 0x3B;
    sub_08000274_4(obj, b, a, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B236C);
#endif
#ifdef NONMATCHING
void sub_080B23C8(void)
{
    u8 *base = *(u8 **)0x030056F4;
    u32 i;
    for (i = 1; i <= 4; i++)
        *(u16 *)(base + i * 0x2E0 + 0x7A) |= 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B23C8);
#endif
void sub_080B23FC(void) {
    do {
        gUnk_030007AC = sub_08001494(0x28);
        sub_080003F0();
    } while (gUnk_030007AC == 0);
    M2C_FIELD(gUnk_030007AC, s32 *, 8) = 0;
}
void sub_080B2424(void) {
    if (gUnk_030007AC != 0) {
        if (sub_08000470(gUnk_030007AC) != 0) {
            sub_080003A8(gUnk_030007AC);
        }
        if (gUnk_030007AC != 0) {
            sub_08001538(gUnk_030007AC);
            gUnk_030007AC = 0;
        }
    }
}
void sub_080B2454(void)
{
    if (gTaskP030007AC == 0)
        return;
    if (sub_08000470((u32)gTaskP030007AC) == 0 && gTaskP030007AC->f8 != 0)
        return;
    do {
        gTaskP030007AC->f20 = sub_08001494(0x400);
        sub_080003F0();
    } while (gTaskP030007AC->f20 == 0);
    gTaskP030007AC->f10 = gTaskP030007AC->f20 + 0x3FC;
    gTaskP030007AC->fC = (u32)sub_080B2200;
    gTaskP030007AC->f24 = 0;
    gTaskP030007AC->f8 = 0x44;
    sub_08000274_3((u32)gTaskP030007AC, 0, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B24B8);
void sub_080B2780(void) {
    if ((M2C_FIELD(gUnk_030007B8, s16 *, 0x5C) != 0) || (M2C_FIELD(gUnk_030007BC, s16 *, 0x5C) != 0)) {
        sub_080B4B7C();
        sub_08097C6C();
        if (sub_08000470(gUnk_030007B0) != 0) {
            sub_080003A8(gUnk_030007B0);
        }
        sub_08001538(gUnk_030007B0);
        gUnk_030007B0 = 0;
        if (sub_08000470(gUnk_030007B4) != 0) {
            sub_080003A8(gUnk_030007B4);
        }
        sub_08001538(gUnk_030007B4);
        gUnk_030007B4 = 0;
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007C8);
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B280C);
