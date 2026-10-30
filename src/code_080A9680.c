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
struct V { s32 x, y; };
s32 sub_080A9910(struct V *a, struct V *b, struct V *c)
{
    struct V v1, v2;
    s32 res; s32 r;
    v1.x = b->x - a->x;
    v1.y = b->y - a->y;
    v2.x = c->x - a->x;
    v2.y = c->y - a->y;
    r = v1.x * v2.y - v1.y * v2.x; res = 1; if (r <= 0) { res = 0; if (r < 0) res--; } return res;
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080A9950);
struct P112A { u8 p0[0x20]; u16 state; u8 p22[14]; u32 flags; u8 p34[0x34]; u8 unk68; u8 p69[0x1f]; u16 unk88; u8 p8a[6]; s32 unk90; u8 p94[0x1c]; u16 unkB0; u8 pb2[0x16]; u16 unkC8,unkCA,unkCC; u8 pce[0x16]; u32 unkE4[0x1a]; };
struct O112A { u16 unk0; u8 p2[10]; u16 unkC; u8 pe[6]; s32 unk14,unk18; u8 p1c[0x34]; s32 unk50; };
extern struct P112A players112A[] asm("gUnk_03003CE0");
extern s32 x112A asm("gUnk_03003D6C");
extern u32 atan112A(s32,s32) asm("ArcTan2");
extern s32 hit112A(void *,void *) asm("sub_0801ED8C");
s32 sub_080AB054(struct O112A *arg0, s32 arg1, s32 arg2, u32 arg3) {
    volatile s32 sp0;
    register struct P112A *base asm("r10");
    register s32 idx asm("r0");
    register s32 delta asm("r4");
    register s32 *yp asm("r6");
    register s32 dy asm("r1");
    register s32 ax asm("r5");
    register s32 ay asm("r6");
    register u32 radius asm("r8");
    register s32 stride asm("r9");
    register u32 zero asm("r1");
    register u32 word1 asm("r1");
    register u32 word2 asm("r2");
    register u32 *history asm("r5");
    register u32 *fp asm("r1");
    register s16 *var_r0 asm("r0");
    register struct P112A *tail asm("r2");
    register struct P112A *tailbase asm("r5");
    register s32 tailstride asm("r4");
    register u16 *hp asm("r1");
    s16 temp_r1;
    s16 temp_r4_2;
    register s32 var_r1 asm("r1");
    register s32 temp_r0 asm("r0");
    register s32 temp_r4_3 asm("r4");
    register struct P112A *temp_r1_2 asm("r1");
    u16 temp_r4;
    register u32 temp_r4_4 asm("r4");
    register u32 var_r4 asm("r4");
    register u32 angle asm("r0");

    ay = arg2;
    asm("" : "+r"(ay));
    ax = arg1;
    asm("" : "+r"(ax));
    radius = arg3 << 16;
    asm("" : "+r"(radius));
    radius >>= 16;
    asm("" : "+r"(radius));
    zero = 0;
    asm("" : "+r"(zero));
    sp0 = zero;
    idx = sub_080020F4();
    delta = ax + (arg0->unk14 >> 8);
    asm("" : "+r"(idx), "+r"(delta));
    word2 = (u32)players112A;
    asm("" : "+r"(word2));
    base = (struct P112A *)word2;
    asm("" : "+r"(base));
    word1 = 0x14C;
    asm("" : "+r"(word1));
    stride = word1;
    asm("" : "+r"(stride));
    word2 = idx * stride;
    asm("" : "+r"(word2));
    idx = word2;
    asm("" : "+r"(idx));
    word1 = (u32)&x112A;
    asm("" : "+r"(word1));
    temp_r4 = delta - (*(s32 *)(idx + word1) >> 8);
    temp_r4_2 = (s16) temp_r4;
    idx = sub_080020F4();
    dy = ay + (arg0->unk18 >> 8);
    asm("" : "+r"(dy), "+r"(idx));
    word2 = idx * stride;
    asm("" : "+r"(word2));
    idx = word2;
    asm("" : "+r"(idx));
    yp = &base->unk90;
    asm("" : "+r"(yp));
    temp_r1 = dy - (*(s32 *)(idx + (u32)yp) >> 8);
    if ((u32) Sqrt((temp_r4_2 * temp_r4_2) + (temp_r1 * temp_r1)) >= radius) {

    } else if (sub_0800CDF8() != 0) {

    } else if (sub_0800CCCC() != 0) {

    } else if (sub_0800CD8C() != 0) {

    } else if (arg0->unkC == 0xB) {

    } else if ((idx = sub_080020F4() * stride, fp = &base->flags, *(u32 *)(idx + (u32)fp) & 0x2000)) {

    } else if ((*(struct P112A *)(sub_080020F4() * stride + (u32)base)).unk68 == 0) {

    } else if ((*(struct P112A *)(sub_080020F4() * stride + (u32)base)).state == 0xE) {

    } else if ((*(struct P112A *)(sub_080020F4() * stride + (u32)base)).state == 0xB) {

    } else if ((*(struct P112A *)(sub_080020F4() * stride + (u32)base)).state == 0xC) {

    } else {
        idx = sub_080020F4();
        word1 = arg0->unk0 * 4;
        asm("" : "+r"(word1));
        idx *= stride;
        word1 += idx;
        history = base->unkE4;
        asm("" : "+r"(word1), "+r"(history));
        if (*(u32 *)(word1 + (u32)history) == arg0->unk50) goto done;
        (*(struct P112A *)(sub_080020F4() * stride + (u32)base)).state = 0xA;
        (*(struct P112A *)(sub_080020F4() * stride + (u32)base)).unkB0 = 0xFFFE;
        temp_r4_3 = sub_080020F4();
        asm("" : "+r"(temp_r4_3));
        temp_r0 = hit112A(arg0, &(*(struct P112A *)(sub_080020F4() * stride + (u32)base)));
        asm("" : "+r"(temp_r4_3), "+r"(temp_r0));
        temp_r1_2 = (struct P112A *)(temp_r4_3 * stride + (u32)base);
        hp = &temp_r1_2->unk88;
        asm("" : "+r"(hp));
        word2 = *hp;
        asm("" : "+r"(word2), "+r"(temp_r0));
        *hp = temp_r0 + word2;
        idx = sub_080020F4();
        word1 = arg0->unk0 * 4;
        asm("" : "+r"(word1));
        idx *= stride;
        word1 += idx;
        asm("" : "+r"(history), "+r"(word1));
        word1 += (u32)history;
        asm("" : "+r"(word1));
        temp_r0 = arg0->unk50;
        *(u32 *)word1 = temp_r0;
        arg0->unk50 = (s32) (temp_r0 + 1);
        sp0 = 1;
        idx = sub_080020F4() * stride;
        word2 = (u32)&x112A;
        asm("" : "+r"(word2), "+r"(idx));
        temp_r4_4 = (u32)((*(s32 *)(idx + word2) - arg0->unk14) << 8) >> 16;
        asm("" : "+r"(temp_r4_4), "+r"(yp));
        idx = sub_080020F4();
        word1 = stride * idx;
        asm("" : "+r"(word1));
        idx = word1;
        asm("" : "+r"(idx));
        dy = (*(s32 *)(idx + (u32)yp) - arg0->unk18) << 8;
        asm("" : "+r"(dy));
        temp_r4_4 = (s16)temp_r4_4;
        asm("" : "+r"(temp_r4_4));
        dy >>= 16;
        angle = atan112A(temp_r4_4, dy) << 16;
        asm("" : "+r"(angle));
        var_r4 = angle >> 29;
        asm("" : "+r"(var_r4));
        if (var_r4 > 0x1000U) {
            if (var_r4 <= 6U) {
                var_r4 += 1;
            } else {
                var_r4 = 0;
            }
        }
        if (var_r4 == 0) goto direction0;
        if (var_r4 == 1) goto direction1;
        idx = sub_080020F4();
        tail = players112A;
        asm("" : "+r"(tail));
        word1 = 0x14C;
        asm("" : "+r"(word1));
        idx *= word1;
        idx += (u32)tail;
        asm("" : "+r"(idx));
        var_r1 = var_r4 - 2;
        var_r0 = (s16 *)(idx + 0xCA);
        asm("" : "+r"(var_r0), "+r"(var_r1));
        goto storeDirection;
direction0:
        idx = sub_080020F4();
        tail = players112A;
        asm("" : "+r"(tail));
        word1 = 0x14C;
        asm("" : "+r"(word1));
        idx *= word1;
        idx += (u32)tail;
        var_r0 = (s16 *)(idx + 0xCA);
        var_r1 = 6;
        asm("" : "+r"(var_r0), "+r"(var_r1));
        goto storeDirection;
direction1:
        idx = sub_080020F4();
        tail = players112A;
        asm("" : "+r"(tail));
        word1 = 0x14C;
        asm("" : "+r"(word1));
        idx *= word1;
        idx += (u32)tail;
        var_r0 = (s16 *)(idx + 0xCA);
        var_r1 = 7;
        asm("" : "+r"(var_r0), "+r"(var_r1));
storeDirection:
        *var_r0 = var_r1;
        idx = sub_080020F4();
        tailbase = players112A;
        asm("" : "+r"(tailbase));
        tailstride = 0x14C;
        asm("" : "+r"(tailstride));
        ((struct P112A *)(idx * tailstride + (u32)tailbase))->unkCC = 0x400;
        ((struct P112A *)(sub_080020F4() * tailstride + (u32)tailbase))->unkC8 = 0x10;
    }
done:
    return sp0;
}

