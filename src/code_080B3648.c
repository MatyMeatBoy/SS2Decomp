#include "global.h"
extern u16 gArr030007D4[] asm("gUnk_030007D4");
extern u8 *gPtr030007EC asm("gUnk_030007EC");
extern void sub_080A4AD0();
extern void sub_080B5F94();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTP030007E4 asm("gUnk_030007E4");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
void sub_080B5F94(void);
void sub_080B6178(void);

INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B3648);
#ifdef NONMATCHING
struct Boss0B44F0 { u16 index; u8 p2[0xA]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 hitId; };
struct Player0B44F0 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 alive; u8 p69[0x1F]; u16 hp; u8 p8A[2]; s32 x, y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x32]; u32 hitIds[0x1A]; };
extern struct Player0B44F0 players0B44F0[] asm("gUnk_03003CE0");
extern u16 hit0B44F0(void *, void *) asm("sub_0801ED8C");
/* Hit the local player when it is within `range` of the boss point (ox, oy). */
s32 sub_080B44F0_v(struct Boss0B44F0 *b, s32 ox, s32 oy, u16 range) asm("sub_080B44F0");
s32 sub_080B44F0_v(struct Boss0B44F0 *b, s32 ox, s32 oy, u16 range)
{
    s32 hit;
    s32 x, y;
    u16 dx;
    s32 dy;

    hit = 0;
    x = ox + b->x;
    y = oy + b->y;
    dx = (u32)((x - players0B44F0[sub_080020F4()].x) << 8) >> 16;
    dy = (s32)((y - players0B44F0[sub_080020F4()].y) << 8) >> 16;
    if ((u16)Sqrt((s16)dx * (s16)dx + dy * dy) < range && !sub_0800CDF8() && !sub_0800CCCC()
        && !sub_0800CD8C() && b->state != 11
        && !(players0B44F0[sub_080020F4()].flags & 0x2000)
        && players0B44F0[sub_080020F4()].alive != 0
        && players0B44F0[sub_080020F4()].state != 14
        && players0B44F0[sub_080020F4()].state != 11
        && players0B44F0[sub_080020F4()].state != 12
        && players0B44F0[sub_080020F4()].hitIds[b->index] != b->hitId) {
        players0B44F0[sub_080020F4()].state = 10;
        players0B44F0[sub_080020F4()].fB0 = 0xFFFE;
        players0B44F0[sub_080020F4()].hp += hit0B44F0(b, &players0B44F0[sub_080020F4()]);
        players0B44F0[sub_080020F4()].hitIds[b->index] = b->hitId++;
        hit = 1;
    }
    return hit;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B44F0);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4690);
