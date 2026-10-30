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
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B44F0);
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
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5B90);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5E64);
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
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6178);
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
#ifdef NONMATCHING
void sub_080B64A4(void)
{
    void *volatile *base;
    u8 i;
    i = 1;
    base = &gUnk_030056F4;
    for (i = 1; i <= 4; i++)
        *(u16 *)((u8 *)*base + i * 0x2E0 + 0x7A) |= 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B64A4);
#endif