void sub_080AB2D8(void) {
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000430);
}
#ifdef NONMATCHING
#include "m2c_macros.h"
extern s32 t112B_m4aSongNumStart(s32) asm("m4aSongNumStart");
extern s32 t112B_sub_08007870(s16, s16, u16, u16, s32, void *, s32, s32) asm("sub_08007870");
extern s32 t112B_drawWide(s32, s32, u32, u32, s32, void *, s32, s32) asm("sub_08007870");
extern s32 t112B_sub_0800BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 t112B_sub_0801623C(void *, s32 *, s32) asm("sub_0801623C");
extern u32 t112B_sub_08016E04(u32, u32) asm("sub_08016E04");
extern s32 t112B_sub_08019CE8(void *) asm("sub_08019CE8");
extern s32 t112B_sub_08019F60(void *) asm("sub_08019F60");
extern s32 t112B_sub_0801A120(void *, s32, s16) asm("sub_0801A120");
extern s32 t112B_sub_0801C8F0(void *) asm("sub_0801C8F0");
extern s32 t112B_sub_08057C34(s32) asm("sub_08057C34");
extern s32 t112B_sub_08057C6C(s32) asm("sub_08057C6C");
extern s32 t112B_sub_080586B4(s32) asm("sub_080586B4");
extern s32 t112B_sub_0806171C(void *, s32) asm("sub_0806171C");
extern s32 t112B_sub_08065158(void *, s32, u16, s32, s32) asm("sub_08065158");
extern s32 t112B_sub_08067CA8(u16) asm("sub_08067CA8");
extern s32 t112B_sub_08095F10(void *, u32) asm("sub_08095F10");
extern s32 t112B_sub_08096594(s32) asm("sub_08096594");
extern s32 t112B_sub_08097AC0(void *, u32, u32, s32, s32, s32) asm("sub_08097AC0");
extern s32 t112B_sub_080AC214(s32) asm("sub_080AC214");
extern u8 t112B_sub_080AC2E8(s32) asm("sub_080AC2E8");
extern u8 t112B_sub_080AC5B4() asm("sub_080AC5B4");
struct T112BActor {
    u16 f0;
    u16 f2;
    u8 pad4[4];
    u16 f8;
    u8 padA[2];
    u16 fC;
    u8 padE[6];
    s32 f14;
    s32 f18;
    u8 pad1C[48];
    s32 f4C;
    s32 f50;
    u8 pad54[6];
    u16 f5A;
    s16 f5C;
    s16 f5E;
    u8 pad60[8];
    u16 f68;
    u16 f6A;
    s16 f6C;
    s16 f6E;
    u8 pad70[356];
    s16 f1D4;
    s16 f1D6;
    u8 pad1D8[36];
    u8 f1FC;
    u8 f1FD;
    u8 f1FE;
    u8 pad1FF[0xD9];
    u16 f2D8;
    u16 f2DA;
};
extern struct T112BActor *t112B_gUnk_03000434 asm("gUnk_03000434");
extern u16 t112B_gUnk_03000438 asm("gUnk_03000438");
extern s32 t112B_gUnk_03003D10 asm("gUnk_03003D10");
struct T112BHistoryRow { s32 h[5]; u8 rest[0x138]; };
extern struct T112BHistoryRow t112B_history[4] asm("gUnk_03003DC4");
extern s32 t112B_gUnk_084A3E40 asm("gUnk_084A3E40");
void sub_080AB2F8(struct T112BActor *input112) {
    register struct T112BActor *arg0 asm("sl") = input112;
    void *sp4;
    u8 sp10[0x34];
    u8 sp44[0x34];
    s16 sp78;
    s16 sp7A;
    void *sp7C;
    u32 sp80;
    u32 sp84;
    s32 sp88;
    s32 sp8C;
    s32 sp90;
    s32 sp94;
    s32 sp98;
    s32 sp9C;
    s32 spA0;
    u32 spA4;
    u32 spA8;
    u32 spAC;
    u32 spB0;
    s32 spB4;
    u32 spB8;
    s32 spBC;
    s32 spC0;
    s32 spC4;
    s32 spC8;
    s32 spCC;
    u8 *var_r9;
    s16 *temp_r0_4;
    s16 *temp_r0_9;
    s32 temp_r0_3;
    s32 temp_r1_2;
    s32 *temp_r1_14;
    s32 *temp_r1_15;
    s32 *temp_r1_16;
    s32 *temp_r1_17;
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 temp_r0_10;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_14;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1_13;
    s32 temp_r4;
    s32 var_r1_2;
    s8 *var_r0;
    u32 temp_r0_2;
    u16 temp_r1;
    u16 temp_r3;
    u16 temp_r3_2;
    u32 *var_r1_3;
    u32 temp_r0_15;
    u32 temp_r0_6;
    u32 temp_r1_10;
    u32 temp_r1_11;
    u32 temp_r1_12;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_8;
    u32 temp_r1_9;
    u32 var_r0_3;
    u8 temp_r7;
    u8 temp_r7_2;
    u8 temp_r7_3;
    u8 temp_r7_4;
    u8 temp_r7_5;
    u8 temp_r7_6;
    u8 var_r0_2;
    void *temp_r0;
    void *temp_r1_7;
    u8 *selectedPlayer112;
    void *temp_r5;
    void *temp_r5_2;


    {
        register struct T112BActor **actorSlot112 asm("r5") = &t112B_gUnk_03000434;
        register u16 *indexSlot112 asm("r4");
    (*actorSlot112) = arg0;
    temp_r0 = (u8 *)arg0 + 0x204;
    sp7C = temp_r0;
    t112B_sub_0801623C(arg0, &t112B_gUnk_084A3E40, 0);
    t112B_sub_08019F60(temp_r0);
    sub_0801A0A4((*actorSlot112));
    indexSlot112 = &t112B_gUnk_03000438;
    temp_r0_2 = t112B_sub_08016E04(arg0->f2D8, arg0->f2DA);
    *indexSlot112 = temp_r0_2;
    }
    temp_r1 = temp_r0_2;
    if (temp_r1 == 0xFFFF) {
        register struct T112BActor **waitSlot112 asm("r4") = &t112B_gUnk_03000434;
        register u32 *flagsSlot112 asm("r5") = &gUnk_030056FC;
        register u32 sentinel112 asm("r6") = temp_r1;
loop_2:
        (*waitSlot112)->fC = 0xBU;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            *flagsSlot112 &= ~(1 << (*waitSlot112)->f0);
            return;
        }
        sub_080003F0();
        if (t112B_gUnk_03000438 != sentinel112) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    t112B_sub_08065158(&sp10, 0x5001D, t112B_gUnk_03000438, -1, 1);
    t112B_sub_08065158(&sp44, 0x5001E, t112B_gUnk_03000438, -1, 1);
    {
    struct T112BActor *initActor = t112B_gUnk_03000434;
    temp_r1_2 = M2C_FIELD(sp7C, s16 *, 6) * 3;
    initActor->f1D6 = temp_r1_2;
    initActor->f5C = temp_r1_2;
    temp_r0_3 = M2C_FIELD(sp7C, s16 *, 4) * 0xA * 2;
    initActor->f1D4 = temp_r0_3;
    initActor->f5E = temp_r0_3;
    initActor->f6C = 0;
    temp_r0_4 = ((u8 *)initActor + 0x6C) - 2;
    *temp_r0_4 = 0;
    *(temp_r0_4 - 1) = 0;
    initActor->fC = 0U;
    }
    sp90 = 0;
    sp94 = 0xFFFF;
    sp9C = 0;
    spA0 = 0;
    spC4 = 0;
    spBC = 0;
    spC0 = 0;
    spA8 = 0;
    if (sub_0800CE30() == 1) {
        sp8C = 0x100;
        spA4 = 0x78;
    } else {
        sp8C = 0x80;
        spA4 = 0xB4;
    }
    t112B_gUnk_03000434->f1FD = 2U;
    t112B_gUnk_03000434->f1FE = 2U;
    t112B_gUnk_03000434->f50 = 1;
    {
        s16 row, col;
        for (row = 0; row <= 3; row++) {
            for (col = 0; col <= 4; col++) {
                t112B_history[row].h[col] = 0;
            }
        }
    }
    sub_08097FE4();
    sub_08097A4C();
    spC8 = 0;
    sub_08067C18();
    goto wait_test112;
wait_body112:
    sub_080003F0();
wait_test112:
    if (sub_08067C08() == 0) goto wait_body112;
    sub_08067BF8();
    goto loop_test112;
loop_body112:
    {
        if ((arg0->fC == 0xA) && (sp9C == 0)) {
            sp9C = 8;
        }
        if (sub_08058DB0() != 0) {

        } else {
            t112B_sub_0801C8F0(t112B_gUnk_03000434);
            temp_r0_6 = t112B_gUnk_03000434->f1FD - 1;
            switch (temp_r0_6) {
            case 0:
                arg0->fC = 0U;
                if (sub_08067C08() == 0) {

                } else {
                    t112B_gUnk_03000434->f1FD = (u8) t112B_gUnk_03000434->f1FE;
                    sub_08067BF8();
                }
                break;
            case 1:
                sp90 = 0;
                if (sub_08056F78() == 0) {

                } else {
                    t112B_gUnk_03000434->f1FE = 3U;
                    t112B_gUnk_03000434->f1FD = 1U;
                    sub_08067C18();
                }
                break;
            case 2:
                sp90 = 1;
                t112B_gUnk_03000434->fC = 1U;
                if ((sub_08097A74(t112B_gUnk_03000434, &gUnk_03003CE0[t112B_sub_08096594(0)], sp8C, 0x40) << 0x18) != 0) {
                    temp_r1_5 = spA8;
                    spA8 = (u32) (u16) (temp_r1_5 + 1);
                    if (spA4 >= temp_r1_5) {

                    } else {
                        spA8 = 0;
                        if (spC0 != 0) {
                            spB0 = 0;
                            sub_0805865C(0xB9);
                            t112B_gUnk_03000434->f1FE = 4U;
                            var_r0 = (u8 *)t112B_gUnk_03000434 + 0x1FD;
                        } else {
                            spB0 = 0;
                            sub_0805865C(0xB9);
                            t112B_gUnk_03000434->f1FE = 6U;
                            var_r0 = (u8 *)t112B_gUnk_03000434 + 0x1FD;
                        }
                        goto block_38;
                    }
                } else {
                    spB0 = 0;
                    sub_0805865C(0xB9);
                    t112B_gUnk_03000434->f1FE = 6U;
                    var_r0 = (u8 *)t112B_gUnk_03000434 + 0x1FD;
block_38:
                    *var_r0 = 1;
                    sub_08067C18();
                    sub_08097A38(0U);
                }
                break;
            case 3:
                sp90 = 2;
                t112B_gUnk_03000434->fC = 2U;
                t112B_gUnk_03000434->f1FC = (u8) ((0xF & t112B_gUnk_03000434->f1FC) | (t112B_sub_08096594(0) * 0x10));
                temp_r1_6 = t112B_gUnk_03000434->f1FC << 0x18;
                selectedPlayer112 = (0x14C * (temp_r1_6 >> 0x1C)) + (u8 *)gUnk_03003CE0;
                t112B_sub_08095F10(t112B_gUnk_03000434, temp_r1_6 >> 0x1C);
                temp_r1_7 = M2C_FIELD(selectedPlayer112, void **, 0x148);
                sp80 = (u16) M2C_FIELD(temp_r1_7, u16 *, 0) >> 4;
                sp84 = (u32) (M2C_FIELD(temp_r1_7, u16 *, 2) << 0x14) >> 0x14;
                t112B_gUnk_03000434->f68 = (u16) t112B_gUnk_03000434->f8;
                sp98 = 0;
                temp_r1_8 = spB0;
                spB0 = (u32) (u16) (temp_r1_8 + 1);
                if (temp_r1_8 <= 0x1EU) {

                } else {
                    spB0 = 0;
                    sub_08097A38(0U);
                    t112B_gUnk_03000434->f1FE = 5U;
                    t112B_gUnk_03000434->f1FD = 1U;
                    sub_08067C18();
                    sub_0805865C(0xBA);
                }
                break;
            case 4:
                sp90 = 2;
                t112B_gUnk_03000434->fC = (u16) sp90;
                temp_r1_9 = spB0;
                spB0 = (u32) (u16) (temp_r1_9 + 1);
                if (temp_r1_9 > 0xB4U) {
                    spC4 = 0;
                    spB0 = 0;
                    t112B_gUnk_03000434->f1FE = 8U;
                    t112B_gUnk_03000434->f1FD = 1U;
                    sub_08067C18();
                    spAC = 0;
                } else {
                    if (spC4 == 0) {
                        spC4 = (s32) t112B_sub_080AC5B4();
                    }
                    if ((t112B_sub_08097AC0(t112B_gUnk_03000434, sp80, sp84, 0x480, 8, 1) << 0x18) == 0) {
                        spC4 = 0;
                        spB0 = 0;
                        t112B_gUnk_03000434->f1FE = 8U;
                        t112B_gUnk_03000434->f1FD = 1U;
                        sub_08067C18();
                        spAC = 0;
                    }
                }
                t112B_gUnk_03000434->f68 = (u16) t112B_gUnk_03000434->f8;
                sp98 = 0;
                break;
            case 5:
                sp90 = 2;
                t112B_gUnk_03000434->fC = 2U;
                t112B_gUnk_03000434->f68 = 9U;
                sp98 = 0;
                temp_r1_10 = spB0;
                spB0 = (u32) (u16) (temp_r1_10 + 1);
                if (temp_r1_10 > 0x28U) {
                    spB0 = 0;
                    t112B_gUnk_03000434->f1FE = 7U;
                    t112B_gUnk_03000434->f1FD = 1U;
                    sub_08067C18();
                    sub_0805865C(0xC2);
                }
                break;
            case 6:
                sp90 = 2;
                t112B_gUnk_03000434->fC = 2U;
                t112B_gUnk_03000434->f68 = 0xAU;
                sp98 = 1;
                t112B_sub_080AC214(spC4);
                spC4 = (s32) t112B_sub_080AC2E8(spC4);
                temp_r1_11 = spB0;
                spB0 = (u32) (u16) (temp_r1_11 + 1);
                if (temp_r1_11 > 0xB4U) {
                    spC4 = 0;
                    spB0 = 0;
                    t112B_gUnk_03000434->f68 = 0xBU;
                    t112B_gUnk_03000434->f1FE = 8U;
                    t112B_gUnk_03000434->f1FD = (u8) sp98;
                    sub_08067C18();
                    spAC = 0;
                    sub_0805867C(0xC2);
                }
                break;
            case 7:
                sp90 = 0;
                t112B_gUnk_03000434->fC = (u16) sp90;
                temp_r1_12 = spAC;
                spAC = (u32) (u16) (temp_r1_12 + 1);
                if (temp_r1_12 > 0x78U) {
                    spC0 = (s32) (u8) (spC0 + 1);
                    t112B_gUnk_03000434->f1FD = 1U;
                    t112B_gUnk_03000434->f1FE = 3U;
                    sub_08067C18();
                }
                break;
            }
        }
        switch (sp90) {
        case 0:
            var_r9 = sp10;
            t112B_gUnk_03000434->f68 = (u16) t112B_gUnk_03000434->f8;
            sp98 = 1;
            var_r1_2 = 0x18;
block_64:
            spB4 = var_r1_2;
            break;
        case 1:
            var_r9 = sp10;
            t112B_gUnk_03000434->f68 = (u16) (t112B_gUnk_03000434->f8 + 8);
            sp98 = 1;
            spB4 = 0x18;
            break;
        case 2:
            var_r9 = sp44;
            var_r1_2 = 8;
            goto block_64;
        }
        if (sp94 != t112B_gUnk_03000434->f68) {
            sp94 = (s32) t112B_gUnk_03000434->f68;
            t112B_gUnk_03000434->f6C = 0;
            t112B_gUnk_03000434->f6A = 0;
        }
        M2C_FIELD(var_r9, s8 *, 0x1C) = (s8) t112B_gUnk_03000438;
        if (1 & sub_08098004()) {
            var_r0_2 = sub_08097FF8();
        } else {
            var_r0_2 = (u8) sub_0800BC44((u32) ((s32) t112B_gUnk_03000434->f14 >> 8), (u32) ((s32) t112B_gUnk_03000434->f18 >> 8), 0U);
        }
        temp_r7 = var_r0_2;
        if (sub_0800CD8C() == 0) {
            t112B_gUnk_03000434->f6E = (s16) sub_08065370(var_r9, t112B_gUnk_03000434->f68, (s32) ((u8 *)t112B_gUnk_03000434 + 0x6A), (s32) ((u8 *)t112B_gUnk_03000434 + 0x6C), (sp98));
        }
        t112B_sub_0800BC08((s32) (t112B_gUnk_03000434->f14 << 8) >> 0x10, (s32) (t112B_gUnk_03000434->f18 << 8) >> 0x10, &sp78, &sp7A, (0), (s32)(NULL));
        sub_08000AF0(t112B_gUnk_03000438 + 0x10, M2C_FIELD(var_r9, s32 *, 0xC) + (M2C_FIELD(sp7C, u16 *, 0xD6) << 5), 1U);
        temp_r0_7 = sp9C;
        if (temp_r0_7 != 0) {
            sp9C = (s32) (u16) (temp_r0_7 - 1);
            if ((1 & temp_r0_7) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                temp_r3 = t112B_gUnk_03000434->f6A;
                spCC = (s32) temp_r3;
                temp_r5 = var_r9 + 0x1C;
                t112B_drawWide(sp78, sp7A, t112B_gUnk_03000434->f68, temp_r3, ((s32) temp_r7), (temp_r5), (M2C_FIELD(var_r9, s32 *, 8)), (M2C_FIELD(var_r9, s32 *, 0)));
                t112B_drawWide(sp78, sp7A - 1, spB4, 0U, ((s32) temp_r7), (temp_r5), (M2C_FIELD(var_r9, s32 *, 8)), (M2C_FIELD(var_r9, s32 *, 0)));
            }
        } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
            temp_r3_2 = t112B_gUnk_03000434->f6A;
            spCC = (s32) temp_r3_2;
            temp_r5_2 = var_r9 + 0x1C;
            t112B_drawWide(sp78, sp7A, t112B_gUnk_03000434->f68, temp_r3_2, ((s32) temp_r7), (temp_r5_2), (M2C_FIELD(var_r9, s32 *, 8)), (M2C_FIELD(var_r9, s32 *, 0)));
            temp_r1_13 = spBC;
            spBC = (s32) (u8) (temp_r1_13 - 1);
            if (1 & temp_r1_13) {
                t112B_drawWide(sp78, sp7A - 1, spB4, 0U, ((s32) temp_r7), (temp_r5_2), (M2C_FIELD(var_r9, s32 *, 8)), (M2C_FIELD(var_r9, s32 *, 0)));
            }
        }
        temp_r0_8 = t112B_gUnk_03000434->f4C;
        if ((temp_r0_8 != 0) && (sp88 != temp_r0_8)) {
            sp88 = arg0->f4C;
            spA0 = 0xA;
            spB8 = 0;
        }
        if (spA0 != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                t112B_sub_0801A120(arg0, sp88, (s16) spB8);
            }
            if (2 & spA0) {
                spB8 = (u32) ((spB8 << 0x10) + 0xFFFF0000) >> 0x10;
            }
            spA0 = (s32) (u16) (spA0 - 1);
        } else {
            sp88 = 0;
            arg0->f4C = spA0;
        }
        if ((t112B_sub_08019CE8(arg0) << 0x10) != 0) {
            spC8 = 1;
        }
        sub_080003F0();
        if (spC8 != 0) goto loop_exit112;
    }
loop_test112:
    if ((sub_0800CB78() == 0) && (sub_08056E90() == 0)) goto loop_body112;
loop_exit112:
    sub_0805867C(0xC2);
    temp_r2 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2 |= 1;
    M2C_FIELD(&sp10, s8 *, 0x1C) = (s8) t112B_gUnk_03000438;
    t112B_gUnk_03000434->f6C = 0;
    temp_r0_9 = ((u8 *)t112B_gUnk_03000434 + 0x6C) - 2;
    *temp_r0_9 = 0;
    *(temp_r0_9 - 1) = 0;
    spB8 = 0;
    spA0 = 0xA;
    do {
        temp_r1_14 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
        *temp_r1_14 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_10 = sub_0800CD34();
            if (temp_r0_10 == 0) {
                t112B_gUnk_03000434->f6E = (s16) sub_08065370(&sp10, 0U, (s32) ((u8 *)t112B_gUnk_03000434 + 0x6A), (s32) ((u8 *)t112B_gUnk_03000434 + 0x6C), (1));
                sub_08000AF0(t112B_gUnk_03000438 + 0x10, M2C_FIELD(&sp10, s32 *, 0xC) + (M2C_FIELD(sp7C, u16 *, 0xD6) << 5), 1U);
                temp_r7_2 = (u8) sub_0800BC44((u32) ((s32) t112B_gUnk_03000434->f14 >> 8), (u32) ((s32) t112B_gUnk_03000434->f18 >> 8), 0U);
                t112B_sub_0800BC08((s32) (t112B_gUnk_03000434->f14 << 8) >> 0x10, (s32) (t112B_gUnk_03000434->f18 << 8) >> 0x10, &sp78, &sp7A, (temp_r0_10), (s32)(temp_r0_10));
                t112B_drawWide(sp78, sp7A, 0U, t112B_gUnk_03000434->f6A, ((s32) temp_r7_2), (sp10 + 0x1C), (M2C_FIELD(&sp10, s32 *, 8)), (M2C_FIELD(&sp10, s32 *, 0)));
                t112B_sub_0801A120(arg0, sp88, (s16) spB8);
            }
        }
        if (2 & spA0) {
            spB8 = (u32) ((spB8 << 0x10) + 0xFFFF0000) >> 0x10;
        }
        sub_080003F0();
        spA0 = (s32) (u16) (spA0 - 1);
    } while (spA0 != 0xFFFF);
    sub_080683CC();
    t112B_sub_08067CA8(t112B_gUnk_03000434->f2);
    sub_08068330(-0x21520532);
    goto test115_112;
body115_112:
    {
        temp_r1_15 = (sub_080020F4() * 0x14C) + (u8 *)&t112B_gUnk_03003D10;
        *temp_r1_15 |= 1;
        t112B_gUnk_03000434->f6E = (s16) sub_08065370(&sp10, 0U, (s32) ((u8 *)t112B_gUnk_03000434 + 0x6A), (s32) ((u8 *)t112B_gUnk_03000434 + 0x6C), (1));
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_11 = sub_0800CD34();
            if (temp_r0_11 == 0) {
                sub_08000AF0(t112B_gUnk_03000438 + 0x10, M2C_FIELD(&sp10, s32 *, 0xC) + (M2C_FIELD(sp7C, u16 *, 0xD6) << 5), 1U);
                temp_r7_3 = (u8) sub_0800BC44((u32) ((s32) t112B_gUnk_03000434->f14 >> 8), (u32) ((s32) t112B_gUnk_03000434->f18 >> 8), 0U);
                t112B_sub_0800BC08((s32) (t112B_gUnk_03000434->f14 << 8) >> 0x10, (s32) (t112B_gUnk_03000434->f18 << 8) >> 0x10, &sp78, &sp7A, (temp_r0_11), (s32)(temp_r0_11));
                t112B_drawWide(sp78, sp7A, 0U, t112B_gUnk_03000434->f6A, ((s32) temp_r7_3), (sp10 + 0x1C), (M2C_FIELD(&sp10, s32 *, 8)), (M2C_FIELD(&sp10, s32 *, 0)));
            }
        }
        sub_080003F0();
    }
test115_112:
    if (sub_080682B8(-0x21520532) == 0) goto body115_112;
    sub_08065E38(-0x21520532);
    goto test122_112;
body122_112:
    {
        temp_r1_16 = (sub_080020F4() * 0x14C) + (u8 *)&t112B_gUnk_03003D10;
        *temp_r1_16 |= 1;
        t112B_gUnk_03000434->f6E = (s16) sub_08065370(&sp10, 0U, (s32) ((u8 *)t112B_gUnk_03000434 + 0x6A), (s32) ((u8 *)t112B_gUnk_03000434 + 0x6C), (1));
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_12 = sub_0800CD34();
            if (temp_r0_12 == 0) {
                sub_08000AF0(t112B_gUnk_03000438 + 0x10, M2C_FIELD(&sp10, s32 *, 0xC) + (M2C_FIELD(sp7C, u16 *, 0xD6) << 5), 1U);
                temp_r7_4 = (u8) sub_0800BC44((u32) ((s32) t112B_gUnk_03000434->f14 >> 8), (u32) ((s32) t112B_gUnk_03000434->f18 >> 8), 0U);
                t112B_sub_0800BC08((s32) (t112B_gUnk_03000434->f14 << 8) >> 0x10, (s32) (t112B_gUnk_03000434->f18 << 8) >> 0x10, &sp78, &sp7A, (temp_r0_12), (s32)(temp_r0_12));
                t112B_drawWide(sp78, sp7A, 0U, t112B_gUnk_03000434->f6A, ((s32) temp_r7_4), (sp10 + 0x1C), (M2C_FIELD(&sp10, s32 *, 8)), (M2C_FIELD(&sp10, s32 *, 0)));
            }
        }
        sub_080003F0();
    }
test122_112:
    if (sub_08058DB0() != 0) goto body122_112;
    t112B_sub_080586B4(0);
    temp_r2_2 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2_2 |= 1;
    if ((t112B_sub_08057C34(6) != 0) && (t112B_sub_08057C34(0x16) == 0)) {
        var_r0_3 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x00140060);
        var_r1_3 = (u32 *)(gUnk_03005CF4 + 0x720);
    } else {
        var_r0_3 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x00140058);
        var_r1_3 = (u32 *)(gUnk_03005CF4 + 0x720);
    }
    *var_r1_3 = var_r0_3;
    goto test135_112;
body135_112:
    {
        temp_r1_17 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
        *temp_r1_17 |= 1;
        if (sub_0800CD8C() == 0) {
            t112B_gUnk_03000434->f6E = (s16) sub_08065370(&sp10, 0U, (s32) ((u8 *)t112B_gUnk_03000434 + 0x6A), (s32) ((u8 *)t112B_gUnk_03000434 + 0x6C), (1));
        }
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_13 = sub_0800CD34();
            if (temp_r0_13 == 0) {
                sub_08000AF0(t112B_gUnk_03000438 + 0x10, M2C_FIELD(&sp10, s32 *, 0xC) + (M2C_FIELD(sp7C, u16 *, 0xD6) << 5), 1U);
                temp_r7_5 = (u8) sub_0800BC44((u32) ((s32) t112B_gUnk_03000434->f14 >> 8), (u32) ((s32) t112B_gUnk_03000434->f18 >> 8), 0U);
                t112B_sub_0800BC08((s32) (t112B_gUnk_03000434->f14 << 8) >> 0x10, (s32) (t112B_gUnk_03000434->f18 << 8) >> 0x10, &sp78, &sp7A, (temp_r0_13), (s32)(temp_r0_13));
                t112B_drawWide(sp78, sp7A, 0U, t112B_gUnk_03000434->f6A, ((s32) temp_r7_5), (sp10 + 0x1C), (M2C_FIELD(&sp10, s32 *, 8)), (M2C_FIELD(&sp10, s32 *, 0)));
            }
        }
        sub_080003F0();
    }
