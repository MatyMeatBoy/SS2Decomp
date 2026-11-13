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
extern s32 sub_08007870_8(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
extern u32 sub_0800BC08_6(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 sub_08065370_5(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern s32 sub_08065158_5(void *, u32, u32, s32, s32) asm("sub_08065158");
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
/* [RestorePlayerOnObjectIntersection] Rejects locked/inactive or excluded-state players, constructs player and
 * object line segments, and on intersection restores current x/y from saved coordinates and returns one; all
 * other paths return zero. */
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
/* [CleanupFixedDestinationActor] If actor +0x5C is nonzero, releases its three-control attack pool; always
 * clears peer rings, zeroes active mask, and releases palette. */
void sub_080A97E0(void) {
    if (M2C_FIELD(gUnk_0300041C, s16 *, 0x5C) != 0) {
        sub_080A9844();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000420);
}
/* [AllocateResource17HazardTaskPool3] Allocates78hex,3 controls clear+8. */
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
/* [ReleaseFixedDestinationTasks] Cancels scheduled tasks in three controls at gUnk_03000424, frees array and
 * clears global. */
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
/* [StartFixedDestinationAttack] Scans three controls for unscheduled plus word0, allocates0x400 and returns on
 * failure; installs fixed-destination callback with no destructor, word0x40, forwards u16 kind. */
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
/* [PointsHaveDifferentLineSideSigns] Calls canonicalA9910(a,b,c) andA9910(a,b,d), returns1iff result words
 * differ. Includes collinear zero vsnonzero, so do not name general segment intersection; no guarantee about
 * full geometric crossing. */
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
/* [PointOrientationSign32] Loads three points of2signed32 coordinates, computes low32bits
 * of(bx-ax)*(cy-ay)-(by-ay)*(cx-ax), returns1/0/-1 via signed comparison. Arithmetic wraps at32bits; no exact
 * orientation guarantee for overflow. No SDK provenance established. */
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
struct Res9950 { u8 p0[4]; s16 f4, f6; u8 p8[0x1F]; u8 f27; u8 p28[0xAE]; u16 fD6; };
struct Act9950 {
    u16 f0, f2;
    u8 p4[4];
    s16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x2C];
    u16 f48, f4A;
    s32 f4C, f50;
    u8 p54[6];
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[8];
    u16 f68, f6A, f6C, f6E;
    u8 p70[0x164];
    s16 f1D4, f1D6;
    u8 p1d8[0x24];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 f200, p201;
    u16 f202;
    u8 res[0xD4];
    u16 f2D8, f2DA;
};
struct Anim9950 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct Pl9950 { u8 p0[0x30]; u32 flags; u8 p34[0x114]; u16 *f148; };
struct Pose9950 { u8 animA, dirA, animB, dirB, flag; };
struct Map9950 { u8 p0[0x90]; u16 f90; };
struct XY9950 { s32 x, y; };

extern struct Act9950 *gA9950 asm("gUnk_03000428");
extern struct Act9950 *gB9950 asm("gUnk_0300042C");
extern u16 gTile9950 asm("gUnk_03000430");
extern u8 *gBase9950 asm("gUnk_030056F4");
extern u32 gMask9950 asm("gUnk_030056FC");
extern struct Map9950 gMap9950 asm("gUnk_03003170");
extern struct Pl9950 gPl9950[] asm("gUnk_03003CE0");
extern u8 gHist9950[] asm("gUnk_03003DC4");
extern u8 gImg9950[] asm("gUnk_084AA970");
extern u8 gPose9950[] asm("gUnk_08518898");
extern u8 gPoseT9950[][2][5] asm("gUnk_08518898");
extern u32 gAnimIds9950[] asm("gUnk_085188E8");
extern void *gData9950 asm("gUnk_030034E0");
extern u8 *gState9950 asm("gUnk_03005CF4");

void setup9950(void *, void *, s32) asm("sub_0801623C");
void initRes9950(void *) asm("sub_08019F60");
void show9950(void *) asm("sub_0801A0A4");
void hide9950(void *) asm("sub_0801A0B0");
u16 tile9950(u16, u16) asm("sub_08016E04");
s32 animInit9950(void *, u32, s32, s32, s32) asm("sub_08065158");
void tick9950(void *) asm("sub_0801C8F0");
u8 pick9950(void) asm("sub_08068490");
s32 rnd9950(s32) asm("sub_08096594");
u8 reach9950(void *, void *, s32, s32) asm("sub_08097A74");
void end9950(s32) asm("sub_08097A38");
void sfx9950(s32) asm("sub_0805865C");
u8 shot9950(void *, struct XY9950, s32) asm("sub_080AB054");
s32 face9950(void *, u8) asm("sub_08095F10");
u8 move9950(void *, u32, u32, s32, s32, s32) asm("sub_08097AC0");
void spawn9950(s32, s32, s32, s32, s32) asm("sub_0807386C");
s16 rand9950(void) asm("sub_0800086C");
int abs(int);
s32 link9950(void) asm("sub_08002204");
s32 linkPick9950(u8) asm("sub_08068450");
void loadPal9950(u32, void *, u32) asm("sub_08000AF0");
u8 bgFlag9950(void) asm("sub_08098004");
u8 bgPrio9950(void) asm("sub_08097FF8");
u8 prio9950(s32, s32, s32) asm("sub_0800BC44");
u16 anim9950(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
u32 proj9950(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
s32 draw9950(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
void dmg9950(void *, s32, s16) asm("sub_0801A120");
s16 dead9950(void *) asm("sub_08019CE8");
s32 free9950(u16) asm("sub_08067CA8");
s32 wait9950(s32) asm("sub_08068330");
s32 ready9950(s32) asm("sub_080682B8");
void next9950(s32) asm("sub_08065E38");
s32 msgEnd9950(s32) asm("sub_080586B4");
s32 box9950(s32, s32, s32, s32, s32, s32) asm("sub_0805DF38");
s32 boxDone9950(s32) asm("sub_0805EEFC");
s32 bgm9950(s32) asm("sub_08058688");
u32 linkStart9950(void) asm("sub_0806849C");
s32 death9950(void *, void *, void *, void *, u16, u16, s32) asm("sub_08097658");
s32 dropFx9950(void *, void *) asm("sub_0801E46C");
void fall9950(void *, s32) asm("sub_0806171C");
s32 dropEnd9950(void *, s32) asm("sub_0801E4CC");

void sub_080A9950_v(struct Act9950 *a) asm("sub_080A9950");
/* [RunDualActorContactCycle] Initializes linked actorpair at same fixed point and shared palette. Primary
 * drives chosen-player pursuit, three offset/radius contact phases, fast point chase, team0/2
 * vulnerability/restoration and kind4 effect start; actor1 tracks position and drives final contact.
 * Palette-wait termination clears only primary maskbit. Normal death/termination clears mask, queues remote
 * actor damage, synchronizesDEADFACE, shows14009F, runs paired finish and conditional experience award then
 * transition. */
void sub_080A9950_v(struct Act9950 *a)
{
    struct Anim9950 anim0;
    struct Anim9950 anim1;
    s16 sxA, syA;
    s16 sxB, syB;
    struct Res9950 *res;
    struct Res9950 *resA;
    struct XY9950 tgt;
    struct XY9950 off;
    s32 lastHit;
    u16 flash1;
    u16 flash0;
    u16 hitTimer;
    u16 cnt14;
    u16 cnt1;
    s16 shake;
    s32 side;
    s32 lastSide;
    s32 pose;
    s32 lastPose;
    u8 proj;
    u8 sfxFlag;
    u8 alt;
    u8 tcount;
    s32 done;
    u8 prioA, prioB;
    s16 i, j;
    s32 h;
    struct Pl9950 *pl;
    u8 *base;

    gB9950 = a;
    gMask9950 |= 2;
    gA9950 = (struct Act9950 *)((base = gBase9950) + 0x2E0);
    res = (struct Res9950 *)a->res;
    resA = (struct Res9950 *)(base + 0x4E4);
    setup9950(a, gImg9950, 0);
    setup9950(gA9950, gImg9950, 1);
    initRes9950(resA);
    initRes9950(res);
    hide9950(gA9950);
    hide9950(gB9950);
    {
        struct Act9950 *g;
        u16 one;
        base[0x50B] = one = 1;
        g = gA9950;
        g->f0 = one;
        g->f2 = 5;
        g->f48 = gMap9950.f90;
        g->f14 = gB9950->f14 = 0xED88;
        g->f18 = gB9950->f18 = 0x9700;
    }
    { u16 *tp = &gTile9950; *tp = tile9950(a->f2D8, a->f2DA); }
    while (gTile9950 == 0xFFFF) {
        gB9950->fC = 11;
        if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
            gMask9950 &= ~(1 << gB9950->f0);
            return;
        }
        sub_080003F0();
    }
    {
        struct Act9950 *g = gA9950;
        struct Act9950 *b;
        g->f5C = g->f1D6 = resA->f6 * 3;
        { s32 t = resA->f4 * 2; g->f5E = g->f1D4 = ((resA->f4 << 3) + t) * 2; }
        b = gB9950;
        b->f5C = b->f1D6 = res->f6 * 3;
        { s32 t = res->f4 * 2; b->f5E = b->f1D4 = ((res->f4 << 3) + t) * 2; }
        g->fC = 0;
        b->fC = 0;
    }
    flash0 = 0;
    flash1 = 0;
    hitTimer = 0;
    tcount = 0;
    gA9950->f1FD = 3;
    gA9950->f1FE = 3;
    gB9950->f1FD = 3;
    gB9950->f1FE = 3;
    gA9950->f50 = 1;
    gB9950->f50 = 1;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(s32 *)(gHist9950 + j * 4 + i * 0x14C) = 0;
    proj = 0;
    alt = 0;
    sfxFlag = 0;
    cnt1 = 0;
    side = 0;
    lastSide = 0xFF;
    pose = 0;
    lastPose = 0xFF;
    gA9950->f68 = gPose9950[1];
    gB9950->f68 = gPose9950[3];
    gA9950->f6A = side;
    gA9950->f6C = side;
    gB9950->f6A = side;
    gB9950->f6C = side;
    animInit9950(&anim0, gAnimIds9950[gPose9950[0]], gTile9950, -1, 1);
    animInit9950(&anim1, gAnimIds9950[gPose9950[2]], gTile9950, -1, 1);
    anim0.f1C = gTile9950;
    anim1.f1C = gTile9950;
    gA9950->f1FC_lo = gA9950->f0;
    gA9950->f202 = gA9950->f2;
    gA9950->f200 = 0xFF;
    gB9950->f1FC_lo = gB9950->f0;
    gB9950->f202 = gB9950->f2;
    gB9950->f200 = 0xFF;
    sub_08097FE4();
    sub_08097A4C();
    done = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    linkStart9950();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (gB9950->fC == 10 && flash0 == 0)
            flash0 = 8;
        if (gA9950->fC == 10 && flash1 == 0)
            flash1 = 8;
        if (sub_08058DB0() == 0) {
            tick9950(gA9950);
            tick9950(gB9950);
            switch (gB9950->f1FD) {
            case 2:
                gA9950->fC = 0;
                gB9950->fC = 0;
                if (sub_08067C08() != 0) {
                    gB9950->f1FD = gB9950->f1FE;
                    sub_08067BF8();
                }
                break;
            case 4:
                gA9950->fC = 0;
                gB9950->fC = 0;
                sfxFlag = 0;
                proj = 0;
                gB9950->f200 = pick9950();
                {
                    struct Act9950 *b = gB9950;
                    if (b->f200 == 0xFF)
                        break;
                    switch (b->f200) {
                    case 0:
                        b->f1FE = 6;
                        break;
                    case 1:
                        b->f1FE = 7;
                        break;
                    case 2:
                        b->f1FE = 8;
                        break;
                    }
                }
                gB9950->f200 = 0xFF;
                gB9950->f1FD = 2;
                sub_08067C18();
                break;
            case 3:
                if (sub_08056F78() != 0) {
                    gB9950->f1FE = 5;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                break;
            case 5:
                gA9950->fC = 1;
                gB9950->fC = 1;
                pose = 1;
                gB9950->f1FC_hi = rnd9950(0);
                pl = &gPl9950[gB9950->f1FC_hi];
                if (reach9950(gB9950, pl, 0x140, 0x20) == 0) {
                    end9950(0);
                    proj = 0;
                    pose = 0;
                    gB9950->f1FE = 0xD;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                {
                    s32 t = 0;
                    if (gB9950->f8 > 3)
                        t = 1;
                    side = t;
                }
                break;
            case 6:
                gA9950->fC = 0;
                gB9950->fC = 2;
                pose = 4;
                if (sfxFlag == 0) {
                    sfxFlag = 1;
                    sfx9950(0x1A8);
                }
                if (gB9950->f6E == 0) {
                    if (side == 0)
                        off.x = 0x20;
                    else
                        off.x = -0x20;
                    off.y = -0x10;
                    if (proj == 0)
                        proj = shot9950(gB9950, off, 0x18);
                } else {
                    proj = 0;
                    pose = 0;
                    gB9950->f1FE = 0xD;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                break;
            case 7:
                gA9950->fC = 0;
                gB9950->fC = 2;
                pose = 5;
                if (sfxFlag == 0) {
                    sfxFlag = 1;
                    sfx9950(0x1A8);
                }
                if (gB9950->f6E == 0) {
                    if (side == 0)
                        off.x = -8;
                    else
                        off.x = 8;
                    off.y = 8;
                    if (proj == 0)
                        proj = shot9950(gB9950, off, 0x10);
                } else {
                    proj = 0;
                    pose = 0;
                    gB9950->f1FE = 0xD;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                break;
            case 8:
                gA9950->fC = 0;
                gB9950->fC = 2;
                pose = 6;
                if (sfxFlag == 0) {
                    sfxFlag = 1;
                    sfx9950(0x1A8);
                }
                if (gB9950->f6E == 0) {
                    if (side == 0)
                        off.x = -0x10;
                    else
                        off.x = 0x10;
                    off.y = -8;
                    if (proj == 0)
                        proj = shot9950(gB9950, off, 0x10);
                } else {
                    proj = 0;
                    pose = 0;
                    gB9950->f1FE = 0xD;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                break;
            case 10:
                gA9950->fC = 2;
                gB9950->fC = 2;
                pose = 3;
                gB9950->f1FC_hi = rnd9950(0);
                {
                    struct Act9950 *b = gB9950;
                    pl = &gPl9950[b->f1FC_hi];
                    face9950(b, b->f1FC_hi);
                }
                {
                    s32 t = 0;
                    if (gB9950->f8 > 3)
                        t = 1;
                    side = t;
                }
                tgt.x = pl->f148[0] >> 4;
                tgt.y = (u32)(pl->f148[1] << 20) >> 20;
                tcount = 0;
                proj = 0;
                end9950(0);
                gB9950->f1FE = 0xB;
                gB9950->f1FD = 2;
                sub_08067C18();
                break;
            case 11:
                gA9950->fC = 2;
                gB9950->fC = 2;
                pose = 3;
                if (sfxFlag++ > 0x1E) {
                    sfxFlag = 0;
                    sfx9950(0x1A7);
                }
                off.x = 0;
                off.y = -0x18;
                if (proj == 0)
                    proj = shot9950(gB9950, off, 0x28);
                if (tcount < 0xB4) {
                    tcount++;
                    if (move9950(gB9950, tgt.x, tgt.y, 0x500, 0x18, 1) != 0)
                        break;
                    proj = 0;
                    sfxFlag = 0;
                    pose = 2;
                    gB9950->f1FE = 1;
                    gB9950->f1FD = 2;
                } else {
                    proj = 0;
                    sfxFlag = 0;
                    pose = 2;
                    gB9950->f1FE = 1;
                    gB9950->f1FD = 2;
                }
                sub_08067C18();
                break;
            case 1:
                gA9950->fC = 0;
                gB9950->fC = 0;
                flash0 = 0;
                pose = 2;
                show9950(gA9950);
                hide9950(gB9950);
                if (cnt1++ > 0xB3) {
                    proj = 0;
                    pose = 0;
                    hide9950(gA9950);
                    hide9950(gB9950);
                    cnt1 = 0;
                    {
                        struct Act9950 *b = gB9950;
                        b->f4A = flash0;
                        b->f5C = b->f1D6 = res->f6 * 3;
                        { s32 t = res->f4 * 2; b->f5E = b->f1D4 = ((res->f4 << 3) + t) * 2; }
                        spawn9950(gA9950->f0 + 4, 4, b->f1FC_hi, 4, 4);
                    }
                    gB9950->f1FE = 9;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                break;
            case 9:
                gA9950->fC = 2;
                gB9950->fC = 0;
                pose = 7;
                if (sfxFlag == 0) {
                    sfxFlag = 1;
                    sfx9950(0x1A6);
                }
                if (gA9950->f6A == 1) {
                    if (side == 0)
                        off.x = -0x40;
                    else
                        off.x = 0x40;
                    off.y = 0x10;
                    if (proj == 0)
                        proj = shot9950(gA9950, off, 0x30);
                }
                if (gA9950->f6E != 0) {
                    proj = 0;
                    sfxFlag = 0;
                    pose = 0;
                    gB9950->f1FE = 0xC;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                break;
            case 12:
                {
                    struct Act9950 *g = gA9950;
                    g->fC = 9;
                    gB9950->fC = 0;
                    pose = 0;
                    g->f50++;
                }
                gB9950->f1FE = 0xE;
                gB9950->f1FD = 2;
                sub_08067C18();
                break;
            case 13:
                gA9950->fC = 0;
                gB9950->fC = 0;
                proj = 0;
                gB9950->f1FC_hi = rnd9950(0);
                end9950(0);
                if (alt++ & 1) {
                    pose = 3;
                    gB9950->f1FE = 0xA;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                } else {
                    if (link9950() == 1) {
                        gB9950->f200 = abs((s16)(rand9950() % 3));
                        if (linkPick9950(gB9950->f200) == 1) {
                            gB9950->f1FE = 4;
                            gB9950->f1FD = 2;
                            sub_08067C18();
                        }
                    } else {
                        gB9950->f200 = 0xFF;
                        gB9950->f1FE = 4;
                        gB9950->f1FD = 2;
                        sub_08067C18();
                    }
                    pose = 0;
                }
                break;
            case 14:
                gA9950->fC = 0;
                gB9950->fC = 0;
                pose = 0;
                if (cnt14++ > 0x3C) {
                    gB9950->f1FE = 0xD;
                    gB9950->f1FD = 2;
                    sub_08067C18();
                }
                break;
            }
            gA9950->f14 = gB9950->f14;
            gA9950->f18 = gB9950->f18;
        }
        if (lastSide != side || lastPose != pose) {
            lastSide = side;
            lastPose = pose;
            gA9950->f6C = 0;
            gA9950->f6A = 0;
            gB9950->f6C = 0;
            gB9950->f6A = 0;
            gA9950->f68 = gPoseT9950[pose][side][1];
            animInit9950(&anim0, gAnimIds9950[gPoseT9950[pose][side][0]], gTile9950, -1, 1);
            gB9950->f68 = gPoseT9950[pose][side][3];
            animInit9950(&anim1, gAnimIds9950[gPoseT9950[pose][side][2]], gTile9950, -1, 1);
            anim0.f1C = gTile9950;
            anim1.f1C = gTile9950;
        }
        if (bgFlag9950() & 1) {
            prioA = bgPrio9950();
            prioB = bgPrio9950();
        } else {
            prioA = prio9950(gA9950->f14 >> 8, gA9950->f18 >> 8, 0);
            prioB = prio9950(gB9950->f14 >> 8, gB9950->f18 >> 8, 0);
        }
        loadPal9950(gTile9950 + 0x10, anim0.fC + res->fD6 * 32, 1);
        loadPal9950(gTile9950 + 0x10, anim1.fC + res->fD6 * 32, 1);
        if (sub_0800CD8C() == 0) {
            gA9950->f6E = anim9950(&anim0, gA9950->f68, &gA9950->f6A, &gA9950->f6C, gPoseT9950[pose][side][4]);
            gB9950->f6E = anim9950(&anim1, gB9950->f68, &gB9950->f6A, &gB9950->f6C, gPoseT9950[pose][side][4]);
        }
        proj9950((s16)(gA9950->f14 >> 8), (s16)(gA9950->f18 >> 8), &sxA, &syA, 0, 0);
        if (gB9950->f1FE == 1 || gB9950->f1FD == 1) {
            if (side != 0)
                sxA -= 9;
            else
                sxA += 9;
            syA += 0x15;
        }
        proj9950((s16)(gB9950->f14 >> 8), (s16)(gB9950->f18 >> 8), &sxB, &syB, 0, 0);
        if (flash1 != 0) {
            u16 old = flash1;
            flash1--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                draw9950(sxA, syA, gA9950->f68, gA9950->f6A, prioA, &anim0.f1C, anim0.f8, anim0.f0);
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                draw9950(sxB, syB, gB9950->f68, gB9950->f6A, prioB, &anim1.f1C, anim1.f8, anim1.f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            draw9950(sxA, syA, gA9950->f68, gA9950->f6A, prioA, &anim0.f1C, anim0.f8, anim0.f0);
            draw9950(sxB, syB, gB9950->f68, gB9950->f6A, prioB, &anim1.f1C, anim1.f8, anim1.f0);
        }
        {
            s32 hh = gA9950->f4C;
            if (hh != 0 && lastHit != hh) {
                lastHit = hh;
                hitTimer = 10;
                shake = 0;
            }
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmg9950(gA9950, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            gA9950->f4C = 0;
        }
        if (dead9950(gA9950) != 0)
            done = 1;
        sub_080003F0();
        if (done)
            break;
    }

    gMask9950 = 0;
    gPl9950[sub_080020F4()].flags |= 1;
    pose = 2;
    gA9950->f68 = gPoseT9950[pose][side][1];
    gB9950->f68 = gPoseT9950[pose][side][3];
    gA9950->f6A = 0;
    gA9950->f6C = 0;
    gB9950->f6A = 0;
    gB9950->f6C = 0;
    animInit9950(&anim0, gAnimIds9950[gPoseT9950[pose][side][0]], gTile9950, -1, 1);
    animInit9950(&anim1, gAnimIds9950[gPoseT9950[pose][side][2]], gTile9950, -1, 1);
    anim0.f1C = gTile9950;
    anim1.f1C = gTile9950;
    sub_080683CC();
    free9950(gA9950->f2);
    wait9950(0xDEADFACE);
    while (ready9950(0xDEADFACE) == 0) {
        gPl9950[sub_080020F4()].flags |= 1;
        loadPal9950(gTile9950 + 0x10, anim0.fC + res->fD6 * 32, 1);
        loadPal9950(gTile9950 + 0x10, anim1.fC + res->fD6 * 32, 1);
        prioA = prio9950(gA9950->f14 >> 8, gA9950->f18 >> 8, 0);
        prioB = prio9950(gB9950->f14 >> 8, gB9950->f18 >> 8, 0);
        gA9950->f6E = anim9950(&anim0, gA9950->f68, &gA9950->f6A, &gA9950->f6C, 0);
        gB9950->f6E = anim9950(&anim1, gB9950->f68, &gB9950->f6A, &gB9950->f6C, 0);
        proj9950((s16)(gA9950->f14 >> 8), (s16)(gA9950->f18 >> 8), &sxA, &syA, 0, 0);
        if (side != 0)
            sxA -= 9;
        else
            sxA += 9;
        syA += 0x15;
        proj9950((s16)(gB9950->f14 >> 8), (s16)(gB9950->f18 >> 8), &sxB, &syB, 0, 0);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0
            && (flash0-- & 1)) {
            draw9950(sxA, syA, gA9950->f68, gA9950->f6A, prioA, &anim0.f1C, anim0.f8, anim0.f0);
            draw9950(sxB, syB, gB9950->f68, gB9950->f6A, prioB, &anim1.f1C, anim1.f8, anim1.f0);
        }
        sub_080003F0();
    }
    next9950(0xDEADFACE);
    while (sub_08058DB0() != 0) {
        gPl9950[sub_080020F4()].flags |= 1;
        loadPal9950(gTile9950 + 0x10, anim0.fC + res->fD6 * 32, 1);
        loadPal9950(gTile9950 + 0x10, anim1.fC + res->fD6 * 32, 1);
        prioA = prio9950(gA9950->f14 >> 8, gA9950->f18 >> 8, 0);
        prioB = prio9950(gB9950->f14 >> 8, gB9950->f18 >> 8, 0);
        gA9950->f6E = anim9950(&anim0, gA9950->f68, &gA9950->f6A, &gA9950->f6C, 0);
        gB9950->f6E = anim9950(&anim1, gB9950->f68, &gB9950->f6A, &gB9950->f6C, 0);
        proj9950((s16)(gA9950->f14 >> 8), (s16)(gA9950->f18 >> 8), &sxA, &syA, 0, 0);
        if (side != 0)
            sxA -= 9;
        else
            sxA += 9;
        syA += 0x15;
        proj9950((s16)(gB9950->f14 >> 8), (s16)(gB9950->f18 >> 8), &sxB, &syB, 0, 0);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0
            && (flash0-- & 1)) {
            draw9950(sxA, syA, gA9950->f68, gA9950->f6A, prioA, &anim0.f1C, anim0.f8, anim0.f0);
            draw9950(sxB, syB, gB9950->f68, gB9950->f6A, prioB, &anim1.f1C, anim1.f8, anim1.f0);
        }
        sub_080003F0();
    }
    msgEnd9950(0);
    gPl9950[sub_080020F4()].flags |= 1;
    *(s32 *)(gState9950 + 0x720) = box9950(1, 0xE, 0x19, 2, 0x3C, 0x14009F);
    while (boxDone9950(*(s32 *)(gState9950 + 0x720)) == 0) {
        gPl9950[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            loadPal9950(gTile9950 + 0x10, anim0.fC + res->fD6 * 32, 1);
            loadPal9950(gTile9950 + 0x10, anim1.fC + res->fD6 * 32, 1);
            prioA = prio9950(gA9950->f14 >> 8, gA9950->f18 >> 8, 0);
            prioB = prio9950(gB9950->f14 >> 8, gB9950->f18 >> 8, 0);
            gA9950->f6E = anim9950(&anim0, gA9950->f68, &gA9950->f6A, &gA9950->f6C, 0);
            gB9950->f6E = anim9950(&anim1, gB9950->f68, &gB9950->f6A, &gB9950->f6C, 0);
            proj9950((s16)(gA9950->f14 >> 8), (s16)(gA9950->f18 >> 8), &sxA, &syA, 0, 0);
            if (side != 0)
                sxA -= 9;
            else
                sxA += 9;
            syA += 0x15;
            proj9950((s16)(gB9950->f14 >> 8), (s16)(gB9950->f18 >> 8), &sxB, &syB, 0, 0);
            draw9950(sxA, syA, gA9950->f68, gA9950->f6A, prioA, &anim0.f1C, anim0.f8, anim0.f0);
            draw9950(sxB, syB, gB9950->f68, gB9950->f6A, prioB, &anim1.f1C, anim1.f8, anim1.f0);
        }
        sub_080003F0();
    }
    gPl9950[sub_080020F4()].flags &= ~1;
    bgm9950(0xD);
    death9950(gA9950, gB9950, &anim0, &anim1, res->fD6, gTile9950, side);
    if (!(gPl9950[sub_080020F4()].flags & 0x2000) && gA9950->f5A != 0) {
        h = dropFx9950(gData9950, res);
        shake = 0x1D;
        do {
            gB9950->f18 -= 0x20;
            fall9950(gB9950, h);
            sub_080003F0();
            shake--;
        } while (shake != -1);
        dropEnd9950(gData9950, h);
    }
    shake = 0x6F;
    do {
        sub_080003F0();
        shake--;
    } while (shake != -1);
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    sub_08056E24();
}
struct P112A { u8 p0[0x20]; u16 state; u8 p22[14]; u32 flags; u8 p34[0x34]; u8 unk68; u8 p69[0x1f]; u16 unk88; u8 p8a[6]; s32 unk90; u8 p94[0x1c]; u16 unkB0; u8 pb2[0x16]; u16 unkC8,unkCA,unkCC; u8 pce[0x16]; u32 unkE4[0x1a]; };
struct O112A { u16 unk0; u8 p2[10]; u16 unkC; u8 pe[6]; s32 unk14,unk18; u8 p1c[0x34]; s32 unk50; };
extern struct P112A players112A[] asm("gUnk_03003CE0");
extern s32 x112A asm("gUnk_03003D6C");
extern u32 atan112A(s32,s32) asm("ArcTan2");
extern s32 hit112A(void *,void *) asm("sub_0801ED8C");
/* [ApplyOffsetContactKnockback] Tests the selected player strictly inside the low-halfword radius around
 * object pixel position plus signed x/y offsets; applies a serial-gated hit, records/increments serial and
 * outward magnitude 0x400/counter 16, returning one on application and zero otherwise. */
s32 sub_080AB054(struct O112A *arg0, s32 arg1, s32 arg2, u32 arg3) {
    volatile s32 sp0;
    register struct P112A *base asm("r10");
    register s32 idx asm("r0");
    register s32 delta asm("r4");
    s32 *yp;
    register s32 dy asm("r1");
    register s32 ax asm("r5");
    s32 ay;
    register u32 radius asm("r8");
    register s32 stride asm("r9");
    register u32 zero asm("r1");
    register u32 word1 asm("r1");
    register u32 word2 asm("r2");
    u32 *history;
    u32 *fp;
    s16 *var_r0;
    struct P112A *tail;
    struct P112A *tailbase;
    s32 tailstride;
    u16 *hp;
    s16 temp_r1;
    s16 temp_r4_2;
    register s32 var_r1 asm("r1");
    register s32 temp_r0 asm("r0");
    s32 temp_r4_3;
    struct P112A *temp_r1_2;
    u16 temp_r4;
    register u32 temp_r4_4 asm("r4");
    u32 var_r4;
    u32 angle;

    ay = arg2;
    
    ax = arg1;
    
    radius = arg3 << 16;
    
    radius >>= 16;
    
    zero = 0;
    
    sp0 = zero;
    idx = sub_080020F4();
    delta = ax + (arg0->unk14 >> 8);
    
    word2 = (u32)players112A;
    asm("" : "+r"(word2));
    base = (struct P112A *)word2;
    
    word1 = 0x14C;
    
    stride = word1;
    
    word2 = idx * stride;
    
    idx = word2;
    
    word1 = (u32)&x112A;
    
    temp_r4 = delta - (*(s32 *)(idx + word1) >> 8);
    temp_r4_2 = (s16) temp_r4;
    idx = sub_080020F4();
    dy = ay + (arg0->unk18 >> 8);
    
    word2 = idx * stride;
    
    idx = word2;
    
    yp = &base->unk90;
    
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
        
        idx *= stride;
        word1 += idx;
        history = base->unkE4;
        
        if (*(u32 *)(word1 + (u32)history) == arg0->unk50) goto done;
        (*(struct P112A *)(sub_080020F4() * stride + (u32)base)).state = 0xA;
        (*(struct P112A *)(sub_080020F4() * stride + (u32)base)).unkB0 = 0xFFFE;
        temp_r4_3 = sub_080020F4();
        
        temp_r0 = hit112A(arg0, &(*(struct P112A *)(sub_080020F4() * stride + (u32)base)));
        
        temp_r1_2 = (struct P112A *)(temp_r4_3 * stride + (u32)base);
        hp = &temp_r1_2->unk88;
        
        word2 = *hp;
        
        *hp = temp_r0 + word2;
        idx = sub_080020F4();
        word1 = arg0->unk0 * 4;
        
        idx *= stride;
        word1 += idx;
        asm("" : "+r"(history), "+r"(word1));
        word1 += (u32)history;
        
        temp_r0 = arg0->unk50;
        *(u32 *)word1 = temp_r0;
        arg0->unk50 = (s32) (temp_r0 + 1);
        sp0 = 1;
        idx = sub_080020F4() * stride;
        word2 = (u32)&x112A;
        
        temp_r4_4 = (u32)((*(s32 *)(idx + word2) - arg0->unk14) << 8) >> 16;
        
        idx = sub_080020F4();
        word1 = stride * idx;
        asm("" : "+r"(word1));
        idx = word1;
        asm("" : "+r"(idx));
        dy = (*(s32 *)(idx + (u32)yp) - arg0->unk18) << 8;
        
        temp_r4_4 = (s16)temp_r4_4;
        
        dy >>= 16;
        angle = atan112A(temp_r4_4, dy) << 16;
        
        var_r4 = angle >> 29;
        
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
        
        word1 = 0x14C;
        
        idx *= word1;
        idx += (u32)tail;
        
        var_r1 = var_r4 - 2;
        var_r0 = (s16 *)(idx + 0xCA);
        
        goto storeDirection;
direction0:
        idx = sub_080020F4();
        tail = players112A;
        
        word1 = 0x14C;
        
        idx *= word1;
        idx += (u32)tail;
        var_r0 = (s16 *)(idx + 0xCA);
        var_r1 = 6;
        
        goto storeDirection;
direction1:
        idx = sub_080020F4();
        tail = players112A;
        
        word1 = 0x14C;
        
        idx *= word1;
        idx += (u32)tail;
        var_r0 = (s16 *)(idx + 0xCA);
        var_r1 = 7;
        
storeDirection:
        *var_r0 = var_r1;
        idx = sub_080020F4();
        tailbase = players112A;
        
        tailstride = 0x14C;
        
        ((struct P112A *)(idx * tailstride + (u32)tailbase))->unkCC = 0x400;
        ((struct P112A *)(sub_080020F4() * tailstride + (u32)tailbase))->unkC8 = 0x10;
    }
done:
    return sp0;
}

/* [CleanupEnemyPaletteAndLink] Exact target body. */
void sub_080AB2D8(void) {
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000430);
}
struct ResB2F8 { u8 p0[4]; s16 f4, f6; u8 p8[0xCE]; u16 fD6; };
struct ActB2F8 {
    u16 f0, f2;
    u8 p4[4];
    u16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x30];
    s32 f4C, f50;
    u8 p54[6];
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[8];
    u16 f68, f6A, f6C, f6E;
    u8 p70[0x164];
    s16 f1D4, f1D6;
    u8 p1d8[0x24];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 p200[4];
    u8 res[0xD4];
    u16 f2D8, f2DA;
};
struct AnimB2F8 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct PlB2F8 { u8 p0[0x30]; u32 flags; u8 p34[0x114]; u16 *f148; };

extern struct ActB2F8 *gActB2F8 asm("gUnk_03000434");
extern u16 gTileB2F8 asm("gUnk_03000438");
extern u32 gMaskB2F8 asm("gUnk_030056FC");
extern struct PlB2F8 gPlB2F8[] asm("gUnk_03003CE0");
extern u8 gHistB2F8[] asm("gUnk_03003DC4");
extern u8 gImgB2F8[] asm("gUnk_084A3E40");
extern void *gDataB2F8 asm("gUnk_030034E0");
extern u8 *gStateB2F8 asm("gUnk_03005CF4");

void setupB2F8(void *, void *, s32) asm("sub_0801623C");
void initResB2F8(void *) asm("sub_08019F60");
void a0A4B2F8(void *) asm("sub_0801A0A4");
u16 tileB2F8(u16, u16) asm("sub_08016E04");
s32 animInitB2F8(void *, s32, s32, s32, s32) asm("sub_08065158");
s32 modeB2F8(void) asm("sub_0800CE30");
void tickB2F8(void *) asm("sub_0801C8F0");
s32 rndB2F8(s32) asm("sub_08096594");
u8 reachB2F8(void *, void *, s32, s32) asm("sub_08097A74");
void sfxB2F8(s32) asm("sub_0805865C");
void sfxStopB2F8(s32) asm("sub_0805867C");
s32 faceB2F8(void *, u8) asm("sub_08095F10");
void endB2F8(s32) asm("sub_08097A38");
u8 projStartB2F8(void) asm("sub_080AC5B4");
void projTickB2F8(u8) asm("sub_080AC214");
u8 projNextB2F8(u8) asm("sub_080AC2E8");
u8 moveB2F8(void *, u32, u32, s32, s32, s32) asm("sub_08097AC0");
void loadPalB2F8(u32, void *, u32) asm("sub_08000AF0");
u8 bgFlagB2F8(void) asm("sub_08098004");
u8 bgPrioB2F8(void) asm("sub_08097FF8");
u8 prioB2F8(s32, s32, s32) asm("sub_0800BC44");
u16 animB2F8(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
u32 projB2F8(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
s32 drawB2F8(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
void dmgB2F8(void *, s32, s16) asm("sub_0801A120");
s16 deadB2F8(void *) asm("sub_08019CE8");
s32 freeB2F8(u16) asm("sub_08067CA8");
s32 waitB2F8(s32) asm("sub_08068330");
s32 readyB2F8(s32) asm("sub_080682B8");
void nextB2F8(s32) asm("sub_08065E38");
s32 msgEndB2F8(s32) asm("sub_080586B4");
s32 flagB2F8(s32) asm("sub_08057C34");
u32 setFlagB2F8(s32) asm("sub_08057C6C");
void songB2F8(s32) asm("m4aSongNumStart");
s32 boxB2F8(s32, s32, s32, s32, s32, s32) asm("sub_0805DF38");
s32 boxDoneB2F8(s32) asm("sub_0805EEFC");
s32 dropFxB2F8(void *, void *) asm("sub_0801E46C");
void fallB2F8(void *, s32) asm("sub_0806171C");
s32 dropEndB2F8(void *, s32) asm("sub_0801E4CC");

void sub_080AB2F8_v(struct ActB2F8 *a) asm("sub_080AB2F8");
/* [RunChargeContactActorEncounter] Initializes template/team, allocates palette once and waits unchanged
 * sentinel unless abort clears actor bit. Uses resources0x5001D/0x5001E, scales stats, resets peer history and
 * waits link barrier. State machine chases selected player, waits mode-specific threshold, snapshots target
 * for charge at0x480, or cycles aim/contact helpers; alternates animations/shadow and hit display until death
 * or scene exit. */
void sub_080AB2F8_v(struct ActB2F8 *a)
{
    struct AnimB2F8 anim[2];
    s16 sx, sy;
    struct ResB2F8 *res;
    u32 tx, ty;
    s32 lastHit;
    u32 range;
    s32 animState;
    u16 lastAnim;
    s32 flag;
    u16 flash;
    u16 hitTimer;
    u32 limit;
    u32 lim;
    u16 counter;
    u16 cnt7;
    u16 frame;
    s32 shadow;
    s16 shake;
    u8 blink;
    u8 rounds;
    u8 proj;
    s32 done;
    struct AnimB2F8 *sl;
    u8 prio;
    s16 i, j;
    s32 h;
    struct PlB2F8 *pl;

    gActB2F8 = a;
    res = (struct ResB2F8 *)a->res;
    setupB2F8(a, gImgB2F8, 0);
    initResB2F8(res);
    a0A4B2F8(gActB2F8);
    { u16 *tp = &gTileB2F8; *tp = tileB2F8(a->f2D8, a->f2DA); }
    while (gTileB2F8 == 0xFFFF) {
        gActB2F8->fC = 11;
        if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
            gMaskB2F8 &= ~(1 << gActB2F8->f0);
            return;
        }
        sub_080003F0();
    }
    animInitB2F8(&anim[0], 0x5001D, gTileB2F8, -1, 1);
    animInitB2F8(&anim[1], 0x5001E, gTileB2F8, -1, 1);
    {
        struct ActB2F8 *g = gActB2F8;
        g->f5C = g->f1D6 = res->f6 * 3;
        { s32 t = res->f4 * 2; g->f5E = g->f1D4 = ((res->f4 << 3) + t) * 2; }
        g->f6C = 0;
        g->f6A = 0;
        g->f68 = 0;
        g->fC = 0;
    }
    lim = 0x78;
    animState = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    hitTimer = 0;
    proj = 0;
    blink = 0;
    rounds = 0;
    counter = 0;
    if (modeB2F8() == 1) {
        range = 0x100;
        limit = 0x78;
    } else {
        range = 0x80;
        limit = 0xB4;
    }
    gActB2F8->f1FD = 2;
    gActB2F8->f1FE = 2;
    gActB2F8->f50 = 1;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(s32 *)((u8 *)gHistB2F8 + j * 4 + i * 0x14C) = 0;
    sub_08097FE4();
    sub_08097A4C();
    done = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (a->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tickB2F8(gActB2F8);
            switch (gActB2F8->f1FD) {
            case 1:
                a->fC = 0;
                if (sub_08067C08() != 0) {
                    gActB2F8->f1FD = gActB2F8->f1FE;
                    sub_08067BF8();
                }
                break;
            case 2:
                animState = 0;
                if (sub_08056F78() != 0) {
                    gActB2F8->f1FE = 3;
                    gActB2F8->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 3:
                animState = 1;
                gActB2F8->fC = 1;
                pl = &gPlB2F8[rndB2F8(0)];
                if (reachB2F8(gActB2F8, pl, range, 0x40) != 0) {
                    if (limit < counter++) {
                        counter = 0;
                        if (rounds != 0) {
                            frame = 0;
                            sfxB2F8(0xB9);
                            gActB2F8->f1FE = 4;
                            gActB2F8->f1FD = 1;
                            sub_08067C18();
                            endB2F8(0);
                        } else {
                            frame = 0;
                            sfxB2F8(0xB9);
                            gActB2F8->f1FE = 6;
                            gActB2F8->f1FD = 1;
                            sub_08067C18();
                            endB2F8(0);
                        }
                    }
                } else {
                    frame = 0;
                    sfxB2F8(0xB9);
                    gActB2F8->f1FE = 6;
                    gActB2F8->f1FD = 1;
                    sub_08067C18();
                    endB2F8(0);
                }
                break;
            case 4:
                animState = 2;
                gActB2F8->fC = 2;
                gActB2F8->f1FC_hi = rndB2F8(0);
                {
                    struct ActB2F8 *g = gActB2F8;
                    pl = &gPlB2F8[g->f1FC_hi];
                    faceB2F8(g, g->f1FC_hi);
                }
                tx = pl->f148[0] >> 4;
                ty = (u32)(pl->f148[1] << 20) >> 20;
                gActB2F8->f68 = gActB2F8->f8;
                flag = 0;
                if (frame++ > 0x1E) {
                    frame = 0;
                    endB2F8(0);
                    gActB2F8->f1FE = 5;
                    gActB2F8->f1FD = 1;
                    sub_08067C18();
                    sfxB2F8(0xBA);
                }
                break;
            case 5:
                animState = 2;
                gActB2F8->fC = animState;
                if (frame++ > 0xB4) {
                    proj = 0;
                    frame = 0;
                    gActB2F8->f1FE = 8;
                    gActB2F8->f1FD = 1;
                    sub_08067C18();
                    cnt7 = 0;
                } else {
                    if (proj == 0)
                        proj = projStartB2F8();
                    if (moveB2F8(gActB2F8, tx, ty, 0x480, 8, 1) == 0) {
                        proj = 0;
                        frame = 0;
                        gActB2F8->f1FE = 8;
                        gActB2F8->f1FD = 1;
                        sub_08067C18();
                        cnt7 = 0;
                    }
                }
                gActB2F8->f68 = gActB2F8->f8;
                flag = 0;
                break;
            case 6:
                animState = 2;
                {
                    struct ActB2F8 *g = gActB2F8;
                    g->fC = 2;
                    g->f68 = 9;
                    flag = 0;
                    if (frame++ > 0x28) {
                        frame = 0;
                        g->f1FE = 7;
                        gActB2F8->f1FD = 1;
                        sub_08067C18();
                        sfxB2F8(0xC2);
                    }
                }
                break;
            case 7:
                animState = 2;
                {
                    struct ActB2F8 *g = gActB2F8;
                    g->fC = 2;
                    g->f68 = 10;
                }
                flag = 1;
                projTickB2F8(proj);
                proj = projNextB2F8(proj);
                if (frame++ > 0xB4) {
                    struct ActB2F8 *g;
                    proj = 0;
                    frame = 0;
                    g = gActB2F8;
                    g->f68 = 0xB;
                    g->f1FE = 8;
                    gActB2F8->f1FD = flag;
                    sub_08067C18();
                    cnt7 = 0;
                    sfxStopB2F8(0xC2);
                }
                break;
            case 8:
                animState = 0;
                {
                    struct ActB2F8 *g = gActB2F8;
                    g->fC = animState;
                    if (lim < cnt7++) {
                        rounds++;
                        g->f1FD = 1;
                        gActB2F8->f1FE = 3;
                        sub_08067C18();
                    }
                }
                break;
            }
        }
        switch (animState) {
        case 0:
            sl = &anim[0];
            gActB2F8->f68 = gActB2F8->f8;
            flag = 1;
            shadow = 0x18;
            break;
        case 1:
            sl = &anim[0];
            gActB2F8->f68 = gActB2F8->f8 + 8;
            flag = 1;
            shadow = 0x18;
            break;
        case 2:
            sl = &anim[1];
            shadow = 8;
            break;
        }
        {
            struct ActB2F8 *g = gActB2F8;
            if (lastAnim != g->f68) {
                lastAnim = g->f68;
                g->f6C = 0;
                g->f6A = 0;
            }
        }
        sl->f1C = gTileB2F8;
        if (bgFlagB2F8() & 1)
            prio = bgPrioB2F8();
        else
            prio = prioB2F8(gActB2F8->f14 >> 8, gActB2F8->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            gActB2F8->f6E = animB2F8(sl, gActB2F8->f68, &gActB2F8->f6A, &gActB2F8->f6C, flag);
        projB2F8((s16)(gActB2F8->f14 >> 8), (s16)(gActB2F8->f18 >> 8), &sx, &sy, 0, 0);
        loadPalB2F8(gTileB2F8 + 0x10, sl->fC + res->fD6 * 32, 1);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
                drawB2F8(sx, sy, gActB2F8->f68, gActB2F8->f6A, prio, &sl->f1C, sl->f8, sl->f0);
                drawB2F8(sx, sy - 1, shadow, 0, prio, &sl->f1C, sl->f8, sl->f0);
            }
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawB2F8(sx, sy, gActB2F8->f68, gActB2F8->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            if (blink-- & 1)
                drawB2F8(sx, sy - 1, shadow, 0, prio, &sl->f1C, sl->f8, sl->f0);
        }
        if (gActB2F8->f4C != 0 && lastHit != gActB2F8->f4C) {
            lastHit = a->f4C;
            hitTimer = 10;
            shake = 0;
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmgB2F8(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = hitTimer;
        }
        if (deadB2F8(a) != 0)
            done = 1;
        sub_080003F0();
        if (done)
            break;
    }

    sfxStopB2F8(0xC2);
    gPlB2F8[sub_080020F4()].flags |= 1;
    sl = &anim[0];
    sl->f1C = gTileB2F8;
    {
        struct ActB2F8 *g = gActB2F8;
        g->f6C = 0;
        g->f6A = 0;
        g->f68 = 0;
    }
    shake = 0;
    hitTimer = 10;
    do {
        gPlB2F8[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            gActB2F8->f6E = animB2F8(sl, 0, &gActB2F8->f6A, &gActB2F8->f6C, 1);
            loadPalB2F8(gTileB2F8 + 0x10, sl->fC + res->fD6 * 32, 1);
            prio = prioB2F8(gActB2F8->f14 >> 8, gActB2F8->f18 >> 8, 0);
            projB2F8((s16)(gActB2F8->f14 >> 8), (s16)(gActB2F8->f18 >> 8), &sx, &sy, 0, 0);
            drawB2F8(sx, sy, 0, gActB2F8->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            dmgB2F8(a, lastHit, shake);
        }
        if (hitTimer & 2)
            shake--;
        sub_080003F0();
        hitTimer--;
    } while (hitTimer != 0xFFFF);
    sub_080683CC();
    freeB2F8(gActB2F8->f2);
    waitB2F8(0xDEADFACE);
    while (readyB2F8(0xDEADFACE) == 0) {
        gPlB2F8[sub_080020F4()].flags |= 1;
        gActB2F8->f6E = animB2F8(sl, 0, &gActB2F8->f6A, &gActB2F8->f6C, 1);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            loadPalB2F8(gTileB2F8 + 0x10, sl->fC + res->fD6 * 32, 1);
            prio = prioB2F8(gActB2F8->f14 >> 8, gActB2F8->f18 >> 8, 0);
            projB2F8((s16)(gActB2F8->f14 >> 8), (s16)(gActB2F8->f18 >> 8), &sx, &sy, 0, 0);
            drawB2F8(sx, sy, 0, gActB2F8->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    nextB2F8(0xDEADFACE);
    while (sub_08058DB0() != 0) {
        gPlB2F8[sub_080020F4()].flags |= 1;
        gActB2F8->f6E = animB2F8(sl, 0, &gActB2F8->f6A, &gActB2F8->f6C, 1);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            loadPalB2F8(gTileB2F8 + 0x10, sl->fC + res->fD6 * 32, 1);
            prio = prioB2F8(gActB2F8->f14 >> 8, gActB2F8->f18 >> 8, 0);
            projB2F8((s16)(gActB2F8->f14 >> 8), (s16)(gActB2F8->f18 >> 8), &sx, &sy, 0, 0);
            drawB2F8(sx, sy, 0, gActB2F8->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    msgEndB2F8(0);
    gPlB2F8[sub_080020F4()].flags |= 1;
    if (flagB2F8(6) != 0 && flagB2F8(0x16) == 0)
        *(s32 *)(gStateB2F8 + 0x720) = boxB2F8(1, 0xE, 0x19, 2, 0x3C, 0x140060);
    else
        *(s32 *)(gStateB2F8 + 0x720) = boxB2F8(1, 0xE, 0x19, 2, 0x3C, 0x140058);
    while (boxDoneB2F8(*(s32 *)(gStateB2F8 + 0x720)) == 0) {
        gPlB2F8[sub_080020F4()].flags |= 1;
        if (sub_0800CD8C() == 0)
            gActB2F8->f6E = animB2F8(sl, 0, &gActB2F8->f6A, &gActB2F8->f6C, 1);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            loadPalB2F8(gTileB2F8 + 0x10, sl->fC + res->fD6 * 32, 1);
            prio = prioB2F8(gActB2F8->f14 >> 8, gActB2F8->f18 >> 8, 0);
            projB2F8((s16)(gActB2F8->f14 >> 8), (s16)(gActB2F8->f18 >> 8), &sx, &sy, 0, 0);
            drawB2F8(sx, sy, 0, gActB2F8->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    gPlB2F8[sub_080020F4()].flags &= ~1;
    if (flagB2F8(6) != 0 && flagB2F8(0x16) == 0) {
        setFlagB2F8(0x16);
        songB2F8(0x32);
    }
    flash = 0x14;
    do {
        if (sub_0800CD8C() == 0)
            gActB2F8->f6E = animB2F8(sl, 0, &gActB2F8->f6A, &gActB2F8->f6C, 1);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            loadPalB2F8(gTileB2F8 + 0x10, sl->fC + res->fD6 * 32, 1);
            prio = prioB2F8(gActB2F8->f14 >> 8, gActB2F8->f18 >> 8, 0);
            projB2F8((s16)(gActB2F8->f14 >> 8), (s16)(gActB2F8->f18 >> 8), &sx, &sy, 0, 0);
            if (flash & 1)
                drawB2F8(sx, sy, 0, gActB2F8->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
        flash--;
    } while (flash != 0xFFFF);
    if (!(gPlB2F8[sub_080020F4()].flags & 0x2000) && gActB2F8->f5A != 0) {
        h = dropFxB2F8(gDataB2F8, res);
        shake = 0x1D;
        do {
            gActB2F8->f18 -= 0x20;
            fallB2F8(gActB2F8, h);
            sub_080003F0();
            shake--;
        } while (shake != -1);
        dropEndB2F8(gDataB2F8, h);
    }
    sub_08056E24();
}
struct P113214 { u8 pad0[0x20]; u16 state; u8 pad22[14]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x34]; u16 c8,ca,cc; u8 padce[0x7e]; };
extern struct P113214 p113214[] asm("gUnk_03003CE0");
extern s32 *obj113214 asm("gUnk_03000434");
extern u8 angle113214(s32,s32,s32,s32) asm("sub_08095FC8");
/* [AimPlayerAtGlobalObject] Returns unless the low argument byte is zero and the selected player passes
 * state/flag/active checks; aims from player to global object and writes direction, magnitude 0x200 and
 * counter 1. */
void sub_080AC214(s32 arg0)
{
    struct P113214 *base;
    s32 i, x;
    register s32 offset asm("r0");
    u32 *flags;
    s32 *coord;
    if ((arg0 << 24) != 0) return;
    base = p113214;
    if (base[sub_080020F4()].state == 11) return;
    if (base[sub_080020F4()].state == 14) return;
    if (base[sub_080020F4()].state == 12) return;
    offset = 0x14C * sub_080020F4();
    flags = &base->flags; 
    if (*(u32 *)(offset + (u32)flags) & 0x2000) return;
    if (base[sub_080020F4()].active == 0) return;
    i = sub_080020F4();
    offset = 0x14C * sub_080020F4();
    coord = &base->x; 
    x = *(s32 *)(offset + (u32)coord) >> 8;
    offset = 0x14C * sub_080020F4();
    coord = &base->y; 
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
/* [QueryOrApplyAdjustedContact] Nonzero byte input returns whether selected-player counter 0xC8 is nonzero
 * after computing geometry, without applying a hit; zero input tests distance 47 with side-dependent vertical
 * adjustment and pause/lifecycle/serial gates, applies hit and outward magnitude 0x200/counter 16,
 * records/increments serial and returns one. Rejected zero-input paths return zero. */
s32 sub_080AC2E8(u8 arg0) {
    u32 sp0;
    u32 arg;
    u16 dy;
    u32 dyword;
    s16 dxSigned,dySigned;
    struct O1132 *source;
    struct O1132 *firstSource;
    s32 *yp;
    struct P1132 *base;
    s32 stride;
    register u32 indexWord asm("r1");
    struct O1132 *object;
    u32 *slot;
    struct P1132 *tail;
    struct O1132 **obj;
    register s32 idx asm("r0");
    s32 value;
    register s32 hitValue asm("r0");
    struct O1132 **initialObj;
    register struct P1132 *initialBase asm("r4");
    s32 initialStride;
    u32 boolValue;
    u32 fraction;
    u32 half;
    u32 one;
    u32 *history;
    s32 *xp;
    register s32 off asm("r0");
    u32 *fp;
    s16 *var_r0;
    s16 temp_r1;
    s16 temp_r4_2;
    register s32 var_r1 asm("r1");
    s32 temp_r0;
    s32 temp_r5;
    u32 temp_r0_2;
    u32 temp_r4;
    u32 temp_r4_4;
    u32 var_r4;
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
    
    indexWord += angle;
    
    angle = firstSource->unk14;
    indexWord = *(u32 *)indexWord;
    angle = (u32)((angle - indexWord) << 8) >> 16;
    
    temp_r4_4 = angle;
    idx = sub_080020F4();
    source = *initialObj;
    indexWord = source->unk18 >> 8;
    off = idx * initialStride;
    
    yp = &initialBase->unk90;
    value = (*(s32 *)(off + (u32)yp) >> 8) + 16;
    
    indexWord -= value;
    indexWord <<= 16;
    
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
        
        indexWord += off;
        history = base->unkE4;
        
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
        
        indexWord += off;
        slot = (u32 *)(indexWord + (u32)history);
        
        temp_r0 = object->unk50;
        *slot = temp_r0;
        object->unk50 = temp_r0 + 1;
        

        off = sub_080020F4() * stride;
        fp = (u32 *)&base->unk8C;
        
        temp_r4_4 = (u32)((*(s32 *)(off + (u32)fp) - (*obj)->unk14) << 8) >> 16;
        off = sub_080020F4() * stride;
        fp = (u32 *)&base->unk90;
        
        temp_r1 = (s32)((*(s32 *)(off + (u32)fp) - (*obj)->unk18) << 8) >> 16;
        angle = atan1132((s16)temp_r4_4, temp_r1) << 16;
        
        fraction = angle << 3;
        var_r4 = angle >> 29;
        
        half = 0x80000000;
        
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
                
                var_r0 = (s16 *)(idx * 0x14C + (u32)tail);
                var_r1 = var_r4 - 2;
                var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); 
            }
            goto storeDirection;
        }
direction0:
        idx = sub_080020F4(); tail = players1132; 
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 6;
        
        goto storeDirection;
direction1:
        idx = sub_080020F4(); tail = players1132; 
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 7;
        
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
/* [ApplyDoubleContactPlayerHit] Tests distance 39 using a vertically offset player position and
 * pause/lifecycle/serial gates; writes state 10 and marker, adds twice the hit helper result,
 * records/increments serial, applies outward direction with magnitude 0x400/counter 22 and plays sound 0xBB.
 * Returns one for application, otherwise zero. */
s32 sub_080AC5B4(void) {
    volatile s32 sp0;
    struct P1135 *base;
    s32 stride;
    u32 indexWord;
    struct O1135 *object;
    u32 *slot;
    struct P1135 *tail;
    struct O1135 **obj;
    register s32 idx asm("r0");
    s32 value;
    u32 fraction;
    u32 half;
    register u32 one asm("r2");
    register u32 *history asm("r9");
    s32 *xp;
    register s32 off asm("r0");
    u32 *fp;
    s16 *var_r0;
    s16 temp_r1;
    s16 temp_r4_2;
    register s32 var_r1 asm("r1");
    s32 temp_r0;
    s32 temp_r5;
    u32 temp_r0_2;
    u32 temp_r4;
    register u32 temp_r4_4 asm("r4");
    u32 var_r4;
    u32 angle;
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
        
        indexWord += off;
        history = base->unkE4;
        
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
        
        indexWord += off;
        slot = (u32 *)(indexWord + (u32)history);
        
        temp_r0 = object->unk50;
        *slot = temp_r0;
        object->unk50 = temp_r0 + 1;
        
        one = 1;  sp0 = one;
        temp_r4_4 = (u32) ((*(s32 *)((stride * sub_080020F4()) + (u32)xp) - (*obj)->unk14) << 8) >> 0x10;
        
        temp_r1 = (s32) ((*(s32 *)((stride * sub_080020F4()) + (u32)&y1135) - (*obj)->unk18) << 8) >> 0x10;
        temp_r4_4 = (s16)temp_r4_4;
        
        angle = atan1135(temp_r4_4, temp_r1) << 16;
        asm("" : "+r"(angle));
        fraction = angle << 3;
        var_r4 = angle >> 29;
        
        half = 0x80000000;
        
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
                
                var_r0 = (s16 *)(idx * 0x14C + (u32)tail);
                var_r1 = var_r4 - 2;
                var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); 
            }
            goto storeDirection;
        }
direction0:
        idx = sub_080020F4(); tail = players1135; 
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 6;
        
        goto storeDirection;
direction1:
        idx = sub_080020F4(); tail = players1135; 
        var_r0 = (s16 *)(idx * 0x14C + (u32)tail); var_r0 = (s16 *)((u8 *)var_r0 + 0xCA); var_r1 = 7;
        
storeDirection:
        *var_r0 = var_r1;
        players1135[sub_080020F4()].unkCC = 0x400;
        players1135[sub_080020F4()].unkC8 = 0x16;
        sub_0805865C(0xBB);
    }
done:
    return sp0;
}




/* [CleanupPairedSpriteEnemyEncounter] Exact target body. */
void sub_080AC81C(void)
{
    sub_0805867C(0xC2);
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000438);
}
struct ResC844 { u8 p0[4]; s16 f4, f6; u8 p8[0xCE]; u16 fD6; };
struct ActC844 {
    u16 f0, f2;
    u8 p4[4];
    u16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x30];
    s32 f4C, f50;
    u8 p54[6];
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[8];
    u16 f68, f6A, f6C, f6E;
    u8 p70[0x164];
    s16 f1D4, f1D6;
    u8 p1d8[0x24];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 f200, p201;
    u16 f202;
    u8 res[0xD4];
    u16 f2D8, f2DA;
};
struct SprC844 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; };
struct PosC844 { s32 x, y; };
struct PlC844 { u8 p0[0x30]; u32 flags; u8 p34[0x118]; };

extern struct ActC844 *gCurC844 asm("gUnk_03000440");
extern struct ActC844 *gActsC844[] asm("gUnk_03000448");
extern struct SprC844 gSprC844 asm("gUnk_03000458");
extern struct PosC844 gPosC844[] asm("gUnk_03000490");
extern u8 gDirC844[] asm("gUnk_030004B8");
extern u16 gTileC844 asm("gUnk_030004BE");
extern u8 gC0C844 asm("gUnk_030004C0");
extern u8 gC1C844 asm("gUnk_030004C1");
extern u8 gStateC844[] asm("gUnk_030004C4");
extern u32 gMaskC844 asm("gUnk_030056FC");
extern u8 gHistC844[] asm("gUnk_03003DC4");
extern struct PlC844 gPlC844[] asm("gUnk_03003CE0");
extern u8 gImgC844[] asm("gUnk_084A4C40");
extern void *gDataC844 asm("gUnk_030034E0");

void setupC844(void *, void *, s32) asm("sub_0801623C");
void initResC844(void *) asm("sub_08019F60");
void showC844(void *) asm("sub_0801A0A4");
void hideC844(void *) asm("sub_0801A0B0");
u16 tileC844(u16, u16) asm("sub_08016E04");
s32 animInitC844(void *, s32, s32, s32, s32) asm("sub_08065158");
void pathInitC844(void) asm("sub_080AE0B8");
void pathSlotC844(s32) asm("sub_080AE11C");
void pathEndC844(void) asm("sub_080AE0E4");
void tickC844(void *) asm("sub_0801C8F0");
s16 moveC844(void *, s32) asm("sub_08095B04");
void sfxC844(s32) asm("sub_0805865C");
void loadPalC844(u32, void *, u32) asm("sub_08000AF0");
u8 bgFlagC844(void) asm("sub_08098004");
u8 bgPrioC844(void) asm("sub_08097FF8");
u8 prioC844(s32, s32, s32) asm("sub_0800BC44");
u16 animC844(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
u32 projC844(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
s32 drawC844(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
u8 touchC844(void *) asm("sub_080ADE30");
void dmgC844(void *, s32, s16) asm("sub_0801A120");
s16 deadC844(void *) asm("sub_08019CE8");
s32 freeC844(u16) asm("sub_08067CA8");
s32 waitC844(s32) asm("sub_08068330");
s32 readyC844(s32) asm("sub_080682B8");
void nextC844(s32) asm("sub_08065E38");
s32 msgEndC844(s32) asm("sub_080586B4");
s32 dropFxC844(void *, void *) asm("sub_0801E46C");
void fallC844(void *, s32) asm("sub_0806171C");
s32 dropEndC844(void *, s32) asm("sub_0801E4CC");

void sub_080AC844_v(struct ActC844 *a) asm("sub_080AC844");
/* [RunSegmentedPathEncounterActor] Initializes four following segment tasks and shared position/direction
 * samples, moves the main actor at parameter 0x240, alternates movement with synchronized segment state-byte
 * phases 1/2/0 and toggles main collision by active mask. Tests contact hits with a thirty-step cooldown;
 * allocation-wait termination returns after mask clearing, while normal death/termination cleans segments,
 * synchronizes, blinks, conditionally computes and grants defeat experience and requests transition. */
void sub_080AC844_v(struct ActC844 *a)
{
    u8 unused[0x34];
    s16 sx, sy;
    struct ResC844 *res;
    s32 lastHit;
    u16 flash;
    u16 hitTimer;
    s16 shake;
    u8 cnt;
    u8 hitCd;
    s32 done;
    s32 prio;
    s16 i, j;
    u16 mode;
    s32 h;

    gCurC844 = a;
    res = (struct ResC844 *)a->res;
    setupC844(a, gImgC844, 0);
    initResC844(res);
    showC844(a);
    { u16 *tp = &gTileC844; *tp = tileC844(a->f2D8, a->f2DA); }
    while (gTileC844 == 0xFFFF) {
        a->fC = 11;
        if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
            gMaskC844 &= ~(1 << a->f0);
            return;
        }
        sub_080003F0();
    }
    animInitC844(&gSprC844, 0x5001F, gTileC844, -1, 1);
    a->f5C = a->f1D6 = res->f6 * 3;
    { s32 t = res->f4 * 2; a->f5E = a->f1D4 = ((res->f4 << 3) + t) * 2; }
    a->f6C = 0;
    a->f6A = 0;
    a->f68 = 0;
    a->fC = 0;
    flash = 0;
    hitTimer = 0;
    a->f50 = 1;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(s32 *)(gHistC844 + j * 4 + i * 0x14C) = 0;
    gPosC844[0].x = a->f14 >> 8;
    gPosC844[0].y = (a->f18 >> 8) + 0x10;
    gDirC844[0] = 0;
    for (i = 1; i <= 4; i++) {
        gPosC844[i].x = gPosC844[i - 1].x;
        gPosC844[i].y = gPosC844[i - 1].y - 0x10;
        gDirC844[i] = 0;
    }
    pathInitC844();
    pathSlotC844(0);
    pathSlotC844(1);
    pathSlotC844(2);
    pathSlotC844(3);
    sub_08097FE4();
    sub_08097A4C();
    a->f8 = 1;
    a->f1FD = 2;
    a->f1FE = 2;
    cnt = 0;
    gC0C844 = 0;
    gC1C844 = 0;
    hitCd = 0;
    a->f1FC_lo = a->f0;
    a->f202 = a->f2;
    a->f200 = 0xFF;
    done = 0;
    a->f8 = 1;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (gMaskC844 == 1)
            showC844(a);
        else
            hideC844(a);
        if (a->fC == 10 && flash == 0) {
            gC0C844 = 1;
            flash = 8;
        }
        if (sub_08058DB0() == 0) {
            tickC844(a);
            switch (a->f1FD) {
            case 1:
                a->fC = 0;
                if (sub_08067C08() != 0) {
                    a->f1FD = a->f1FE;
                    sub_08067BF8();
                }
                break;
            case 2:
                if (sub_08056F78() != 0) {
                    a->f1FE = 5;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 5:
                mode = 2;
                a->fC = mode;
                if (gC1C844 != 0) {
                    if (--gC1C844 == 0) {
                        j = 0;
                        for (i = 1; i <= 4; i++)
                            if (gMaskC844 & (1 << i))
                                j++;
                        if (j != 0)
                            for (i = 0; i <= 3; i++)
                                gActsC844[i]->f1FD = 8;
                        gC1C844 = 0;
                        a->f1FE = 8;
                        a->f1FD = 1;
                        sub_08067C18();
                    }
                } else {
                    if (moveC844(a, 0x240) != 0) {
                        if (gC0C844 <= 5)
                            gC0C844++;
                        else {
                            gC0C844 = 0;
                            { u32 m = gMaskC844; if (m != 1) m = 0x5A; gC1C844 = m; }
                        }
                    }
                    if (cnt++ > 0x3C) {
                        cnt = 0;
                        sfxC844(0xE9);
                    }
                }
                break;
            case 8:
                j = 0;
                for (i = 1; i <= 4; i++)
                    if (gMaskC844 & (1 << i))
                        j++;
                if (j == 0)
                    goto set5;
                for (i = 0; i < j; i++)
                    if (gStateC844[i] != 1)
                        goto out;
                a->f1FE = 9;
                goto set;
            case 9:
                j = 0;
                for (i = 1; i <= 4; i++)
                    if (gMaskC844 & (1 << i))
                        j++;
                if (j == 0)
                    goto set5;
                for (i = 0; i < j; i++)
                    if (gStateC844[i] != 2)
                        goto out;
                a->f1FE = 10;
                goto set;
            set5:
                a->f1FE = 5;
            set:
                a->f1FD = 1;
                sub_08067C18();
                break;
            case 10:
                j = 0;
                for (i = 1; i <= 4; i++)
                    if (gMaskC844 & (1 << i))
                        j++;
                if (j != 0)
                    for (i = 0; i < j; i++)
                        if (gStateC844[i] != 0)
                            goto out;
                a->f1FE = 5;
                a->f1FD = 1;
                sub_08067C18();
                break;
            }
        }
    out:
        a->f68 = a->f8;
        gPosC844[0].x = a->f14 >> 8;
        gPosC844[0].y = a->f18 >> 8;
        gDirC844[0] = a->f8;
        switch ((s16)a->f8) {
        case 0:
            break;
        case 1:
            gPosC844[0].x += 4;
            gPosC844[0].y += 4;
            break;
        case 2:
            gPosC844[0].x += 14;
            gPosC844[0].y += 8;
            break;
        case 3:
            gPosC844[0].x += 14;
            gPosC844[0].y += 16;
            break;
        case 4:
            gPosC844[0].y += 16;
            break;
        case 5:
            gPosC844[0].x -= 14;
            gPosC844[0].y += 16;
            break;
        case 6:
            gPosC844[0].x -= 14;
            gPosC844[0].y += 8;
            break;
        case 7:
            gPosC844[0].x -= 4;
            gPosC844[0].y += 4;
            break;
        }
        loadPalC844(gTileC844 + 0x10, gSprC844.fC + res->fD6 * 32, 1);
        if (bgFlagC844() & 1)
            prio = bgPrioC844();
        else
            prio = prioC844(gPosC844[0].x >> 8, gPosC844[0].y >> 8, 0);
        gSprC844.f1C = gTileC844;
        if (sub_0800CD8C() == 0)
            a->f6E = animC844(&gSprC844, a->f68, &a->f6A, &a->f6C, 1);
        projC844((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                drawC844(sx, sy, a->f68, a->f6A, prio, &gSprC844.f1C, gSprC844.f8, gSprC844.f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawC844(sx, sy, a->f68, a->f6A, prio, &gSprC844.f1C, gSprC844.f8, gSprC844.f0);
        }
        if (hitCd != 0)
            hitCd--;
        else if (touchC844(a) != 0)
            hitCd = 0x1E;
        {
            s32 hh = a->f4C;
            if (hh != 0 && lastHit != hh) {
                lastHit = hh;
                hitTimer = 10;
                shake = 0;
            }
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmgC844(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = hitTimer;
        }
        if (deadC844(a) != 0)
            done = 1;
        sub_080003F0();
        if (done)
            break;
    }

    gMaskC844 = 0;
    pathEndC844();
    shake = 0;
    hitTimer = 10;
    do {
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            gSprC844.f1C = gTileC844;
            loadPalC844(gTileC844 + 0x10, gSprC844.fC + res->fD6 * 32, 1);
            prio = prioC844(gPosC844[0].x >> 8, gPosC844[0].y >> 8, 0);
            a->f6E = animC844(&gSprC844, a->f68, &a->f6A, &a->f6C, 1);
            projC844((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
            if (hitTimer & 1)
                drawC844(sx, sy, a->f68, a->f6A, prio, &gSprC844.f1C, gSprC844.f8, gSprC844.f0);
            dmgC844(a, lastHit, shake);
        }
        if (hitTimer & 2)
            shake--;
        sub_080003F0();
        hitTimer--;
    } while (hitTimer != 0xFFFF);
    sub_080683CC();
    freeC844(a->f2);
    waitC844(0xDEADFACE);
    while (readyC844(0xDEADFACE) == 0) {
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            gSprC844.f1C = gTileC844;
            loadPalC844(gTileC844 + 0x10, gSprC844.fC + res->fD6 * 32, 1);
            prio = prioC844(gPosC844[0].x >> 8, gPosC844[0].y >> 8, 0);
            a->f6E = animC844(&gSprC844, a->f68, &a->f6A, &a->f6C, 1);
            projC844((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
            if (flash & 1)
                drawC844(sx, sy, a->f68, a->f6A, prio, &gSprC844.f1C, gSprC844.f8, gSprC844.f0);
        }
        sub_080003F0();
    }
    nextC844(0xDEADFACE);
    while (sub_08058DB0() != 0) {
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            gSprC844.f1C = gTileC844;
            loadPalC844(gTileC844 + 0x10, gSprC844.fC + res->fD6 * 32, 1);
            prio = prioC844(gPosC844[0].x >> 8, gPosC844[0].y >> 8, 0);
            a->f6E = animC844(&gSprC844, a->f68, &a->f6A, &a->f6C, 1);
            projC844((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
            if (flash & 1)
                drawC844(sx, sy, a->f68, a->f6A, prio, &gSprC844.f1C, gSprC844.f8, gSprC844.f0);
        }
        sub_080003F0();
    }
    msgEndC844(0);
    flash = 0x14;
    do {
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            gSprC844.f1C = gTileC844;
            loadPalC844(gTileC844 + 0x10, gSprC844.fC + res->fD6 * 32, 1);
            prio = prioC844(gPosC844[0].x >> 8, gPosC844[0].y >> 8, 0);
            a->f6E = animC844(&gSprC844, a->f68, &a->f6A, &a->f6C, 1);
            projC844((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
            if (flash & 1)
                drawC844(sx, sy, a->f68, a->f6A, prio, &gSprC844.f1C, gSprC844.f8, gSprC844.f0);
        }
        sub_080003F0();
        flash--;
    } while (flash != 0xFFFF);
    if (!(gPlC844[sub_080020F4()].flags & 0x2000) && gCurC844->f5A != 0) {
        h = dropFxC844(gDataC844, res);
        shake = 0x1D;
        do {
            gCurC844->f18 -= 0x20;
            fallC844(gCurC844, h);
            sub_080003F0();
            shake--;
        } while (shake != -1);
        dropEndC844(gDataC844, h);
    }
    sub_08056E24();
}
struct ResAD534 { u8 p0[4]; s16 f4, f6; };
struct ActorAD534 {
    u16 f0, f2;
    u8 p4[4];
    u16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x2E];
    u16 f4A;
    s32 f4C, f50, f54;
    u8 p58[2];
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[0xA];
    u16 f6A, f6C, f6E;
    u8 p70[0x164];
    s16 f1D4, f1D6;
    u8 p1d8[0x24];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 f200, p201;
    u16 f202;
    struct ResAD534 res;
};
struct SpriteAD534 { u32 f0, f4, f8; u16 *fC; u8 p10[12]; u8 f1C; };
struct PosAD534 { s32 x, y; };
struct E2E0AD534 { u8 b[0x2E0]; };
struct PlayerAD534 { u8 p0[0x30]; u32 flags; u8 p34[0x118]; };

extern struct ActorAD534 *actorsAD534[] asm("gUnk_03000448");
extern struct SpriteAD534 spriteAD534 asm("gUnk_03000458");
extern struct PosAD534 posAD534[] asm("gUnk_03000490");
extern u8 dirAD534[] asm("gUnk_030004B8");
extern u16 tileAD534 asm("gUnk_030004BE");
extern u8 stateAD534[] asm("gUnk_030004C4");
extern u8 *baseAD534 asm("gUnk_030056F4");
extern u32 maskAD534 asm("gUnk_030056FC");
extern u8 imageAD534[] asm("gUnk_084A4C40");
extern s16 sinAD534[] asm("gUnk_080B9704");
extern u16 angleAD534[] asm("gUnk_085186DC");
extern struct PlayerAD534 playersAD534[] asm("gUnk_03003CE0");
extern void *dataAD534 asm("gUnk_030034E0");

void setupAD534(void *, void *) asm("sub_0801623C");
void initResAD534(void *) asm("sub_08019F60");
void tickAD534(void *) asm("sub_0801C8F0");
u8 fadeAD534(u16 *, s32, u16, s32) asm("sub_08096E20");
s32 shakeAD534(void *, s32) asm("sub_08095B04");
void loadPalAD534(u16 *, u16 *) asm("sub_08097F70");
s32 moveAD534(void *, s32, s32, s32, s32, s32) asm("sub_08097AC0");
u32 projAD534(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
s32 drawAD534(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
u8 hitAD534(void *) asm("sub_080ADE30");
void dmgAD534(void *, s32, s32) asm("sub_0801A120");
s16 deadAD534(void *) asm("sub_08019CE8");
s32 freeAD534(u16) asm("sub_08067CA8");
void fallAD534(void *, s32) asm("sub_0806171C");

void sub_080AD534_v(u32 idx) asm("sub_080AD534");
/* [RunIndexedFollowingSegmentActor] Initializes low-byte-indexed actor slots and follows the preceding
 * position/direction sample, publishing its own sample for the next segment. Synchronizes fade/shake/fade
 * phases with state bytes, tests short contact hits on a thirty-step cooldown and renders damage feedback.
 * Death requests remote full-HP damage for its actor key, clears mask/state, sets predecessor team field to2
 * when index is nonzero, blinks and conditionally runs a experience-award sequence. */
void sub_080AD534_v(u32 idx)
{
    u16 pal[16];
    s16 sx, sy;
    struct ResAD534 *res;
    s32 lastHit;
    u16 hitTimer;
    u16 frame;
    s16 shake;
    s32 dir;
    u8 done;
    s32 running;
    u8 cooldown;
    u16 flash;
    u8 b;
    s32 cnt, i;
    u16 *t;
    struct PosAD534 *p;
    s32 h, hit;
    struct ActorAD534 *a;

    idx = (u8)idx;
    actorsAD534[idx] = (struct ActorAD534 *)&((struct E2E0AD534 *)baseAD534)[idx + 1];
    {
        u32 *m = &maskAD534;
        register u32 copy asm("r2") = idx;
        u32 bit;
        /* Preserve the stride calculation's index copy until the bit update. */
        asm("" : "+r"(m), "+r"(copy));
        bit = 1 << (copy + 1);
        *m = *m | bit;
    }
    setupAD534(actorsAD534[idx], imageAD534);
    res = &actorsAD534[idx]->res;
    initResAD534(res);
    if (idx == 3)
        sub_0801A0A4(actorsAD534[3]);
    else
        sub_0801A0B0(actorsAD534[idx]);
    a = actorsAD534[idx];
    a->f54 = 0;
    a->f4C = 0;
    a->f4A = 0;
    a->f6C = 0;
    a->f6A = 0;
    a->f8 = 0;
    actorsAD534[idx]->f0 = idx + 1;
    actorsAD534[idx]->f2 = actorsAD534[idx]->f0 + 4;
    actorsAD534[idx]->f50 = 1;
    { struct ActorAD534 *q = actorsAD534[idx]; q->f5C = q->f1D6 = res->f6 * 3; }
    { struct ActorAD534 *q = actorsAD534[idx]; s32 t = res->f4 * 2; q->f5E = q->f1D4 = ((res->f4 << 3) + t) * 2; }
    actorsAD534[idx]->f1FD = 0;
    actorsAD534[idx]->fC = 0;
    actorsAD534[idx]->f1FC_lo = actorsAD534[idx]->f0;
    actorsAD534[idx]->f202 = actorsAD534[idx]->f2;
    actorsAD534[idx]->f200 = 0xFF;
    frame = 0;
    done = 1;
    flash = 0;
    hitTimer = 0;
    cooldown = 0;
    actorsAD534[idx]->f14 = posAD534[idx + 1].x << 8;
    actorsAD534[idx]->f18 = posAD534[idx + 1].y << 8;
    loadPalAD534(pal, spriteAD534.fC);
    stateAD534[idx] = 0;
    running = 1;
    do {
        if (actorsAD534[idx]->fC == 10) {
            if (flash == 0)
                flash = 8;
            actorsAD534[idx]->fC = 2;
        }
        if (sub_08058DB0() == 0) {
            tickAD534(actorsAD534[idx]);
            switch (actorsAD534[idx]->f1FD) {
            case 0:
                actorsAD534[idx]->fC = 2;
                frame = 0;
                break;
            case 1:
                actorsAD534[idx]->fC = 0;
                if (sub_080682B8(actorsAD534[idx]->f0) != 0) {
                    actorsAD534[idx]->f1FD = actorsAD534[idx]->f1FE;
                    sub_08065E38(actorsAD534[idx]->f0);
                }
                break;
            case 8:
                sub_0801A0B0(actorsAD534[idx]);
                frame++;
                done = fadeAD534(pal, 4, frame, 0x3C);
                if (done != 0) {
                    actorsAD534[idx]->f8 = idx * 2 + 1;
                    stateAD534[idx] = 1;
                    frame = 0;
                    actorsAD534[idx]->f1FE = 9;
                    actorsAD534[idx]->f1FD = 1;
                    sub_08068330(actorsAD534[idx]->f0);
                }
                break;
            case 9:
                sub_0801A0B0(actorsAD534[idx]);
                shakeAD534(actorsAD534[idx], 0x300);
                if (frame++ > 300) {
                    frame = 0;
                    loadPalAD534(pal, spriteAD534.fC);
                    stateAD534[idx] = 2;
                    actorsAD534[idx]->f1FE = 10;
                    actorsAD534[idx]->f1FD = 1;
                    sub_08068330(actorsAD534[idx]->f0);
                }
                break;
            case 10:
                frame++;
                done = fadeAD534(pal, 4, frame, 0x3C);
                if (done != 0) {
                    s16 n, k;
                    frame = 0;
                    n = 0;
                    for (k = 1; k <= 4; k++) {
                        if (maskAD534 & (1 << k))
                            n++;
                    }
                    if (n - 1 == idx)
                        sub_0801A0A4(actorsAD534[idx]);
                    loadPalAD534(pal, spriteAD534.fC);
                    stateAD534[idx] = 0;
                    actorsAD534[idx]->f1FE = 0;
                    actorsAD534[idx]->f1FD = 1;
                    sub_08068330(actorsAD534[idx]->f0);
                }
                break;
            }
        }
        if (actorsAD534[idx]->f1FD == 0) {
            switch (dirAD534[idx]) {
            case 0: dir = 4; break;
            case 1: dir = 5; break;
            case 2: dir = 6; break;
            case 3: dir = 7; break;
            case 4: dir = 0; break;
            case 5: dir = 1; break;
            case 6: dir = 2; break;
            case 7: dir = 3; break;
            }
            { struct PosAD534 *pb = posAD534; p = &pb[idx]; }
            { s32 v = sinAD534[angleAD534[dir] + 0x40]; p->x += v >> 4; }
            posAD534[idx].y += (sinAD534[angleAD534[dir]] * 3) >> 6;
            if (idx == 0)
                moveAD534(actorsAD534[0], posAD534[0].x, posAD534[0].y, 0x240, 4, 1);
            else
                moveAD534(actorsAD534[idx], p->x, p->y, 0x240, 4, 0);
        }
        posAD534[idx + 1].x = actorsAD534[idx]->f14 >> 8;
        posAD534[idx + 1].y = actorsAD534[idx]->f18 >> 8;
        dirAD534[idx + 1] = actorsAD534[idx]->f8;
        spriteAD534.f1C = tileAD534;
        if (done != 0)
            sub_08000AF0(tileAD534 + 0x10, spriteAD534.fC, 1);
        else
            sub_08000AF0(tileAD534 + 0x10, pal, 1);
        if (sub_08098004() & 1)
            b = sub_08097FF8();
        else
            b = sub_0800BC44(posAD534[idx + 1].x >> 8, posAD534[idx + 1].y >> 8, 0);
        if (sub_0800CD8C() == 0)
            actorsAD534[idx]->f6E = sub_08065370(&spriteAD534, 0x18, (s32)&actorsAD534[idx]->f6A, (s32)&actorsAD534[idx]->f6C, 0);
        projAD534((s16)posAD534[idx + 1].x, (s16)posAD534[idx + 1].y, &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                drawAD534(sx, sy, 0x18, actorsAD534[idx]->f6A, b, &spriteAD534.f1C, spriteAD534.f8, spriteAD534.f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawAD534(sx, sy, 0x18, actorsAD534[idx]->f6A, b, &spriteAD534.f1C, spriteAD534.f8, spriteAD534.f0);
        }
        if (cooldown != 0)
            cooldown--;
        else if (hitAD534(actorsAD534[idx]))
            cooldown = 30;
        hit = actorsAD534[idx]->f4C;
        if (hit != 0 && lastHit != hit) {
            lastHit = hit;
            hitTimer = 10;
            shake = 0;
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmgAD534(actorsAD534[idx], lastHit, (s16)shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            actorsAD534[idx]->f4C = 0;
        }
        if (deadAD534(actorsAD534[idx]) != 0)
            running = 0;
        sub_080003F0();
    } while (running);
    freeAD534(actorsAD534[idx]->f2);
    maskAD534 &= ~(1 << actorsAD534[idx]->f0);
    stateAD534[idx] = 0xFF;
    if (idx != 0)
        sub_0801A0A4(actorsAD534[idx - 1]);
    for (flash = 20; flash != 0xFFFF; flash--) {
        spriteAD534.f1C = tileAD534;
        sub_08000AF0(tileAD534 + 0x10, spriteAD534.fC, 1);
        if (sub_08098004() & 1)
            b = sub_08097FF8();
        else
            b = sub_0800BC44(posAD534[idx + 1].x >> 8, posAD534[idx + 1].y >> 8, 0);
        if (sub_0800CD8C() == 0)
            actorsAD534[idx]->f6E = sub_08065370(&spriteAD534, 0x18, (s32)&actorsAD534[idx]->f6A, (s32)&actorsAD534[idx]->f6C, 0);
        projAD534((s16)posAD534[idx + 1].x, (s16)posAD534[idx + 1].y, &sx, &sy, 0, 0);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0 && (flash & 1))
            drawAD534(sx, sy, 0x18, actorsAD534[idx]->f6A, b, &spriteAD534.f1C, spriteAD534.f8, spriteAD534.f0);
        sub_080003F0();
    }
    if (!(playersAD534[sub_080020F4()].flags & 0x2000) && actorsAD534[idx]->f5A != 0) {
        h = sub_0801E46C(dataAD534, res);
        for (shake = 0x1D; shake != -1; shake--) {
            actorsAD534[idx]->f18 -= 0x20;
            fallAD534(actorsAD534[idx], h);
            sub_080003F0();
        }
        sub_0801E4CC(dataAD534, h);
    }
}
struct Player114DE {u8 p0[0x20];u16 state;u8 p22[14];u32 flags;u8 p34[0x34];u8 active;u8 p69[0x1F];u16 angle;u16 p8A;s32 x,y;u8 p94[0x1C];u16 motion;u8 pB2[0x16];u16 timer;s16 direction;u16 speed;u8 pCE[0x16];u32 seen[26];};
struct Entity114DE {u16 index;u8 p2[10];u16 state;u8 pE[6];s32 x,y;u8 p1C[0x34];u32 counter;};
extern s32 x114DE[] asm("gUnk_03003D6C");
extern struct Player114DE players114DE[] asm("gUnk_03003CE0");
extern u16 delta114DE(void *, void *) asm("sub_0801ED8C");
/* [ApplyShortContactPlayerHit] Within distance 15 and with pause/lifecycle/player timer/serial gates
 * satisfied, writes state 10 and marker, adds helper result, records/increments serial, and applies outward
 * direction, magnitude 0x400 and counter 8; returns one on application, otherwise zero. */
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
        { s32 i; u32 index; u32 *dest; u32 n; i=sub_080020F4(); index=entity102A5->index; index <<= 2;  index += i*0x14c;  dest=(u32 *)((u8 *)players114DE+0xe4+index); n=entity102A5->counter;  *dest=n; entity102A5->counter=n+1; }
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
/* [CleanupFollowingChainActor] If actor +0x5C is nonzero, releases four-control child pool; always clears peer
 * rings, active mask and shared palette slot. */
void sub_080AE080(void) {
    if (M2C_FIELD(gUnk_03000440, s16 *, 0x5C) != 0) {
        sub_080AE0E4();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030004BE);
}
/* [AllocateEnemySlots1To4Tasks] A0hex allocation,4 controls stride28 clear+8. */
void sub_080AE0B8(void)
{
    u32 i;
    gUnk_030004C8 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_030004C8 + i * 0x28, s32 *, 8) = 0;
}
/* [ReleaseFollowingChainTasks] Cancels scheduled tasks in four controls at gUnk_030004C8, frees array and
 * clears global. */
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
/* [StartFollowingChainChild] Scans four controls for unscheduled plus word0; writes byte index+0x40,
 * allocates0x400 unchecked, installs indexed follower callback and destructor, forwards index and zero. */
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
/* [FinalizeEnemySlots1To4Task] CurrentTask+8 minus40hex indexes actor pointer table00448 and clears
 * bit1<<actorID. */
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
/* [RunPlayerCountActorEncounter] Clears per-player hit histories, starts one actor per player, waits for
 * startup and then all actors to become inactive or termination; signals and waits for 0xDEADFACE, waits for
 * another busy predicate, optionally runs thirty-step experience-award sequences, and requests the ending
 * transition. */
void sub_080AE1B4(void)
{
    u8 i,j,clear;
    s16 count;
    s32 allocation[4];
    u8 *actor;
    { register u32 zero asm("r4"); register u32 stride asm("ip"); register u8 *cnt asm("r7"); register u32 *hist asm("r6"); i=0;  cnt=&count114E;  stride=0x14c;  hist=(u32 *)history114E; asm("" : : "r"(hist)); zero=0;  do { for (j=0;j<=4;j++) *(u32 *)((u8 *)history114E+i*stride+j*4)=zero; i++; } while(i<=3); }
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
struct ResAE420 {
    u8 p0[6];
    s16 f6;
    u8 p8[2];
    u16 fA;
    u8 pC[0x14];
    u16 f20;
    u8 p22[2];
    u16 f24;
    u8 p26;
    u8 f27;
    u16 f28;
    u8 f2A, f2B;
    u8 p2C[0xA8];
    u16 fD4, fD6;
};
struct ActAE420 {
    u16 f0, f2;
    u8 p4[4];
    u16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[2];
    u16 f10;
    u8 p12[2];
    s32 f14, f18;
    u8 p1c[0x2C];
    u16 f48;
    u16 f4A;
    s32 f4C, f50, f54;
    u16 f58;
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[8];
    u16 f68, f6A, f6C, f6E;
    u8 p70[0x15C];
    u8 f1CC[0x8];
    s16 f1D4;
    u8 p1d6[6];
    u8 f1DC;
    u8 p1dd[0x1F];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 f200, p201;
    u16 f202;
    struct ResAE420 res;
};
struct AnimAE420 { u32 f0, f4, f8, fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct EntAE420 {
    struct ActAE420 *act;
    struct AnimAE420 anim[3];
    u8 fA0[4];
    u16 fA4, fA6, fA8;
    u8 fAA, fAB;
};
struct PlAE420 { u8 p0[0xC]; u16 fC, fE; u8 p10[0x28]; u8 f38[0x20]; u8 f58[2]; u16 f5A; u8 p5c[8]; u16 f64; u8 p66[0xE6]; };
struct TblAE420 { u32 a[11]; u32 b[9]; u32 c; u32 d; };
struct E2E0AE420 { u8 b[0x2E0]; };
struct TaskAE420 { u8 p0[8]; u32 f8; };
struct G3170AE420 { u8 p0[0x90]; u16 f90; };
struct ObjAE420 { u8 p0[0x9B]; u8 f9B; };

extern struct EntAE420 gEntAE420[] asm("gUnk_030004D0");
extern u8 *gBaseAE420 asm("gUnk_030056F4");
extern u32 gMaskAE420 asm("gUnk_030056FC");
extern struct PlAE420 gPlAE420[] asm("gUnk_03003CE0");
extern struct G3170AE420 gMapAE420 asm("gUnk_03003170");
extern struct TblAE420 gTblAE420[] asm("gUnk_08479140");
extern u8 gImgAE420[] asm("gUnk_084A7CD0");

void setupAE420(void *, void *, s32) asm("sub_0801623C");
void initResAE420(void *) asm("sub_08019F60");
void cpuSetAE420(const void *, void *, u32) asm("CpuSet");
void a0A4AE420(void *) asm("sub_0801A0A4");
void a0B0AE420(void *) asm("sub_0801A0B0");
struct ObjAE420 *objAE420(u32) asm("sub_08007290");
s32 animInitAE420(void *, u32, s32, s32, s32) asm("sub_08065158");
s32 modeAE420(void) asm("sub_0800CE30");
void tickAE420(void *) asm("sub_0801C8F0");
s32 rndAE420(s32) asm("sub_08096594");
s8 reachAE420(void *, void *, s32, s32) asm("sub_08097A74");
void endAE420(s32) asm("sub_08097A38");
void sfxAE420(s32) asm("sub_08058CC4");
void castAE420(s32, s32) asm("sub_08077D04");
s32 faceAE420(void *, u8) asm("sub_08095F10");
void spawnAE420(s32, s32, s32, s32, s32) asm("sub_0807386C");
u16 animAE420(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
u32 projAE420(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
s32 drawAE420(s32, s32, u16, u16, u8, void *, u32, u32) asm("sub_08007870");
void dmgAE420(void *, s32, s16) asm("sub_0801A120");
s16 deadAE420(void *) asm("sub_08019CE8");
void idleAE420(void *) asm("sub_08020680");
s32 freeAE420(u16) asm("sub_08067CA8");
struct TaskAE420 *taskAE420(void) asm("sub_0800048C");
void loadPalAE420(u32, u32, u32) asm("sub_08000AF0");
u8 prioAE420(s32, s32, s32) asm("sub_0800BC44");

void sub_080AE420_v(u32 idx) asm("sub_080AE420");
/* [RunPlayerDerivedCombatActor] Truncates index tobyte, creates indexed actor from player0
 * class/stat/equipment fields and class animation tables, sets team4 and mode-scaled HP. Actor-id
 * synchronization gates pursuit, melee animation and kind-dependent effect/cast task starts. On death yields,
 * queues remote fullHP damage, decodes taskword-0x44 toclear actor mask and enters endless blinking
 * death-animation loop. No actor/palette free or normal return is claimed. */
void sub_080AE420_v(u32 idx)
{
    u16 tmp6A;
    s16 sx;
    s16 sy;
    struct ResAE420 *res;
    s32 lastHit;
    s32 n24;
    s32 n28;
    s32 mode;
    u16 lastAnim;
    u8 x34;
    u16 kind;
    u16 flash;
    u16 hitTimer;
    u16 frame;
    u16 cnt2;
    s16 shake;
    s32 animMode;
    s32 animIdx;
    s16 i;
    u8 b;
    struct ActAE420 *a;
    struct PlAE420 *p;
    struct TaskAE420 *t;

    idx = (u8)idx;
    a = (struct ActAE420 *)&((struct E2E0AE420 *)gBaseAE420)[idx];
    gMaskAE420 |= 1 << idx;
    gEntAE420[idx].act = a;
    setupAE420(a, gImgAE420, idx);
    res = &a->res;
    initResAE420(res);
    a->f54 = 0;
    a->f4C = 0;
    a->f4A = 0;
    a->f6C = 0;
    a->f10 = 0;
    a->f68 = 0;
    tmp6A = 0;
    a->f6A = 0;
    a->f8 = 0;
    a->f0 = idx;
    a->f2 = idx + 4;
    a->fC = 0;
    a->f48 = gMapAE420.f90;
    a->res.f2A = 0x18;
    a->res.f2B = 0x14;
    p = gPlAE420;
    kind = p->fC;
    gEntAE420[idx].fA6 = 4;
    gEntAE420[idx].fA8 = p->fE;
    cpuSetAE420(p->f58, a->f1CC, 0x18);
    cpuSetAE420(p->f38, res, 0x10);
    a0A4AE420(a);
    a->f1DC = 4;
    a->f5E = a->f1D4;
    a->res.fA = p->f5A;
    a->res.fD4 = p->f64;
    a->res.fD6 = gEntAE420[idx].fA6;
    a->f50 = 1;
    a->f1FD = 3;
    a->f1FE = 3;
    a->fC = 0;
    mode = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    hitTimer = 0;
    a->f6C = flash;
    tmp6A = flash;
    a->f6A = flash;
    a->f68 = flash;
    cnt2 = 0;
    frame = 0;
    animMode = 0;
    animIdx = 0;
    for (i = 0; i <= 3; i++)
        gEntAE420[idx].fA0[i] = 0;
    a->f1FC_lo = a->f0;
    a->f202 = a->f2;
    a->f200 = 0xFF;
    switch (kind) {
    case 0:
        gEntAE420[idx].fAB = 0;
        gEntAE420[idx].fA4 = 0x140;
        res->f24 = 2;
        res->f20 = 0x3C;
        res->f27 = 0;
        res->f28 = 0;
        gEntAE420[idx].fAA = 0x1E;
        break;
    case 5:
        gEntAE420[idx].fAB = 0;
        gEntAE420[idx].fA4 = 0x160;
        res->f24 = 1;
        res->f20 = 0x3C;
        res->f27 = 0;
        res->f28 = 0xFA;
        gEntAE420[idx].fAA = 0x1E;
        break;
    case 7:
        gEntAE420[idx].fAB = 0;
        gEntAE420[idx].fA4 = 0x180;
        res->f24 = 1;
        res->f20 = 0x3C;
        res->f27 = 0;
        res->f28 = 0xD;
        gEntAE420[idx].fAA = 0x1E;
        break;
    case 3:
        gEntAE420[idx].fAB = 0;
        gEntAE420[idx].fA4 = 0x140;
        res->f24 = 1;
        res->f20 = 0x3C;
        res->f27 = 0;
        res->f28 = 0x30;
        gEntAE420[idx].fAA = 0x1E;
        break;
    case 4:
        gEntAE420[idx].fAB = 0;
        gEntAE420[idx].fA4 = 0x140;
        res->f24 = 2;
        res->f20 = 0x3C;
        res->f27 = 0;
        res->f28 = 0x96;
        gEntAE420[idx].fAA = 0x1E;
        break;
    case 6:
        gEntAE420[idx].fAB = 1;
        gEntAE420[idx].fA4 = 0x130;
        res->f24 = 2;
        res->f20 = 0x3C;
        res->f27 = 1;
        res->f28 = 0xB3;
        gEntAE420[idx].fAA = 0x1E;
        break;
    case 1:
        gEntAE420[idx].fAB = 1;
        gEntAE420[idx].fA4 = 0x130;
        res->f24 = 2;
        res->f20 = 0x3C;
        res->f27 = 1;
        res->f28 = 0xB8;
        gEntAE420[idx].fAA = 0x1E;
        break;
    case 2:
        gEntAE420[idx].fAB = 1;
        gEntAE420[idx].fA4 = 0x140;
        res->f24 = 2;
        res->f20 = 0x3C;
        res->f27 = 1;
        res->f28 = 0x75;
        gEntAE420[idx].fAA = 0x40;
        break;
    case 8:
        gEntAE420[idx].fAB = 1;
        gEntAE420[idx].fA4 = 0x140;
        res->f24 = 2;
        res->f20 = 0x3C;
        res->f27 = 1;
        res->f28 = 0xB3;
        gEntAE420[idx].fAA = 0x1E;
        break;
    }
    x34 = objAE420(res->f28 | 0xB0000)->f9B;
    animInitAE420(&gEntAE420[idx].anim[0], gTblAE420[kind].a[x34], gEntAE420[idx].fA6, -1, 0);
    animInitAE420(&gEntAE420[idx].anim[1], gTblAE420[kind].b[x34], gEntAE420[idx].fA6, -1, 0);
    gEntAE420[idx].anim[0].f1C = gEntAE420[idx].fA6;
    gEntAE420[idx].anim[1].f1C = gEntAE420[idx].fA6;
    if (kind == 8 || kind == 6 || kind == 1) {
        animInitAE420(&gEntAE420[idx].anim[2], gTblAE420[kind].c, gEntAE420[idx].fA6, -1, 0);
        gEntAE420[idx].anim[2].f1C = gEntAE420[idx].fA6;
    }
    if (modeAE420() == 1) {
        a->f5C = (res->f6 + 1000) * 3;
        n28 = 5;
        n24 = 5;
    } else {
        a->f5C = (res->f6 + 500) * 3;
        n28 = 3;
        n24 = 3;
    }
    sub_08068330(a->f0);
    while (sub_080682B8(a->f0) == 0)
        sub_080003F0();
    sub_08065E38(a->f0);
    for (;;) {
        if (a->fC == 10 && flash == 0) {
            flash = 8;
            gEntAE420[idx].fA0[a->f58]++;
        }
        if (sub_08058DB0() == 0) {
            tickAE420(a);
            switch (a->f1FD) {
            case 1:
                a0B0AE420(a);
                break;
            case 2:
                a->fC = 0;
                if (sub_080682B8(a->f0) != 0) {
                    a->f1FD = a->f1FE;
                    sub_08065E38(a->f0);
                }
                break;
            case 3:
                if (sub_08056F78() != 0) {
                    if (gEntAE420[idx].fAB != 0)
                        a->f1FE = 5;
                    else
                        a->f1FE = 4;
                    a->f1FD = 2;
                    sub_08068330(a->f0);
                }
                break;
            case 4:
                mode = 1;
                a->fC = 1;
                a->f1FC_hi = rndAE420(idx);
                p = &gPlAE420[a->f1FC_hi];
                if (reachAE420(a, p, gEntAE420[idx].fA4, gEntAE420[idx].fAA) == 0) {
                    endAE420(idx);
                    a->f6C = 0;
                    a->f6A = 0;
                    if (kind == 4)
                        a->f1FE = 8;
                    else
                        a->f1FE = 6;
                    a->f1FD = 2;
                    sub_08068330(a->f0);
                }
                break;
            case 5:
                mode = 1;
                a->fC = 1;
                p = &gPlAE420[rndAE420(idx)];
                if (kind != 2) {
                    if (cnt2 & 1) {
                        cnt2++;
                        frame = 0;
                        a->f1FE = 9;
                        a->f1FD = 2;
                        sub_08068330(a->f0);
                    } else if (reachAE420(a, p, gEntAE420[idx].fA4, gEntAE420[idx].fAA) == 0) {
                        cnt2++;
                        endAE420(idx);
                        a->f6C = 0;
                        a->f6A = 0;
                        a->f1FE = 6;
                        a->f1FD = 2;
                        sub_08068330(a->f0);
                    }
                } else {
                    if ((u8)reachAE420(a, p, gEntAE420[idx].fA4, gEntAE420[idx].fAA) == 0) {
                        endAE420(idx);
                        a->f1FE = 7;
                        a->f1FD = 2;
                        sub_08068330(a->f0);
                    }
                }
                break;
            case 6:
                mode = 2;
                a->fC = 2;
                if (res->f24 == a->f6A && a->f6C == 0)
                    sfxAE420(x34);
                if (a->f6E != 0) {
                    a->f50++;
                    a->f1FD = 2;
                    a->f1FE = 10;
                    sub_08068330(a->f0);
                }
                break;
            case 7:
                mode = 2;
                a->fC = 2;
                a->f50++;
                a->f1FC_hi = rndAE420(idx);
                endAE420(idx);
                castAE420(a->f0, a->f1FC_hi);
                a->f1FD = 2;
                a->f1FE = 10;
                sub_08068330(a->f0);
                break;
            case 8:
                mode = 2;
                a->fC = 2;
                if (res->f24 == a->f6A && a->f6C == 0)
                    sfxAE420(x34);
                if (a->f6E != 0) {
                    cnt2++;
                    a->f50++;
                    a->f1FD = 2;
                    a->f1FE = 10;
                    sub_08068330(a->f0);
                }
                break;
            case 10:
                mode = 0;
                a->fC = 0;
                if (frame++ > 0x3C) {
                    frame = 0;
                    a->f1FD = 2;
                    sub_08068330(a->f0);
                    if (gEntAE420[idx].fAB != 0)
                        a->f1FE = 5;
                    else
                        a->f1FE = 4;
                }
                break;
            case 9:
                mode = 9;
                a->fC = 9;
                faceAE420(a, rndAE420(idx));
                a->f68 = a->f8;
                a->f6A = 0;
                if (frame++ > 0x28) {
                    frame = 0;
                    switch (kind) {
                    case 6:
                    case 8:
                        spawnAE420(a->f0 + 4, 13, a->f1FC_hi, n24, n28);
                        break;
                    case 1:
                        spawnAE420(a->f0 + 4, 4, a->f1FC_hi, n24 - 1, n28 - 1);
                        break;
                    }
                    a->f50++;
                    a->f1FD = 2;
                    a->f1FE = 11;
                    sub_08068330(a->f0);
                }
                break;
            case 11:
                mode = 9;
                a->fC = 9;
                faceAE420(a, rndAE420(idx));
                a->f68 = a->f8 + 8;
                a->f6A = 8;
                if (frame++ > 0xB4) {
                    endAE420(idx);
                    frame = 0;
                    a->f1FE = 5;
                    a->f1FD = 2;
                    sub_08068330(a->f0);
                }
                break;
            }
        }
        switch (mode) {
        case 0:
            animIdx = 0;
            a->f68 = a->f8;
            animMode = 1;
            break;
        case 1:
            animIdx = 0;
            a->f68 = a->f8 + 8;
            animMode = 1;
            break;
        case 2:
            animIdx = 1;
            a->f68 = a->f8;
            animMode = 0;
            break;
        case 9:
            animIdx = 2;
            animMode = 0;
            break;
        }
        if (lastAnim != a->f68) {
            lastAnim = a->f68;
            a->f6C = 0;
            a->f6A = 0;
        }
        if (sub_08098004() & 1)
            b = sub_08097FF8();
        else
            b = prioAE420(a->f14 >> 8, a->f18 >> 8, 0);
        if (sub_0800CD8C() == 0) {
            if (a->f1FD == 11 || a->f1FD == 9)
                a->f6E = animAE420(&gEntAE420[idx].anim[animIdx], a->f68, &tmp6A, &a->f6C, animMode);
            else
                a->f6E = animAE420(&gEntAE420[idx].anim[animIdx], a->f68, &a->f6A, &a->f6C, animMode);
        }
        projAE420((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
                loadPalAE420(gEntAE420[idx].fA6 + 0x10, gEntAE420[idx].anim[animIdx].fC + gEntAE420[idx].fA8 * 32, 1);
                if (a->f1FD == 11 || a->f1FD == 9)
                    drawAE420(sx, sy, a->f68, tmp6A, b, &gEntAE420[idx].anim[animIdx].f1C, gEntAE420[idx].anim[animIdx].f8, gEntAE420[idx].anim[animIdx].f0);
                else
                    drawAE420(sx, sy, a->f68, a->f6A, b, &gEntAE420[idx].anim[animIdx].f1C, gEntAE420[idx].anim[animIdx].f8, gEntAE420[idx].anim[animIdx].f0);
            }
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            loadPalAE420(gEntAE420[idx].fA6 + 0x10, gEntAE420[idx].anim[animIdx].fC + gEntAE420[idx].fA8 * 32, 1);
            if (a->f1FD == 11 || a->f1FD == 9)
                drawAE420(sx, sy, a->f68, tmp6A, b, &gEntAE420[idx].anim[animIdx].f1C, gEntAE420[idx].anim[animIdx].f8, gEntAE420[idx].anim[animIdx].f0);
            else
                drawAE420(sx, sy, a->f68, a->f6A, b, &gEntAE420[idx].anim[animIdx].f1C, gEntAE420[idx].anim[animIdx].f8, gEntAE420[idx].anim[animIdx].f0);
        }
        if (a->f4C != 0 && lastHit != a->f4C) {
            lastHit = a->f4C;
            hitTimer = 10;
            shake = 0;
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmgAE420(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = 0;
        }
        if (deadAE420(a) != 0)
            break;
        idleAE420(a);
        sub_080003F0();
    }
    sub_080003F0();
    freeAE420(gEntAE420[idx].act->f2);
    t = taskAE420();
    t->f8 -= 0x44;
    gMaskAE420 &= ~(1 << gEntAE420[t->f8].act->f0);
    animIdx = 0;
    gEntAE420[idx].act->f68 = 0x18;
    a->f6C = 0;
    a->f6A = animIdx;
    animMode = 0;
    for (;;) {
        if (sub_08098004() & 1)
            b = sub_08097FF8();
        else
            b = prioAE420(a->f14 >> 8, a->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            a->f6E = animAE420(&gEntAE420[idx].anim[animIdx], a->f68, &a->f6A, &a->f6C, animMode);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0 && (flash-- & 1)) {
                projAE420((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, z, z);
                loadPalAE420(gEntAE420[idx].fA6 + 0x10, gEntAE420[idx].anim[animIdx].fC + gEntAE420[idx].fA8 * 32, 1);
                drawAE420(sx, sy, a->f68, a->f6A, b, &gEntAE420[idx].anim[animIdx].f1C, gEntAE420[idx].anim[animIdx].f8, gEntAE420[idx].anim[animIdx].f0);
            }
        }
        sub_080003F0();
    }
}
/* [CleanupChildTasksAndLink] Exact target body. */
void sub_080AF2AC(void) {
    sub_080AF304();
    sub_08068384();
}
extern u8 *gEntriesAF2BC asm("gUnk_03000784");
extern u8 gEntryCountAF2BC asm("gUnk_03000780");
/* [AllocatePlayerCloneTaskPool] Clears pool pointer then allocates count*0x28 bytes; clears +8 in each
 * count-controlled record with no allocation-null check. */
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
/* [ReleasePlayerCloneTasks] Iterates dynamic count, cancels scheduled controls; frees and clears pool pointer
 * only if nonnull. */
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
/* [StartPlayerCloneActor] Scans dynamic-count controls for unscheduled plus word0; rechecks count,
 * allocates0x400 unchecked, installs clone callback/destructor, writes byte index+0x44 and forwards index. */
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
/* [FinalizeIndexedEnemyTask] CurrentTask+8 minus44hex; table004D0+index*ACh contains actor pointer; actor
 * firsthalfword selects active bit. */
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
struct ResF3F4 { u8 p0[4]; s16 f4, f6; u8 p8[0x1C]; u16 f24; u8 p26[2]; u16 f28; };
struct ActF3F4 {
    u16 f0, f2;
    u8 p4[4];
    u16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x30];
    s32 f4C, f50;
    u8 p54[6];
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[8];
    u16 f68, f6A, f6C, f6E;
    u8 p70[0x164];
    s16 f1D4, f1D6;
    u8 p1d8[0x24];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 f200, p201;
    u16 f202;
    struct ResF3F4 res;
};
struct AnimF3F4 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct PlF3F4 { u8 p0[0xC]; u16 fC; u8 pe[0x22]; u32 flags; u8 p34[0x118]; };
struct HistF3F4 { s32 h[5]; u8 rest[0x138]; };

extern struct ActF3F4 *gCurF3F4 asm("gUnk_03000788");
extern struct PlF3F4 gPlF3F4[] asm("gUnk_03003CE0");
extern struct HistF3F4 gHistF3F4[] asm("gUnk_03003DC4");
extern u8 gImgF3F4[] asm("gUnk_084A8B40");
extern void *gDataF3F4 asm("gUnk_030034E0");
extern u8 *gStateF3F4 asm("gUnk_03005CF4");

void setupF3F4(void *, void *, s32) asm("sub_0801623C");
void initResF3F4(void *) asm("sub_08019F60");
void a0A4F3F4(void *) asm("sub_0801A0A4");
s32 animInitF3F4(void *, s32, s32, s32, s32) asm("sub_08065158");
u8 *objF3F4(s32) asm("sub_08007290");
void tickF3F4(void *) asm("sub_0801C8F0");
s32 rndF3F4(s32) asm("sub_08096594");
u8 reachF3F4(void *, void *, s32, s32) asm("sub_08097A74");
void sfxF3F4(s32) asm("sub_08058CC4");
s32 faceF3F4(void *, u8) asm("sub_08095F10");
void spawnF3F4(s32, s32, s32, s32, s32) asm("sub_0807386C");
void endF3F4(s32) asm("sub_08097A38");
void loadPalF3F4(u32, void *, u32) asm("sub_08000AF0");
u8 bgFlagF3F4(void) asm("sub_08098004");
u8 bgPrioF3F4(void) asm("sub_08097FF8");
u8 prioF3F4(s32, s32, s32) asm("sub_0800BC44");
u16 animF3F4(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
u32 projF3F4(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
s32 drawF3F4(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
struct Draw7870 *drawExF3F4(s32, s32, s32, u16, u8, s32, s32, void *, u32, u32) asm("sub_08007974");
void dmgF3F4(void *, s32, s16) asm("sub_0801A120");
s16 deadF3F4(void *) asm("sub_08019CE8");
void postF3F4(void *) asm("sub_08020680");
s32 freeF3F4(u16) asm("sub_08067CA8");
s32 waitF3F4(s32) asm("sub_08068330");
s32 readyF3F4(s32) asm("sub_080682B8");
void nextF3F4(s32) asm("sub_08065E38");
s32 msgEndF3F4(s32) asm("sub_080586B4");
s32 flagF3F4(void) asm("sub_0805A318");
s32 boxF3F4(s32, s32, s32, s32, s32, s32) asm("sub_0805DF38");
s32 boxDoneF3F4(s32) asm("sub_0805EEFC");
void blendF3F4(u8, u8, u8, u8) asm("sub_08009088");
void fxF3F4(s32, s32, s32) asm("sub_08098088");
u8 fxDoneF3F4(void) asm("sub_080980F0");
s32 dropFxF3F4(void *, void *) asm("sub_0801E46C");
void fallF3F4(void *, s32) asm("sub_0806171C");
s32 dropEndF3F4(void *, s32) asm("sub_0801E4CC");

void sub_080AF3F4_v(struct ActF3F4 *a) asm("sub_080AF3F4");
/* [RunPursuitStrikeProjectileEncounter] Initializes three animation resources and combat stats, synchronizes
 * link phases and chooses an initial waiting or pursuit path from participant count/player kind. Alternates
 * pursuit to two distance thresholds with an animation-driven strike or a delayed type13 projectile request,
 * separated by timed recovery; animation and damage feedback continue until death/session/area exit. Locks the
 * local player, dispatches remote full-HP damage, synchronizes the completion token and shows resource0x14009E
 * or0x140098. Then runs the disappearance effect, unlocks, conditionally generates reward feedback and marks
 * the encounter finished. */
void sub_080AF3F4_v(struct ActF3F4 *a)
{
    struct AnimF3F4 anim[3];
    s16 sx, sy;
    struct ResF3F4 *res;
    s32 lastHit;
    u8 sfx;
    s32 animState;
    u16 lastAnim;
    s32 flag;
    u16 flash;
    u16 hitTimer;
    s16 shake;
    s32 done;

    struct AnimF3F4 *sl;
    u8 prio;
    u8 cnt;
    u8 k;
    u16 frame;
    s16 i, j;
    u16 id;
    s32 h;
    struct PlF3F4 *pl;

    gCurF3F4 = a;
    res = &a->res;
    setupF3F4(a, gImgF3F4, 0);
    initResF3F4(res);
    a0A4F3F4(a);
    animInitF3F4(&anim[0], 0x50089, 5, -1, 0);
    animInitF3F4(&anim[1], 0x50087, 5, -1, 0);
    animInitF3F4(&anim[2], 0x50088, 5, -1, 0);
    a->f5C = a->f1D6 = res->f6 * 3;
    { s32 t = res->f4 * 2; a->f5E = a->f1D4 = ((res->f4 << 3) + t) * 2; }
    a->fC = 0;
    animState = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    hitTimer = 0;
    a->f1FD = 2;
    a->f1FE = 2;
    id = 0xB3;
    res->f28 = id;
    sfx = objF3F4(0xB0000 | id)[0x9B];
    res->f24 = 2;
    ((u8 *)a)[0x22B] = 0;
    a->f50 = 1;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(s32 *)((u8 *)gHistF3F4 + j * 4 + i * 0x14C) = 0;
    a->f6C = 0;
    a->f6A = 0;
    a->f68 = 0;
    cnt = 0;
    frame = 0;
    sub_08098044();
    sub_08097FE4();
    sub_08097A4C();
    a->f1FC_lo = a->f0;
    a->f202 = a->f2;
    a->f200 = 0xFF;
    done = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (a->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tickF3F4(gCurF3F4);
            switch (a->f1FD) {
            case 1:
                a->fC = 0;
                if (sub_08067C08() != 0) {
                    a->f1FD = a->f1FE;
                    sub_08067BF8();
                }
                break;
            case 2:
                animState = 0;
                if (sub_08056F78() != 0) {
                    if (sub_08002164() == 1 && (gPlF3F4[0].fC == 8 || gPlF3F4[0].fC == 6))
                        a->f1FE = 3;
                    else
                        a->f1FE = 8;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 3:
                animState = 1;
                a->fC = 1;
                a->f1FC_hi = rndF3F4(0);
                pl = &gPlF3F4[a->f1FC_hi];
                if (cnt & 1) {
                    if (reachF3F4(a, pl, 0x140, 0x1C) == 0) {
                        cnt++;
                        a->f1FE = 4;
                        a->f1FD = 1;
                        sub_08067C18();
                    }
                } else {
                    if (reachF3F4(a, pl, 0x140, 0x50) == 0) {
                        cnt++;
                        frame = 0;
                        a->f1FE = 6;
                        a->f1FD = 1;
                        sub_08067C18();
                    }
                }
                break;
            case 4:
                animState = 2;
                a->fC = 2;
                if (a->f6A == 2 && a->f6C == 0)
                    sfxF3F4(sfx);
                if (a->f6E != 0) {
                    a->f50++;
                    a->f1FE = 5;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 6:
                animState = 9;
                a->fC = 9;
                faceF3F4(gCurF3F4, rndF3F4(0));
                a->f68 = a->f8;
                if (frame++ > 0x1E) {
                    frame = 0;
                    spawnF3F4(a->f0 + 4, 0xD, a->f1FC_hi, 5, 5);
                    a->f50++;
                    a->f1FE = 7;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 7:
                animState = 9;
                a->fC = 9;
                faceF3F4(gCurF3F4, rndF3F4(0));
                a->f68 = a->f8 + 8;
                if (frame++ > 0x28) {
                    frame = 0;
                    endF3F4(0);
                    a->f1FE = 3;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 5:
                animState = 0;
                a->fC = 0;
                if (frame++ > 0x3C) {
                    frame = 0;
                    endF3F4(0);
                    a->f1FD = 1;
                    a->f1FE = 3;
                    sub_08067C18();
                }
                break;
            case 8:
                animState = 10;
                a->fC = 0;
                if (flash != 0) {
                    a->f1FE = 3;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            }
        }
        switch (animState) {
        case 0:
            sl = &anim[0];
            a->f68 = a->f8;
            flag = 1;
            break;
        case 1:
            sl = &anim[0];
            a->f68 = a->f8 + 8;
            flag = 1;
            break;
        case 2:
            sl = &anim[1];
            a->f68 = a->f8;
            flag = 0;
            break;
        case 9:
            sl = &anim[2];
            flag = 0;
            break;
        case 10:
            sl = &anim[2];
            a->f68 = 8;
            flag = 0;
            break;
        }
        {
            struct ActF3F4 *g = gCurF3F4;
            if (lastAnim != g->f68) {
                lastAnim = g->f68;
                g->f6C = 0;
                g->f6A = 0;
            }
        }
        sl->f1C = 5;
        loadPalF3F4(0x15, sl->fC, 1);
        if (bgFlagF3F4() & 1)
            prio = bgPrioF3F4();
        else
            prio = prioF3F4(a->f14 >> 8, a->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            a->f6E = animF3F4(sl, a->f68, &a->f6A, &a->f6C, flag);
        projF3F4((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                drawF3F4(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawF3F4(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        {
            s32 hh = a->f4C;
            if (hh != 0 && lastHit != hh) {
                lastHit = hh;
                hitTimer = 10;
                shake = 0;
            }
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmgF3F4(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = hitTimer;
        }
        if (deadF3F4(a) != 0)
            done = 1;
        postF3F4(a);
        sub_080003F0();
        if (done)
            break;
    }

    gPlF3F4[sub_080020F4()].flags |= 1;
    sl = &anim[2];
    sl->f1C = 5;
    {
        struct ActF3F4 *g = gCurF3F4;
        g->f6C = 0;
        g->f6A = 0;
        g->f68 = 0;
    }
    shake = 0;
    hitTimer = 10;
    do {
        gPlF3F4[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            loadPalF3F4(0x15, sl->fC, 1);
            prio = prioF3F4(gCurF3F4->f14 >> 8, gCurF3F4->f18 >> 8, 0);
            gCurF3F4->f6E = animF3F4(sl, gCurF3F4->f68, &gCurF3F4->f6A, &gCurF3F4->f6C, 1);
            projF3F4((s16)(gCurF3F4->f14 >> 8), (s16)(gCurF3F4->f18 >> 8), &sx, &sy, 0, 0);
            drawF3F4(sx, sy, gCurF3F4->f68, gCurF3F4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            dmgF3F4(a, lastHit, shake);
        }
        if (hitTimer & 2)
            shake--;
        sub_080003F0();
        hitTimer--;
    } while (hitTimer != 0xFFFF);
    sub_080683CC();
    freeF3F4(gCurF3F4->f2);
    waitF3F4(0xDEADFACE);
    while (readyF3F4(0xDEADFACE) == 0) {
        gPlF3F4[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            loadPalF3F4(0x15, sl->fC, 1);
            prio = prioF3F4(gCurF3F4->f14 >> 8, gCurF3F4->f18 >> 8, 0);
            gCurF3F4->f6E = animF3F4(sl, gCurF3F4->f68, &gCurF3F4->f6A, &gCurF3F4->f6C, 1);
            projF3F4((s16)(gCurF3F4->f14 >> 8), (s16)(gCurF3F4->f18 >> 8), &sx, &sy, 0, 0);
            drawF3F4(sx, sy, gCurF3F4->f68, gCurF3F4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    nextF3F4(0xDEADFACE);
    while (sub_08058DB0() != 0) {
        gPlF3F4[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            loadPalF3F4(0x15, sl->fC, 1);
            prio = prioF3F4(gCurF3F4->f14 >> 8, gCurF3F4->f18 >> 8, 0);
            gCurF3F4->f6E = animF3F4(sl, gCurF3F4->f68, &gCurF3F4->f6A, &gCurF3F4->f6C, 1);
            projF3F4((s16)(gCurF3F4->f14 >> 8), (s16)(gCurF3F4->f18 >> 8), &sx, &sy, 0, 0);
            drawF3F4(sx, sy, gCurF3F4->f68, gCurF3F4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    msgEndF3F4(0);
    gPlF3F4[sub_080020F4()].flags |= 1;
    if (flagF3F4() != 0)
        *(s32 *)(gStateF3F4 + 0x720) = boxF3F4(1, 0xE, 0x19, 2, 0x3C, 0x14009E);
    else
        *(s32 *)(gStateF3F4 + 0x720) = boxF3F4(1, 0xE, 0x19, 2, 0x3C, 0x140098);
    while (boxDoneF3F4(*(s32 *)(gStateF3F4 + 0x720)) == 0) {
        gPlF3F4[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            loadPalF3F4(0x15, sl->fC, 1);
            prio = prioF3F4(gCurF3F4->f14 >> 8, gCurF3F4->f18 >> 8, 0);
            gCurF3F4->f6E = animF3F4(sl, gCurF3F4->f68, &gCurF3F4->f6A, &gCurF3F4->f6C, 1);
            projF3F4((s16)(gCurF3F4->f14 >> 8), (s16)(gCurF3F4->f18 >> 8), &sx, &sy, 0, 0);
            drawF3F4(sx, sy, gCurF3F4->f68, gCurF3F4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    sl = &anim[2];
    sl->f1C = 5;
    {
        struct ActF3F4 *g = gCurF3F4;
        g->f68 = 0;
        g->f6C = 0;
        g->f6A = 0;
    }
    k = 100;
    do {
        gPlF3F4[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            if (k < 0x50) {
                if (k < 0x3C) {
                    gCurF3F4->f68 = 0x12;
                } else if (k & 2) {
                    struct ActF3F4 *g = gCurF3F4;
                    g->f68 = (g->f68 > 7) ? 8 : ++g->f68;
                }
            }
            loadPalF3F4(0x15, sl->fC, 1);
            prio = prioF3F4(gCurF3F4->f14 >> 8, gCurF3F4->f18 >> 8, 0);
            gCurF3F4->f6E = animF3F4(sl, gCurF3F4->f68, &gCurF3F4->f6A, &gCurF3F4->f6C, 1);
            projF3F4((s16)(gCurF3F4->f14 >> 8), (s16)(gCurF3F4->f18 >> 8), &sx, &sy, 0, 0);
            drawF3F4(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
        k--;
    } while (k != 0xFF);
    {
        struct ActF3F4 *g = gCurF3F4;
        g->f68 = 0x12;
        g->f6C = 0;
        g->f6A = 0;
    }
    k = 0;
    fxF3F4(a->f14, a->f18, 1);
    do {
        gPlF3F4[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            k++; k &= 0xF;
            blendF3F4(0, 0, k, 0);
            loadPalF3F4(0x15, sl->fC, 1);
            prio = prioF3F4(gCurF3F4->f14 >> 8, gCurF3F4->f18 >> 8, 0);
            gCurF3F4->f6E = animF3F4(sl, gCurF3F4->f68, &gCurF3F4->f6A, &gCurF3F4->f6C, 1);
            projF3F4((s16)(gCurF3F4->f14 >> 8), (s16)(gCurF3F4->f18 >> 8), &sx, &sy, 0, 0);
            drawExF3F4(sx, sy, a->f68, a->f6A, prio, 1, 0, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    } while (fxDoneF3F4() == 0);
    blendF3F4(0, 0, 0, 0);
    sub_08098060();
    gPlF3F4[sub_080020F4()].flags &= ~1;
    if (!(gPlF3F4[sub_080020F4()].flags & 0x2000) && gCurF3F4->f5A != 0) {
        h = dropFxF3F4(gDataF3F4, res);
        shake = 0x1D;
        do {
            gCurF3F4->f18 -= 0x20;
            fallF3F4(gCurF3F4, h);
            sub_080003F0();
            shake--;
        } while (shake != -1);
        dropEndF3F4(gDataF3F4, h);
    }
    sub_08056E24();
}
struct Res0288 { u8 p0[4]; s16 f4, f6; u8 p8[0x1C]; u16 f24; u8 p26[2]; u16 f28; };
struct Act0288 {
    u16 f0, f2;
    u8 p4[4];
    u16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x30];
    s32 f4C, f50;
    u8 p54[6];
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[8];
    u16 f68, f6A, f6C, f6E;
    u8 p70[0x164];
    s16 f1D4, f1D6;
    u8 p1d8[0x24];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 f200, p201;
    u16 f202;
    struct Res0288 res;
};
struct Anim0288 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct Pl0288 { u8 p0[0xC]; u16 fC; u8 pe[0x22]; u32 flags; u8 p34[0x118]; };
struct Hist0288 { s32 h[5]; u8 rest[0x138]; };

extern struct Act0288 *gCur0288 asm("gUnk_03000788");
extern struct Pl0288 gPl0288[] asm("gUnk_03003CE0");
extern struct Hist0288 gHist0288[] asm("gUnk_03003DC4");
extern u8 gImg0288[] asm("gUnk_084A84B0");
extern void *gData0288 asm("gUnk_030034E0");
extern u8 *gState0288 asm("gUnk_03005CF4");

void setup0288(void *, void *, s32) asm("sub_0801623C");
void initRes0288(void *) asm("sub_08019F60");
void a0A40288(void *) asm("sub_0801A0A4");
s32 animInit0288(void *, s32, s32, s32, s32) asm("sub_08065158");
u8 *obj0288(s32) asm("sub_08007290");
void tick0288(void *) asm("sub_0801C8F0");
s32 rnd0288(s32) asm("sub_08096594");
u8 reach0288(void *, void *, s32, s32) asm("sub_08097A74");
void sfx0288(s32) asm("sub_08058CC4");
s32 face0288(void *, u8) asm("sub_08095F10");
void spawn0288(s32, s32, s32, s32, s32) asm("sub_0807386C");
void end0288(s32) asm("sub_08097A38");
void loadPal0288(u32, void *, u32) asm("sub_08000AF0");
u8 bgFlag0288(void) asm("sub_08098004");
u8 bgPrio0288(void) asm("sub_08097FF8");
u8 prio0288(s32, s32, s32) asm("sub_0800BC44");
u16 anim0288(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
u32 proj0288(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
s32 draw0288(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
struct Draw7870 *drawEx0288(s32, s32, s32, u16, u8, s32, s32, void *, u32, u32) asm("sub_08007974");
void dmg0288(void *, s32, s16) asm("sub_0801A120");
s16 dead0288(void *) asm("sub_08019CE8");
void post0288(void *) asm("sub_08020680");
s32 free0288(u16) asm("sub_08067CA8");
s32 wait0288(s32) asm("sub_08068330");
s32 ready0288(s32) asm("sub_080682B8");
void next0288(s32) asm("sub_08065E38");
s32 msgEnd0288(s32) asm("sub_080586B4");
s32 flag0288(void) asm("sub_0805A318");
s32 box0288(s32, s32, s32, s32, s32, s32) asm("sub_0805DF38");
s32 boxDone0288(s32) asm("sub_0805EEFC");
void blend0288(u8, u8, u8, u8) asm("sub_08009088");
struct XY0288 { s32 x, y; };
void fx0288(struct XY0288, s32) asm("sub_08098088");
u8 fxDone0288(void) asm("sub_080980F0");
s32 dropFx0288(void *, void *) asm("sub_0801E46C");
void fall0288(void *, s32) asm("sub_0806171C");
s32 dropEnd0288(void *, s32) asm("sub_0801E4CC");

void sub_080B0288_v(struct Act0288 *a) asm("sub_080B0288");
/* [RunPursuitAnimatedMeleeActor] Initializes three sprite resources and player serial history, pursues
 * selected players using movement parameter 0x140/range 0x1C, plays a resource-derived sound at attack frame
 * 2/tick 0, increments attack serial on animation completion and waits before repeating. After
 * death/termination it synchronizes cleanup, shows a flag-selected message, runs timed animation and blend
 * effects, then conditionally computes and grants defeat experience and requests transition. */
void sub_080B0288_v(struct Act0288 *a)
{
    struct Anim0288 anim[3];
    s16 sx, sy;
    struct Res0288 *res;
    s32 lastHit;
    u8 sfx;
    s32 animState;
    u16 lastAnim;
    s32 flag;
    u16 flash;
    u16 hitTimer;
    s16 shake;
    s32 done;

    struct Anim0288 *sl;
    u8 prio;
    u8 k;
    u16 frame;
    s16 i, j;
    u16 id;
    s32 h;

    gCur0288 = a;
    res = &a->res;
    setup0288(a, gImg0288, 0);
    initRes0288(res);
    a0A40288(a);
    animInit0288(&anim[0], 0x50089, 5, -1, 0);
    animInit0288(&anim[1], 0x50087, 5, -1, 0);
    animInit0288(&anim[2], 0x50088, 5, -1, 0);
    a->f5C = a->f1D6 = res->f6 * 3;
    { s32 t = res->f4 * 2; a->f5E = a->f1D4 = ((res->f4 << 3) + t) * 2; }
    a->fC = 0;
    animState = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    hitTimer = 0;
    a->f1FD = 2;
    a->f1FE = 2;
    id = 0xB3;
    res->f28 = id;
    sfx = obj0288(0xB0000 | id)[0x9B];
    res->f24 = 2;
    ((u8 *)a)[0x22B] = 0;
    a->f50 = 1;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(s32 *)((u8 *)gHist0288 + j * 4 + i * 0x14C) = 0;
    a->f6C = 0;
    a->f6A = 0;
    a->f68 = 0;
    frame = 0;
    sub_08098044();
    sub_08097FE4();
    sub_08097A4C();
    a->f1FC_lo = a->f0;
    a->f202 = a->f2;
    a->f200 = 0xFF;
    done = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (a->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tick0288(gCur0288);
            switch (a->f1FD) {
            case 1:
                a->fC = 0;
                if (sub_08067C08() != 0) {
                    a->f1FD = a->f1FE;
                    sub_08067BF8();
                }
                break;
            case 2:
                animState = 0;
                if (sub_08056F78() != 0) {
                    a->f1FE = 3;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 3:
                animState = 1;
                a->fC = 1;
                a->f1FC_hi = rnd0288(0);
                if (reach0288(a, &gPl0288[a->f1FC_hi], 0x140, 0x1C) == 0) {
                    a->f1FE = 4;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 4:
                animState = 2;
                a->fC = 2;
                if (a->f6A == 2 && a->f6C == 0)
                    sfx0288(sfx);
                if (a->f6E != 0) {
                    a->f50++;
                    a->f1FE = 5;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 5:
                animState = 0;
                a->fC = 0;
                if (frame++ > 0x3C) {
                    frame = 0;
                    end0288(0);
                    a->f1FD = 1;
                    a->f1FE = 3;
                    sub_08067C18();
                }
                break;
            }
        }
        switch (animState) {
        case 0:
            sl = &anim[0];
            a->f68 = a->f8;
            flag = 1;
            break;
        case 1:
            sl = &anim[0];
            a->f68 = a->f8 + 8;
            flag = 1;
            break;
        case 2:
            sl = &anim[1];
            a->f68 = a->f8;
            flag = 0;
            break;
        }
        {
            struct Act0288 *g = gCur0288;
            if (lastAnim != g->f68) {
                lastAnim = g->f68;
                g->f6C = 0;
                g->f6A = 0;
            }
        }
        sl->f1C = 5;
        loadPal0288(0x15, sl->fC, 1);
        if (bgFlag0288() & 1)
            prio = bgPrio0288();
        else
            prio = prio0288(a->f14 >> 8, a->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            a->f6E = anim0288(sl, a->f68, &a->f6A, &a->f6C, flag);
        proj0288((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                draw0288(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            draw0288(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        {
            s32 hh = a->f4C;
            if (hh != 0 && lastHit != hh) {
                lastHit = hh;
                hitTimer = 10;
                shake = 0;
            }
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmg0288(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = hitTimer;
        }
        if (dead0288(a) != 0)
            done = 1;
        post0288(a);
        sub_080003F0();
        if (done)
            break;
    }

    gPl0288[sub_080020F4()].flags |= 1;
    sl = &anim[2];
    sl->f1C = 5;
    {
        struct Act0288 *g = gCur0288;
        g->f6C = 0;
        g->f6A = 0;
        g->f68 = 0;
    }
    shake = 0;
    hitTimer = 10;
    do {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            loadPal0288(0x15, sl->fC, 1);
            prio = prio0288(gCur0288->f14 >> 8, gCur0288->f18 >> 8, 0);
            gCur0288->f6E = anim0288(sl, gCur0288->f68, &gCur0288->f6A, &gCur0288->f6C, 1);
            proj0288((s16)(gCur0288->f14 >> 8), (s16)(gCur0288->f18 >> 8), &sx, &sy, 0, 0);
            draw0288(sx, sy, gCur0288->f68, gCur0288->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            dmg0288(a, lastHit, shake);
        }
        if (hitTimer & 2)
            shake--;
        sub_080003F0();
        hitTimer--;
    } while (hitTimer != 0xFFFF);
    sub_080683CC();
    free0288(gCur0288->f2);
    wait0288(0xDEADFACE);
    while (ready0288(0xDEADFACE) == 0) {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            loadPal0288(0x15, sl->fC, 1);
            prio = prio0288(gCur0288->f14 >> 8, gCur0288->f18 >> 8, 0);
            gCur0288->f6E = anim0288(sl, gCur0288->f68, &gCur0288->f6A, &gCur0288->f6C, 1);
            proj0288((s16)(gCur0288->f14 >> 8), (s16)(gCur0288->f18 >> 8), &sx, &sy, 0, 0);
            draw0288(sx, sy, gCur0288->f68, gCur0288->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    next0288(0xDEADFACE);
    while (sub_08058DB0() != 0) {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            loadPal0288(0x15, sl->fC, 1);
            prio = prio0288(gCur0288->f14 >> 8, gCur0288->f18 >> 8, 0);
            gCur0288->f6E = anim0288(sl, gCur0288->f68, &gCur0288->f6A, &gCur0288->f6C, 1);
            proj0288((s16)(gCur0288->f14 >> 8), (s16)(gCur0288->f18 >> 8), &sx, &sy, 0, 0);
            draw0288(sx, sy, gCur0288->f68, gCur0288->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    msgEnd0288(0);
    gPl0288[sub_080020F4()].flags |= 1;
    if (flag0288() != 0)
        *(s32 *)(gState0288 + 0x720) = box0288(1, 0xE, 0x19, 2, 0x3C, 0x14009B);
    else
        *(s32 *)(gState0288 + 0x720) = box0288(1, 0xE, 0x19, 2, 0x3C, 0x140095);
    while (boxDone0288(*(s32 *)(gState0288 + 0x720)) == 0) {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            loadPal0288(0x15, sl->fC, 1);
            prio = prio0288(gCur0288->f14 >> 8, gCur0288->f18 >> 8, 0);
            gCur0288->f6E = anim0288(sl, gCur0288->f68, &gCur0288->f6A, &gCur0288->f6C, 1);
            proj0288((s16)(gCur0288->f14 >> 8), (s16)(gCur0288->f18 >> 8), &sx, &sy, 0, 0);
            draw0288(sx, sy, gCur0288->f68, gCur0288->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    }
    sl = &anim[2];
    sl->f1C = 5;
    {
        struct Act0288 *g = gCur0288;
        g->f68 = 0;
        g->f6C = 0;
        g->f6A = 0;
    }
    k = 100;
    do {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            if (k < 0x50) {
                if (k < 0x3C) {
                    gCur0288->f68 = 0x12;
                } else if (k & 2) {
                    struct Act0288 *g = gCur0288;
                    g->f68 = (g->f68 > 7) ? 8 : ++g->f68;
                }
            }
            loadPal0288(0x15, sl->fC, 1);
            prio = prio0288(gCur0288->f14 >> 8, gCur0288->f18 >> 8, 0);
            gCur0288->f6E = anim0288(sl, gCur0288->f68, &gCur0288->f6A, &gCur0288->f6C, 1);
            proj0288((s16)(gCur0288->f14 >> 8), (s16)(gCur0288->f18 >> 8), &sx, &sy, 0, 0);
            draw0288(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
        k--;
    } while (k != 0xFF);
    {
        struct Act0288 *g = gCur0288;
        g->f68 = 0x12;
        g->f6C = 0;
        g->f6A = 0;
    }
    k = 0;
    fx0288(*(struct XY0288 *)&a->f14, 1);
    do {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            k++; k &= 0xF;
            blend0288(0, 0, k, 0);
            loadPal0288(0x15, sl->fC, 1);
            prio = prio0288(gCur0288->f14 >> 8, gCur0288->f18 >> 8, 0);
            gCur0288->f6E = anim0288(sl, gCur0288->f68, &gCur0288->f6A, &gCur0288->f6C, 1);
            proj0288((s16)(gCur0288->f14 >> 8), (s16)(gCur0288->f18 >> 8), &sx, &sy, 0, 0);
            drawEx0288(sx, sy, a->f68, a->f6A, prio, 1, 0, &sl->f1C, sl->f8, sl->f0);
        }
        sub_080003F0();
    } while (fxDone0288() == 0);
    blend0288(0, 0, 0, 0);
    sub_08098060();
    gPl0288[sub_080020F4()].flags &= ~1;
    if (!(gPl0288[sub_080020F4()].flags & 0x2000) && gCur0288->f5A != 0) {
        h = dropFx0288(gData0288, res);
        shake = 0x1D;
        do {
            gCur0288->f18 -= 0x20;
            fall0288(gCur0288, h);
            sub_080003F0();
            shake--;
        } while (shake != -1);
        dropEnd0288(gData0288, h);
    }
    sub_08056E24();
}
/* [ResetEncounterPeerState] Tests actor00788 signedhalfword+5C; conditional98060, unconditional68384 and
 * global056FC=0. */
void sub_080B0F70(void) {
    if (M2C_FIELD(gUnk_03000788, s16 *, 0x5C) != 0) {
        sub_08098060();
    }
    sub_08068384();
    gUnk_030056FC = 0;
}
/* [CleanupEncounterSharedSpriteTask] Exact target body. */
void sub_080B0F9C(void) {
    if (M2C_FIELD(gUnk_03000788, s16 *, 0x5C) != 0) {
        sub_08098060();
    }
    gUnk_030056FC = 0;
}
extern struct Act0288 *gCurB0FC4 asm("gUnk_030007A0");
extern u16 gTileB0FC4 asm("gUnk_030007A4");
extern u8 gIdxB0FC4 asm("gUnk_030007A6");
extern u8 gSelB0FC4 asm("gUnk_0300079C");
extern u32 gMaskB0FC4 asm("gUnk_030056FC");
extern struct XY0288 gPtsB0FC4[] asm("gUnk_085188F0");
extern u8 gImgB0FC4[] asm("gUnk_084AA580");
u16 allocB0FC4(s32, s32) asm("sub_08016E04");
s32 evB0FC4(void) asm("sub_08068490");
s16 randB0FC4(void) asm("sub_0800086C");
u32 initB0FC4_0(void) asm("sub_0806849C");
void b2330B0FC4(void) asm("sub_080B2330");
void warpB0FC4(struct XY0288) asm("sub_080B236C");
void b23C8B0FC4(void) asm("sub_080B23C8");
void b23FCB0FC4(void) asm("sub_080B23FC");
void b2454B0FC4(void) asm("sub_080B2454");
void b2424B0FC4(void) asm("sub_080B2424");
void b1FD4B0FC4(void) asm("sub_080B1FD4");
void a0B0B0FC4(void *) asm("sub_0801A0B0");
void blendB0FC4(s32, s32, s32, s32) asm("sub_08009088");
static inline s32 absB0FC4(s32 x) { if (x < 0) x = -x; return x; }

void sub_080B0FC4_v(struct Act0288 *a) asm("sub_080B0FC4");
/* [RunRelocatingCombatActor] Initializes resources50089/87/88 and palette, pursues players alternating close
 * melee and ranged kind13 starts, and after count8 relocates through nine fixed points using blend effects.
 * Home-position helper is B236C spawn-effect request, not teleport. Modulo expression4%cnt++ has no
 * explicitzero guard. Palette-wait termination onlyclears maskbit; normal exit cleans effects, queues remote
 * damage, synchronizes, shows message, conditionally awards experience and transitions. */
void sub_080B0FC4_v(struct Act0288 *a)
{
    struct Anim0288 anim[3];
    s16 sx, sy;
    struct XY0288 home;
    struct Anim0288 *sl;
    struct Res0288 *res;
    s32 lastHit;
    u8 sfx;
    s32 animState;
    u16 lastAnim;
    s32 flag;
    u16 flash;
    u16 hitTimer;
    u16 frame;
    s16 shake;
    u16 k;
    u8 cnt;
    u8 cnt2;
    s32 phase;
    u8 cnt3;
    s32 done;
    u8 prio;
    s16 i, j;
    u16 id;
    s32 h;
    struct Pl0288 *p;

    gCurB0FC4 = a;
    res = &a->res;
    setup0288(a, gImgB0FC4, 0);
    initRes0288(res);
    a0A40288(a);
    { u16 *t = &gTileB0FC4; *t = allocB0FC4(*(u16 *)((u8 *)a + 0x2D8), 0); }
    while (gTileB0FC4 == 0xFFFF) {
        a->fC = 11;
        if (sub_0800CB78() || sub_08056E90()) {
            gMaskB0FC4 &= ~(1 << a->f0);
            return;
        }
        sub_080003F0();
    }
    animInit0288(&anim[0], 0x50089, gTileB0FC4, -1, 0);
    animInit0288(&anim[1], 0x50087, gTileB0FC4, -1, 0);
    animInit0288(&anim[2], 0x50088, gTileB0FC4, -1, 0);
    a->f5C = a->f1D6 = res->f6 * 3;
    { s32 t = res->f4 * 2; a->f5E = a->f1D4 = ((res->f4 << 3) + t) * 2; }
    a->fC = 0;
    animState = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    hitTimer = 0;
    a->f1FD = 3;
    a->f1FE = 3;
    id = 0xB3;
    res->f28 = id;
    sfx = obj0288(0xB0000 | id)[0x9B];
    res->f24 = 2;
    *((u8 *)res + 0x27) = 0;
    a->f50 = 1;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(s32 *)((u8 *)gHist0288 + j * 4 + i * 0x14C) = 0;
    a->f6C = 0;
    a->f6A = 0;
    a->f68 = 0;
    cnt3 = 0;
    cnt2 = 0;
    k = 0;
    phase = 0;
    cnt = 0;
    frame = 0;
    sub_08098044();
    b2330B0FC4();
    home.x = gCurB0FC4->f14;
    home.y = gCurB0FC4->f18;
    sub_08097FE4();
    sub_08097A4C();
    a->f1FC_lo = a->f0;
    a->f202 = a->f2;
    a->f200 = 0xFF;
    done = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    initB0FC4_0();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (a->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tick0288(gCurB0FC4);
            switch (a->f1FD) {
            case 1:
                a->fC = 0;
                if (sub_08067C08() != 0) {
                    a->f1FD = a->f1FE;
                    sub_08067BF8();
                }
                break;
            case 2:
                a->fC = 0;
                a->f200 = evB0FC4();
                if (a->f200 != 0xFF) {
                    gSelB0FC4 = a->f200;
                    a->f200 |= 0xFF;
                    a->f1FE = 9;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 3:
                animState = 0;
                if (sub_08056F78() != 0) {
                    a->f1FE = 4;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 4:
                animState = 1;
                a->fC = 1;
                if (cnt2 < 8) {
                    a->f1FC_hi = rnd0288(0);
                    p = &gPl0288[a->f1FC_hi];
                    if (cnt3 & 1) {
                        if (reach0288(a, p, 0x140, 0x1C) == 0) {
                            cnt3++;
                            cnt2++;
                            a->f1FE = 5;
                            a->f1FD = 1;
                            sub_08067C18();
                            sfx0288(sfx);
                        }
                    } else if (reach0288(a, p, 0x140, 0x50) == 0) {
                        cnt3++;
                        frame = 0;
                        a->f1FE = 6;
                        a->f1FD = 1;
                        sub_08067C18();
                    }
                } else {
                    a->f1FE = 10;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 5:
                animState = 2;
                a->fC = 2;
                if (a->f6E != 0) {
                    a->f50++;
                    if (4 % cnt++ != 0) {
                        cnt = 0;
                        a->f1FE = 8;
                        a->fC = 9;
                    } else {
                        a->f1FE = 13;
                        a->fC = 0;
                    }
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 6:
                animState = 9;
                a->fC = 9;
                face0288(gCurB0FC4, rnd0288(0));
                {
                    struct Act0288 *g = gCurB0FC4;
                    g->f68 = g->f8;
                    if (frame++ > 0x1E) {
                        frame = 0;
                        spawn0288(g->f0 + 4, 13, g->f1FC_hi, 5, 5);
                        gCurB0FC4->f50++;
                        a->f1FE = 7;
                        a->f1FD = 1;
                        sub_08067C18();
                    }
                }
                break;
            case 7:
                animState = 9;
                a->fC = 9;
                face0288(gCurB0FC4, rnd0288(0));
                gCurB0FC4->f68 = gCurB0FC4->f8 + 8;
                if (frame++ > 0x1E) {
                    frame = 0;
                    end0288(0);
                    a->f1FE = 4;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 8:
                animState = 9;
                a->fC = 9;
                {
                    s16 n = 0;
                    for (i = 1; i <= 4; i++)
                        if (gMaskB0FC4 & (1 << i))
                            n++;
                    if (n <= 1) {
                        if (sub_08002204() == 1) {
                            s16 r = randB0FC4();
                            a->f200 = absB0FC4((s16)(r % 4)) + 1;
                            if (sub_08068450(a->f200) == 1)
                                a->f1FE = 2;
                        } else {
                            a->f200 = 0xFF;
                            a->f1FE = 2;
                        }
                    } else {
                        a->f1FE = 13;
                    }
                }
                a->f1FD = 1;
                sub_08067C18();
                break;
            case 9:
                animState = 9;
                a->fC = 9;
                a->f68 = a->f8 + 8;
                warpB0FC4(home);
                a->f1FE = 13;
                a->f1FD = 1;
                sub_08067C18();
                break;
            case 10:
                animState = 9;
                a->fC = 9;
                a->f1FE = 11;
                a->f1FD = 1;
                sub_08067C18();
                break;
            case 11:
                animState = 9;
                a->fC = 9;
                a->f68 = a->f8 + 8;
                if (phase == 0) {
                    phase = 1;
                    cnt2 = 0;
                    fx0288(*(struct XY0288 *)&a->f14, 1);
                    a0B0B0FC4(a);
                } else if (fxDone0288() != 0) {
                    phase = 0;
                    a->f1FE = 12;
                    a->f1FD = 1;
                    sub_08067C18();
                } else {
                    k++;
                    k &= 0xF;
                    blendB0FC4(0, 0, k, 0);
                }
                break;
            case 12:
                animState = 9;
                a->fC = 9;
                a->f68 = a->f8 + 8;
                if (phase == 0) {
                    phase = 1;
                    fx0288(gPtsB0FC4[gIdxB0FC4], 1);
                    a->f14 = gPtsB0FC4[gIdxB0FC4].x;
                    a->f18 = gPtsB0FC4[gIdxB0FC4].y;
                    gIdxB0FC4 = (gIdxB0FC4 == 8) ? 0 : ++gIdxB0FC4;
                } else if (fxDone0288() != 0) {
                    phase = 0;
                    k = 0;
                    a0A40288(a);
                    blend0288(0, 0, 0, 0);
                    frame = 0;
                    a->f1FE = 6;
                    a->f1FD = 1;
                    sub_08067C18();
                } else {
                    k--;
                    k &= 0xF;
                    blendB0FC4(0, 0, 0, k);
                }
                break;
            case 13:
                animState = 0;
                a->fC = 0;
                if (frame++ > 0x3C) {
                    frame = 0;
                    end0288(0);
                    a->f1FE = 4;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            }
        }
        switch (animState) {
        case 0:
            sl = &anim[0];
            a->f68 = a->f8;
            flag = 1;
            break;
        case 1:
            sl = &anim[0];
            a->f68 = a->f8 + 8;
            flag = 1;
            break;
        case 2:
            sl = &anim[1];
            a->f68 = a->f8;
            flag = 0;
            break;
        case 9:
            sl = &anim[2];
            flag = 0;
            break;
        }
        {
            struct Act0288 *g = gCurB0FC4;
            if (lastAnim != g->f68) {
                lastAnim = g->f68;
                g->f6C = 0;
                g->f6A = 0;
            }
        }
        sl->f1C = gTileB0FC4;
        loadPal0288(gTileB0FC4 + 0x10, sl->fC, 1);
        if (bgFlag0288() & 1)
            prio = bgPrio0288();
        else
            prio = prio0288(a->f14 >> 8, a->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            a->f6E = anim0288(sl, a->f68, &a->f6A, &a->f6C, flag);
        proj0288((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                draw0288(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                if (k != 0)
                    drawEx0288(sx, sy, a->f68, a->f6A, prio, 1, z, &sl->f1C, sl->f8, sl->f0);
                else
                    draw0288(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            }
        }
        {
            s32 hh = a->f4C;
            if (hh != 0 && lastHit != hh) {
                lastHit = hh;
                hitTimer = 10;
                shake = 0;
            }
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmg0288(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = hitTimer;
        }
        if (dead0288(a) != 0)
            done = 1;
        post0288(a);
        sub_080003F0();
        if (done)
            break;
    }

    gMaskB0FC4 &= ~(1 << gCurB0FC4->f0);
    gPl0288[sub_080020F4()].flags |= 1;
    blend0288(0, 0, 0, 0);
    sub_08098060();
    b1FD4B0FC4();
    sl = &anim[2];
    sl->f1C = gTileB0FC4;
    {
        struct Act0288 *g = gCurB0FC4;
        g->f6C = 0;
        g->f6A = 0;
        g->f68 = 0;
    }
    shake = 0;
    hitTimer = 10;
    do {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal0288(gTileB0FC4 + 0x10, sl->fC, 1);
                prio = prio0288(gCurB0FC4->f14 >> 8, gCurB0FC4->f18 >> 8, 0);
                gCurB0FC4->f6E = anim0288(sl, gCurB0FC4->f68, &gCurB0FC4->f6A, &gCurB0FC4->f6C, 1);
                proj0288((s16)(gCurB0FC4->f14 >> 8), (s16)(gCurB0FC4->f18 >> 8), &sx, &sy, z, z);
                draw0288(sx, sy, gCurB0FC4->f68, gCurB0FC4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
                dmg0288(a, lastHit, shake);
            }
        }
        if (hitTimer & 2)
            shake--;
        b23C8B0FC4();
        sub_080003F0();
        hitTimer--;
    } while (hitTimer != 0xFFFF);
    sub_080683CC();
    free0288(gCurB0FC4->f2);
    wait0288(0xDEADFACE);
    while (ready0288(0xDEADFACE) == 0) {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal0288(gTileB0FC4 + 0x10, sl->fC, 1);
                prio = prio0288(gCurB0FC4->f14 >> 8, gCurB0FC4->f18 >> 8, 0);
                gCurB0FC4->f6E = anim0288(sl, gCurB0FC4->f68, &gCurB0FC4->f6A, &gCurB0FC4->f6C, 1);
                proj0288((s16)(gCurB0FC4->f14 >> 8), (s16)(gCurB0FC4->f18 >> 8), &sx, &sy, z, z);
                draw0288(sx, sy, gCurB0FC4->f68, gCurB0FC4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            }
        }
        b23C8B0FC4();
        sub_080003F0();
    }
    next0288(0xDEADFACE);
    while (sub_08058DB0() != 0) {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal0288(gTileB0FC4 + 0x10, sl->fC, 1);
                prio = prio0288(gCurB0FC4->f14 >> 8, gCurB0FC4->f18 >> 8, 0);
                gCurB0FC4->f6E = anim0288(sl, gCurB0FC4->f68, &gCurB0FC4->f6A, &gCurB0FC4->f6C, 1);
                proj0288((s16)(gCurB0FC4->f14 >> 8), (s16)(gCurB0FC4->f18 >> 8), &sx, &sy, z, z);
                draw0288(sx, sy, gCurB0FC4->f68, gCurB0FC4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            }
        }
        b23C8B0FC4();
        sub_080003F0();
    }
    msgEnd0288(0);
    gPl0288[sub_080020F4()].flags |= 1;
    if (flag0288() != 0)
        *(s32 *)(gState0288 + 0x720) = box0288(1, 0xE, 0x19, 2, 0x3C, 0x1400A6);
    else
        *(s32 *)(gState0288 + 0x720) = box0288(1, 0xE, 0x19, 2, 0x3C, 0x1400A4);
    while (boxDone0288(*(s32 *)(gState0288 + 0x720)) == 0) {
        gPl0288[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal0288(gTileB0FC4 + 0x10, sl->fC, 1);
                prio = prio0288(gCurB0FC4->f14 >> 8, gCurB0FC4->f18 >> 8, 0);
                gCurB0FC4->f6E = anim0288(sl, gCurB0FC4->f68, &gCurB0FC4->f6A, &gCurB0FC4->f6C, 1);
                proj0288((s16)(gCurB0FC4->f14 >> 8), (s16)(gCurB0FC4->f18 >> 8), &sx, &sy, z, z);
                draw0288(sx, sy, gCurB0FC4->f68, gCurB0FC4->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            }
        }
        b23C8B0FC4();
        sub_080003F0();
    }
    gPl0288[sub_080020F4()].flags &= ~1;
    b23FCB0FC4();
    b2454B0FC4();
    if (!(gPl0288[sub_080020F4()].flags & 0x2000) && gCurB0FC4->f5A != 0) {
        h = dropFx0288(gData0288, res);
        for (shake = 0x1D; shake != -1; shake--) {
            gCurB0FC4->f18 -= 0x20;
            fall0288(gCurB0FC4, h);
            sub_080003F0();
        }
        dropEnd0288(gData0288, h);
    }
    sub_08056E24();
    while (sub_08056E90() == 0)
        sub_080003F0();
    b2424B0FC4();
}
/* [ReleaseFixedSpawnEffect] Only if control nonnull: cancels scheduled task, frees and clears pointer, flags
 * masked actor entries1..4 at +0x7A bit0, and clears two handles. Null control preserves all those fields. */
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
struct PosB58 { s32 x, y; };
/* The position is passed by value as an 8-byte struct (r0/r1 copied as one DImode pair). */
/* [RunArenaImpactSpawn] Disables combat targeting for the global actor, animates resource 0x50020 at the
 * supplied position with sound 0x1A5 and yield iterations; the source loop continues while animation result is
 * zero or the post-increment counter exceeds 59. If actor field 0x5C and sub_08002204 permit, scans two
 * actor-key slots, requests an enemy spawn into the first absent slot, calls the actor-key team setter with 3
 * and waits for active actor presence. Restores actor combat team 2 and clears task control+8 on normal exit.
 * Spawn definition is 0x084AA580 with byte variant. */
void sub_080B2058(struct PosB58 pos)
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
    x = pos.x >> 8;
    y = pos.y >> 8;
    xs = x << 16;
    ys = y << 16;
    do {
        s32 paused;
        if ((paused = sub_0800CD8C()) == 0)
            done = sub_08065370_5r(&s, 0, &a44, &a46, paused);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (r = sub_0800CD34()) == 0) {
            sub_08000AF0(0x17, (void *)s.fC, 2);
            k = sub_0800BC44(x, y, 0);
            sub_0800BC08_6(xs >> 16, ys >> 16, &x48, &y4A, r, r);
            *(s32 *)(sub_08007870_8p(x48, 0, 0, a44, k, s.b1C, s.f8, s.f0) + 0xC) = y4A;
        }
        sub_080003F0();
    } while (done == 0 || cnt++ > 0x3B);
    if (*(s16 *)(gPtr030007A0 + 0x5C) != 0 && sub_08002204() != 0) {
        u16 *arr;
        for (i = 0, arr = gArr03000798; i <= 1; i++) {
            e = (u16 *)(i * 2 + (u32)arr);
            if (sub_0801A040_1(*e) == 0) {
                *e = sub_08019FD8_3(gData084AA580, 0, gByte0300079C);
                sub_0801A0BC_2(*e, 3);
                do
                    sub_080003F0();
                while (sub_0801A040_1(*e) == 0);
                break;
            }
        }
    }
    sub_0801A0A4_1(gPtr030007A0);
    gTaskP030007A8->f8 = 0;
}
/* [RunObjectAttachedAnimation] Initializes animation resource 0x50089 and yields forever, conditionally
 * loading its palette, projecting the global object's position, advancing animation 0x18 and submitting a
 * sprite. */
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
/* [CleanupFixedSpawnActor] If actor +0x5C nonzero, resets display parameters, calls sub_08098060 and releases
 * position-spawn-effect task; always clears peer rings, mask and palette. */
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
/* [AllocateFixedSpawnEffectTask] Zeros two halfword handles, allocates one 0x28-byte task control and clears
 * +8 only if allocation succeeds. */
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
/* [StartFixedSpawnEffect] Returns for null control, scheduled control, nonzero +8 or failed0x400 allocation.
 * Installs fixed-selector position effect with word0x3B and forwards two words to scheduler. */
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
struct Ene0B23C8 { u8 pad0[0x7A]; u16 flags; u8 pad7C[0x264]; };
extern struct Ene0B23C8 *enemies0B23C8 asm("gUnk_030056F4");
/* [SetEnemySlots1To4Flag0] Other enemy consumers test this bit together with scene-exit predicate to gate
 * action; exact mask name avoids claiming universal removal or forced stop. */
void sub_080B23C8(void)
{
    u8 i;
    for (i = 1; i <= 4; i++)
        enemies0B23C8[i].flags |= 1;
}
/* [AllocateSharedAnimation24Task] Allocates28 bytes hexadecimal in do/wait loop, stores global007AC and
 * clears+8 only; no existing allocation or scheduling guard. */
void sub_080B23FC(void) {
    do {
        gUnk_030007AC = sub_08001494(0x28);
        sub_080003F0();
    } while (gUnk_030007AC == 0);
    M2C_FIELD(gUnk_030007AC, s32 *, 8) = 0;
}
/* [FreeSharedAnimation24Task] First null guard; conditional scheduled cancellation; second global null guard
 * prevents free if cancellation cleared pointer. Frees control only. */
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
/* [StartActorOverlayRenderer] Null control returns; unscheduled control with nonzero word returns.
 * Retries0x400 allocation with a yield on every attempt; installs actor-following overlay callback, no
 * destructor and word0x44. */
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
struct Task0B24B8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Actor0B24B8 { u16 f0; u8 pad2[0xA]; u16 fC; u8 padE[0x2CA]; u16 f2D8, f2DA; };
struct Pos0B24B8 { u16 x; u16 y; };
struct Player0B24B8 { u8 pad0[0x148]; struct Pos0B24B8 *pos; };
struct Point0B24B8 { s32 x, y; };
extern struct Task0B24B8 *taskA0B24B8 asm("gUnk_030007B0");
extern struct Task0B24B8 *taskB0B24B8 asm("gUnk_030007B4");
extern u8 *entA0B24B8 asm("gUnk_030007B8");
extern u8 *entB0B24B8 asm("gUnk_030007BC");
extern struct Point0B24B8 point0B24B8 asm("gUnk_030007C0");
extern u16 slot0B24B8 asm("gUnk_030007C8");
extern u8 dir0B24B8 asm("gUnk_030007CA");
extern u8 tracking0B24B8 asm("gUnk_030007CB");
extern u8 pointing0B24B8 asm("gUnk_030007CC");
extern u32 history0B24B8[4][83] asm("gUnk_03003DC4");
extern struct Player0B24B8 players0B24B8[] asm("gUnk_03003CE0");
extern u16 alloc0B24B8(u16, u16) asm("sub_08016E04");
extern s32 who0B24B8(s32) asm("sub_08096594");
extern u8 dirTo0B24B8(s32, s32, u32, u32) asm("sub_08095FC8");
extern void point0B24B8_set(s32, void *, u8) asm("sub_08097BA4");
extern s32 fade0B24B8(s32) asm("sub_080586B4");
extern void start0B24B8(void *, u32, u32) asm("sub_08000274");
extern void sub_080B280C(void);
extern void sub_080B3648(void);
/* [RunPairedActorEncounter] Allocates and starts two 0x800-stack actor tasks with control+8 values 0x40/0x41,
 * waits for resource admission, clears histories and starts the arena; updates a shared tracking/moving point
 * until termination or both actors deactivate, then signals/waits cleanup and transitions. Resource failure
 * termination clears the actor mask bit and returns early. */
void sub_080B24B8(struct Actor0B24B8 *actor)
{
    u8 i, j;
    u32 n;
    struct Player0B24B8 *p;

    sub_0806849C((u32)actor);
    sub_080684F4();
    pointing0B24B8 = 0;
    tracking0B24B8 = 0;
    taskA0B24B8 = sub_08001494(0x28);
    taskA0B24B8->f8 = 0x40;
    taskA0B24B8->f20 = (u32)sub_08001494(0x800);
    taskA0B24B8->f10 = taskA0B24B8->f20 + 0x7FC;
    taskA0B24B8->fC = (u32)sub_080B280C;
    taskA0B24B8->f24 = 0;
    start0B24B8(taskA0B24B8, 0, 0);
    taskB0B24B8 = sub_08001494(0x28);
    taskB0B24B8->f8 = 0x41;
    taskB0B24B8->f20 = (u32)sub_08001494(0x800);
    taskB0B24B8->f10 = taskB0B24B8->f20 + 0x7FC;
    taskB0B24B8->fC = (u32)sub_080B3648;
    taskB0B24B8->f24 = 0;
    start0B24B8(taskB0B24B8, 0, 0);
    point0B24B8.x = 0xF000;
    point0B24B8.y = 0x8800;
    { u16 *sp = &slot0B24B8; *sp = alloc0B24B8(actor->f2D8, actor->f2DA); }
    while (slot0B24B8 == 0xFFFF) {
        actor->fC = 0xB;
        if (sub_0800CB78() || sub_08056E90()) {
            gUnk_030056FC &= ~(1 << actor->f0);
            return;
        }
        sub_080003F0();
    }
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(u32 *)(i * 0x14C + j * 4 + (u32)history0B24B8) = 0;
    sub_08097FE4();
    sub_08097A4C();
    sub_08097C4C();
    sub_080B4B48();
    sub_08067C18();
    while (!sub_08067C08())
        sub_080003F0();
    sub_08067BF8();
    sub_0805865C(0x197);
    while (!sub_0800CB78() && !sub_08056E90()) {
        if (!sub_08058DB0()) {
            p = &players0B24B8[who0B24B8(0)];
            if (tracking0B24B8) {
                dir0B24B8 = dirTo0B24B8(point0B24B8.x >> 8, point0B24B8.y >> 8, p->pos->x >> 4, (u32)(p->pos->y << 20) >> 20);
            } else if (pointing0B24B8) {
                dir0B24B8 = dirTo0B24B8(point0B24B8.x >> 8, point0B24B8.y >> 8, p->pos->x >> 4, (u32)(p->pos->y << 20) >> 20);
                point0B24B8_set(0x60, &point0B24B8, dir0B24B8);
            }
        }
        sub_080003F0();
        if (*(s16 *)(entA0B24B8 + 0x5C) == 0 && *(s16 *)(entB0B24B8 + 0x5C) == 0)
            break;
    }
    sub_080B4B7C();
    sub_08097C6C();
    sub_080683CC();
    sub_08068330(0xDEADFACE);
    while (!sub_080682B8(0xDEADFACE))
        sub_080003F0();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0())
        sub_080003F0();
    fade0B24B8(0);
    n = 0x6F;
    do {
        u32 t;
        sub_080003F0();
        t = (n << 16) + 0xFFFF0000;
        n = t >> 16;
        if ((s32)t >> 16 == -1)
            break;
    } while (1);
    sub_08067C18();
    while (!sub_08067C08())
        sub_080003F0();
    sub_08067BF8();
    sub_08056E24();
}
/* [CleanupPairedDelayedAimActors] When either actor +0x5C is nonzero, releases four-projectile pool, auxiliary
 * scale task, and two actor controls; always clears peer rings, active mask and palette slot. Both zero skips
 * all task cleanup. */
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
struct Res280C { u8 p0[4]; s16 f4, f6; u8 p8[0xCE]; u16 fD6; };
struct Actor280C {
    u16 f0, f2;
    u8 p4[4];
    s16 f8;
    u8 pa[2];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x30];
    s32 f4C, f50;
    u8 p54[6];
    u16 f5A;
    s16 f5C, f5E;
    u8 p60[8];
    u16 f68, f6A, f6C, f6E;
    u8 p70[0x164];
    s16 f1D4, f1D6;
    u8 p1d8[0x24];
    u8 f1FC_lo : 4;
    u8 f1FC_hi : 4;
    u8 f1FD, f1FE, p1ff;
    u8 f200, p201;
    u16 f202;
    struct Res280C res;
};
struct Spr280C { s32 f0, f4, f8, fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct Pos280C { s32 x, y; };
struct Tile280C { u16 pad : 4; u16 x : 12; u16 y : 12; u16 pad2 : 4; };
struct Player280C { u8 p0[0x30]; u32 flags; u8 p34[0x114]; struct Tile280C *f148; };

extern struct Actor280C *actor280C asm("gUnk_030007B8");
extern struct Actor280C *other280C asm("gUnk_030007BC");
extern struct Pos280C center280C asm("gUnk_030007C0");
extern u16 tile280C asm("gUnk_030007C8");
extern u8 dir280C asm("gUnk_030007CA");
extern u8 flagB280C asm("gUnk_030007CB");
extern u8 flagC280C asm("gUnk_030007CC");
extern u8 *base280C asm("gUnk_030056F4");
extern u32 mask280C asm("gUnk_030056FC");
extern u32 frameCnt280C asm("gUnk_03002344");
extern u8 image280C[] asm("gUnk_084AA7B0");
extern struct Player280C players280C[] asm("gUnk_03003CE0");
extern void *data280C asm("gUnk_030034E0");

void setup280C(void *, void *, s32) asm("sub_0801623C");
void tick280C(void *) asm("sub_0801C8F0");
s32 sprInit280C(void *, u32, u32, s32, s32) asm("sub_08065158");
u8 fade280C(u16 *, s32, u16, s32) asm("sub_08096E20");
void loadPal280C(u16 *, s32) asm("sub_08097F70");
u32 proj280C(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
u8 *draw280C(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
u16 anim280C(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
void dmg280C(void *, s32, s32) asm("sub_0801A120");
s16 dead280C(void *) asm("sub_08019CE8");
s32 free280C(u16) asm("sub_08067CA8");
void fall280C(void *, s32) asm("sub_0806171C");
s32 pick280C(s32) asm("sub_08096594");
u8 approach280C(void *, void *, s32, s32) asm("sub_08097A74");
void mode280C(s32) asm("sub_08097A38");
void quake280C(s32) asm("sub_08097CA8");
void sfx280C(s32) asm("sub_0805865C");
u8 aim280C(s32, s32, s32, s32) asm("sub_08095FC8");
void wave280C(u32, u32) asm("sub_080B4BB8");
void beam280C(struct Pos280C, s32) asm("sub_080B4A7C");
u8 hit280C(void *, struct Pos280C, s32) asm("sub_080B44F0");
s32 finish280C(void *, void *, u16, u16) asm("sub_080970CC");
s32 load280C(void *, void *) asm("sub_0801E46C");
s32 unload280C(void *, s32) asm("sub_0801E4CC");
u8 shade280C(s32, s32, s32) asm("sub_0800BC44");
u8 shade2_280C(void) asm("sub_08097FF8");

static inline void aimAt280C(s32 tx, s32 ty) { actor280C->f8 = aim280C(actor280C->f14 >> 8, actor280C->f18 >> 8, tx, ty); }

/* [RunPairedActorAttackCycle] Initializes the base actor with three sprite resources and alternates
 * approach/tracking, four projectile admissions, sustained side-position effects and animation-frame-gated
 * offset hits through synchronized actor-id phases. Before a linked actor deactivates it follows a shared
 * center; afterward it independently targets players. On death/termination clears its mask/collision
 * dimensions, requests remote full-HP damage for its actor key, performs a finishing animation and conditional
 * thirty-step experience-award sequence. */
void sub_080B280C(void)
{
    struct Spr280C spr[3];
    u16 pal[16];
    struct { s16 x, y; } sc;
    struct Pos280C pos;
    struct Res280C *res;
    s32 lastHit;
    u16 hitTimer;
    u16 flash;
    u16 lastAnim;
    s32 animMode;
    u16 frame;
    s16 shake;
    u16 anim2;
    s32 sel;
    s32 dir;
    u8 done;
    u8 hitflag;
    u8 cycle;
    u8 sfxTimer;
    s32 first;
    u8 b;
    s32 h;
    struct Actor280C *a, *a1, *a2, *a3, *a4;
    u16 *t;
    struct Player280C *p;

    actor280C = (struct Actor280C *)base280C;
    res = &((struct Actor280C *)base280C)->res;
    setup280C(actor280C, image280C, 0);
    sub_0801A0A4(actor280C);
    { struct Actor280C *q = actor280C; q->f5C = q->f1D6 = res->f6 * 3; { s32 t2 = res->f4 * 2; q->f5E = q->f1D4 = t2 * 10; } q->f1FD = 1; }
    actor280C->f1FE = 1;
    a = actor280C;
    a->fC = 0;
    a->f50 = 1;
    sprInit280C(&spr[0], 0x50016, tile280C, -1, 1);
    sprInit280C(&spr[1], 0x50017, tile280C, -1, 1);
    sprInit280C(&spr[2], 0x50018, tile280C, -1, 1);
    spr[0].f1C = tile280C;
    spr[1].f1C = tile280C;
    spr[2].f1C = tile280C;
    a1 = actor280C;
    a1->f6C = 0;
    a1->f6A = 0;
    a1->f68 = 0;
    lastAnim = 0xFFFF;
    a1->f1FC_lo = a1->f0;
    actor280C->f202 = actor280C->f2;
    actor280C->f200 = 0xFF;
    flash = 0;
    hitTimer = 0;
    sfxTimer = 0;
    cycle = 0;
    sel = 0;
    dir = 0;
    animMode = 0;
    hitflag = 0;
    done = 1;
    first = 1;
    loadPal280C(pal, spr[0].fC + res->fD6 * 32);
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (actor280C->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tick280C(actor280C);
            switch (actor280C->f1FD) {
            case 2:
                actor280C->fC = 0;
                if (sub_080682B8(actor280C->f0) != 0) {
                    actor280C->f1FD = actor280C->f1FE;
                    sub_08065E38(actor280C->f0);
                }
                break;
            case 1:
                frame = 0;
                actor280C->f1FE = 6;
                actor280C->f1FD = 2;
                sub_08068330(actor280C->f0);
                break;
            case 4:
                actor280C->fC = 0;
                frame = 0;
                if (other280C->f5C == 0 && first == 1) {
                    sub_0801A0A4(actor280C);
                    first = 0;
                    actor280C->f1FE = 5;
                } else {
                    switch (cycle) {
                    case 0: actor280C->f1FE = 14; break;
                    case 1: actor280C->f1FE = 9; break;
                    case 2: actor280C->f1FE = 6; break;
                    case 3: actor280C->f1FE = 13; break;
                    }
                    cycle = (cycle == 3) ? 0 : cycle + 1;
                }
                actor280C->f1FD = 2;
                sub_08068330(actor280C->f0);
                break;
            case 5:
                actor280C->fC = 0;
                flagB280C = 0;
                flagC280C = 0;
                sub_0801A0B0(actor280C);
                frame++;
                done = fade280C(pal, 4, frame, 0x3C);
                if (done != 0) {
                    loadPal280C(pal, spr[0].fC + res->fD6 * 32);
                    actor280C->f1FE = 16;
                    actor280C->f1FD = 2;
                    sub_08068330(actor280C->f0);
                }
                break;
            case 16:
                sub_0801A0A4(actor280C);
                actor280C->fC = 0;
                flagB280C = 0;
                flagC280C = 0;
                frame = 0;
                actor280C->f1FE = 4;
                actor280C->f1FD = 2;
                sub_08068330(actor280C->f0);
                break;
            case 6:
                actor280C->fC = 1;
                if (first == 0) {
                    p = &players280C[pick280C(1)];
                    flagC280C = 0;
                    if (approach280C(actor280C, p, 0x80, 0x28) == 0) {
                        mode280C(1);
                        actor280C->f1FE = 4;
                        actor280C->f1FD = 2;
                        sub_08068330(actor280C->f0);
                    }
                } else {
                    flagC280C = 1;
                    if (frame++ > 180) {
                        flagC280C = 0;
                        mode280C(0);
                        actor280C->f1FE = 4;
                        actor280C->f1FD = 2;
                        sub_08068330(actor280C->f0);
                    } else {
                        quake280C(0x10);
                        sfxTimer--;
                        if (sfxTimer == 0xFF) {
                            sfxTimer = 60;
                            sfx280C(0xE0);
                        }
                    }
                }
                break;
            case 9:
                actor280C->fC = 2;
                flagB280C = 1;
                if (first == 0) {
                    actor280C->f1FC_hi = pick280C(1);
                    p = &players280C[actor280C->f1FC_hi];
                    t = (u16 *)p->f148;
                    aimAt280C(t[0] >> 4, (u32)(t[1] << 20) >> 20);
                }
                wave280C(first, 0);
                wave280C(first, 1);
                wave280C(first, 2);
                wave280C(first, 3);
                frame = 0;
                actor280C->f1FE = 10;
                actor280C->f1FD = 2;
                sub_08068330(actor280C->f0);
                break;
            case 10:
                flagB280C = 0;
                if (frame++ > 300) {
                    mode280C(1);
                    frame = 0;
                    actor280C->f1FE = 20;
                    actor280C->f1FD = 2;
                    sub_08068330(actor280C->f0);
                }
                break;
            case 14:
                actor280C->fC = 2;
                sel = 2;
                flagB280C = 1;
                if (first == 0) {
                    p = &players280C[pick280C(1)];
                    t = (u16 *)p->f148;
                    aimAt280C(t[0] >> 4, (u32)(t[1] << 20) >> 20);
                }
                if (frame++ <= 180) {
                    switch (dir) {
                    case 0: pos.x = actor280C->f14 - 0x3000; pos.y = actor280C->f18; break;
                    case 1: pos.x = actor280C->f14 - 0x3000; pos.y = actor280C->f18; break;
                    case 2: pos.x = actor280C->f14 + 0x3000; pos.y = actor280C->f18; break;
                    case 3: pos.x = actor280C->f14 + 0x3000; pos.y = actor280C->f18; break;
                    }
                    beam280C(pos, 0x50);
                } else {
                    flagB280C = 0;
                    mode280C(1);
                    frame = 0;
                    actor280C->f1FE = 20;
                    actor280C->f1FD = 2;
                    sub_08068330(actor280C->f0);
                }
                break;
            case 13:
                actor280C->fC = 2;
                if (first == 0) {
                    p = &players280C[pick280C(1)];
                    t = (u16 *)p->f148;
                    aimAt280C(t[0] >> 4, (u32)(t[1] << 20) >> 20);
                }
                if (sfxTimer == 0) {
                    sfxTimer = 1;
                    sfx280C(0xE1);
                }
                sel = 1;
                flagB280C = 0;
                if ((u16)(actor280C->f6A - 1) <= 1) {
                    switch (dir) {
                    case 0: pos.x = -0x3000; break;
                    case 1: pos.x = -0x3000; break;
                    case 2: pos.x = 0x3000; break;
                    case 3: pos.x = 0x3000; break;
                    }
                    pos.y = 0;
                    if (hitflag == 0)
                        hitflag = hit280C(actor280C, pos, 0x20);
                }
                if (actor280C->f6E != 0) {
                    mode280C(1);
                    frame = 0;
                    actor280C->f1FE = 20;
                    actor280C->f1FD = 2;
                    sub_08068330(actor280C->f0);
                }
                break;
            case 20:
                a3 = actor280C;
                a3->fC = 0;
                flagB280C = 0;
                flagC280C = 0;
                if (frame++ > 120) {
                    frame = 0;
                    sfxTimer = 60;
                    a3->f1FE = 4;
                    actor280C->f1FD = 2;
                    sub_08068330(actor280C->f0);
                }
                break;
            }
        }
        if (first == 0) {
            switch (actor280C->f8) {
            case 0: case 1: case 2: dir = 0; break;
            case 3: case 4: dir = 1; break;
            case 5: dir = 2; break;
            case 6: case 7: dir = 3; break;
            }
        } else {
            switch (dir280C) {
            case 0: case 1: case 2: dir = 0; break;
            case 3: case 4: dir = 1; break;
            case 5: dir = 2; break;
            case 6: case 7: dir = 3; break;
            }
            switch (dir) {
            case 0:
                actor280C->f14 = center280C.x - 0x580;
                actor280C->f18 = center280C.y + 0x180;
                break;
            case 1:
                actor280C->f14 = center280C.x - 0x580;
                actor280C->f18 = center280C.y + 0x180;
                break;
            case 2:
                actor280C->f14 = center280C.x + 0x580;
                actor280C->f18 = center280C.y + 0x180;
                break;
            case 3:
                actor280C->f14 = center280C.x + 0x580;
                actor280C->f18 = center280C.y + 0x180;
                break;
            }
        }
        switch (actor280C->fC) {
        case 0:
            sel = 0;
            animMode = 1;
            actor280C->f68 = dir;
            break;
        case 1:
            sel = 0;
            animMode = 1;
            actor280C->f68 = dir + 4;
            break;
        case 2:
            animMode = 0;
            if (sel == 2)
                actor280C->f68 = dir * 2 + 1;
            else
                actor280C->f68 = dir;
            break;
        }
        if (lastAnim != actor280C->f68) {
            lastAnim = actor280C->f68;
            actor280C->f6C = 0;
            actor280C->f6A = 0;
        }
        switch (sel) {
        case 0:
        case 2:
            anim2 = dir + 8;
            break;
        case 1:
            anim2 = dir + 4;
            break;
        }
        if (done != 0)
            sub_08000AF0(tile280C + 0x10, (void *)(spr[sel].fC + res->fD6 * 32), 1);
        else
            sub_08000AF0(tile280C + 0x10, pal, 1);
        if (sub_08098004() & 1)
            b = shade2_280C();
        else
            b = shade280C(actor280C->f14 >> 8, actor280C->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            actor280C->f6E = anim280C(&spr[sel], actor280C->f68, &actor280C->f6A, &actor280C->f6C, animMode);
        proj280C((s16)(actor280C->f14 >> 8), (s16)(actor280C->f18 >> 8), &sc.x, &sc.y, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                draw280C(sc.x, sc.y, actor280C->f68, actor280C->f6A, b, &spr[sel].f1C, spr[sel].f8, spr[sel].f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            draw280C(sc.x, sc.y, actor280C->f68, actor280C->f6A, b, &spr[sel].f1C, spr[sel].f8, spr[sel].f0);
        }
        if (sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0 && (frameCnt280C & 1)) {
            u8 *r;
            proj280C((s16)(actor280C->f14 >> 8), (s16)(actor280C->f18 >> 8), &sc.x, &sc.y, 0, 0);
            r = draw280C(sc.x, 1, anim2, 0, (u8)(b + 1), &spr[sel].f1C, spr[sel].f8, spr[sel].f0);
            *(s32 *)(r + 0xC) = sc.y;
        }
        if (actor280C->f4C != 0 && lastHit != actor280C->f4C) {
            lastHit = actor280C->f4C;
            hitTimer = 10;
            shake = 0;
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmg280C(actor280C, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            actor280C->f4C = lastHit;
        }
        sub_080003F0();
        if (dead280C(actor280C) != 0)
            break;
    }
    mask280C &= ~(1 << actor280C->f0);
    ((u8 *)actor280C)[0x22E] = 0;
    ((u8 *)actor280C)[0x22F] = 0;
    sel = 0;
    a4 = actor280C;
    a4->f68 = dir;
    a4->f6C = 0;
    a4->f6A = sel;
    free280C(a4->f2);
    sfx280C(0xBD);
    finish280C(actor280C, spr, res->fD6, tile280C);
    if (!(players280C[sub_080020F4()].flags & 0x2000) && actor280C->f5A != 0) {
        h = load280C(data280C, res);
        for (shake = 0x1D; shake != -1; shake--) {
            actor280C->f18 -= 0x20;
            fall280C(actor280C, h);
            sub_080003F0();
        }
        unload280C(data280C, h);
    }
}
