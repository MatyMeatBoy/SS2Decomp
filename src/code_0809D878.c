#include "global.h"
extern void sub_0809F4A8();
extern struct TaskP *gTP03000328 asm("gUnk_03000328");
extern u8 *gP03000324 asm("gUnk_03000324");
extern struct TaskP *gTP03000318 asm("gUnk_03000318");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern void sub_08000274_1(u32) asm("sub_08000274");
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
void sub_0809F4A8(void);
void sub_080A0B44(void);
void sub_080A05B4(u32 mode, void *state);

extern s32 gUnk_03000324;

INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809D878);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809E468);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809EDFC);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809EF84);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F018);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F4A8);
void sub_0809F8C8(void) {
    if (M2C_FIELD(gUnk_03000310, s16 *, 0x5C) != 0) {
        sub_0809FAEC();
        sub_0809FA28();
        sub_0809F934();
        sub_08097C6C();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000314);
}
void sub_0809F90C(void) {
    gUnk_0300031C = 1;
}
void sub_0809F918(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000318 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_0809F934(void) {
    if (sub_08000470(gUnk_03000318) != 0) {
        sub_08000E48();
        sub_0800CC18();
        sub_0800115C(0);
        sub_080011E4(0);
        sub_080009C0(0x400, 0, 0);
        sub_0800903C(0, 0, 0, 0, 0, 0);
        sub_0800BD48(2, 1);
        sub_080003A8(gUnk_03000318);
    }
    sub_08001538(gUnk_03000318);
    gUnk_03000318 = 0;
}
void sub_0809F998(void)
{
    if (sub_08000470((u32)gTP03000318) == 0 && gTP03000318->f8 != 0)
        return;
    do {
        gTP03000318->f20 = sub_08001494(0x400);
        sub_080003F0();
    } while (gTP03000318->f20 == 0);
    gTP03000318->f10 = gTP03000318->f20 + 0x3FC;
    gTP03000318->fC = (u32)sub_0809E468;
    gTP03000318->f24 = 0;
    gTP03000318->f8 = 0x3E;
    sub_08000274_3((u32)gTP03000318, 0, 0);
}
#ifdef NONMATCHING
void sub_0809F9F8(void)
{
    u8 *base = sub_08001494(0xA0);
    u32 i;
    gUnk_03000324 = base;
    if (base != 0) {
        for (i = 0; i < 4; i++)
            *(u32 *)(base + i * 0x28 + 8) = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F9F8);
#endif
void sub_0809FA28(void)
{
    u8 *e;
    u32 i;
    if (gP03000324 == 0)
        return;
    for (i = 0, e = gP03000324; i <= 3; e += 0x28, i++)
        if (sub_08000470((u32)e) != 0)
            sub_080003A8(e);
    i = 0;
    sub_08001538(gP03000324);
    gP03000324 = (u8 *)i;
}
extern void sub_0809F018();
void sub_0809FA64(u16 arg)
{
  struct TaskP *t = (struct TaskP *) gP03000324;
  u32 z;
  u8 i;
  if (t == 0)
  {
    return;
  }
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
  if ((t->f20 = sub_08001494(0x200)) == 0)
  {
    return;
  }
 do { t->f10 = t->f20 + 0x1FC; t->fC = (u32) sub_0809F018; t->f24 = z; t->f8 = 0x40; sub_08000274_2(t, arg); } while (0);
}
void sub_0809FACC(void)
{
  int new_var;
  s8 *new_var2;
  s32 temp_r0;
  temp_r0 = (gUnk_03000328 = (s32) sub_08001494(0x28U));
  new_var = 0;
  new_var2 = (s8 *) temp_r0;
  if (temp_r0 != new_var)
  {
    *((s32 *) (new_var2 + 8)) = new_var;
  }
}
void sub_0809FAEC(void) {
    if (gUnk_03000328 != 0) {
        if (sub_08000470(gUnk_03000328) != 0) {
            sub_080003A8(gUnk_03000328);
        }
        sub_08001538(gUnk_03000328);
        gUnk_03000328 = 0;
    }
}
void sub_0809FB18(void)
{
    u32 mem;
    struct TaskP *t;
    if (gTP03000328 == 0)
        return;
    if (sub_08000470((u32)gTP03000328) == 0 && gTP03000328->f8 != 0)
        return;
    gTP03000328->f8 = 0x40;
    mem = sub_08001494(0x400);
    t = gTP03000328;
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_0809F4A8;
    t->f24 = 0;
    sub_08000274_1((u32)t);
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809FB6C);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A05B4);
#ifdef NONMATCHING
struct EntryA099C { u8 pad[8]; u16 unk8, unkA; u8 rest[20]; };
extern u32 gUnk_03003D70;
struct PlayerA099C { u8 pad[0x8C]; u32 x, y, xx, yy; u8 rest[0xB0]; };
extern struct PlayerA099C gPlayersA099C[] asm("gUnk_03003CE0");
extern u8 gFlagA099C asm("gUnk_03000338");
extern u8 gFlag2A099C asm("gUnk_03000339");
extern u8 gTimerA099C asm("gUnk_0300033A");
extern u8 gValueA099C asm("gUnk_0300033B");
extern void sub_08097D0C_A099C(s32, s32) asm("sub_08097D0C");
extern void sub_0809689C(void);
extern void sub_080968C0(void);
extern s16 sub_08096AF4(void *, s32);
extern void sub_08097D7C(u8, s8);
extern void sub_08097E28(void *, s32);
void sub_080A099C(void) {
    s32 temp_r4;
    s32 temp_r4_2;
    u32 var_r0;
    u16 temp_r4_3;
    u8 var_r5;
    struct EntryA099C *var_r4;
    u32 timer;
    u32 raw;
    s32 signedValue;

    sub_0809689C();
    sub_08097D0C_A099C(0, 0x38);
    gUnk_03003170.width0 = 0x1E;
    gUnk_03003170.pad72 = 0x19;
    gUnk_03003170.width1 = 0x1E;
    gUnk_03003170.pad76 = 0x19;
    gFlagA099C = 0;
while (1) {
    sub_08097D7C((u8) gValueA099C, gUnk_0300033C);
    if ((u8) gFlagA099C != 0) {
        if ((u8) gFlag2A099C == 0) {
            timer = gTimerA099C;
            if (timer == 0) {
                gTimerA099C = 0x14;
                if ((u32) (u8) gValueA099C > 1U) {
                    gValueA099C = (u8) gValueA099C - 1;
                }
                raw = (u8)gUnk_0300033C;
                signedValue = gUnk_0300033C;
                if (signedValue < 0) {
                    if (signedValue < -6) {
                        var_r0 = raw + 1;
                        goto block_17;
                    }
                } else if (signedValue > 6) {
                    var_r0 = raw - 1;
                    goto block_17;
                }
            } else {
                goto block_12;
            }
        }
    } else {
        timer = gTimerA099C;
        if (timer != 0) {
block_12:
            gTimerA099C = timer - 1;
        } else {
        gTimerA099C = 0x14;
        raw = (u8)gUnk_0300033C;
        signedValue = gUnk_0300033C;
        if (signedValue != 0) {
            if (signedValue < 0) {
                var_r0 = raw + 1;
            } else {
                var_r0 = raw - 1;
            }
block_17:
            gUnk_0300033C = var_r0;
        }
    }
    }
    sub_08097D0C_A099C(0, (s16) (0x64 - gUnk_03003170.scrollY));
    sub_080968C0();
    temp_r4 = sub_080020F4();
    gPlayersA099C[temp_r4].xx = gPlayersA099C[sub_080020F4()].x;
    temp_r4_2 = sub_080020F4();
    gPlayersA099C[temp_r4_2].yy = *(u32 *)((u8 *)&gUnk_03003D70 + 0x14C * sub_080020F4());
    temp_r4_3 = sub_08096AF4(&gPlayersA099C[sub_080020F4()].x, 1);
    sub_08097E28(&gPlayersA099C[sub_080020F4()].x, (s16) temp_r4_3);
    var_r4 = gUnk_03005D58;
    var_r5 = 0;
    do {
        if ((1 & var_r4->unkA) && (((u16) var_r4->unk8 >> 5) == 0)) {
            sub_08097E28(var_r4, (s16) sub_08096AF4(var_r4, 1));
        }
        var_r4++;
        var_r5 += 1;
    } while ((u32) var_r5 <= 0xFU);
    sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A099C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A0B44);
void sub_080A0F64(void) {
    if (M2C_FIELD(gUnk_0300032C, s16 *, 0x5C) != 0) {
        sub_080A0FC4();
        sub_080A10D4();
        sub_080A118C();
        sub_08097C6C();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000330);
}
void sub_080A0FA8(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000334 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A0FC4(void) {
    if (sub_08000470(gUnk_03000334) != 0) {
        sub_080003A8(gUnk_03000334);
    }
    sub_08001538(gUnk_03000334);
    gUnk_03000334 = 0;
}
extern struct TaskP *gTP03000334 asm("gUnk_03000334");
extern void sub_080A05B4();
void sub_080A0FEC(u8 a, u8 *err)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000334) == 0 && gTP03000334->f8 != 0)
        return;
    mem = sub_08001494(0x400);
    t = gTP03000334;
    t->f20 = mem;
    if (mem == 0) {
        *err = 1;
        return;
    }
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A05B4;
    t->f24 = 0;
    t->f8 = 0x44;
    sub_08000274_3((u32)t, a, (u32)err);
}
void sub_080A104C(void) {
    gUnk_03000339 = 1;
}
void sub_080A1058(void) {
    gUnk_03000339 = 0;
    gUnk_0300033A = 0x14;
}
void sub_080A1070(s8 arg0) {
    gUnk_0300033B = arg0;
}
void sub_080A107C(s8 arg0) {
    gUnk_0300033C = arg0;
}
u8 sub_080A1088(void) {
    return (u8) gUnk_0300033C;
}
void sub_080A1094(void) {
    gUnk_03000338 = 1;
    gUnk_0300033C = 6;
}
void sub_080A10AC(void) {
    gUnk_03000338 = 0;
}
void sub_080A10B8(void)
{
  s32 temp_r0;
  gUnk_03000340 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A10D4(void) {
    if (sub_08000470(gUnk_03000340) != 0) {
        sub_080003A8(gUnk_03000340);
    }
    sub_08001538(gUnk_03000340);
    gUnk_03000340 = 0;
}
extern struct TaskP *gTP03000340 asm("gUnk_03000340");
extern u8 gB0300033B asm("gUnk_0300033B");
extern u8 gB0300033C asm("gUnk_0300033C");
extern u8 gB03000339 asm("gUnk_03000339");
extern u8 gB0300033A asm("gUnk_0300033A");
extern void sub_080A099C();
void sub_080A10FC(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000340) == 0 && gTP03000340->f8 != 0)
        return;
    gB0300033B = 1;
    gB0300033C = 0;
    gB03000339 = 0;
    gB0300033A = 0x14;
    mem = sub_08001494(0x400);
    t = gTP03000340;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A099C;
    t->f24 = 0;
    t->f8 = 0x40;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A1170(void)
{
  int new_var;
  s8 *new_var2;
  s32 temp_r0;
  temp_r0 = (gUnk_03000344 = (s32) sub_08001494(0x28U));
  *((s32 *) (new_var2 = ((s8 *) temp_r0) + (new_var = 8))) = 0;
}
void sub_080A118C(void) {
    if (sub_08000470(gUnk_03000344) != 0) {
        sub_080003A8(gUnk_03000344);
    }
    sub_08001538(gUnk_03000344);
    gUnk_03000344 = 0;
}
extern struct TaskP *gTP03000344 asm("gUnk_03000344");
extern void sub_080A0B44();
void sub_080A11B4(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000344) == 0 && gTP03000344->f8 != 0)
        return;
    mem = sub_08001494(0x400);
    t = gTP03000344;
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A0B44;
    t->f24 = 0;
    t->f8 = 0x46;
    sub_08000274_3((u32)t, 0, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1208);