test135_112:
    if (sub_0805EEFC(M2C_FIELD((void *)gUnk_03005CF4, void **, 0x720)) == 0) goto body135_112;
    temp_r2_3 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2_3 &= ~1;
    if ((t112B_sub_08057C34(6) != 0) && (t112B_sub_08057C34(0x16) == 0)) {
        t112B_sub_08057C6C(0x16);
        t112B_m4aSongNumStart(0x32);
    }
    sp9C = 0x14;
    do {
        if (sub_0800CD8C() == 0) {
            t112B_gUnk_03000434->f6E = (s16) sub_08065370(&sp10, 0U, (s32) ((u8 *)t112B_gUnk_03000434 + 0x6A), (s32) ((u8 *)t112B_gUnk_03000434 + 0x6C), (1));
        }
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_14 = sub_0800CD34();
            if (temp_r0_14 == 0) {
                sub_08000AF0(t112B_gUnk_03000438 + 0x10, M2C_FIELD(&sp10, s32 *, 0xC) + (M2C_FIELD(sp7C, u16 *, 0xD6) << 5), 1U);
                temp_r7_6 = (u8) sub_0800BC44((u32) ((s32) t112B_gUnk_03000434->f14 >> 8), (u32) ((s32) t112B_gUnk_03000434->f18 >> 8), 0U);
                t112B_sub_0800BC08((s32) (t112B_gUnk_03000434->f14 << 8) >> 0x10, (s32) (t112B_gUnk_03000434->f18 << 8) >> 0x10, &sp78, &sp7A, (temp_r0_14), (s32)(temp_r0_14));
                if (1 & sp9C) {
                    t112B_drawWide(sp78, sp7A, 0U, t112B_gUnk_03000434->f6A, ((s32) temp_r7_6), (sp10 + 0x1C), (M2C_FIELD(&sp10, s32 *, 8)), (M2C_FIELD(&sp10, s32 *, 0)));
                }
            }
        }
        sub_080003F0();
        sp9C = (s32) (u16) (sp9C - 1);
    } while (sp9C != 0xFFFF);
    if (!(*(u32 *)((0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0 + 0x30)) & 0x2000) && (t112B_gUnk_03000434->f5A != 0)) {
        temp_r4 = sub_0801E46C((void *) gUnk_030034E0, sp7C);
        spB8 = 0x1D;
        do {
            t112B_gUnk_03000434->f18 = (s32) (t112B_gUnk_03000434->f18 - 0x20);
            t112B_sub_0806171C(t112B_gUnk_03000434, temp_r4);
            sub_080003F0();
            temp_r0_15 = (spB8 << 0x10) + 0xFFFF0000;
            spB8 = temp_r0_15 >> 0x10;
        } while (((s32) temp_r0_15 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4);
    }
    sub_08056E24();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AB2F8);
#endif
struct P113214 { u8 pad0[0x20]; u16 state; u8 pad22[14]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x34]; u16 c8,ca,cc; u8 padce[0x7e]; };
extern struct P113214 p113214[] asm("gUnk_03003CE0");
extern s32 *obj113214 asm("gUnk_03000434");
extern u8 angle113214(s32,s32,s32,s32) asm("sub_08095FC8");
void sub_080AC214(s32 arg0)
{
    struct P113214 *base;
    s32 i, x;
    register s32 offset asm("r0");
    register u32 *flags asm("r1");
    register s32 *coord asm("r1");
    if ((arg0 << 24) != 0) return;
    base = p113214;
    if (base[sub_080020F4()].state == 11) return;
    if (base[sub_080020F4()].state == 14) return;
    if (base[sub_080020F4()].state == 12) return;
    offset = 0x14C * sub_080020F4();
    flags = &base->flags; asm("" : "+r"(offset), "+r"(flags));
    if (*(u32 *)(offset + (u32)flags) & 0x2000) return;
    if (base[sub_080020F4()].active == 0) return;
    i = sub_080020F4();
    offset = 0x14C * sub_080020F4();
    coord = &base->x; asm("" : "+r"(offset), "+r"(coord));
    x = *(s32 *)(offset + (u32)coord) >> 8;
    offset = 0x14C * sub_080020F4();
    coord = &base->y; asm("" : "+r"(offset), "+r"(coord));
    base[i].ca = angle113214(x, *(s32 *)(offset + (u32)coord) >> 8, obj113214[5] >> 8, obj113214[6] >> 8);
    base[sub_080020F4()].cc = 0x200;
    base[sub_080020F4()].c8 = 1;
}







struct P1132 { u8 pad0[0x20]; u16 unk20; u8 pad22[14]; u32 flags; u8 pad34[0x34]; u8 unk68; u8 pad69[0x1f]; u16 unk88; u8 pad8a[2]; s32 unk8C,unk90; u8 pad94[0x1c]; u16 unkB0; u8 padb2[0x16]; u16 unkC8,unkCA,unkCC; u8 padce[0x16]; u32 unkE4[0x1a]; };
struct O1132 { u16 unk0; u8 pad2[10]; u16 unkC; u8 pade[6]; s32 unk14,unk18; u8 pad1c[0x34]; s32 unk50; };
extern struct P1132 players1132[] asm("gUnk_03003CE0");
extern struct O1132 *obj1132 asm("gUnk_03000434");
extern s32 y1132 asm("gUnk_03003D70");
extern u32 atan1132(s32,s32) asm("ArcTan2");
extern s32 hit1132(void *,void *) asm("sub_0801ED8C");
s32 sub_080AC2E8(u8 arg0) {
    register u32 sp0 asm("r10");
    register u32 arg asm("r9");
    u16 dy;
    u32 dyword;
    s16 dxSigned,dySigned;
    register struct O1132 *source asm("r6");
    register struct O1132 *firstSource asm("r2");
    register s32 *yp asm("r4");
    struct P1132 *base;
    register s32 stride asm("r6");
    register u32 indexWord asm("r1");
    struct O1132 *object;
    register u32 *slot asm("r1");
    struct P1132 *tail;
    struct O1132 **obj;
    register s32 idx asm("r0");
    register s32 value asm("r0");
    register s32 hitValue asm("r0");
    register struct O1132 **initialObj asm("r6");
    register struct P1132 *initialBase asm("r4");
    register s32 initialStride asm("r5");
    register u32 boolValue asm("r1");
    register u32 fraction asm("r1");
    register u32 half asm("r0");
    register u32 one asm("r2");
    register u32 *history asm("r8");
    s32 *xp;
    register s32 off asm("r0");
    register u32 *fp asm("r1");
    register s16 *var_r0 asm("r0");
    s16 temp_r1;
    s16 temp_r4_2;
    register s32 var_r1 asm("r1");
    s32 temp_r0;
    register s32 temp_r5 asm("r5");
    u32 temp_r0_2;
    u32 temp_r4;
    register u32 temp_r4_4 asm("r8");
    register u32 var_r4 asm("r4");
    register u32 angle asm("r0");
    struct P1132 *temp_r1_2;
    struct O1132 *temp_r4_3;
    struct O1132 *initial;

    arg = arg0;
    sp0 = 0;
    if (arg != 0) {
        initialBase = players1132;
        boolValue = initialBase[sub_080020F4()].unkC8;
        sp0 = (u32)(-boolValue | boolValue) >> 31;
    }
    idx = sub_080020F4();
    initialObj = &obj1132;
    firstSource = *initialObj;
    initialBase = players1132;
    initialStride = 0x14C;
    indexWord = idx * initialStride;
    angle = (u32)initialBase + 0x8C;
    asm("" : "+r"(indexWord), "+r"(angle));
    indexWord += angle;
    asm("" : "+r"(indexWord));
    angle = firstSource->unk14;
    indexWord = *(u32 *)indexWord;
    angle = (u32)((angle - indexWord) << 8) >> 16;
    asm("" : "+r"(angle));
    temp_r4_4 = angle;
    idx = sub_080020F4();
    source = *initialObj;
    indexWord = source->unk18 >> 8;
    off = idx * initialStride;
    asm("" : "+r"(indexWord), "+r"(off));
    yp = &initialBase->unk90;
    value = (*(s32 *)(off + (u32)yp) >> 8) + 16;
    asm("" : "+r"(value), "+r"(indexWord));
    indexWord -= value;
    indexWord <<= 16;
    asm("" : "+r"(indexWord));
    dy = indexWord >> 16;
    if (source->unk18 < *(s32 *)(sub_080020F4() * initialStride + (u32)yp)) dyword = (dy << 16) + 0xFFF40000;
    else dyword = (dy << 16) + 0x100000;
    dy = dyword >> 16;
    asm("" : "+r"(dy));
    dxSigned = temp_r4_4;
    dySigned = dy;
    hitValue = Sqrt(dxSigned * dxSigned + dySigned * dySigned);
    if (arg != 0) goto done;
    if ((u32)hitValue > 0x2FU) {

    } else if (sub_0800CDF8() != 0) {

    } else if (sub_0800CCCC() != 0) {

    } else if (sub_0800CD8C() != 0) {

    } else if ((obj = &obj1132, (*obj)->unkC) == 0xB) {

    } else if ((off = sub_080020F4(), base = players1132, stride = 0x14C, off *= stride, fp = &base->flags, *(u32 *)(off + (u32)fp) & 0x2000)) {

    } else if ((*(struct P1132 *)(sub_080020F4() * stride + (u32)base)).unk68 == 0) {

    } else if ((*(struct P1132 *)(sub_080020F4() * stride + (u32)base)).unk20 == 0xE) {

    } else if ((*(struct P1132 *)(sub_080020F4() * stride + (u32)base)).unk20 == 0xB) {

    } else if ((*(struct P1132 *)(sub_080020F4() * stride + (u32)base)).unk20 == 0xC) {

    } else {
        off = sub_080020F4();
        object = *obj;
        indexWord = object->unk0 * 4;
        off *= stride;
        asm("" : "+r"(off), "+r"(indexWord));
        indexWord += off;
        history = base->unkE4;
        asm("" : "+r"(indexWord), "+r"(history));
        slot = (u32 *)(indexWord + (u32)history);
        if (*slot == object->unk50) goto done;
        (*(struct P1132 *)(sub_080020F4() * stride + (u32)base)).unk20 = 0xA;
        (*(struct P1132 *)(sub_080020F4() * stride + (u32)base)).unkB0 = 0xFFFE;
        temp_r5 = sub_080020F4();
        temp_r4_3 = *obj;
        hitValue = hit1132(temp_r4_3, &(*(struct P1132 *)(sub_080020F4() * stride + (u32)base)));
        temp_r1_2 = &(*(struct P1132 *)(temp_r5 * stride + (u32)base));
        hitValue += temp_r1_2->unk88;
        temp_r1_2->unk88 = hitValue;
        off = sub_080020F4();
        object = *obj;
        indexWord = object->unk0 * 4;
        off *= stride;
        asm("" : "+r"(off), "+r"(indexWord));
        indexWord += off;
        slot = (u32 *)(indexWord + (u32)history);
        asm("" : "+r"(slot), "+r"(object));
        temp_r0 = object->unk50;
        *slot = temp_r0;
        object->unk50 = temp_r0 + 1;
        asm("" : : "r"(object));

        off = sub_080020F4() * stride;
        fp = (u32 *)&base->unk8C;
        asm("" : "+r"(off), "+r"(fp));
        temp_r4_4 = (u32)((*(s32 *)(off + (u32)fp) - (*obj)->unk14) << 8) >> 16;
        off = sub_080020F4() * stride;
        fp = (u32 *)&base->unk90;
        asm("" : "+r"(off), "+r"(fp));
        temp_r1 = (s32)((*(s32 *)(off + (u32)fp) - (*obj)->unk18) << 8) >> 16;
        angle = atan1132((s16)temp_r4_4, temp_r1) << 16;
        asm("" : "+r"(angle));
        fraction = angle << 3;
        var_r4 = angle >> 29;
        asm("" : "+r"(fraction), "+r"(var_r4));
        half = 0x80000000;
        asm("" : "+r"(half));
        if (fraction > half) {
            if (var_r4 <= 6U) {
                var_r4 += 1;
            } else {
                var_r4 = 0;
            }
        }
        if (var_r4 == 0) goto direction0;
        if (var_r4 == 1) goto direction1;
        {
            {
                idx = sub_080020F4();
                tail = players1132;
                asm("" : "+r"(tail));
                var_r0 = (s16 *)(idx * 0x14C + (u32)tail);
                var_r1 = var_r4 - 2;
                var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); asm("" : "+r"(var_r0), "+r"(var_r1));
            }
            goto storeDirection;
        }
direction0:
        idx = sub_080020F4(); tail = players1132; asm("" : "+r"(tail));
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 6;
        asm("" : "+r"(var_r0), "+r"(var_r1));
        goto storeDirection;
direction1:
        idx = sub_080020F4(); tail = players1132; asm("" : "+r"(tail));
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 7;
        asm("" : "+r"(var_r0), "+r"(var_r1));
storeDirection:
        *var_r0 = var_r1;
        players1132[sub_080020F4()].unkCC = 0x200;
        players1132[sub_080020F4()].unkC8 = 0x10;
        sp0 = 1;
    }
done:
    return sp0;
}







struct P1135 { u8 pad0[0x20]; u16 unk20; u8 pad22[14]; u32 flags; u8 pad34[0x34]; u8 unk68; u8 pad69[0x1f]; u16 unk88; u8 pad8a[2]; s32 unk8C; u8 pad90[0x20]; u16 unkB0; u8 padb2[0x16]; u16 unkC8,unkCA,unkCC; u8 padce[0x16]; u32 unkE4[0x1a]; };
struct O1135 { u16 unk0; u8 pad2[10]; u16 unkC; u8 pade[6]; s32 unk14,unk18; u8 pad1c[0x34]; s32 unk50; };
extern struct P1135 players1135[] asm("gUnk_03003CE0");
extern struct O1135 *obj1135 asm("gUnk_03000434");
extern s32 y1135 asm("gUnk_03003D70");
extern u32 atan1135(s32,s32) asm("ArcTan2");
extern s32 hit1135(void *,void *) asm("sub_0801ED8C");
s32 sub_080AC5B4(void) {
    volatile s32 sp0;
    struct P1135 *base;
    register s32 stride asm("r6");
    register u32 indexWord asm("r1");
    struct O1135 *object;
    register u32 *slot asm("r1");
    struct P1135 *tail;
    struct O1135 **obj;
    register s32 idx asm("r0");
    s32 value;
    register u32 fraction asm("r1");
    register u32 half asm("r0");
    register u32 one asm("r2");
    register u32 *history asm("r9");
    register s32 *xp asm("r10");
    register s32 off asm("r0");
    register u32 *fp asm("r1");
    register s16 *var_r0 asm("r0");
    s16 temp_r1;
    s16 temp_r4_2;
    register s32 var_r1 asm("r1");
    s32 temp_r0;
    register s32 temp_r5 asm("r5");
    u32 temp_r0_2;
    u32 temp_r4;
    register u32 temp_r4_4 asm("r4");
    register u32 var_r4 asm("r4");
    register u32 angle asm("r0");
    struct P1135 *temp_r1_2;
    struct O1135 *temp_r4_3;
    struct O1135 *initial;

    sp0 = 0;
    idx = sub_080020F4();
    obj = &obj1135;
    initial = *obj;
    base = players1135;
    stride = 0x14C;
    idx *= stride;
    asm("" : "+r"(idx), "+r"(stride));
    xp = &base->unk8C;
    asm("" : "+r"(xp));
    temp_r4 = (u32) ((initial->unk14 - *(s32 *)(idx + (u32)xp)) << 8) >> 0x10;
    temp_r4_2 = (s16) temp_r4;
    temp_r1 = ((s32) ((*obj)->unk18 - *(s32 *)((stride * sub_080020F4()) + (u32)&y1135)) >> 8) - 8;
    if ((u32) Sqrt((temp_r4_2 * temp_r4_2) + (temp_r1 * temp_r1)) > 0x27U) {

    } else if (sub_0800CDF8() != 0) {

    } else if (sub_0800CCCC() != 0) {

    } else if (sub_0800CD8C() != 0) {

    } else if ((*obj)->unkC == 0xB) {

    } else if ((off = stride * sub_080020F4(), fp = &base->flags, *(u32 *)(off + (u32)fp) & 0x2000)) {

    } else if ((*(struct P1135 *)(sub_080020F4() * stride + (u32)base)).unk68 == 0) {

    } else if ((*(struct P1135 *)(sub_080020F4() * stride + (u32)base)).unk20 == 0xE) {

    } else if ((*(struct P1135 *)(sub_080020F4() * stride + (u32)base)).unk20 == 0xB) {

    } else if ((*(struct P1135 *)(sub_080020F4() * stride + (u32)base)).unk20 == 0xC) {

    } else {
        off = sub_080020F4();
        object = *obj;
        indexWord = object->unk0 * 4;
        off *= stride;
        asm("" : "+r"(off), "+r"(indexWord));
        indexWord += off;
        history = base->unkE4;
        asm("" : "+r"(indexWord), "+r"(history));
        slot = (u32 *)(indexWord + (u32)history);
        if (*slot == object->unk50) goto done;
        (*(struct P1135 *)(sub_080020F4() * stride + (u32)base)).unk20 = 0xA;
        (*(struct P1135 *)(sub_080020F4() * stride + (u32)base)).unkB0 = 0xFFFE;
        temp_r5 = sub_080020F4();
        temp_r4_3 = *obj;
        value = hit1135(temp_r4_3, &(*(struct P1135 *)(sub_080020F4() * stride + (u32)base)));
        temp_r1_2 = &(*(struct P1135 *)(temp_r5 * stride + (u32)base));
        temp_r1_2->unk88 = value * 2 + temp_r1_2->unk88;
        off = sub_080020F4();
        object = *obj;
        indexWord = object->unk0 * 4;
        off *= stride;
        asm("" : "+r"(off), "+r"(indexWord));
        indexWord += off;
        slot = (u32 *)(indexWord + (u32)history);
        asm("" : "+r"(slot), "+r"(object));
        temp_r0 = object->unk50;
        *slot = temp_r0;
        object->unk50 = temp_r0 + 1;
        asm("" : : "r"(object));
        one = 1; asm("" : "+r"(one)); sp0 = one;
        temp_r4_4 = (u32) ((*(s32 *)((stride * sub_080020F4()) + (u32)xp) - (*obj)->unk14) << 8) >> 0x10;
        asm("" : "+r"(temp_r4_4));
        temp_r1 = (s32) ((*(s32 *)((stride * sub_080020F4()) + (u32)&y1135) - (*obj)->unk18) << 8) >> 0x10;
        temp_r4_4 = (s16)temp_r4_4;
        asm("" : "+r"(temp_r4_4));
        angle = atan1135(temp_r4_4, temp_r1) << 16;
        asm("" : "+r"(angle));
        fraction = angle << 3;
        var_r4 = angle >> 29;
        asm("" : "+r"(fraction), "+r"(var_r4));
        half = 0x80000000;
        asm("" : "+r"(half));
        if (fraction > half) {
            if (var_r4 <= 6U) {
                var_r4 += 1;
            } else {
                var_r4 = 0;
            }
        }
        if (var_r4 == 0) goto direction0;
        if (var_r4 == 1) goto direction1;
        {
            {
                idx = sub_080020F4();
                tail = players1135;
                asm("" : "+r"(tail));
                var_r0 = (s16 *)(idx * 0x14C + (u32)tail);
                var_r1 = var_r4 - 2;
                var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); asm("" : "+r"(var_r0), "+r"(var_r1));
            }
            goto storeDirection;
        }
direction0:
        idx = sub_080020F4(); tail = players1135; asm("" : "+r"(tail));
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 6;
        asm("" : "+r"(var_r0), "+r"(var_r1));
        goto storeDirection;
direction1:
        idx = sub_080020F4(); tail = players1135; asm("" : "+r"(tail));
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 7;
        asm("" : "+r"(var_r0), "+r"(var_r1));
storeDirection:
        *var_r0 = var_r1;
        players1135[sub_080020F4()].unkCC = 0x400;
        players1135[sub_080020F4()].unkC8 = 0x16;
        sub_0805865C(0xBB);
    }