struct B4A7CPlayer {
    u8 pad0[0x20]; u16 state; u8 pad22[0x30 - 0x22];
    u32 flags; u8 pad34[0x68 - 0x34]; u8 active;
    u8 pad69[0x8C - 0x69]; s32 x, y;
    u8 pad94[0xC8 - 0x94]; u16 time, result, delay;
    u8 tail[0x14C - 0xCE];
};
extern struct B4A7CPlayer playersB4A7C[] asm("gUnk_03003CE0");
extern u8 sub_08095FC8(s32, s32, s32, s32);
struct B4A7CTarget { s32 x, y; };
void sub_080B4A7C(struct B4A7CTarget target)
{
    struct B4A7CPlayer *player;
    struct B4A7CPlayer *players = playersB4A7C;
    u32 index;
    u32 targetIndex;
    s32 x, y;
    register u8 *field asm("r1");
    register u16 *dst asm("r0");
    register u32 output asm("r1");
    index = sub_080020F4();
    player = &players[index];
    if (player->state == 0xB) return;
    index = sub_080020F4();
    player = &players[index];
    if (player->state == 0xE) return;
    index = sub_080020F4();
    player = &players[index];
    if (player->state == 0xC) return;
    index = sub_080020F4();
    player = &players[index];
    field = (u8 *)players + 0x30;
    if (*(u32 *)(field + index * 0x14C) & 0x2000) return;
    index = sub_080020F4();
    player = &players[index];
    if (!player->active) return;
    targetIndex = sub_080020F4();
    index = sub_080020F4();
    player = &players[index];
    field = (u8 *)players + 0x8C;
    x = *(s32 *)(field + index * 0x14C) >> 8;
    index = sub_080020F4();
    player = &players[index];
    field = (u8 *)players + 0x90;
    y = *(s32 *)(field + index * 0x14C) >> 8;
    players[targetIndex].result = sub_08095FC8(x, y, target.x >> 8, target.y >> 8);
    index = sub_080020F4();
    player = &players[index];
    dst = &player->delay;
    output = 0x90;
    output <<= 2;
    *dst = output;
    index = sub_080020F4();
    player = &players[index];
    dst = &player->time;
    *dst = 8;
}
void sub_080B4B48(void)
{
  u8 var_r2;
  void *temp_r0;
  gUnk_030007D0 = (temp_r0 = sub_08001494(0xA0U));
  if (temp_r0 != ((void *) 0))
  {
    var_r2 = 0;
    do
    {
      *((s32 *) (((s8 *) ((var_r2 * 0x28) + gUnk_030007D0)) + 8)) = 0;
      var_r2 += 1;
    }
    while (((u32) var_r2) <= 3U);
  }
}
extern void sub_08000274_1(u32) asm("sub_08000274");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern u8 *gP030007D0 asm("gUnk_030007D0");
void sub_080B4B7C(void)
{
    u8 *e;
    u32 i;
    if (gP030007D0 == 0)
        return;
    for (i = 0, e = gP030007D0; i <= 3; e += 0x28, i++)
        if (sub_08000470((u32)e) != 0)
            sub_080003A8(e);
    i = 0;
    sub_08001538(gP030007D0);
    gP030007D0 = (u8 *)i;
}
extern void sub_080B4690();
void sub_080B4BB8(u8 a, u16 arg)
{
  struct TaskP *t;
  u32 z;
  u8 i;
  if (gP030007D0 == 0)
  {
    return;
  }
  t = (struct TaskP *) gP030007D0;
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
  if ((t->f20 = sub_08001494(0x400)) == 0)
  {
    return;
  }
 do { t->f10 = t->f20 + 0x3FC; t->fC = (u32) sub_080B4690; t->f24 = z; t->f8 = arg + 0x40; sub_08000274_3((u32)t, a, arg); } while (0);
}
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4C34);
struct Player0B5B90 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 b68; u8 p69[0x23]; s32 x, y; u8 p94[0x1C]; u16 wB0; u8 pB2[0x16]; u16 knock, dir, speed; u8 pCE[0x16]; u32 hits[4]; u8 pF4[0x14C - 0xF4]; };
struct Boss0B5B90 { u16 slot; u8 p2[0xA]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 hitId; u8 p54[8]; s16 active; };
extern struct Player0B5B90 players0B5B90[] asm("gUnk_03003CE0");
extern struct Boss0B5B90 *boss0B5B90 asm("gUnk_030007DC");
extern s32 atan0B5B90(s16, s16) asm("ArcTan2");
/* Damage and knock back the player when it touches the boss. */
u32 sub_080B5B90(u8 kind)
{
    u8 k;
    u16 dist;
    u16 dx;
    u32 dy;
    u32 rx, ry;
    s32 sy;
    s32 xx;
    u32 ret;
    u32 dir;

    k = kind;
    rx = (boss0B5B90->x - players0B5B90[sub_080020F4()].x) << 8;
    dx = rx >> 16;
    ry = (boss0B5B90->y - players0B5B90[sub_080020F4()].y) << 8;
    xx = (s16)dx * (s16)dx;
    dy = ry >> 16;
    sy = (s32)ry >> 16;
    dist = Sqrt(xx + sy * sy);
    ret = 0;
    if (dist > 19)
        goto out;
    if (boss0B5B90->active == 0 || boss0B5B90->state == 11)
        goto out;
    if (sub_0800CDF8() || sub_0800CD8C() || sub_0800CCCC())
        goto out;
    if (players0B5B90[sub_080020F4()].flags & 0x2000)
        goto out;
    if (players0B5B90[sub_080020F4()].b68 == 0)
        goto out;
    if (players0B5B90[sub_080020F4()].state == 14 || players0B5B90[sub_080020F4()].state == 11
        || players0B5B90[sub_080020F4()].state == 12)
        goto out;
    if (sub_0800CE30() == 1) {
        switch (k) {
        case 1: sub_08029A7C(0, 200, 4); break;
        case 2: sub_08029A7C(1, 150, 4); break;
        case 3: sub_08029A7C(2, 150, 4); break;
        case 4: sub_08029A7C(0, 200, 4); break;
        case 5: sub_08029A7C(3, 150, 4); break;
        case 6: sub_08029A7C(4, 150, 4); break;
        case 7: sub_08029A7C(6, 150, 4); break;
        case 0: default: sub_08029A7C(5, 150, 4); break;
        }
    } else {
        switch (kind) {
        case 0: sub_08029A7C(5, 60, 2); break;
        case 1: sub_08029A7C(0, 90, 2); break;
        case 2: sub_08029A7C(1, 60, 2); break;
        case 3: sub_08029A7C(2, 60, 2); break;
        case 4: sub_08029A7C(0, 90, 2); break;
        case 5: sub_08029A7C(3, 60, 2); break;
        case 6: sub_08029A7C(4, 60, 2); break;
        case 7: sub_08029A7C(6, 60, 2); break;
        default: sub_08029A7C(5, 60, 2); break;
        }
    }
    players0B5B90[sub_080020F4()].wB0 = 0xFFFE;
    players0B5B90[sub_080020F4()].hits[boss0B5B90->slot] = boss0B5B90->hitId++;
    ret = 0x28;
    {
        u32 a = atan0B5B90(dx, dy) << 16;
        u32 frac;
        asm("" : "+r"(a));
        frac = a << 3;
        dir = a >> 29;
        if (frac > 0x80000000) {
            if (dir <= 6)
                dir++;
            else
                dir = 0;
        }
    }
    switch (dir) {
    case 0:
        players0B5B90[sub_080020F4()].dir = 6;
        break;
    case 1:
        players0B5B90[sub_080020F4()].dir = 7;
        break;
    default:
        players0B5B90[sub_080020F4()].dir = dir - 2;
        break;
    }
    players0B5B90[sub_080020F4()].speed = 0x400;
    players0B5B90[sub_080020F4()].knock = 8;
out:
    return ret;
}
struct Enemy0B5E64 { u8 p0[0xC]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x2E]; u16 hp; u8 p4C[8]; u32 hitId; u8 p58[0x24]; u16 knock, dir, speed; u8 p82[0x25E]; };
struct Boss0B5E64 { u8 p0[0xC]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 hitId; u8 p54[8]; s16 active; };
extern struct Enemy0B5E64 *enemies0B5E64 asm("gUnk_030056F4");
extern u32 activeMask0B5E64 asm("gUnk_030056FC");
extern struct Boss0B5E64 *boss0B5E64 asm("gUnk_030007DC");
extern s32 hit0B5E64(void *, void *) asm("sub_0801EF14");
extern s32 atan0B5E64(s16, s16) asm("ArcTan2");
/* Damage and knock back every active enemy that touches the boss. */
void sub_080B5E64(void)
{
    struct Enemy0B5E64 *e;
    u8 i;
    s32 dy, dx;
    u32 dir;

    e = &enemies0B5E64[1];
    for (i = 1; i <= 4; e++, i++) {
        if (!(activeMask0B5E64 & (1 << i)))
            continue;
        {
            u32 rx = (boss0B5E64->x - e->x) << 8;
            u32 ry = (boss0B5E64->y - e->y) << 8;
            if ((u16)Sqrt((dx = (s32)rx >> 16) * dx + (dy = (s32)ry >> 16) * dy) > 19)
                continue;
        }
        if (boss0B5E64->active == 0 || e->knock != 0)
            continue;
        if (sub_0800CDF8() || sub_0800CD8C() || sub_0800CCCC())
            continue;
        if (boss0B5E64->state == 11 || e->hitId == boss0B5E64->hitId)
            continue;
        e->state = 10;
        e->hp += hit0B5E64(boss0B5E64, e);
        e->hitId = boss0B5E64->hitId++;
        {
            u32 a = atan0B5E64(dx, dy) << 16;
            u32 frac;
            asm("" : "+r"(a));
            frac = a << 3;
            dir = a >> 29;
            if (frac > 0x80000000) {
                if (dir <= 6)
                    dir++;
                else
                    dir = 0;
            }
        }
        switch (dir) {
        case 0:
            e->dir = 6;
            break;
        case 1:
            e->dir = 7;
            break;
        default:
            e->dir = dir - 2;
            break;
        }
        e->speed = 0x400;
        e->knock = 8;
    }
}
extern volatile u8 gTick5F94 asm("gUnk_030007E8");
extern volatile u8 gOtherTick5F94 asm("gUnk_030007E9");
extern volatile u8 gFlag5F94 asm("gUnk_030007EA");
extern s16 gTable5F94[] asm("gUnk_080B9704");
extern void setScreen5F94(u32, u32, u32) asm("sub_080009C0");
extern void setScroll5F94(u32, s32, u32) asm("sub_0800BBD8");
extern void draw5F94(u32, u32, u32, u32, u32, u32) asm("sub_0800903C");
void sub_080B5F94(void)
{
    u32 x;
    u32 y;
    u8 i;
    s32 base;
    s32 dx;
    s32 dy;
    s32 sample;
    register u32 drawN asm("r3");
    u16 n;
    gTick5F94 = 0;
    gOtherTick5F94 = 0;
    gFlag5F94 = 0;
    y = 0;
    x = 0;
    i = 0;
    base = 6;
    dx = 0xAA;
    dy = 0x2A;
    for (;;) {
        sample = gTable5F94[i];
        n = (sample >> 6) + base;
        i += 2;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            if (gFlag5F94 == 0) {
                setScreen5F94(0x1F00, 0, 1);
                x -= dx;
                y += dy;
                setScroll5F94(1, (s32)x >> 8, 0);
                setScroll5F94(3, (s32)y >> 8, 0);
            } else {
                base = 8;
                dx = 0x2A;
                dy = 0x15;
                x -= 0x2A;
                y += 0x15;
                setScroll5F94(1, (s32)x >> 8, 0);
                setScroll5F94(3, (s32)y >> 8, 0);
            }
            drawN = n;
            draw5F94(2, 0x3C, 1, drawN, 0x10, 0);
        }
        sub_080003F0();
    }
}
extern u8 gTick6068 asm("gUnk_030007E8");
extern u8 gOtherTick6068 asm("gUnk_030007E9");
extern u8 gFlag6068 asm("gUnk_030007EA");
struct Display6068 { u8 pad[0x30]; u16 item30; u16 pad32; u16 item34; u16 pad36; u16 item38; u16 item3A; };
extern struct Display6068 gDisplay6068 asm("gUnk_03001250");
extern void setScreen6068(u32, u32, u32) asm("sub_080009C0");
extern void resetScreen6068(u32, u32, u32) asm("sub_080009F8");
u32 sub_080B6068(void)
{
    register volatile u8 *tickPtr asm("r1");
    volatile u8 *otherPtr;
    struct Display6068 *display;
    register u32 tick asm("r2");
    register u32 current asm("r3");
    sub_080586B4(0);
    gFlag6068 = 1;
    if (sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
        setScreen6068(0x1F00, 0x2000, 1);
        gDisplay6068.item38 = 0x3F;
        gDisplay6068.item3A = 0x3B;
    }
    tickPtr = &gTick6068;
    tick = *tickPtr + 1;
    *tickPtr = tick;
    otherPtr = &gOtherTick6068;
    display = &gDisplay6068;
    current = *tickPtr;
    display->item30 = (current << 8) | (0xF0 - current);
    current = *otherPtr;
    display->item34 = (current << 8) | (0xA0 - current);
    if ((u8)tick <= 0x77)
        return 0;
    resetScreen6068(0x400, 0, 1);
    return 1;
}
extern u8 *gTask60F4 asm("gUnk_030007EC");
extern u32 gMask60F4 asm("gUnk_030056FC");
extern u8 *gIcons60F4 asm("gUnk_030056F4");
extern u16 gArray60F4[] asm("gUnk_030007D4");
void clearTask60F4(void) asm("sub_080B60F4");
void clearTask60F4(void)
{
    u8 **task = &gTask60F4;
    u8 i;
    if (*task != 0) {
        if (sub_08000470((u32)*task) != 0)
            sub_080003A8((u32)*task);
        sub_08001538((u32)*task);
        *task = 0;
        i = 1;
        do {
            if (gMask60F4 & (1 << i))
                *(u16 *)(gIcons60F4 + i * 0x2E0 + 0x7A) |= 1;
            i++;
        } while (i <= 4);
        i = 0;
        do {
            gArray60F4[i] = 0;
            i++;
        } while (i <= 1);
    }
}
#ifdef NONMATCHING
struct Spr0B6178 { s32 f0, f4, f8, fC, f10, f14, f18; u8 b1C[0x18]; };
struct Task0B6178 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u8 *ptr0B6178 asm("gUnk_030007DC");
extern u16 arr0B6178[2] asm("gUnk_030007D4");
extern u8 font0B6178 asm("gUnk_030007D8");
extern u8 data0B6178[] asm("gUnk_084ABA10");
extern struct Task0B6178 *task0B6178 asm("gUnk_030007EC");
extern void lock0B6178(void *) asm("sub_0801A0B0");
extern void unlock0B6178(void *) asm("sub_0801A0A4");
extern void init0B6178(void *, u32, u32, s32, s32) asm("sub_08065158");
extern u32 anim0B6178(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void coords0B6178(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern u8 *draw0B6178(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
extern s32 busy0B6178(u32) asm("sub_0801A040");
extern u16 open0B6178(void *, u32, u32) asm("sub_08019FD8");
extern void show0B6178(u32, u32) asm("sub_0801A0BC");
/* Same effect sequence as sub_080B2058 for the second boss arena. */
void sub_080B6178_v(s32 arg0, s32 arg1) asm("sub_080B6178");
void sub_080B6178_v(s32 arg0, s32 arg1)
{
    struct Spr0B6178 s;
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
    lock0B6178(ptr0B6178);
    init0B6178(&s, 0x50020, 8, -1, 1);
    s.b1C[0] = 7;
    s.b1C[1] = 8;
    a46 = 0;
    a44 = 0;
    cnt = 0;
    sub_0805865C(0x1A5);
    xs = (x = arg0 >> 8) << 16;
    ys = (y = arg1 >> 8) << 16;
    do {
        s32 paused;
        if ((paused = sub_0800CD8C()) == 0)
            done = anim0B6178(&s, 0, &a44, &a46, paused);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (r = sub_0800CD34()) == 0) {
            sub_08000AF0(0x17, (void *)s.fC, 2);
            k = sub_0800BC44(x, y, 0);
            coords0B6178(xs >> 16, ys >> 16, &x48, &y4A, r, r);
            *(s32 *)(draw0B6178(x48, 0, 0, a44, k, s.b1C, s.f8, s.f0) + 0xC) = y4A;
        }
        sub_080003F0();
    } while (done == 0 || cnt++ > 0x3B);
    if (*(s16 *)(ptr0B6178 + 0x5C) != 0 && sub_08002204() != 0) {
        u16 *arr;
        for (i = 0, arr = arr0B6178; i <= 1; i++) {
            e = (u16 *)(i * 2 + (u32)arr);
            if (busy0B6178(*e) == 0) {
                *e = open0B6178(data0B6178, font0B6178 >> 4, font0B6178 & 0xF);
                show0B6178(*e, 3);
                do
                    sub_080003F0();
                while (busy0B6178(*e) == 0);
                break;
            }
        }
    }
    unlock0B6178(ptr0B6178);
    task0B6178->f8 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6178);
#endif
void sub_080B6324(void) {
    if (M2C_FIELD(gUnk_030007DC, s16 *, 0x5C) != 0) {
        sub_080B60F4();
        sub_080B6360();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007E0);
}
void sub_080B6360(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_030007E4) != 0) {
        sub_080003A8(gUnk_030007E4);
    }
    if (gUnk_030007E4 != 0) {
        sub_08001538(gUnk_030007E4);
        gUnk_030007E4 = 0;
    }
}
void sub_080B63A0(void)
{
  s32 temp_r0;
  gUnk_030007E4 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080B63BC(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP030007E4) == 0 && gTP030007E4->f8 != 0)
        return;
    gTP030007E4->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP030007E4;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080B5F94;
    t->f24 = 0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080B640C(void)
{
    u8 i;
    u8 *p;
    u8 **pp;
    i = 0;
    pp = &gPtr030007EC;
    for (; i <= 1; i++)
        gArr030007D4[i] = 0;
    p = (u8 *)sub_08001494(0x28);
    *pp = p;
    if (p != 0)
        *(u32 *)(p + 8) = 0;
}
void sub_080B6448(u32 a, u32 b)
{
    register u32 first asm("r6") = a;
    u8 **pp = &gPtr030007EC;
    u8 *obj;
    u32 mem;
    u32 z;
    register void *taskArg asm("r0");
    register u32 second asm("r2");
    if (*pp == 0 || sub_08000470((u32)*pp) != 0)
        return;
    z = *(u32 *)(*pp + 8);
    if (z != 0)
        return;
    mem = sub_08001494(0x400);
    obj = *pp;
    *(u32 *)(obj + 0x20) = mem;
    if (mem == 0)
        return;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 0xC) = (u32)sub_080B6178;
    *(u32 *)(obj + 0x24) = z;
    *(u32 *)(obj + 8) = 0x3B;
    taskArg = obj;
    second = b;
    sub_08000274_4(taskArg, first, second, z);
}
void sub_080B64A4(void)
{
    register void *volatile *base asm("r4");
    u8 i;
    asm("" : : : "r5");
    i = 1;
    base = &gUnk_030056F4;
    for (i = 1; i <= 4; i++)
        *(u16 *)((u8 *)*base + i * 0x2E0 + 0x7A) |= 1;
}