struct ActorA1DA8 { u16 f0; u8 p2[6]; s16 f8; u16 fA, fC; u8 pE[6]; s32 f14, f18; u8 p1C[0x34]; s32 f50; };
extern struct ActorA1DA8 *gActorA1DA8 asm("gUnk_03000348");
struct PlayerA1DA8 { u8 p0[0x20]; u16 state; u8 p22[14]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[0x26]; u16 fB0; u8 pB2[0x32]; u32 fE4[25]; u16 *f148; };
extern struct PlayerA1DA8 gPlayersA1DA8[] asm("gUnk_03003CE0");
extern s16 atanA1DA8(s16,s16) asm("ArcTan2");
extern s16 sub_0801ED8C(void *, void *);
void sub_080A1DA8(void)
{
    u32 x, y;
    u32 px, angle, dir;
    u16 rawAngle;
    s16 dx, dy, facing;
    s32 deltaX, deltaY;
    u16 angleLow;
    u32 py;

    s32 index;
    u32 offset;
    struct ActorA1DA8 *actor;
    u8 *player;
    u32 positions;
    x = (u32)(gActorA1DA8->f14 << 8) >> 16;
    y = (u32)(gActorA1DA8->f18 << 8) >> 16;
    positions = (void *)gPlayersA1DA8;
    offset = 0x14C * sub_080020F4();
    positions += 0x148;
    px = **(u16 **)(positions + offset) >> 4;
    py = (u32)((*(u16 **)(positions + 0x14C * sub_080020F4()))[1] << 20);
    deltaX = px - (s16)x;
    deltaY = (py >> 20) - (s16)y;
    dx = deltaX;
    dy = deltaY;
    if (Sqrt(dx * dx + dy * dy) > 31U) return;
    rawAngle = ArcTan2(dx, dy);
    angleLow = rawAngle << 3;
    dir = rawAngle >> 13;
    if (angleLow > 0x8000U) {
        if (dir <= 6) dir++;
        else dir = 0;
    }
    facing = gActorA1DA8->f8;
    if (((facing == 0 && dir == 2) || (facing == 1 && dir == 3) ||
         (facing == 2 && dir == 4) || (facing == 3 && dir == 5) ||
         (facing == 4 && dir == 6) || (facing == 5 && dir == 7) ||
         (facing == 6 && dir == 0) || (facing == 7 && dir == 1)) &&
        sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0 &&
        gActorA1DA8->fC != 11 &&
        !(gPlayersA1DA8[sub_080020F4()].flags & 0x2000) &&
        gPlayersA1DA8[sub_080020F4()].f68 != 0 &&
        gPlayersA1DA8[sub_080020F4()].state != 14 &&
        gPlayersA1DA8[sub_080020F4()].state != 11 &&
        gPlayersA1DA8[sub_080020F4()].state != 12) {
        gPlayersA1DA8[sub_080020F4()].state = 10;
        gPlayersA1DA8[sub_080020F4()].fB0 = 0xFFFE;
        index = sub_080020F4();
        actor = gActorA1DA8;
        gPlayersA1DA8[index].f88 = gPlayersA1DA8[index].f88 + sub_0801ED8C(actor, &gPlayersA1DA8[sub_080020F4()]);
        gPlayersA1DA8[sub_080020F4()].fE4[gActorA1DA8->f0] = gActorA1DA8->f50++;
    }
}
void sub_080A1F88(void) {
    u32 var_r4;
    u32 var_r4_2;
    register u32 var_r5 asm("r5");
    register u32 var_r5_2 asm("r5");
    register u32 *ptr asm("r0");
    sub_0805867C(0xC2);
    ptr = &gUnk_03000350;
    var_r5 = 0;
    var_r4 = *ptr;
    do {
        if (sub_08000470(var_r4) != 0) sub_080003A8(var_r4);
        var_r4 += 0x28;
        var_r5 += 1;
    } while (var_r5 <= 7);
    sub_08001538(gUnk_03000350);
    gUnk_03000350 = 0;
    ptr = &gUnk_03000354;
    var_r5_2 = 0;
    var_r4_2 = *ptr;
    do {
        if (sub_08000470(var_r4_2) != 0) sub_080003A8(var_r4_2);
        var_r4_2 += 0x28;
        var_r5_2 += 1;
    } while (var_r5_2 <= 7);
    var_r5_2 = 0;
    sub_08001538(gUnk_03000354);
    gUnk_03000354 = var_r5_2;
}
#ifdef NONMATCHING
struct ActorA1FF4 { u16 id; u8 p2[6]; s16 facing; u16 pA, state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; s32 serial; };
extern struct ActorA1FF4 *gActorA1FF4 asm("gUnk_03000348");
struct AnimA1FF4 { u32 f0, f4, f8, fC; u8 p10[12]; u8 attr[24]; };
extern void sub_08065158(void *, u32, u16, s32, s32);
extern void sub_0800BC08(s32, s32, s16 *, s16 *, s32, s32);
extern s32 sub_08007870(s16, s16, s32, u16, s32, void *, u32, u32);
extern void sub_08029CEC(s32, s32, s32);
void sub_080A1FF4(void *unused, u16 direction)
{
    struct AnimA1FF4 anim;
    s16 screenX, screenY;
    u16 tile, extra;
    u8 *aux;
    s32 baseX, baseY, distance, count, phase, hit;
    s32 x, y;
    u16 angle, rawDx, radius;
    s16 dx, dy;
    u8 timer;
    aux = (u8 *)gActorA1FF4 + 0x204;
    sub_08065158(&anim, 0x5000C, gUnk_0300034C, -1, 1);
    anim.attr[0] = gUnk_0300034C;
    baseX = gActorA1FF4->x;
    baseY = gActorA1FF4->y;
    angle = gUnk_085186DC[gActorA1FF4->facing];
    baseX += gUnk_080B9704[angle + 0x40] << 5;
    baseY += gUnk_080B9704[angle] << 5;
    hit = 0;
    distance = 0;
    phase = (u8)(direction << 5);
    count = 0x168;
    timer = 0x5A;
    do {
        if (timer != 0) {
            timer--;
            x = baseX;
            y = baseY;
            if (timer == 0) sub_0805865C(0xC3);
        } else {
            x = (u32)(distance * gUnk_080B9704[phase + 0x40]) >> 8;
            y = (u32)(distance * gUnk_080B9704[phase]) >> 8;
            x += baseX;
            y += baseY;
            distance += 0x200;
            rawDx = (x >> 8) - (*(s32 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x8C) >> 8);
            dx = rawDx;
            dy = ((y >> 8) + 12) - (*(s32 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x90) >> 8);
            radius = Sqrt(dx * dx + dy * dy);
            if (hit == 0 && radius <= 23U &&
                sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0 &&
                gActorA1FF4->state != 11 &&
                !(gUnk_03003CE0[sub_080020F4()].flags & 0x2000) &&
                *((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x68) != 0 &&
                gUnk_03003CE0[sub_080020F4()].state != 14 &&
                gUnk_03003CE0[sub_080020F4()].state != 11 &&
                gUnk_03003CE0[sub_080020F4()].state != 12 &&
                *(u32 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0xE4 + gActorA1FF4->id * 4) != gActorA1FF4->serial) {
                if (sub_0800CE30() == 1) sub_08029CEC(0, 60, 2);
                else sub_08029CEC(0, 30, 2);
                *(u16 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0xB0) = 0xFFFE;
                *(u32 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0xE4 + gActorA1FF4->id * 4) = gActorA1FF4->serial++;
                hit = 1;
            }
        }
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            sub_08000AF0(gUnk_0300034C + 0x10, anim.fC + (*(u16 *)(aux + 0xD6) << 5), 1);
            sub_0800BC08((x << 8) >> 16, (y << 8) >> 16, &screenX, &screenY, 0, 0);
            sub_08065370(&anim, 8, (s32)&tile, (s32)&extra, 1);
            sub_08007870(screenX, screenY, 8, tile, 0, anim.attr, anim.f8, anim.f0);
        }
        sub_080003F0();
        count = (u16)(count - 1);
    } while (count != 0xFFFF);
    *(u32 *)((u8 *)sub_0800048C() + 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1FF4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A230C);
void sub_080A2698(void) {
    if (M2C_FIELD(gUnk_03000348, s16 *, 0x5C) != 0) {
        sub_080A1F88();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_0300034C);
}
void sub_080A26D0(void)
{
  long i;
  gUnk_03000350 = sub_08001494(0x140);
  for (i = 0; i < 8; i++)
  {
    *((u32 *) ((((u8 *) gUnk_03000350) + (i * 0x28)) + 8)) = 0;
  }

  gUnk_03000354 = sub_08001494(0x140);
  for (i = 0; i < 8; i++)
  {
    *((u32 *) ((((u8 *) gUnk_03000354) + (i * 0x28)) + 8)) = 0;
  }

}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A2720);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A27B8);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A35D0);