done:
    return sp0;
}




void sub_080AC81C(void)
{
    sub_0805867C(0xC2);
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000438);
}
#ifdef NONMATCHING
struct Actor113844 { u16 unk0,unk2; u8 p4[4]; u16 unk8; u8 pa[2]; u16 unkC; u8 pe[6]; s32 unk14,unk18; u8 p1c[0x30]; s32 unk4C,unk50; u8 p54[6]; u16 unk5A; s16 unk5C,unk5E; u8 p60[8]; u16 unk68,unk6A,unk6C,unk6E; u8 p70[0x164]; s16 unk1D4,unk1D6; u8 p1d8[0x24]; u8 unk1FC,unk1FD,unk1FE,p1ff; u8 unk200,p201; u16 unk202; u8 p204[0xd4]; u16 unk2D8,unk2DA; };
struct Res113844 { u8 p0[4]; s16 unk4,unk6; u8 p8[0xce]; u16 unkD6; };
struct Sprite113844 { s32 unk0,unk4,unk8; u8 *unkC; u8 p10[12]; u8 unk1C; };
struct Pos113844 { s32 unk0,unk4; };
struct Player113844 { u8 p0[0x30]; u32 flags; u8 p34[0x118]; };
extern struct Player113844 players113844[] asm("gUnk_03003CE0");
extern struct Actor113844 *actor113844 asm("gUnk_03000440");
extern struct Actor113844 *actors113844[] asm("gUnk_03000448");
extern struct Sprite113844 sprite113844 asm("gUnk_03000458");
extern struct Pos113844 pos113844 asm("gUnk_03000490");
extern s8 flags113844 asm("gUnk_030004B8");
extern s8 flagsArray113844[5] asm("gUnk_030004B8");
extern u16 tile113844 asm("gUnk_030004BE");
extern u8 counter113844 asm("gUnk_030004C0"), timer113844 asm("gUnk_030004C1");
extern u8 states113844[] asm("gUnk_030004C4");
extern u32 mask113844 asm("gUnk_030056FC");
extern u8 history113844[] asm("gUnk_03003DC4");
extern u8 data113844[] asm("gUnk_084A4C40");
extern void bc113844(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void draw113844(s16,s16,u16,u16,u32,void *,s32,s32) asm("sub_08007870");
extern u32 anim113844(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void init113844(void *,u32,u32,s32,s32) asm("sub_08065158");
extern u32 tileCall113844(u32,u32) asm("sub_08016E04");
extern void initActor113844(void *,void *,s32) asm("sub_0801623C");
extern void show113844(void *) asm("sub_0801A0A4");
extern void hide113844(void *) asm("sub_0801A0B0");
extern void resourceInit113844(void *) asm("sub_08019F60");
extern void pathInit113844(void) asm("sub_080AE0B8");
extern void pathSlot113844(s32) asm("sub_080AE11C");
extern void updateActor113844(void *) asm("sub_0801C8F0");
extern s32 moveActor113844(void *,s32) asm("sub_08095B04");
extern s32 actorEffect113844(void *) asm("sub_080ADE30");
extern void drawEffect113844(void *,s32,s16) asm("sub_0801A120");
extern s32 actorDone113844(void *) asm("sub_08019CE8");
extern void signal113844(u16) asm("sub_08067CA8");
extern void fade113844(s32) asm("sub_080586B4");
extern void effectUpdate113844(void *,s32) asm("sub_0806171C");
void sub_080AC844(struct Actor113844 *input) {
    struct Actor113844 *arg0;
        u8 unused[0x34]; /* Original frame reserves space before coordinate outputs. */
    s16 coordinates[2];
    struct Res113844 *sp48;
    s32 sp4C;
    s32 sp50;
    s32 sp54;
    u32 sp58;
    u32 sp5C;
    s32 sp60;
    s32 sp64;
    u16 *sp68;
    u16 *sp6C;
    void *sp70;
    s16 *var_r5;
    s16 temp_r0_11;
    s16 temp_r0_14;
    s16 temp_r0_17;
    s16 temp_r0_19;
    register s32 temp_r0_3 asm("r0");
    s16 temp_r0_9;
    register s32 temp_r1_2 asm("r1");
    s16 temp_r1_4;
    s16 temp_r2_2;
    s16 temp_r2_3;
    s16 temp_r2_4;
    s16 temp_r2_5;
    s16 temp_r2_6;
    s16 temp_r2_7;
    s16 temp_r2_8;
    s16 temp_r2_9;
    u32 var_r3;
    u32 var_r4;
    u32 var_r4_10;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_4;
    u32 var_r4_5;
    u32 var_r4_6;
    u32 var_r4_7;
    u32 var_r4_8;
    u32 var_r4_9;
    s32 temp_r0_21;
    s32 temp_r0_22;
    s32 temp_r0_23;
    s32 temp_r0_24;
    s32 temp_r0_25;
    s32 temp_r0_26;
    s32 temp_r1_6;
    s32 temp_r3;
    s32 temp_r4;
    u32 exitBlink;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r0_4;
    s8 *var_r1;
    s8 *var_r1_2;
    s8 var_r0_2;
    u16 *var_r9;
    u16 temp_r0_10;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_15;
    u16 temp_r0_16;
    u16 temp_r0_18;
    u32 temp_r0_2;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r1;
    u16 waitValue;
    register u32 zero asm("r2");
    register u16 *heightPtr asm("r0");
    u16 *tilePtr;
    u32 *maskPtr;
    u16 temp_r1_5;
    u16 temp_r2;
    u32 temp_r0_27;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r1_7;
    u32 var_r3_2;
    u32 var_r3_3;
    u32 var_r3_4;
    u32 var_r3_5;
    u8 temp_r0_20;
    u32 temp_r0_6;
    u8 temp_r8;
    u8 temp_r8_2;
    u8 temp_r8_3;
    u8 temp_r8_4;
    u8 var_r0_5;
    struct Res113844 *temp_r0;
    u8 *temp_r1_3;
    void *temp_r7;

    arg0 = input;
    actor113844 = arg0;
    temp_r0 = (struct Res113844 *)((u8 *)arg0 + 0x204);
    sp48 = temp_r0;
    initActor113844(arg0, &data113844, 0);
    resourceInit113844(temp_r0);
    show113844(arg0);
    tilePtr = &tile113844;
    asm("" : "+r"(tilePtr));
    temp_r0_2 = tileCall113844(arg0->unk2D8, arg0->unk2DA);
    *tilePtr = temp_r0_2;
    temp_r1 = temp_r0_2;
    if (temp_r1 == 0xFFFF) {
        maskPtr = &mask113844;
        asm("" : "+r"(maskPtr));
        waitValue = temp_r1;
loop_2:
        arg0->unkC = 0xBU;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            *maskPtr &= ~(1 << arg0->unk0);
            return;
        }
        sub_080003F0();
        if (tile113844 != waitValue) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
        init113844(&sprite113844, 0x5001F, tile113844, -1, 1);
    temp_r1_2 = sp48->unk6 * 3;
    heightPtr = (u16 *)&arg0->unk1D6;
    asm("" : "+r"(heightPtr));
    zero = 0;
    asm("" : "+r"(zero), "+r"(heightPtr));
    *heightPtr = temp_r1_2;
    arg0->unk5C = temp_r1_2;
    temp_r0_3 = sp48->unk4;
    temp_r1_2 = temp_r0_3 << 1;
    temp_r0_3 <<= 3;
    asm("" : "+r"(temp_r0_3), "+r"(temp_r1_2));
    temp_r0_3 += temp_r1_2;
    temp_r0_3 *= 2;
    arg0->unk1D4 = temp_r0_3;
    temp_r1_3 = (u8 *)arg0 + 0x5E;
    arg0->unk5E = temp_r0_3;
    {
        register u16 *p6C asm("r3");
        register u16 *p6A asm("r1");
        register u16 *p68 asm("r0");
        p6C = &arg0->unk6C;
        *p6C = zero;
        p6A = (u16 *)(temp_r1_3 + 0xC);
        *p6A = zero;
        p68 = &arg0->unk68;
        *p68 = zero;
        arg0->unkC = zero;
        sp50 = 0;
        sp54 = zero;
        arg0->unk50 = 1;
        asm("" : "+r"(p6C), "+r"(p6A), "+r"(p68));
        sp70 = p6C;
        sp6C = p6A;
        sp68 = p68;
    }
    var_r4 = 0;
    do {
        var_r3 = 0;
        do {
            *(u32 *)((s16)var_r3 * 4 + (s16)var_r4 * 0x14C + (u32)history113844) = 0;
            var_r3 = (u16)((s16)var_r3 + 1);
        } while ((s16)var_r3 <= 4);
        var_r4 = (u16)((s16)var_r4 + 1);
    } while ((s16)var_r4 <= 3);
    pos113844.unk0 = arg0->unk14 >> 8;
    pos113844.unk4 = (arg0->unk18 >> 8) + 16;
    flagsArray113844[0] = 0;
    var_r4_2 = 1;
    temp_r7 = (u8 *)&pos113844 + 4;
    do {
        temp_r2_2 = (s16)var_r4_2;
        temp_r3 = temp_r2_2 * 8;
        temp_r1_6 = (temp_r2_2 - 1) * 8;
        *(s32 *)(temp_r3 + (u32)&pos113844) = *(s32 *)(temp_r1_6 + (u32)&pos113844);
        *(s32 *)(temp_r3 + (u32)temp_r7) = *(s32 *)(temp_r1_6 + (u32)temp_r7) - 16;
        flagsArray113844[temp_r2_2] = 0;
        temp_r2 = temp_r2_2 + 1;
        var_r4_2 = temp_r2;
    } while ((s16)temp_r2 <= 4);
    pathInit113844();
    pathSlot113844(0);
    pathSlot113844(1);
    pathSlot113844(2);
    pathSlot113844(3);
    sub_08097FE4();
    sub_08097A4C();
    arg0->unk8 = 1U;
    arg0->unk1FD = 2U;
    arg0->unk1FE = 2U;
    sp5C = 0;
    counter113844 = 0;
    timer113844 = 0;
    sp60 = 0;
    arg0->unk1FC = (u8) ((-0x10 & arg0->unk1FC) | (0xF & (u8) arg0->unk0));
    arg0->unk202 = (u16) arg0->unk2;
    arg0->unk200 = 0xFF;
    sp64 = 0;
    arg0->unk8 = 1U;
    sub_08067C18();
    goto poll14;
loop_14:
    sub_080003F0();
poll14:
    if (sub_08067C08() == 0) goto loop_14;
    sub_08067BF8();
    goto poll132;
loop_132:
    {
        if (mask113844 == 1) {
            show113844(arg0);
        } else {
            hide113844(arg0);
        }
        if ((arg0->unkC == 0xA) && (sp50 == 0)) {
            counter113844 = 1;
            sp50 = 8;
        }
        var_r9 = &sp48->unkD6;
        var_r5 = &coordinates[1];
        if (sub_08058DB0() != 0) {

        } else {
            updateActor113844(arg0);
            temp_r0_5 = arg0->unk1FD - 1;
            switch (temp_r0_5) {                    /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                arg0->unkC = 0U;
                var_r9 = &sp48->unkD6;
                var_r5 = &coordinates[1];
                if (sub_08067C08() == 0) {

                } else {
                    arg0->unk1FD = (u8) arg0->unk1FE;
                    sub_08067BF8();
                }
                break;
            case 1:                                 /* switch 1 */
                var_r9 = &sp48->unkD6;
                var_r5 = &coordinates[1];
                if (sub_08056F78() == 0) {

                } else {
                    arg0->unk1FE = 5U;
                    var_r1 = (u8 *)arg0 + 0x1FD;
                    goto block_76;
                }
                break;
            case 4:                                 /* switch 1 */
                arg0->unkC = 2U;
                if (timer113844 != 0) {
                    temp_r0_6 = timer113844 - 1;
                    timer113844 = temp_r0_6;
                    var_r9 = &sp48->unkD6;
                    var_r5 = &coordinates[1];
                    if ((temp_r0_6 << 0x18) != 0) {

                    } else {
                        var_r3_2 = 0;
                        var_r4_3 = 1;
                        do {
                            temp_r2_3 = (s16) var_r4_3;
                            if ((1 << temp_r2_3) & mask113844) {
                                var_r3_2 = (u32) ((var_r3_2 << 0x10) + 0x10000) >> 0x10;
                            }
                            temp_r0_7 = temp_r2_3 + 1;
                            var_r4_3 = (u16) temp_r0_7;
                        } while ((s32) (s16) temp_r0_7 <= 4);
                        if (var_r3_2 != 0) {
                            var_r4_4 = 0;
                            do {
                                temp_r0_9 = (s16) var_r4_4;
                                actors113844[temp_r0_9]->unk1FD = 8;
                                temp_r0_8 = temp_r0_9 + 1;
                                var_r4_4 = (u16) temp_r0_8;
                            } while ((s32) (s16) temp_r0_8 <= 3);
                        }
                        timer113844 = 0;
                        arg0->unk1FE = 8U;
                        var_r1 = (u8 *)arg0 + 0x1FD;
                        goto block_76;
                    }
                } else {
                    if ((moveActor113844(arg0, 0x240) << 0x10) != 0) {
                        if ((u32) counter113844 <= 5U) {
                            counter113844 += 1;
                        } else {
                            counter113844 = 0;
                            var_r0 = mask113844;
                            if (var_r0 != 1) {
                                var_r0 = 0x5A;
                            }
                            timer113844 = (u8) var_r0;
                        }
                    }
                    temp_r1_7 = sp5C;
                    sp5C = (u32) (u8) (temp_r1_7 + 1);
                    var_r9 = &sp48->unkD6;
                    var_r5 = &coordinates[1];
                    if (temp_r1_7 <= 0x3CU) {

                    } else {
                        sp5C = 0;
                        sub_0805865C(0xE9);
                    }
                }
                break;
            case 7:                                 /* switch 1 */
                var_r3_3 = 0;
                var_r4_5 = 1;
                var_r9 = &sp48->unkD6;
                var_r5 = &coordinates[1];
                do {
                    temp_r2_4 = (s16) var_r4_5;
                    if ((1 << temp_r2_4) & mask113844) {
                        var_r3_3 = (u32) ((var_r3_3 << 0x10) + 0x10000) >> 0x10;
                    }
                    temp_r0_10 = temp_r2_4 + 1;
                    var_r4_5 = (u16) temp_r0_10;
                } while ((s32) (s16) temp_r0_10 <= 4);
                temp_r0_11 = (s16) var_r3_3;
                if (temp_r0_11 != 0) {
                    var_r4_6 = 0;
                    if ((s32) temp_r0_11 > 0) {
loop_60:
                        temp_r2_5 = (s16) var_r4_6;
                        if (states113844[temp_r2_5] != 1) {

                        } else {
                            temp_r0_12 = temp_r2_5 + 1;
                            var_r4_6 = (u16) temp_r0_12;
                            if ((s32) (s16) temp_r0_12 >= (s32) temp_r0_11) {
                                goto block_63;
                            }
                            goto loop_60;
                        }
                    } else {
block_63:
                        var_r1_2 = (u8 *)arg0 + 0x1FE;
                        var_r0_2 = 9;
                        goto block_75;
                    }
                } else {
                    goto block_74;
                }
                break;
            case 8:                                 /* switch 1 */
                var_r3_4 = 0;
                var_r4_7 = 1;
                var_r9 = &sp48->unkD6;
                var_r5 = &coordinates[1];
                do {
                    temp_r2_6 = (s16) var_r4_7;
                    if ((1 << temp_r2_6) & mask113844) {
                        var_r3_4 = (u32) ((var_r3_4 << 0x10) + 0x10000) >> 0x10;
                    }
                    temp_r0_13 = temp_r2_6 + 1;
                    var_r4_7 = (u16) temp_r0_13;
                } while ((s32) (s16) temp_r0_13 <= 4);
                temp_r0_14 = (s16) var_r3_4;
                if (temp_r0_14 != 0) {
                    var_r4_8 = 0;
                    if ((s32) temp_r0_14 > 0) {
loop_71:
                        temp_r2_7 = (s16) var_r4_8;
                        if (states113844[temp_r2_7] == 2) {
                            temp_r0_15 = temp_r2_7 + 1;
                            var_r4_8 = (u16) temp_r0_15;
                            if ((s32) (s16) temp_r0_15 >= (s32) temp_r0_14) {
                                goto block_73;
                            }
                            goto loop_71;
                        }
                    } else {
block_73:
                        var_r1_2 = (u8 *)arg0 + 0x1FE;
                        var_r0_2 = 0xA;
                        goto block_75;
                    }
                } else {
                    goto block_74;
                }
                break;
block_74:
                var_r1_2 = (u8 *)arg0 + 0x1FE;
                var_r0_2 = 5;
block_75:
                *var_r1_2 = var_r0_2;
                var_r1 = (u8 *)arg0 + 0x1FD;
block_76:
                *var_r1 = 1;
                sub_08067C18();
                break;
            case 9:                                 /* switch 1 */
                var_r3_5 = 0;
                var_r4_9 = 1;
                var_r9 = &sp48->unkD6;
                var_r5 = &coordinates[1];
                do {
                    temp_r2_8 = (s16) var_r4_9;
                    if ((1 << temp_r2_8) & mask113844) {
                        var_r3_5 = (u32) ((var_r3_5 << 0x10) + 0x10000) >> 0x10;
                    }
                    temp_r0_16 = temp_r2_8 + 1;
                    var_r4_9 = (u16) temp_r0_16;
                } while ((s32) (s16) temp_r0_16 <= 4);
                temp_r0_17 = (s16) var_r3_5;
                if ((temp_r0_17 != 0) && (var_r4_10 = 0, ((s32) temp_r0_17 > 0))) {
loop_84:
                    temp_r2_9 = (s16) var_r4_10;
                    if (states113844[temp_r2_9] == 0) {
                        temp_r0_18 = temp_r2_9 + 1;
                        var_r4_10 = (u16) temp_r0_18;
                        if ((s32) (s16) temp_r0_18 >= (s32) temp_r0_17) {
                            goto block_86;
                        }
                        goto loop_84;
                    }
                } else {
block_86:
                    arg0->unk1FE = 5U;
                    arg0->unk1FD = 1U;
                    sub_08067C18();
                }
                break;
            }
        }
        *sp68 = arg0->unk8;
        pos113844.unk0 = (s32) ((s32) arg0->unk14 >> 8);
        pos113844.unk4 = (s32) ((s32) arg0->unk18 >> 8);
        flagsArray113844[0] = (s8) arg0->unk8;
        temp_r0_19 = (s16) arg0->unk8;
        switch (temp_r0_19) {                       /* switch 2 */
        case 1:                                     /* switch 2 */
            var_r0_3 = pos113844.unk0 + 4;
block_96:
            pos113844.unk0 = var_r0_3;
            var_r0_4 = pos113844.unk4 + 4;
block_97:
            pos113844.unk4 = var_r0_4;
            break;
        case 2:                                     /* switch 2 */
            pos113844.unk0 = (s32) (pos113844.unk0 + 0xE);
            var_r0_4 = pos113844.unk4 + 8;
            goto block_97;
        case 3:                                     /* switch 2 */
            pos113844.unk0 = (s32) (pos113844.unk0 + 0xE);
            var_r0_4 = pos113844.unk4 + 0x10;
            goto block_97;
        case 4:                                     /* switch 2 */
            var_r0_4 = pos113844.unk4 + 0x10;
            goto block_97;
        case 5:                                     /* switch 2 */
            pos113844.unk0 = (s32) (pos113844.unk0 - 0xE);
            var_r0_4 = pos113844.unk4 + 0x10;
            goto block_97;
        case 6:                                     /* switch 2 */
            pos113844.unk0 = (s32) (pos113844.unk0 - 0xE);
            var_r0_4 = pos113844.unk4 + 8;
            goto block_97;
        case 7:                                     /* switch 2 */
            var_r0_3 = pos113844.unk0 - 4;
            goto block_96;
        }
        sub_08000AF0(tile113844 + 0x10, sprite113844.unkC + (*var_r9 << 5), 1U);
        if (1 & sub_08098004()) {
            var_r0_5 = sub_08097FF8();
        } else {
            var_r0_5 = (u8) sub_0800BC44((u32) ((s32) pos113844.unk0 >> 8), (u32) ((s32) pos113844.unk4 >> 8), 0U);
        }
        temp_r0_20 = var_r0_5;
        sprite113844.unk1C = (s8) tile113844;
        if (sub_0800CD8C() == 0) {
                        arg0->unk6E = (s16) anim113844(&sprite113844, *sp68, sp6C, sp70, 1);
        }
        bc113844((s32) (arg0->unk14 << 8) >> 0x10, (s32) (arg0->unk18 << 8) >> 0x10, &coordinates[0], var_r5, 0, 0);
        temp_r0_21 = sp50;
        if (temp_r0_21 != 0) {
            sp50 = (s32) (u16) (temp_r0_21 - 1);
            if ((1 & temp_r0_21) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                draw113844(coordinates[0], *var_r5, *sp68, *sp6C, temp_r0_20, &sprite113844.unk1C, sprite113844.unk8, sprite113844.unk0);
            }
        } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                draw113844(coordinates[0], *var_r5, *sp68, *sp6C, temp_r0_20, &sprite113844.unk1C, sprite113844.unk8, sprite113844.unk0);
        }
        if (sp60 != 0) {
            sp60 = (s32) (u8) (sp60 - 1);
        } else if ((actorEffect113844(arg0) << 0x18) != 0) {
            sp60 = 0x1E;
        }
        temp_r0_22 = arg0->unk4C;
        if ((temp_r0_22 != 0) && (sp4C != temp_r0_22)) {
            sp4C = temp_r0_22;
            sp54 = 0xA;
            sp58 = 0;
        }
        if (sp54 != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                drawEffect113844(arg0, sp4C, (s16) sp58);
            }
            if (2 & sp54) {
                sp58 = (u32) ((sp58 << 0x10) + 0xFFFF0000) >> 0x10;
            }
            sp54 = (s32) (u16) (sp54 - 1);
        } else {
            sp4C = 0;
            arg0->unk4C = sp54;
        }
        if ((actorDone113844(arg0) << 0x10) != 0) {
            sp64 = 1;
        }
        sub_080003F0();
        if (sp64 != 0) goto exit132;
    }
poll132:
    if ((sub_0800CB78() == 0) && (sub_08056E90() == 0)) goto loop_132;
exit132:
    mask113844 = 0;
    sub_080AE0E4();
    sp58 = 0;
    sp54 = 0xA;
    do {
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_23 = sub_0800CD34();
            if (temp_r0_23 == 0) {
                sprite113844.unk1C = (s8) tile113844;
                sub_08000AF0(tile113844 + 0x10, sprite113844.unkC + (sp48->unkD6 << 5), 1U);
                temp_r8 = (u8) sub_0800BC44((u32) ((s32) pos113844.unk0 >> 8), (u32) ((s32) pos113844.unk4 >> 8), 0U);
                                arg0->unk6E = (s16) anim113844(&sprite113844, *sp68, sp6C, sp70, 1);
                bc113844((s32) (arg0->unk14 << 8) >> 0x10, (s32) (arg0->unk18 << 8) >> 0x10, &coordinates[0], &coordinates[1], 0, 0);
                if (sp54 & 1) {
                draw113844(coordinates[0], coordinates[1], *sp68, *sp6C, temp_r8, &sprite113844.unk1C, sprite113844.unk8, sprite113844.unk0);
                }
                drawEffect113844(arg0, sp4C, (s16) sp58);
            }
        }
        if (2 & sp54) {
            sp58 = (u32) ((sp58 << 0x10) + 0xFFFF0000) >> 0x10;
        }
        sub_080003F0();
        sp54 = (s32) (u16) (sp54 - 1);
    } while (sp54 != 0xFFFF);
    sub_080683CC();
    signal113844(arg0->unk2);
    sub_08068330(-0x21520532);
    exitBlink = sp50 & 1;
    goto poll153;
loop_153:
    {
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_24 = sub_0800CD34();
            if (temp_r0_24 == 0) {
                sprite113844.unk1C = (s8) tile113844;
                sub_08000AF0(tile113844 + 0x10, sprite113844.unkC + (sp48->unkD6 << 5), 1U);
                temp_r8_2 = (u8) sub_0800BC44((u32) ((s32) pos113844.unk0 >> 8), (u32) ((s32) pos113844.unk4 >> 8), 0U);
                                arg0->unk6E = (s16) anim113844(&sprite113844, *sp68, sp6C, sp70, 1);
                bc113844((s32) (arg0->unk14 << 8) >> 0x10, (s32) (arg0->unk18 << 8) >> 0x10, &coordinates[0], &coordinates[1], 0, 0);
                if (exitBlink) {
                draw113844(coordinates[0], coordinates[1], *sp68, *sp6C, temp_r8_2, &sprite113844.unk1C, sprite113844.unk8, sprite113844.unk0);
                }
            }
        }
        sub_080003F0();
    }
poll153:
    if (sub_080682B8(-0x21520532) == 0) goto loop_153;
    sub_08065E38(-0x21520532);
    goto poll162;
loop_162:
    {
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_25 = sub_0800CD34();
            if (temp_r0_25 == 0) {
                sprite113844.unk1C = (s8) tile113844;
                sub_08000AF0(tile113844 + 0x10, sprite113844.unkC + (sp48->unkD6 << 5), 1U);
                temp_r8_3 = (u8) sub_0800BC44((u32) ((s32) pos113844.unk0 >> 8), (u32) ((s32) pos113844.unk4 >> 8), 0U);
                                arg0->unk6E = (s16) anim113844(&sprite113844, *sp68, sp6C, sp70, 1);
                bc113844((s32) (arg0->unk14 << 8) >> 0x10, (s32) (arg0->unk18 << 8) >> 0x10, &coordinates[0], &coordinates[1], 0, 0);
                if (exitBlink) {
                draw113844(coordinates[0], coordinates[1], *sp68, *sp6C, temp_r8_3, &sprite113844.unk1C, sprite113844.unk8, sprite113844.unk0);
                }
            }
        }
        sub_080003F0();
    }
poll162:
    if (sub_08058DB0() != 0) goto loop_162;
    fade113844(0);
    sp50 = 0x14;
    do {
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_26 = sub_0800CD34();
            if (temp_r0_26 == 0) {
                sprite113844.unk1C = (s8) tile113844;
                sub_08000AF0(tile113844 + 0x10, sprite113844.unkC + (sp48->unkD6 << 5), 1U);
                temp_r8_4 = (u8) sub_0800BC44((u32) ((s32) pos113844.unk0 >> 8), (u32) ((s32) pos113844.unk4 >> 8), 0U);
                                arg0->unk6E = (s16) anim113844(&sprite113844, *sp68, sp6C, sp70, 1);
                bc113844((s32) (arg0->unk14 << 8) >> 0x10, (s32) (arg0->unk18 << 8) >> 0x10, &coordinates[0], &coordinates[1], 0, 0);
                if (sp50 & 1) {
                draw113844(coordinates[0], coordinates[1], *sp68, *sp6C, temp_r8_4, &sprite113844.unk1C, sprite113844.unk8, sprite113844.unk0);
                }
            }
        }
        sub_080003F0();
        sp50 = (s32) (u16) (sp50 - 1);
    } while (sp50 != 0xFFFF);
    if (!(*(u32 *)(0x14C * sub_080020F4() + (u32)&players113844->flags) & 0x2000) && (actor113844->unk5A != 0)) {
        temp_r4 = sub_0801E46C((void *) gUnk_030034E0, sp48);
        sp58 = 0x1D;
        do {
            actor113844->unk18 = (s32) (actor113844->unk18 - 0x20);
            effectUpdate113844(actor113844, temp_r4);
            sub_080003F0();
            temp_r0_27 = (sp58 << 0x10) + 0xFFFF0000;
            sp58 = temp_r0_27 >> 0x10;
        } while (((s32) temp_r0_27 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4);
    }
    sub_08056E24();
}

#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AC844);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AD534);
struct Player114DE {u8 p0[0x20];u16 state;u8 p22[14];u32 flags;u8 p34[0x34];u8 active;u8 p69[0x1F];u16 angle;u16 p8A;s32 x,y;u8 p94[0x1C];u16 motion;u8 pB2[0x16];u16 timer;s16 direction;u16 speed;u8 pCE[0x16];u32 seen[26];};
struct Entity114DE {u16 index;u8 p2[10];u16 state;u8 pE[6];s32 x,y;u8 p1C[0x34];u32 counter;};
extern s32 x114DE[] asm("gUnk_03003D6C");
extern struct Player114DE players114DE[] asm("gUnk_03003CE0");
extern u16 delta114DE(void *, void *) asm("sub_0801ED8C");
s32 sub_080ADE30(struct Entity114DE *entity102A5)
{
    s16 dx, dy;
    u32 result = 0;
    u32 dir;
    u16 a, lo;
    s32 id;

    dx = (entity102A5->x - x114DE[({ s32 i=sub_080020F4(); asm("" : : "r"(players114DE)); i; })*83]) >> 8;
    dy = (entity102A5->y - players114DE[sub_080020F4()].y) >> 8;
    if (Sqrt(dx * dx + dy * dy) <= 0x0F && sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0
        && entity102A5->state != 0xE && entity102A5->state != 0xB && entity102A5->state != 0xA
        && players114DE[sub_080020F4()].timer == 0 && !(players114DE[sub_080020F4()].flags & 0x2000)
        && players114DE[sub_080020F4()].active != 0 && players114DE[sub_080020F4()].state != 0xE
        && players114DE[sub_080020F4()].state != 0xB && players114DE[sub_080020F4()].state != 0xC
        && players114DE[sub_080020F4()].seen[entity102A5->index] != entity102A5->counter) {
        players114DE[sub_080020F4()].state = 0xA;
        players114DE[sub_080020F4()].motion = 0xFFFE;
        id = sub_080020F4();
        players114DE[id].angle += delta114DE(entity102A5, &players114DE[sub_080020F4()]);
        { s32 i; register u32 index asm("r1"); register u32 *dest asm("r1"); register u32 n asm("r0"); i=sub_080020F4(); index=entity102A5->index; index <<= 2; asm("" : "+r"(index), "+r"(i)); index += i*0x14c; asm("" : "+r"(index)); dest=(u32 *)((u8 *)players114DE+0xe4+index); n=entity102A5->counter; asm("" : "+r"(n), "+r"(dest)); *dest=n; entity102A5->counter=n+1; }
        dx = (x114DE[sub_080020F4()*83] - entity102A5->x) >> 8;
        dy = (players114DE[sub_080020F4()].y - entity102A5->y) >> 8;
        a = ArcTan2(dx, dy);
        lo = a << 3;
        dir = a >> 13;
        if (lo > 0x8000U) {
            if (dir <= 6) dir++; else dir = 0;
        }
        switch (dir) {
        case 0:
            players114DE[sub_080020F4()].direction = 6;
            break;
        case 1:
            players114DE[sub_080020F4()].direction = 7;
            break;
        default:
            players114DE[sub_080020F4()].direction = dir - 2;
            break;
        }
        players114DE[sub_080020F4()].speed = 0x400;
        players114DE[sub_080020F4()].timer = 8;
        result = 1;
    }
    return result;
}
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
struct Entry114E {u8 *actor; u8 pad[0xA8];};
extern struct Entry114E entries114E[] asm("gUnk_030004D0");
extern u32 history114E[][83] asm("gUnk_03003DC4");
extern u8 count114E asm("gUnk_03000780");
extern void sub_080AF2BC(void);
extern void sub_080AF350(u8);
extern void sub_0806171C(void *,s32);
void sub_080AE1B4(void)
{
    u8 i,j,clear;
    s16 count;
    s32 allocation[4];
    u8 *actor;
    { register u32 zero asm("r4"); register u32 stride asm("ip"); register u8 *cnt asm("r7"); register u32 *hist asm("r6"); i=0; asm("" : "+r"(i)); cnt=&count114E; asm("" : : "r"(cnt)); stride=0x14c; asm("" : : "r"(stride)); hist=(u32 *)history114E; asm("" : : "r"(hist)); zero=0; asm("" : "+r"(zero)); do { for (j=0;j<=4;j++) *(u32 *)((u8 *)history114E+i*stride+j*4)=zero; i++; } while(i<=3); }
    count114E=sub_08002164();
    sub_080AF2BC();
    for (i=0;i<count114E;i++) sub_080AF350(i);
    sub_08097FE4();sub_08097A4C();sub_08067C18();
    while (!sub_08067C08()) sub_080003F0();
    sub_08067BF8();
    while (!sub_0800CB78() && !sub_08056E90()) {
        clear=0;
        for (i=0;i<count114E;i++) if (*(s16 *)(entries114E[i].actor+0x5C)==0) clear++;
        if (clear==count114E) break;
        sub_080003F0();
    }
    gUnk_030056FC=0;
    sub_080683CC();sub_08068330(0xDEADFACE);
    while (!sub_080682B8(0xDEADFACE)) sub_080003F0();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0()) sub_080003F0();
    if (!(gUnk_03003CE0[sub_080020F4()].flags&0x2000)) {
        for (i=0;i<count114E;i++) {
            if (*(u16 *)(entries114E[i].actor+0x5A)) {
                if (sub_0800CE30()==1) *(s32 *)(entries114E[i].actor+0x214)=0x55;
                else *(s32 *)(entries114E[i].actor+0x214)=0x28;
                allocation[i]=sub_0801E46C((void *)gUnk_030034E0,entries114E[i].actor+0x204);
            }
        }
        count=29;
        do {
            for (i=0;i<count114E;i++) {
                actor=entries114E[i].actor;
                if (*(u16 *)(actor+0x5A)) {
                    *(s32 *)(actor+0x18)-=0x20;
                    sub_0806171C(actor,allocation[i]);
                }
            }
            sub_080003F0();
        } while (--count!=-1);
        for (i=0;i<count114E;i++) if (*(u16 *)(entries114E[i].actor+0x5A)) sub_0801E4CC((u8 *)gUnk_030034E0,allocation[i]);
    }
    sub_08056E24();
}
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080AE420);
void sub_080AF2AC(void) {
    sub_080AF304();
    sub_08068384();
}
extern u8 *gEntriesAF2BC asm("gUnk_03000784");
extern u8 gEntryCountAF2BC asm("gUnk_03000780");
void sub_080AF2BC(void)
{
    u8 *volatile *entries;
    u8 *count;
    u8 *volatile *entries2;
    u8 *count2;
    s32 i;
    u32 offset;
    u32 zero;
    entries = &gEntriesAF2BC;
    *entries = 0;
    count = &gEntryCountAF2BC;
    *entries = (u8 *)sub_08001494(((*count << 2) + *count) << 3);
    i = 0;
    if (i < *count) {
        entries2 = entries;
        zero = 0;
        count2 = count;
        offset = 0;
        do {
            *(u32 *)(offset + (u32)*entries2 + 8) = zero;
            offset += 0x28;
            i++;
        } while (i < *count2);
    }
}
extern u8 *gEntriesAF304 asm("gUnk_03000784");
extern u8 gEntryCountAF304 asm("gUnk_03000780");
void sub_080AF304(void)
{
    u8 *start = gEntriesAF304;
    u8 *entry;
    u32 i = 0;
    if (i < gEntryCountAF304) {
        entry = start;
        do {
            if (sub_08000470((u32)entry))
                sub_080003A8((u32)entry);
            entry += 0x28;
            i++;
        } while (i < gEntryCountAF304);
    }
    if (gEntriesAF304 != 0) {
        sub_08001538((u32)gEntriesAF304);
        gEntriesAF304 = 0;
    }
}
extern u8 *gEntriesAF350C asm("gUnk_03000784");
extern volatile u8 gEntryCountAF350C asm("gUnk_03000780");
void sub_080AF350(u8 kind)
{
    u8 *entry = gEntriesAF350C;
    u8 i = 0;
    u32 mem;
    register u8 count asm("r6");
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i >= gEntryCountAF350C)
        return;
    if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
        goto next;
    count = gEntryCountAF350C;
    if (i >= count)
        return;
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = mem;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080AE420;
    *(u32 *)(entry + 0x24) = (u32)sub_080AF3C4;
    *(u32 *)(entry + 8) = kind + 0x44;
    sub_08000274(entry, kind);
}
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
#ifdef NONMATCHING
/* Compiling draft; bytes and relocations do not match yet. */
extern void t116_sprite(u32, s32, u32) asm("sub_08000AF0");
extern s32 t116_fadeDone(void) asm("sub_080980F0");
extern s32 t116_history asm("gUnk_03003DC4");
extern s32 t116_flags asm("gUnk_03003D10");
extern u8 t116_data[] asm("gUnk_084A84B0");
extern s32 t116_sub_08007870(s16, s16, u16, u16, s32, void *, s32, s32) asm("sub_08007870");
extern s32 t116_sub_08007974(s16, s16, u16, u16, s32, s32, s32, void *, s32, s32) asm("sub_08007974");
extern s32 t116_sub_0800BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 t116_sub_08065158(void *, s32, s32, s32, s32) asm("sub_08065158");
extern s32 t116_sub_08065370(void *, u32, void *, void *, s32) asm("sub_08065370");
extern s32 t116_sub_0805DF38(u32, u32, u32, u32, s32, s32) asm("sub_0805DF38");
extern s32 t116_sub_0801623C(void *, void *, s32) asm("sub_0801623C");
extern s32 t116_sub_08019CE8(void *) asm("sub_08019CE8");
extern s32 t116_sub_08019F60(void *) asm("sub_08019F60");
extern s32 t116_sub_0801A120(void *, s32, s16) asm("sub_0801A120");
extern s32 t116_sub_0801C8F0(void *) asm("sub_0801C8F0");
extern s32 t116_sub_08020680(void *) asm("sub_08020680");
extern s32 t116_sub_080586B4(s32) asm("sub_080586B4");
extern s32 t116_sub_08058CC4(s32) asm("sub_08058CC4");
extern s32 t116_sub_0806171C(void *, s32) asm("sub_0806171C");
extern s32 t116_sub_08067CA8(u16) asm("sub_08067CA8");
extern s32 t116_sub_08096594(s32) asm("sub_08096594");
extern s32 t116_sub_08098088(s32, s32, s32) asm("sub_08098088");
struct T116Actor {
    u16 f0;
    u16 f2;
    u8 pad4[4];
    u16 f8;
    u8 padA[2];
    u16 fC;
    u8 padE[6];
    s32 f14;
    s32 f18;
    u8 pad1C[48];
    s32 f4C;
    s32 f50;
    u8 pad54[6];
    u16 f5A;
    s16 f5C;
    s16 f5E;
    u8 pad60[8];
    u16 f68;
    u16 f6A;
    s16 f6C;
    s16 f6E;
    u8 pad70[356];
    s16 f1D4;
    s16 f1D6;
    u8 pad1D8[36];
    u8 f1FC;
    u8 f1FD;
    u8 f1FE;
    u8 pad1FF[1];
    u8 f200;
    u8 pad201;
    u16 f202;
    u8 pad204[39];
    u8 f22B;
};
extern struct T116Actor *t116_actor asm("gUnk_03000788");
void sub_080B0288(struct T116Actor *input116) {
    s32 end116;
    register struct T116Actor *arg0 asm("sl") = input116;
    u8 sp18[0x34];
    u8 storage4C[0x34]; register u8 *sp4C asm("r7");
    u8 storage80[0x34]; register u8 *sp80 asm("r6");
    s16 spB4;
    s16 spB6;
    void *spB8;
    s32 spBC;
    s32 spC0;
    s32 spC4;
    s32 spC8;
    s32 spCC;
    s32 spD0;
    s32 spD4;
    u32 spD8;
    s32 spDC;
    u16 *spE0;
    u16 *spE4;
    void *var_r9;
    s16 *temp_r0_6;
    s32 temp_r0;
    s32 temp_r1;
    s16 temp_r1_2;
    s16 var_r1;
    s16 var_r2;
    s32 *temp_r1_10;
    s32 *temp_r1_6;
    s32 *temp_r1_7;
    s32 *temp_r1_8;
    s32 *temp_r1_9;
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 *temp_r3;
    s32 temp_r0_10;
    s32 temp_r0_14;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r0_9;
    s32 temp_r4;
    s8 *var_r1_2;
    s8 var_r0;
    u16 *var_r0_4;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r1_3;
    u16 temp_r1_5;
    u16 var_r1_4;
    u16 var_r6;
    u32 *var_r1_3;
    u32 temp_r0_15;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u32 var_r0_3;
    u32 var_r6_2;
    u32 var_r6_3;
    u32 temp_r1_4;
    u8 temp_r7;
    u8 temp_r7_2;
    u8 temp_r7_3;
    u8 temp_r7_4;
    u8 temp_r7_5;
    u8 temp_r7_6;
    u8 temp_r7_7;
    u8 var_r0_2;
    void *temp_r0_11;


    t116_actor = arg0;
    spB8 = (u8 *)arg0 + 0x204;
    t116_sub_0801623C(arg0, &t116_data, 0);
    t116_sub_08019F60(spB8);
    sub_0801A0A4(arg0);
    t116_sub_08065158(sp18, 0x50089, 5, -1, 0);
    sp4C=storage4C; asm("" : "+r"(sp4C));
    t116_sub_08065158(sp4C, 0x50087, 5, -1, 0);
    sp80=storage80; asm("" : "+r"(sp80));
    t116_sub_08065158(sp80, 0x50088, 5, -1, 0);
    temp_r1 = *(s16 *)((u8 *)spB8 + 0x6) * 3;
    arg0->f1D6 = temp_r1;
    arg0->f5C = temp_r1;
    temp_r0 = *(s16 *)((u8 *)spB8 + 0x4) * 0xA * 2;
    arg0->f1D4 = temp_r0;
    arg0->f5E = temp_r0;
    arg0->fC = 0U;
    spC4 = 0;
    spC8 = 0xFFFF;
    spD0 = 0;
    spD4 = 0;
    arg0->f1FD = 2U;
    arg0->f1FE = 2U;
    *(u16 *)((u8 *)spB8 + 0x28) = 0xB3;
    spC0 = (s32) *(u8 *)((u8 *)sub_08007290(0xB00B3) + 0x9B);
    *(u16 *)((u8 *)spB8 + 0x24) = 2;
    arg0->f22B = 0;
    arg0->f50 = 1;
    var_r1 = 0;
    spE4 = (u8 *)arg0 + 0x6A;
    spE0 = (u8 *)arg0 + 0x68;
    do {
        var_r2 = 0;
loop_2:
        temp_r1_2 = var_r2;
        *(s32 *)((u8 *)&t116_history + temp_r1_2 * 4 + 0x14C * var_r1) = 0;
        temp_r1_3 = temp_r1_2 + 1;
        var_r2 = (s16) temp_r1_3;
        if ((s32) (s16) temp_r1_3 <= 4) {
            goto loop_2;
        }
        temp_r0_2 = (var_r1 << 0x10) + 0x10000;
        var_r1 = (s16) (temp_r0_2 >> 0x10);
    } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 3);
    arg0->f6C = 0U;
    *spE4 = 0;
    *spE0 = 0;
    var_r6 = 0;
    sub_08098044();
    sub_08097FE4();
    sub_08097A4C();
    arg0->f1FC = (u8) ((-0x10 & arg0->f1FC) | (0xF & (u8)arg0->f0));
    arg0->f202 = (u16) arg0->f2;
    arg0->f200 = 0xFF;
    spDC = 0;
    sub_08067C18();
loop_6:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_6;
    }
    sub_08067BF8();
    goto check116;
loop_72:
    if ((arg0->fC == 0xA) && (spD0 == 0)) {
        spD0 = 8;
    }
    if (sub_08058DB0() != 0) {

    } else {
        t116_sub_0801C8F0(t116_actor);
        temp_r0_3 = arg0->f1FD - 1;
        switch (temp_r0_3) {                    /* switch 1; irregular */
        case 0:                                 /* switch 1 */
            arg0->fC = 0U;
            if (sub_08067C08() == 0) {

            } else {
                arg0->f1FD = (u8) arg0->f1FE;
                sub_08067BF8();
            }
            break;
        case 1:                                 /* switch 1 */
            spC4 = 0;
            if (sub_08056F78() != 0) {
                var_r1_2 = (u8 *)arg0 + 0x1FE;
                var_r0 = 3;
block_28:
                *var_r1_2 = var_r0;
                arg0->f1FD = 1U;
                sub_08067C18();
            }
            break;
        case 2:                                 /* switch 1 */
            spC4 = 1;
            arg0->fC = 1U;
            temp_r1_4 = (0xF & arg0->f1FC) | (t116_sub_08096594(0) * 0x10);
            arg0->f1FC = temp_r1_4;
            if ((sub_08097A74(arg0, (0x14C * ((u32) (temp_r1_4 << 0x18) >> 0x1C)) + (u8 *)gUnk_03003CE0, 0x140, 0x1C) << 0x18) == 0) {
                arg0->f1FE = 4U;
                arg0->f1FD = 1U;
                sub_08067C18();
            }
            break;
        case 3:                                 /* switch 1 */
            spC4 = 2;
            arg0->fC = 2U;
            if ((*spE4 == 2) && (arg0->f6C == 0)) {
                t116_sub_08058CC4(spC0);
            }
            if (arg0->f6E != 0) {
                arg0->f50 = (s32) (arg0->f50 + 1);
                var_r1_2 = (u8 *)arg0 + 0x1FE;
                var_r0 = 5;
                goto block_28;
            }
            break;
        case 4:                                 /* switch 1 */
            spC4 = 0;
            arg0->fC = 0U;
            temp_r1_5 = var_r6;
            var_r6 = temp_r1_5 + 1;
            if ((u32) temp_r1_5 > 0x3CU) {
                var_r6 = 0;
                sub_08097A38(0U);
                arg0->f1FD = 1U;
                arg0->f1FE = 3U;
                sub_08067C18();
            }
            break;
        }
    }
    switch (spC4) {                             /* switch 2; irregular */
    case 0:                                     /* switch 2 */
        var_r9 = sp18;
        *spE0 = arg0->f8;
        spCC = 1;
        break;
    case 1:                                     /* switch 2 */
        var_r9 = sp18;
        *spE0 = arg0->f8 + 8;
        spCC = 1;
        break;
    case 2:                                     /* switch 2 */
        var_r9 = sp4C;
        *spE0 = arg0->f8;
        spCC = 0;
        break;
    }
    if (spC8 != t116_actor->f68) {
        spC8 = (s32) t116_actor->f68;
        t116_actor->f6C = 0;
        t116_actor->f6A = 0;
    }
    *(u8 *)((u8 *)var_r9 + 0x1C) = 5;
    t116_sprite(0x15U, *(s32 *)((u8 *)var_r9 + 0xC), 1U);
    if (1 & sub_08098004()) {
        var_r0_2 = sub_08097FF8();
    } else {
        var_r0_2 = (u8) sub_0800BC44((u32) ((s32) arg0->f14 >> 8), (u32) ((s32) arg0->f18 >> 8), 0U);
    }
    temp_r7 = var_r0_2;
    if (sub_0800CD8C() == 0) {
        arg0->f6E = (u16) t116_sub_08065370(var_r9, *spE0, spE4, ((u8 *)arg0 + 0x6C), spCC);
    }
    t116_sub_0800BC08((s32) (arg0->f14 << 8) >> 0x10, (s32) (arg0->f18 << 8) >> 0x10, &spB4, &spB6, 0, NULL);
    temp_r0_4 = spD0;
    if (temp_r0_4 != 0) {
        spD0 = (s32) (u16) (temp_r0_4 - 1);
        if ((1 & temp_r0_4) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
            t116_sub_08007870(spB4, spB6, *spE0, *spE4, (s32) temp_r7, var_r9 + 0x1C, *(s32 *)((u8 *)var_r9 + 0x8), *(s32 *)((u8 *)var_r9 + 0x0));
        }
    } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
        t116_sub_08007870(spB4, spB6, *spE0, *spE4, (s32) temp_r7, var_r9 + 0x1C, *(s32 *)((u8 *)var_r9 + 0x8), *(s32 *)((u8 *)var_r9 + 0x0));
    }
    temp_r0_5 = arg0->f4C;
    if ((temp_r0_5 != 0) && (spBC != temp_r0_5)) {
        spBC = temp_r0_5;
        spD4 = 0xA;
        spD8 = 0;
    }
    if (spD4 != 0) {
        if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
            t116_sub_0801A120(arg0, spBC, (s16) spD8);
        }
        if (2 & spD4) {
            spD8 = (u32) ((spD8 << 0x10) + 0xFFFF0000) >> 0x10;
        }
        spD4 = (s32) (u16) (spD4 - 1);
    } else {
        spBC = 0;
        arg0->f4C = spD4;
    }
    if ((t116_sub_08019CE8(arg0) << 0x10) != 0) {
        spDC = 1;
    }
    t116_sub_08020680(arg0);
    sub_080003F0();
    if (spDC != 0) goto exit116;
check116:
    if (sub_0800CB78() != 0) goto exit116;
    if (sub_08056E90() != 0) goto exit116;
    goto loop_72;
exit116:

    temp_r2 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2 |= 1;
    *(u8 *)((u8 *)sp80 + 0x1C) = 5;
    t116_actor->f6C = 0;
    temp_r0_6 = ((u8 *)t116_actor + 0x6C) - 2;
    *temp_r0_6 = 0;
    *(s16 *)((u8 *)temp_r0_6 - 2) = 0;
    spD8 = 0;
    spD4 = 0xA;
    do {
        temp_r1_6 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
        *temp_r1_6 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_7 = sub_0800CD34();
            if (temp_r0_7 == 0) {
                t116_sprite(0x15U, *(s32 *)((u8 *)sp80 + 0xC), 1U);
                temp_r7_2 = (u8) sub_0800BC44((u32) ((s32) t116_actor->f14 >> 8), (u32) ((s32) t116_actor->f18 >> 8), 0U);
                t116_actor->f6E = (s16) t116_sub_08065370(sp80, t116_actor->f68, ((u8 *)t116_actor + 0x6A), ((u8 *)t116_actor + 0x6C), 1);
                t116_sub_0800BC08((s32) (t116_actor->f14 << 8) >> 0x10, (s32) (t116_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_7, temp_r0_7);
                t116_sub_08007870(spB4, spB6, t116_actor->f68, t116_actor->f6A, (s32) temp_r7_2, sp80 + 0x1C, *(s32 *)((u8 *)sp80 + 0x8), *(s32 *)((u8 *)sp80 + 0x0));
                t116_sub_0801A120(arg0, spBC, (s16) spD8);
            }
        }
        if (2 & spD4) {
            spD8 = (u32) ((spD8 << 0x10) + 0xFFFF0000) >> 0x10;
        }
        sub_080003F0();
        spD4 = (s32) (u16) (spD4 - 1);
    } while (spD4 != 0xFFFF);
    sub_080683CC();
    t116_sub_08067CA8(t116_actor->f2);
    sub_08068330(-0x21520532);
loop_90:
    if (sub_080682B8(-0x21520532) == 0) {
        temp_r1_7 = (s32 *)((u8 *)&t116_flags + sub_080020F4() * 0x14C);
        *temp_r1_7 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_8 = sub_0800CD34();
            if (temp_r0_8 == 0) {
                t116_sprite(0x15U, *(s32 *)((u8 *)sp80 + 0xC), 1U);
                temp_r7_3 = (u8) sub_0800BC44((u32) ((s32) t116_actor->f14 >> 8), (u32) ((s32) t116_actor->f18 >> 8), 0U);
                t116_actor->f6E = (s16) t116_sub_08065370(sp80, t116_actor->f68, ((u8 *)t116_actor + 0x6A), ((u8 *)t116_actor + 0x6C), 1);
                t116_sub_0800BC08((s32) (t116_actor->f14 << 8) >> 0x10, (s32) (t116_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_8, temp_r0_8);
                t116_sub_08007870(spB4, spB6, t116_actor->f68, t116_actor->f6A, (s32) temp_r7_3, sp80 + 0x1C, *(s32 *)((u8 *)sp80 + 0x8), *(s32 *)((u8 *)sp80 + 0x0));
            }
        }
        sub_080003F0();
        goto loop_90;
    }
    sub_08065E38(-0x21520532);
loop_98:
    if (sub_08058DB0() != 0) {
        temp_r1_8 = (s32 *)((u8 *)&t116_flags + sub_080020F4() * 0x14C);
        *temp_r1_8 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_9 = sub_0800CD34();
            if (temp_r0_9 == 0) {
                t116_sprite(0x15U, *(s32 *)((u8 *)sp80 + 0xC), 1U);
                temp_r7_4 = (u8) sub_0800BC44((u32) ((s32) t116_actor->f14 >> 8), (u32) ((s32) t116_actor->f18 >> 8), 0U);
                t116_actor->f6E = (s16) t116_sub_08065370(sp80, t116_actor->f68, ((u8 *)t116_actor + 0x6A), ((u8 *)t116_actor + 0x6C), 1);
                t116_sub_0800BC08((s32) (t116_actor->f14 << 8) >> 0x10, (s32) (t116_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_9, temp_r0_9);
                t116_sub_08007870(spB4, spB6, t116_actor->f68, t116_actor->f6A, (s32) temp_r7_4, sp80 + 0x1C, *(s32 *)((u8 *)sp80 + 0x8), *(s32 *)((u8 *)sp80 + 0x0));
            }
        }
        sub_080003F0();
        goto loop_98;
    }
    t116_sub_080586B4(0);
    temp_r2_2 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2_2 |= 1;
    if (sub_0805A318() != 0) {
        var_r0_3 = t116_sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, (void *)0x14009B);
        var_r1_3 = (u32 *)((u8 *)gGameState + 0x720);
    } else {
        var_r0_3 = t116_sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, (void *)0x140095);
        var_r1_3 = (u32 *)((u8 *)gGameState + 0x720);
    }
    *var_r1_3 = var_r0_3;
loop_109:
    if (sub_0805EEFC(*(u32 *)((u8 *)gGameState + 0x720)) == 0) {
        temp_r1_9 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
        *temp_r1_9 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_10 = sub_0800CD34();
            if (temp_r0_10 == 0) {
                t116_sprite(0x15U, *(s32 *)((u8 *)sp80 + 0xC), 1U);
                temp_r7_5 = (u8) sub_0800BC44((u32) ((s32) t116_actor->f14 >> 8), (u32) ((s32) t116_actor->f18 >> 8), 0U);
                t116_actor->f6E = (s16) t116_sub_08065370(sp80, t116_actor->f68, ((u8 *)t116_actor + 0x6A), ((u8 *)t116_actor + 0x6C), 1);
                t116_sub_0800BC08((s32) (t116_actor->f14 << 8) >> 0x10, (s32) (t116_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_10, temp_r0_10);
                t116_sub_08007870(spB4, spB6, t116_actor->f68, t116_actor->f6A, (s32) temp_r7_5, sp80 + 0x1C, *(s32 *)((u8 *)sp80 + 0x8), *(s32 *)((u8 *)sp80 + 0x0));
            }
        }
        sub_080003F0();
        goto loop_109;
    }
    *(u8 *)((u8 *)sp80 + 0x1C) = 5;
    temp_r0_11 = (u8 *)t116_actor + 0x68;
    t116_actor->f68 = 0U;
    *(u16 *)((u8 *)temp_r0_11 + 4) = 0;
    *(u16 *)((u8 *)temp_r0_11 + 2) = 0;
    var_r6_2 = 0x64;
loop_111:
    temp_r3 = (0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r3 |= 1;
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CD34() == 0)) {
        if (var_r6_2 <= 0x4FU) {
            if (var_r6_2 <= 0x3BU) {
                var_r0_4 = (u8 *)t116_actor + 0x68;
                var_r1_4 = 0x12;
                goto block_123;
            }
            if (2 & var_r6_2) {
                temp_r0_12 = t116_actor->f68;
                if ((u32) temp_r0_12 <= 7U) {
                    temp_r0_13 = temp_r0_12 + 1;
                    t116_actor->f68 = temp_r0_13;
                    var_r1_4 = temp_r0_13;
                } else {
                    var_r1_4 = 8;
                }
                var_r0_4 = (u8 *)t116_actor + 0x68;
block_123:
                *var_r0_4 = var_r1_4;
            }
        }
        t116_sprite(0x15U, *(s32 *)((u8 *)sp80 + 0xC), 1U);
        temp_r7_6 = (u8) sub_0800BC44((u32) ((s32) t116_actor->f14 >> 8), (u32) ((s32) t116_actor->f18 >> 8), 0U);
        t116_actor->f6E = (s16) t116_sub_08065370(sp80, t116_actor->f68, ((u8 *)t116_actor + 0x6A), ((u8 *)t116_actor + 0x6C), 1);
        t116_sub_0800BC08((s32) (t116_actor->f14 << 8) >> 0x10, (s32) (t116_actor->f18 << 8) >> 0x10, &spB4, &spB6, 0, NULL);
        t116_sub_08007870(spB4, spB6, *spE0, *spE4, (s32) temp_r7_6, sp80 + 0x1C, *(s32 *)((u8 *)sp80 + 0x8), *(s32 *)((u8 *)sp80 + 0x0));
    }
    sub_080003F0();
    var_r6_2 = (u32) (u8) (var_r6_2 - 1);
    if (var_r6_2 != 0xFF) {
        goto loop_111;
    }
    t116_actor->f68 = 0x12U;
    t116_actor->f6C = 0;
    t116_actor->f6A = 0;
    var_r6_3 = 0;
    t116_sub_08098088(arg0->f14, arg0->f18, 1);
    do {
        temp_r1_10 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
        *temp_r1_10 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_14 = sub_0800CD34();
            if (temp_r0_14 == 0) {
                var_r6_3 = (u32) (0x0F000000 & ((var_r6_3 + 1) << 0x18)) >> 0x18;
                sub_08009088(0U, 0U, (u8) var_r6_3, 0U);
                t116_sprite(0x15U, *(s32 *)((u8 *)sp80 + 0xC), 1U);
                temp_r7_7 = (u8) sub_0800BC44((u32) ((s32) t116_actor->f14 >> 8), (u32) ((s32) t116_actor->f18 >> 8), 0U);
                t116_actor->f6E = (s16) t116_sub_08065370(sp80, t116_actor->f68, ((u8 *)t116_actor + 0x6A), ((u8 *)t116_actor + 0x6C), 1);
                t116_sub_0800BC08((s32) (t116_actor->f14 << 8) >> 0x10, (s32) (t116_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_14, temp_r0_14);
                t116_sub_08007974(spB4, spB6, *spE0, *spE4, (s32) temp_r7_7, 1, temp_r0_14, sp80 + 0x1C, *(s32 *)((u8 *)sp80 + 0x8), *(s32 *)((u8 *)sp80 + 0x0));
            }
        }
        sub_080003F0();
    } while ((t116_fadeDone() << 0x18) == 0);
    sub_08009088(0U, 0U, 0U, 0U);
    sub_08098060();
    temp_r2_3 = (0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2_3 &= ~1;
    if (!(*(s32 *)((0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0 + 0x30)) & 0x2000) && (t116_actor->f5A != 0)) {
        temp_r4 = sub_0801E46C((void *) gUnk_030034E0, spB8);
        spD8 = 0x1D;
        end116 = -1;
        asm("" : "+r"(end116));
        do {
            t116_actor->f18 = (s32) (t116_actor->f18 - 0x20);
            t116_sub_0806171C(t116_actor, temp_r4);
            sub_080003F0();
            temp_r0_15 = (spD8 << 0x10) + 0xFFFF0000;
            spD8 = temp_r0_15 >> 0x10;
        } while (((s32) temp_r0_15 >> 0x10) != end116);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4);
    }
    sub_08056E24();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B0288);
#endif
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
#ifdef NONMATCHING
/* Compiling draft; bytes and relocations do not match yet. */
extern u8 t116C_byte79C asm("gUnk_0300079C");
extern s16 t116C_random(void) asm("sub_0800086C");
extern s32 t116C_fadeDone(void) asm("sub_080980F0");
extern void t116C_sprite(u32, s32, u32) asm("sub_08000AF0");
extern s32 t116C_history asm("gUnk_03003DC4");
extern s32 t116C_flags asm("gUnk_03003D10");
extern u8 t116C_data[] asm("gUnk_084AA580");
extern u8 t116C_positions[] asm("gUnk_085188F0");
extern u8 t116C_counter asm("gUnk_030007A6");
extern void t116C_clearSelection(void) asm("sub_0806849C");
extern s32 t116C_sub_08007870(s16, s16, u16, u16, s32, void *, s32, s32) asm("sub_08007870");
extern s32 t116C_sub_08007974(s16, s16, u16, u16, s32, s32, s32, void *, s32, s32) asm("sub_08007974");
extern s32 t116C_sub_0800BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 t116C_sub_08065158(void *, s32, s32, s32, s32) asm("sub_08065158");
extern s32 t116C_sub_08065370(void *, u32, void *, void *, s32) asm("sub_08065370");
extern s32 t116C_sub_0805DF38(u32, u32, u32, u32, s32, s32) asm("sub_0805DF38");
extern s32 t116C_sub_0801623C(void *, void *, s32) asm("sub_0801623C");
extern s32 t116C_sub_08019CE8(s32) asm("sub_08019CE8");
extern s32 t116C_sub_08019F60(s32) asm("sub_08019F60");
extern s32 t116C_sub_0801A120(void *, s32, s16) asm("sub_0801A120");
extern s32 t116C_sub_0801C8F0(s32) asm("sub_0801C8F0");
extern s32 t116C_sub_08020680(s32) asm("sub_08020680");
extern s32 t116C_sub_080586B4(s32) asm("sub_080586B4");
extern s32 t116C_sub_08058CC4(s32) asm("sub_08058CC4");
extern s32 t116C_sub_0806171C(void *, s32) asm("sub_0806171C");
extern s32 t116C_sub_08067CA8(u16) asm("sub_08067CA8");
extern s32 t116C_sub_08096594(s32) asm("sub_08096594");
extern s32 t116C_sub_08098088(s32, s32, s32) asm("sub_08098088");
extern s32 t116C_sub_0807386C(s32, s32, u32, s32, s32) asm("sub_0807386C");
extern u32 t116C_sub_08016E04(u16, s32) asm("sub_08016E04");
extern s32 t116C_sub_08095F10(void *, u8) asm("sub_08095F10");
extern s32 t116C_sub_080B2330(void) asm("sub_080B2330");
extern s32 t116C_sub_080B236C(s32, s32) asm("sub_080B236C");
extern s32 t116C_sub_080B23C8(void) asm("sub_080B23C8");
extern s32 t116C_sub_080B2454(void) asm("sub_080B2454");
extern s32 t116C_sub_080B1FD4(void) asm("sub_080B1FD4");
struct T116CActor {
    u16 f0;
    u16 f2;
    u8 pad4[4];
    u16 f8;
    u8 padA[2];
    u16 fC;
    u8 padE[6];
    s32 f14;
    s32 f18;
    u8 pad1C[48];
    s32 f4C;
    s32 f50;
    u8 pad54[6];
    u16 f5A;
    s16 f5C;
    s16 f5E;
    u8 pad60[8];
    u16 f68;
    u16 f6A;
    s16 f6C;
    s16 f6E;
    u8 pad70[356];
    s16 f1D4;
    s16 f1D6;
    u8 pad1D8[36];
    u8 f1FC;
    u8 f1FD;
    u8 f1FE;
    u8 pad1FF[1];
    u8 f200;
    u8 pad201[1];
    u16 f202;
    u8 pad204[212];
    u16 f2D8;
};
extern struct T116CActor *t116C_actor asm("gUnk_030007A0");
void sub_080B0FC4(struct T116CActor *arg0) {
    u8 sp18[0x34];
    u8 sp4C[0x34];
    u8 sp80[0x34];
    s16 spB4;
    s16 spB6;
    s32 spB8;
    s32 *flags116;
    s32 spBC;
    void * volatile spC0;
    void *spC4;
    s32 spC8;
    s32 spCC;
    s32 spD0;
    s32 spD4;
    s32 spD8;
    s32 spDC;
    s32 spE0;
    u32 spE4;
    u32 spE8;
    u32 spEC;
    s32 spF0;
    u32 spF4;
    s32 spF8;
    s32 spFC;
    s32 sp100;
    u16 *sp104;
    u16 *sp108;
    s16 *sp10C;
    void *temp_r2_2;
    s32 var_r0_5;
    s16 *temp_r0_14;
    s16 *var_r4;
    s32 temp_r0_3;
    s16 temp_r1_10;
    s16 temp_r1_11;
    s32 temp_r1_2;
    s16 temp_r1_3;
    s16 var_r0_2;
    s16 var_r0_3;
    s16 var_r1;
    s16 var_r1_4;
    s16 var_r2;
    s32 *temp_r1_13;
    s32 *temp_r1_14;
    s32 *temp_r1_15;
    s32 *temp_r1_16;
    s32 *temp_r2;
    s32 *temp_r2_3;
    s32 *temp_r2_4;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r0_16;
    s32 temp_r0_17;
    s32 temp_r0_18;
    s32 temp_r0_7;
    s32 temp_r1_7;
    s32 temp_r4_3;
    s8 *var_r1_2;
    s8 *var_r1_3;
    s8 var_r0;
    u32 temp_r0_2;
    u16 temp_r0_8;
    u16 temp_r1;
    u16 temp_r1_4;
    u32 *var_r1_5;
    u32 temp_r0_19;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r1_12;
    u32 temp_r1_8;
    u32 temp_r1_9;
    u32 var_r0_7;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r3;
    u8 temp_r0_10;
    u8 temp_r0_6;
    u32 temp_r1_5;
    u8 temp_sl;
    u8 temp_sl_2;
    u8 temp_sl_3;
    u8 temp_sl_4;
    u8 var_r0_4;
    u8 var_r0_6;
    void *temp_r0;
    void *temp_r0_9;
    void *temp_r1_6;
    void *temp_r4;
    void *temp_r4_2;

    t116C_actor = arg0;
    temp_r0 = (u8 *)arg0 + 0x204;
    spC4 = temp_r0;
    t116C_sub_0801623C(arg0, &t116C_data, 0);
    t116C_sub_08019F60(temp_r0);
    sub_0801A0A4(arg0);
    { register u16 *outHalf asm("r4") = &gUnk_030007A4; asm("" : "+r"(outHalf)); temp_r0_2 = t116C_sub_08016E04(arg0->f2D8, 0); *outHalf = temp_r0_2; }
    if ((u16)temp_r0_2 == 0xFFFF) {
        flags116 = &gUnk_030056FC;
        temp_r1 = temp_r0_2;
loop_2:
        arg0->fC = 0xBU;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            *flags116 &= ~(1 << arg0->f0);
            return;
        }
        sub_080003F0();
        if (gUnk_030007A4 != temp_r1) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    t116C_sub_08065158(sp18, 0x50089, gUnk_030007A4, -1, 0);
    t116C_sub_08065158(sp4C, 0x50087, gUnk_030007A4, -1, 0);
    t116C_sub_08065158(sp80, 0x50088, gUnk_030007A4, -1, 0);
    temp_r1_2 = *(s16 *)((u8 *)spC4 + 0x6) * 3;
    arg0->f1D6 = temp_r1_2;
    arg0->f5C = temp_r1_2;
    temp_r0_3 = *(s16 *)((u8 *)spC4 + 0x4) * 0xA * 2;
    arg0->f1D4 = temp_r0_3;
    arg0->f5E = temp_r0_3;
    arg0->fC = 0U;
    spD0 = 0;
    spD4 = 0xFFFF;
    spDC = 0;
    spE0 = 0;
    arg0->f1FD = 3U;
    arg0->f1FE = 3U;
    *(u16 *)((u8 *)spC4 + 0x28) = 0xB3;
    spCC = (s32) *(u8 *)((u8 *)sub_08007290(0xB00B3)+0x9B);
    *(u16 *)((u8 *)spC4 + 0x24) = 2;
    *(u8 *)((u8 *)spC4 + 0x27) = 0;
    arg0->f50 = 1;
    var_r1 = 0;
    sp10C = (u8 *)arg0 + 0x6C;
    sp108 = (u8 *)arg0 + 0x6A;
    sp104 = (u8 *)arg0 + 0x68;
    do {
        var_r2 = 0;
loop_8:
        temp_r1_3 = var_r2;
        *(s32 *)((u8 *)&t116C_history + temp_r1_3 * 4 + var_r1 * 0x14C) = 0;
        temp_r1_4 = temp_r1_3 + 1;
        var_r2 = (s16) temp_r1_4;
        if ((s32) (s16) temp_r1_4 <= 4) {
            goto loop_8;
        }
        temp_r0_4 = (var_r1 << 0x10) + 0x10000;
        var_r1 = (s16) (temp_r0_4 >> 0x10);
    } while ((s32) ((s32) temp_r0_4 >> 0x10) <= 3);
    *sp10C = 0;
    *sp108 = 0;
    *sp104 = 0;
    spFC = 0;
    spF4 = 0;
    spEC = 0;
    spF8 = 0;
    spF0 = 0;
    spE4 = 0;
    sub_08098044();
    t116C_sub_080B2330();
    spB8 = t116C_actor->f14;
    spBC = t116C_actor->f18;
    sub_08097FE4();
    sub_08097A4C();
    arg0->f1FC = (u8) ((-0x10 & arg0->f1FC) | (0xF & (u8) arg0->f0));
    arg0->f202 = (u16) arg0->f2;
    arg0->f200 = 0xFFU;
    sp100 = 0;
    sub_08067C18();
loop_12:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_12;
    }
    sub_08067BF8();
    t116C_clearSelection();
    goto check116;
loop_134:
    if ((arg0->fC == 0xA) && (spDC == 0)) {
        spDC = 8;
    }
    var_r4 = &spB6;
    if (sub_08058DB0() != 0) {

    } else {
        t116C_sub_0801C8F0(t116C_actor);
        temp_r0_5 = arg0->f1FD - 1;
        switch (temp_r0_5) {                    /* switch 1; irregular */
        case 0:                                 /* switch 1 */
            arg0->fC = 0U;
            var_r4 = &spB6;
            if (sub_08067C08() == 0) {

            } else {
                arg0->f1FD = (u8) arg0->f1FE;
                sub_08067BF8();
            }
            break;
        case 1:                                 /* switch 1 */
            arg0->fC = 0U;
            temp_r0_6 = sub_08068490();
            arg0->f200 = temp_r0_6;
            var_r4 = &spB6;
            if (temp_r0_6 == 0xFF) {

            } else {
                t116C_byte79C = temp_r0_6;
                arg0->f200 = (u8) (temp_r0_6 | 0xFF);
                var_r1_2 = (u8 *)arg0 + 0x1FE;
                var_r0 = 9;
block_66:
                *var_r1_2 = var_r0;
block_67:
                var_r1_3 = (u8 *)arg0 + 0x1FD;
block_68:
                *var_r1_3 = 1;
                sub_08067C18();
            }
            break;
        case 2:                                 /* switch 1 */
            spD0 = 0;
            var_r4 = &spB6;
            if (sub_08056F78() == 0) {

            } else {
                var_r1_2 = (u8 *)arg0 + 0x1FE;
                var_r0 = 4;
                goto block_66;
            }
            break;
        case 3:                                 /* switch 1 */
            spD0 = 1;
            arg0->fC = 1U;
            if (spF4 <= 7U) {
                temp_r1_5 = (0xF & arg0->f1FC) | (t116C_sub_08096594(0) * 0x10);
                arg0->f1FC = temp_r1_5;
                temp_r1_6 = (0x14C * ((u32) (temp_r1_5 << 0x18) >> 0x1C)) + (u8 *)gUnk_03003CE0;
                if (spFC & spD0) {
                    var_r4 = &spB6;
                    if ((sub_08097A74(arg0, temp_r1_6, 0x140, 0x1C) << 0x18) != 0) {

                    } else {
                        spFC = (s32) (u8) (spFC + 1);
                        spF4 = (u32) (u8) (spF4 + 1);
                        arg0->f1FE = 5U;
                        arg0->f1FD = 1U;
                        sub_08067C18();
                        t116C_sub_08058CC4(spCC);
                    }
                } else {
                    var_r4 = &spB6;
                    if ((sub_08097A74(arg0, temp_r1_6, 0x140, 0x50) << 0x18) != 0) {

                    } else {
                        spFC = (s32) (u8) (spFC + 1);
                        spE4 = 0;
                        arg0->f1FE = 6U;
                        arg0->f1FD = 1U;
                        sub_08067C18();
                    }
                }
            } else {
                arg0->f1FE = 0xAU;
                arg0->f1FD = 1U;
                sub_08067C18();
block_85:
                var_r4 = &spB6;
            }
            break;
        case 4:                                 /* switch 1 */
            spD0 = 2;
            arg0->fC = 2U;
            var_r4 = &spB6;
            if (arg0->f6E == 0) {

            } else {
                arg0->f50 = (s32) (arg0->f50 + 1);
                temp_r1_7 = spF0;
                spF0 = (s32) (u8) (temp_r1_7 + 1);
                temp_r0_7 = 4 % temp_r1_7;
                if (temp_r0_7 != 0) {
                    spF0 = 0;
                    arg0->f1FE = 8U;
                    arg0->fC = 9U;
                } else {
                    arg0->f1FE = 0xDU;
                    arg0->fC = (u16) temp_r0_7;
                }
                arg0->f1FD = 1U;
                sub_08067C18();
                goto block_85;
            }
            break;
        case 5:                                 /* switch 1 */
            spD0 = 9;
            arg0->fC = 9U;
            temp_r4 = t116C_actor;
            t116C_sub_08095F10(temp_r4, t116C_sub_08096594(0));
            t116C_actor->f68 = (u16) t116C_actor->f8;
            temp_r1_8 = spE4;
            spE4 = (u32) (u16) (temp_r1_8 + 1);
            var_r4 = &spB6;
            if (temp_r1_8 <= 0x1EU) {

            } else {
                spE4 = 0;
                t116C_sub_0807386C(t116C_actor->f0 + 4, 0xD, (u8) t116C_actor->f1FC >> 4, 5, (s32)5);
                t116C_actor->f50 = (s32) (t116C_actor->f50 + 1);
                var_r1_2 = (u8 *)arg0 + 0x1FE;
                var_r0 = 7;
                goto block_66;
            }
            break;
        case 6:                                 /* switch 1 */
            spD0 = 9;
            arg0->fC = 9U;
            temp_r4_2 = t116C_actor;
            t116C_sub_08095F10(temp_r4_2, t116C_sub_08096594(0));
            t116C_actor->f68 = (u16) (t116C_actor->f8 + 8);
            temp_r1_9 = spE4;
            spE4 = (u32) (u16) (temp_r1_9 + 1);
            var_r4 = &spB6;
            if (temp_r1_9 <= 0x1EU) {

            } else {
                spE4 = 0;
                sub_08097A38(0U);
                arg0->f1FE = 4U;
                var_r1_3 = (u8 *)arg0 + 0x1FD;
                goto block_68;
            }
            break;
        case 7:                                 /* switch 1 */
            spD0 = 9;
            arg0->fC = 9U;
            var_r2_2 = 0;
            var_r1_4 = 1;
            var_r4 = &spB6;
            do {
                temp_r1_10 = var_r1_4;
                if ((1 << temp_r1_10) & gUnk_030056FC) {
                    var_r2_2 = (u32) ((var_r2_2 << 0x10) + 0x10000) >> 0x10;
                }
                temp_r0_8 = temp_r1_10 + 1;
                var_r1_4 = (s16) temp_r0_8;
            } while ((s32) (s16) temp_r0_8 <= 4);
            if ((s32) (s16) var_r2_2 <= 1) {
                if (sub_08002204() == 1) {
                    temp_r1_11 = t116C_random();
                    var_r0_2 = temp_r1_11;
                    if ((s32) temp_r1_11 < 0) {
                        var_r0_2 = temp_r1_11 + 3;
                    }
                    var_r0_3 = temp_r1_11 - ((var_r0_2 >> 2) * 4);
                    if ((s32) var_r0_3 < 0) {
                        var_r0_3 = 0 - var_r0_3;
                    }
                    arg0->f200 = (u8) (var_r0_3 + 1);
                    if (sub_08068450(arg0->f200) == 1) {
                        var_r1_2 = (u8 *)arg0 + 0x1FE;
                        var_r0 = 2;
                        goto block_66;
                    }
                } else {
                    arg0->f200 = 0xFFU;
                    var_r1_2 = (u8 *)arg0 + 0x1FE;
                    var_r0 = 2;
                    goto block_66;
                }
            } else {
                var_r1_2 = (u8 *)arg0 + 0x1FE;
                var_r0 = 0xD;
                goto block_66;
            }
            goto block_67;
        case 8:                                 /* switch 1 */
            spD0 = 9;
            arg0->fC = 9U;
            *sp104 = arg0->f8 + 8;
            t116C_sub_080B236C(spB8, spBC);
            arg0->f1FE = 0xDU;
            arg0->f1FD = 1U;
            sub_08067C18();
            goto block_85;
        case 9:                                 /* switch 1 */
            spD0 = 9;
            arg0->fC = 9U;
            arg0->f1FE = 0xBU;
            arg0->f1FD = 1U;
            sub_08067C18();
            goto block_85;
        case 10:                                /* switch 1 */
            spD0 = 9;
            arg0->fC = 9U;
            *sp104 = arg0->f8 + 8;
            if (spF8 == 0) {
                spF8 = 1;
                spF4 = 0;
                t116C_sub_08098088(arg0->f14, arg0->f18, 1);
                sub_0801A0B0(arg0);
            } else if ((u8)t116C_fadeDone() != 0) {
                spF8 = 0;
                arg0->f1FE = 0xCU;
                arg0->f1FD = 1U;
                sub_08067C18();
            } else {
                spEC = (u32) (0xF0000 & ((spEC + 1) << 0x10)) >> 0x10;
                var_r2_3 = spEC;
                var_r3 = 0;
block_84:
                sub_08009088(0U, 0U, (u8) var_r2_3, (u8) var_r3);
            }
            goto block_85;
        case 11:                                /* switch 1 */
            spD0 = 9;
            arg0->fC = 9U;
            *sp104 = arg0->f8 + 8;
            if (spF8 == 0) {
                spF8 = 1;
                temp_r0_9 = (t116C_counter * 8) + t116C_positions;
                t116C_sub_08098088(*(s32 *)temp_r0_9, *(s32 *)((u8 *)temp_r0_9+4), 1);
                arg0->f14 = (s32) *(s32 *)((t116C_counter * 8) + t116C_positions);
                arg0->f18 = (s32) *(s32 *)((t116C_counter * 8) + (t116C_positions + 4));
                if (t116C_counter != 8) {
                    var_r0_4 = t116C_counter + 1;
                    t116C_counter = var_r0_4;
                } else {
                    var_r0_4 = 0;
                }
                t116C_counter = var_r0_4;
            } else if ((u8)t116C_fadeDone() != 0) {
                spF8 = 0;
                spEC = 0;
                sub_0801A0A4(arg0);
                sub_08009088(0U, 0U, 0U, 0U);
                spE4 = 0;
                arg0->f1FE = 6U;
                arg0->f1FD = 1U;
                sub_08067C18();
            } else {
                spEC = (u32) (0xF0000 & ((spEC - 1) << 0x10)) >> 0x10;
                var_r2_3 = 0;
                var_r3 = spEC;
                goto block_84;
            }
            goto block_85;
        case 12:                                /* switch 1 */
            spD0 = 0;
            arg0->fC = 0U;
            temp_r1_12 = spE4;
            spE4 = (u32) (u16) (temp_r1_12 + 1);
            var_r4 = &spB6;
            if (temp_r1_12 > 0x3CU) {
                spE4 = 0;
                sub_08097A38(0U);
                arg0->f1FE = 4U;
                arg0->f1FD = 1U;
                sub_08067C18();
            }
            break;
        }
    }
    switch (spD0) {                             /* switch 2; irregular */
    case 0:                                     /* switch 2 */
        spC0 = sp18;
        *sp104 = arg0->f8;
        var_r0_5 = (s32)1;
block_99:
        spD8 = var_r0_5;
        break;
    case 1:                                     /* switch 2 */
        spC0 = sp18;
        *sp104 = arg0->f8 + 8;
        spD8 = (s32)1;
        break;
    case 2:                                     /* switch 2 */
        spC0 = sp4C;
        *sp104 = arg0->f8;
        spD8 = 0;
        break;
    case 9:                                     /* switch 2 */
        spC0 = sp80;
        var_r0_5 = 0;
        goto block_99;
    }
    if (spD4 != t116C_actor->f68) {
        spD4 = (s32) t116C_actor->f68;
        t116C_actor->f6C = 0;
        t116C_actor->f6A = 0;
    }
    *(u8 *)((u8 *)spC0 + 0x1C) = (s8) gUnk_030007A4;
    t116C_sprite(gUnk_030007A4 + 0x10, *(s32 *)((u8 *)spC0 + 0xC), 1U);
    if (1 & sub_08098004()) {
        var_r0_6 = sub_08097FF8();
    } else {
        var_r0_6 = (u8) sub_0800BC44((u32) ((s32) arg0->f14 >> 8), (u32) ((s32) arg0->f18 >> 8), 0U);
    }
    temp_r0_10 = var_r0_6;
    if (sub_0800CD8C() == 0) {
        arg0->f6E = (u16) t116C_sub_08065370(spC0, *sp104, sp108, sp10C, spD8);
    }
    t116C_sub_0800BC08((s32) (arg0->f14 << 8) >> 0x10, (s32) (arg0->f18 << 8) >> 0x10, &spB4, var_r4, 0, 0);
    if (spDC != 0) {
        temp_r0_11 = spDC;
        spDC = (s32) (u16) (temp_r0_11 - 1);
        if ((1 & temp_r0_11) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
            t116C_sub_08007870(spB4, *var_r4, *sp104, *sp108, (s32) temp_r0_10, spC0 + 0x1C, *(s32 *)((u8 *)spC0 + 0x8), *(s32 *)((u8 *)spC0 + 0x0));
        }
    } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_12 = sub_0800CD34();
        if (temp_r0_12 == 0) {
            if (spEC != 0) {
                t116C_sub_08007974(spB4, *var_r4, *sp104, *sp108, (s32) temp_r0_10, (s32)1, temp_r0_12, spC0 + 0x1C, *(s32 *)((u8 *)spC0 + 0x8), *(s32 *)((u8 *)spC0 + 0x0));
            } else {
                t116C_sub_08007870(spB4, *var_r4, *sp104, *sp108, (s32) temp_r0_10, spC0 + 0x1C, *(s32 *)((u8 *)spC0 + 0x8), *(s32 *)((u8 *)spC0 + 0x0));
            }
        }
    }
    temp_r0_13 = arg0->f4C;
    if ((temp_r0_13 != 0) && (spC8 != temp_r0_13)) {
        spC8 = temp_r0_13;
        spE0 = 0xA;
        spE8 = 0;
    }
    if (spE0 != 0) {
        if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
            t116C_sub_0801A120(arg0, spC8, (s16) spE8);
        }
        if (2 & spE0) {
            spE8 = (u32) ((spE8 << 0x10) + 0xFFFF0000) >> 0x10;
        }
        spE0 = (s32) (u16) (spE0 - 1);
    } else {
        spC8 = 0;
        arg0->f4C = spE0;
    }
    if ((u16)t116C_sub_08019CE8(arg0) != 0) {
        sp100 = 1;
    }
    t116C_sub_08020680(arg0);
    sub_080003F0();
    if (sp100 != 0) goto exit116;
check116:
    if (sub_0800CB78() != 0) goto exit116;
    if (sub_08056E90() != 0) goto exit116;
    goto loop_134;
exit116:

    gUnk_030056FC &= ~(1 << t116C_actor->f0);
    temp_r2 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2 |= 1;
    sub_08009088(0U, 0U, 0U, 0U);
    sub_08098060();
    t116C_sub_080B1FD4();
    temp_r2_2 = sp80;
    spC0 = temp_r2_2;
    *(u8 *)((u8 *)temp_r2_2 + 0x1C) = (s8) gUnk_030007A4;
    t116C_actor->f6C = 0;
    temp_r0_14 = ((u8 *)t116C_actor + 0x6C) - 2;
    *temp_r0_14 = 0;
    *(u16 *)((u8 *)temp_r0_14 - 2) = 0;
    spE8 = 0;
    spE0 = 0xA;
loop_137:
    temp_r1_13 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r1_13 |= 1;
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_15 = sub_0800CD34();
        if (temp_r0_15 == 0) {
            t116C_sprite(gUnk_030007A4 + 0x10, *(s32 *)((u8 *)spC0 + 0xC), 1U);
            temp_sl = (u8) sub_0800BC44((u32) ((s32) t116C_actor->f14 >> 8), (u32) ((s32) t116C_actor->f18 >> 8), 0U);
            t116C_actor->f6E = (s16) t116C_sub_08065370(spC0, t116C_actor->f68, ((u8 *)t116C_actor + 0x6A), ((u8 *)t116C_actor + 0x6C), (s32)1);
            t116C_sub_0800BC08((s32) (t116C_actor->f14 << 8) >> 0x10, (s32) (t116C_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_15, temp_r0_15);
            t116C_sub_08007870(spB4, spB6, t116C_actor->f68, t116C_actor->f6A, (s32) temp_sl, spC0 + 0x1C, *(s32 *)((u8 *)spC0 + 0x8), *(s32 *)((u8 *)spC0 + 0x0));
            t116C_sub_0801A120(arg0, spC8, (s16) spE8);
        }
    }
    if (2 & spE0) {
        spE8 = (u32) ((spE8 << 0x10) + 0xFFFF0000) >> 0x10;
    }
    t116C_sub_080B23C8();
    sub_080003F0();
    spE0 = (s32) (u16) (spE0 - 1);
    if (spE0 != 0xFFFF) {
        goto loop_137;
    }
    sub_080683CC();
    t116C_sub_08067CA8(t116C_actor->f2);
    sub_08068330(-0x21520532);
loop_152:
    if (sub_080682B8(-0x21520532) == 0) {
        temp_r1_14 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
        *temp_r1_14 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_16 = sub_0800CD34();
            if (temp_r0_16 == 0) {
                t116C_sprite(gUnk_030007A4 + 0x10, *(s32 *)((u8 *)spC0 + 0xC), 1U);
                temp_sl_2 = (u8) sub_0800BC44((u32) ((s32) t116C_actor->f14 >> 8), (u32) ((s32) t116C_actor->f18 >> 8), 0U);
                t116C_actor->f6E = (s16) t116C_sub_08065370(spC0, t116C_actor->f68, ((u8 *)t116C_actor + 0x6A), ((u8 *)t116C_actor + 0x6C), (s32)1);
                t116C_sub_0800BC08((s32) (t116C_actor->f14 << 8) >> 0x10, (s32) (t116C_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_16, temp_r0_16);
                t116C_sub_08007870(spB4, spB6, t116C_actor->f68, t116C_actor->f6A, (s32) temp_sl_2, spC0 + 0x1C, *(s32 *)((u8 *)spC0 + 0x8), *(s32 *)((u8 *)spC0 + 0x0));
            }
        }
        t116C_sub_080B23C8();
        sub_080003F0();
        goto loop_152;
    }
    sub_08065E38(-0x21520532);
loop_159:
    if (sub_08058DB0() != 0) {
        temp_r1_15 = (sub_080020F4() * 0x14C) + &t116C_flags;
        *temp_r1_15 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_17 = sub_0800CD34();
            if (temp_r0_17 == 0) {
                t116C_sprite(gUnk_030007A4 + 0x10, *(s32 *)((u8 *)spC0 + 0xC), 1U);
                temp_sl_3 = (u8) sub_0800BC44((u32) ((s32) t116C_actor->f14 >> 8), (u32) ((s32) t116C_actor->f18 >> 8), 0U);
                t116C_actor->f6E = (s16) t116C_sub_08065370(spC0, t116C_actor->f68, ((u8 *)t116C_actor + 0x6A), ((u8 *)t116C_actor + 0x6C), (s32)1);
                t116C_sub_0800BC08((s32) (t116C_actor->f14 << 8) >> 0x10, (s32) (t116C_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_17, temp_r0_17);
                t116C_sub_08007870(spB4, spB6, t116C_actor->f68, t116C_actor->f6A, (s32) temp_sl_3, spC0 + 0x1C, *(s32 *)((u8 *)spC0 + 0x8), *(s32 *)((u8 *)spC0 + 0x0));
            }
        }
        t116C_sub_080B23C8();
        sub_080003F0();
        goto loop_159;
    }
    t116C_sub_080586B4(0);
    temp_r2_3 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2_3 |= 1;
    if (sub_0805A318() != 0) {
        var_r0_7 = t116C_sub_0805DF38(1U, 0xEU, 0x19U, 2U, (s32)0x3C, (s32)0x1400A6);
        var_r1_5 = (u32 *)((u8 *)gGameState + 0x720);
    } else {
        var_r0_7 = t116C_sub_0805DF38(1U, 0xEU, 0x19U, 2U, (s32)0x3C, (s32)0x1400A4);
        var_r1_5 = (u32 *)((u8 *)gGameState + 0x720);
    }
    *var_r1_5 = var_r0_7;
loop_170:
    if (sub_0805EEFC(*(u32 *)((u8 *)gGameState + 0x720)) == 0) {
        temp_r1_16 = (sub_080020F4() * 0x14C) + ((u8 *)gUnk_03003CE0 + 0x30);
        *temp_r1_16 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_18 = sub_0800CD34();
            if (temp_r0_18 == 0) {
                t116C_sprite(gUnk_030007A4 + 0x10, *(s32 *)((u8 *)spC0 + 0xC), 1U);
                temp_sl_4 = (u8) sub_0800BC44((u32) ((s32) t116C_actor->f14 >> 8), (u32) ((s32) t116C_actor->f18 >> 8), 0U);
                t116C_actor->f6E = (s16) t116C_sub_08065370(spC0, t116C_actor->f68, ((u8 *)t116C_actor + 0x6A), ((u8 *)t116C_actor + 0x6C), (s32)1);
                t116C_sub_0800BC08((s32) (t116C_actor->f14 << 8) >> 0x10, (s32) (t116C_actor->f18 << 8) >> 0x10, &spB4, &spB6, temp_r0_18, temp_r0_18);
                t116C_sub_08007870(spB4, spB6, t116C_actor->f68, t116C_actor->f6A, (s32) temp_sl_4, spC0 + 0x1C, *(s32 *)((u8 *)spC0 + 0x8), *(s32 *)((u8 *)spC0 + 0x0));
            }
        }
        t116C_sub_080B23C8();
        sub_080003F0();
        goto loop_170;
    }
    temp_r2_4 = (0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0 + 0x30);
    *temp_r2_4 &= ~1;
    sub_080B23FC();
    t116C_sub_080B2454();
    if (!(*(s32 *)((0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0 + 0x30)) & 0x2000) && (t116C_actor->f5A != 0)) {
        temp_r4_3 = sub_0801E46C((s32) gUnk_030034E0, spC4);
        spE8 = 0x1D;
        do {
            t116C_actor->f18 = (s32) (t116C_actor->f18 - 0x20);
            t116C_sub_0806171C(t116C_actor, temp_r4_3);
            sub_080003F0();
            temp_r0_19 = (spE8 << 0x10) + 0xFFFF0000;
            spE8 = temp_r0_19 >> 0x10;
        } while (((s32) temp_r0_19 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4_3);
    }
    sub_08056E24();
    goto finalcheck116;
loop_178:
    sub_080003F0();
finalcheck116:
    if (sub_08056E90() == 0) goto loop_178;
    sub_080B2424();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A9680", sub_080B0FC4);
#endif
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
void sub_080B236C(u32 a, u32 b)
{
    register u32 first asm("r6") = a;
    u8 **pp = &gPtr030007A8;
    u8 *obj;
    u32 mem;
    u32 z;
    register void *taskArg asm("r0");
    register u32 second asm("r2");
    if (*pp == 0 || sub_08000470((u32)*pp) != 0) return;
    z = *(u32 *)(*pp + 8);
    if (z != 0) return;
    mem = sub_08001494(0x400);
    obj = *pp;
    *(u32 *)(obj + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 0xC) = (u32)sub_080B2058;
    *(u32 *)(obj + 0x24) = z;
    *(u32 *)(obj + 8) = 0x3B;
    taskArg = obj;
    second = b;
    sub_08000274_4(taskArg, first, second, z);
}
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
