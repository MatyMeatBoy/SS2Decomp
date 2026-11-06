#include "global.h"
extern u8 *gA03000370[] asm("gUnk_03000370");
extern u8 gA030003F4[] asm("gUnk_030003F4");
extern u8 gA030003F8[] asm("gUnk_030003F8");
extern void sub_080A47A0();
extern struct TaskP *gTP03000360 asm("gUnk_03000360");
extern void sub_080A4AD0();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTP03000358 asm("gUnk_03000358");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void scrollA74E8(u32, s32, u32) asm("sub_0800BBD8");
extern void waveA74E8(s32,s32,s32,u16,u16,s32) asm("sub_0800903C");
extern void sub_080A6BE8(void);
void sub_080A47A0(void);
void sub_080A74E8(void);

extern s32 gUnk_0300035C;
extern s32 *gUnk_03000370[];
extern u8 gUnk_030003F4[];
extern u8 gUnk_030003F8[];
extern s32 gUnk_030003E8;
extern s32 gUnk_03000400;
extern s32 gUnk_03000404;
extern s32 gUnk_03000414;

extern s32 gUnk_03000408;
void sub_080A68B0(void);
extern s32 gUnk_0300040C;

struct Res3D2C { u8 p0[4]; s16 f4, f6; u8 p8[0x22]; u8 f2A, f2B; u8 p2C[0xAA]; u16 fD6; };
struct Act3D2C {
    u16 f0, f2;
    u8 p4[8];
    u16 fC;
    u8 pe[6];
    s32 f14, f18;
    u8 p1c[0x2C];
    u16 f48;
    u8 p4a[2];
    s32 f4C, f50;
    u8 p54[6];
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
    struct Res3D2C res;
};
struct Spr3D2C { u32 f0, f4, f8; u8 *palette; u8 pad10[12]; u8 style, paletteId; u8 pad1E[22]; };
struct Oam3D2C { u32 f0, f4; s32 x, y; };
struct E2E0_3D2C { u8 b[0x2E0]; };
struct Pl3D2C { u8 p0[0x30]; u32 flags; u8 p34[0x118]; };
struct G3170_3D2C { u8 p0[0x90]; u16 f90; };
extern struct Act3D2C *gObj3D2C asm("gUnk_03000364");
extern struct Act3D2C *gActs3D2C[] asm("gUnk_03000370");
extern struct Spr3D2C gSpr3D2C[] asm("gUnk_03000380");
extern u16 gPal3D2C asm("gUnk_030003E8");
extern u8 gState3D2C[] asm("gUnk_030003EC");
extern u8 gSide3D2C asm("gUnk_030003F0");
extern u8 gDir3D2C[] asm("gUnk_030003F4");
extern u8 gFlags3D2C[] asm("gUnk_030003F8");
extern u8 *gBase3D2C asm("gUnk_030056F4");
extern u32 gMask3D2C asm("gUnk_030056FC");
extern struct G3170_3D2C gMap3D2C asm("gUnk_03003170");
extern u8 gImg3D2C[] asm("gUnk_084A6DB8");
struct Off3D2C { s16 x, y; };
extern s16 gOff3D2C[][2] asm("gUnk_08518754");
extern struct Pl3D2C gPl3D2C[] asm("gUnk_03003CE0");
extern void *gData3D2C asm("gUnk_030034E0");
void setup3D2C(void *, void *, s32) asm("sub_0801623C");
void initRes3D2C(void *) asm("sub_08019F60");
void a0A4_3D2C(void *) asm("sub_0801A0A4");
void a0B0_3D2C(void *) asm("sub_0801A0B0");
void tick3D2C(void *) asm("sub_0801C8F0");
u16 anim3D2C(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
void proj3D2C(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
struct Oam3D2C *draw3D2C(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
u8 prio3D2C(s32, s32, s32) asm("sub_0800BC44");
void dmg3D2C(void *, s32, s16) asm("sub_0801A120");
u16 dead3D2C(void *) asm("sub_08019CE8");
void free3D2C(u16) asm("sub_08067CA8");
s32 dropFx3D2C(void *, void *) asm("sub_0801E46C");
void fall3D2C(void *, s32) asm("sub_0806171C");
void dropEnd3D2C(void *, s32) asm("sub_0801E4CC");
void sub_080A3D2C_v(u16 idx) asm("sub_080A3D2C");
void sub_080A3D2C_v(u16 idx)
{
    s16 sx, sy;
    struct Res3D2C *res;
    s32 lastHit;
    u16 flash;
    u16 hitTimer;
    s16 shake;
    u8 animation;
    u8 mode;
    s32 z;
    s32 h;
    struct Oam3D2C *o;

    gMask3D2C |= 1 << (idx + 2);
    gActs3D2C[idx] = (struct Act3D2C *)&((struct E2E0_3D2C *)gBase3D2C)[idx + 2];
    a0A4_3D2C(gActs3D2C[idx]);
    setup3D2C(gActs3D2C[idx], gImg3D2C, idx + 2);
    res = &gActs3D2C[idx]->res;
    initRes3D2C(res);
    { struct Act3D2C *q = gActs3D2C[idx]; q->f5C = q->f1D6 = res->f6 * 3; }
    { struct Act3D2C *q = gActs3D2C[idx]; s32 t = res->f4 * 2; q->f5E = q->f1D4 = ((res->f4 << 3) + t) * 2; }
    gActs3D2C[idx]->f48 = gMap3D2C.f90;
    gActs3D2C[idx]->fC = 0;
    { struct Act3D2C *q = gActs3D2C[idx]; q->f50 = gObj3D2C->f50; q->f0 = idx + 2; }
    gActs3D2C[idx]->f2 = gActs3D2C[idx]->f0 + 4;
    gActs3D2C[idx]->f1FC_lo = gActs3D2C[idx]->f0;
    gActs3D2C[idx]->f202 = gActs3D2C[idx]->f2;
    gActs3D2C[idx]->f200 = 0xFF;
    gActs3D2C[idx]->f1FD = 3;
    gActs3D2C[idx]->f1FE = 3;
    gActs3D2C[idx]->fC = 0;
    flash = 0;
    hitTimer = 0;
    for (;;) {
        if (gActs3D2C[idx]->fC == 10 && flash == 0)
            flash = 8;
        {
            s32 r = sub_08058DB0();
            if (r == 0) {
                tick3D2C(gActs3D2C[idx]);
                switch (gActs3D2C[idx]->f1FD) {
                case 1:
                    gActs3D2C[idx]->fC = r;
                    if (sub_080682B8(gActs3D2C[idx]->f0) != 0) {
                        gActs3D2C[idx]->f1FD = gActs3D2C[idx]->f1FE;
                        sub_08065E38(gActs3D2C[idx]->f0);
                    }
                    break;
                case 3:
                    if (sub_08056F78() != 0) {
                        gActs3D2C[idx]->f1FE = 8;
                        gActs3D2C[idx]->f1FD = 1;
                        sub_08068330(gActs3D2C[idx]->f0);
                    }
                    break;
                case 8:
                    gActs3D2C[idx]->fC = r;
                    break;
                }
            }
        }
        if (gFlags3D2C[idx] == 0) {
            if (dead3D2C(gActs3D2C[idx]) != 0)
                break;
            gState3D2C[idx] = 0;
            a0B0_3D2C(gActs3D2C[idx]);
            gActs3D2C[idx]->res.f2A = 0;
            gActs3D2C[idx]->res.f2B = 0;
            sub_080003F0();
            continue;
        }
        if (gActs3D2C[idx]->f5C != 0)
            a0A4_3D2C(gActs3D2C[idx]);
        if (gSide3D2C == 1)
            animation = gFlags3D2C[idx] + 5;
        else
            animation = gFlags3D2C[idx];
        {
            struct Act3D2C *q = gActs3D2C[idx];
            q->f14 = gObj3D2C->f14;
            q->f18 = gObj3D2C->f18;
            q->f14 += gOff3D2C[gDir3D2C[idx]][0];
            q->f18 += gOff3D2C[gDir3D2C[idx]][1];
            if (gDir3D2C[idx] == 0) {
                q->res.f2A = 0x20;
                gActs3D2C[idx]->res.f2B = 0x28;
            } else {
                q->res.f2A = 0x20;
                gActs3D2C[idx]->res.f2B = 0x10;
            }
        }
        gSpr3D2C[gSide3D2C].style = gPal3D2C;
        sub_08000AF0(gPal3D2C + 0x10, gSpr3D2C[gSide3D2C].palette + res->fD6 * 32, 1);
        if (sub_0800CD8C() == 0)
            gActs3D2C[idx]->f6E = anim3D2C(&gSpr3D2C[gSide3D2C], animation, &gActs3D2C[idx]->f6A, &gActs3D2C[idx]->f6C, 0);
        if (sub_08098004() & 1)
            mode = sub_08097FF8();
        else
            mode = prio3D2C(gActs3D2C[idx]->f14 >> 8, gActs3D2C[idx]->f18 >> 8, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && (z = sub_0800CD34()) == 0) {
                proj3D2C((s16)(gObj3D2C->f14 >> 8), (s16)(gObj3D2C->f18 >> 8), &sx, &sy, z, z);
                o = draw3D2C(sx, sy + 1, animation, gActs3D2C[idx]->f6A, mode, &gSpr3D2C[gSide3D2C].style, gSpr3D2C[gSide3D2C].f8, gSpr3D2C[gSide3D2C].f0);
                proj3D2C((s16)(gActs3D2C[idx]->f14 >> 8), (s16)(gActs3D2C[idx]->f18 >> 8), &sx, &sy, z, z);
                o->x = sx;
                o->y = sy;
            }
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            proj3D2C((s16)(gObj3D2C->f14 >> 8), (s16)(gObj3D2C->f18 >> 8), &sx, &sy, flash, flash);
            o = draw3D2C(sx, sy + 1, animation, gActs3D2C[idx]->f6A, mode, &gSpr3D2C[gSide3D2C].style, gSpr3D2C[gSide3D2C].f8, gSpr3D2C[gSide3D2C].f0);
            proj3D2C((s16)(gActs3D2C[idx]->f14 >> 8), (s16)(gActs3D2C[idx]->f18 >> 8), &sx, &sy, flash, flash);
            o->x = sx;
            o->y = sy;
        }
        {
            s32 hh = gActs3D2C[idx]->f4C;
            if (hh != 0 && lastHit != hh) {
                lastHit = hh;
                hitTimer = 10;
                shake = 0;
            }
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmg3D2C(gActs3D2C[idx], lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0; gActs3D2C[idx]->f4C = 0;
        }
        if (gState3D2C[idx] == 1 && gActs3D2C[idx]->f6E != 0)
            gState3D2C[idx] = 0;
        if (dead3D2C(gActs3D2C[idx]) != 0) {
            sub_080003F0();
            break;
        }
        sub_080003F0();
    }
    free3D2C(gActs3D2C[idx]->f2);
    gState3D2C[idx] = 0;
    flash = 0x14;
    do {
        gSpr3D2C[gSide3D2C].style = gPal3D2C;
        sub_08000AF0(gPal3D2C + 0x10, gSpr3D2C[gSide3D2C].palette + res->fD6 * 32, 1);
        if (sub_0800CD8C() == 0)
            gActs3D2C[idx]->f6E = anim3D2C(&gSpr3D2C[gSide3D2C], animation, &gActs3D2C[idx]->f6A, &gActs3D2C[idx]->f6C, 0);
        if (sub_08098004() & 1)
            mode = sub_08097FF8();
        else
            mode = prio3D2C(gActs3D2C[idx]->f14 >> 8, gActs3D2C[idx]->f18 >> 8, 0);
        if ((flash & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && (z = sub_0800CD34()) == 0) {
            proj3D2C((s16)(gObj3D2C->f14 >> 8), (s16)(gObj3D2C->f18 >> 8), &sx, &sy, z, z);
            o = draw3D2C(sx, sy + 1, animation, gActs3D2C[idx]->f6A, mode, &gSpr3D2C[gSide3D2C].style, gSpr3D2C[gSide3D2C].f8, gSpr3D2C[gSide3D2C].f0);
            proj3D2C((s16)(gActs3D2C[idx]->f14 >> 8), (s16)(gActs3D2C[idx]->f18 >> 8), &sx, &sy, z, z);
            o->x = sx;
            o->y = sy;
        }
        sub_080003F0();
        flash--;
    } while (flash != 0xFFFF);
    if (!(gPl3D2C[sub_080020F4()].flags & 0x2000) && gActs3D2C[idx]->f5A != 0) {
        h = dropFx3D2C(gData3D2C, res);
        for (shake = 0x1D; shake != -1; shake--) {
            gActs3D2C[idx]->f18 -= 0x20;
            fall3D2C(gActs3D2C[idx], h);
            sub_080003F0();
        }
        dropEnd3D2C(gData3D2C, h);
    }
}
struct Player1084520 {u8 pad0[0x20];u16 state;u8 pad22[14];u32 flags;u8 pad34[52];u8 active;u8 pad69[31];u16 timer;u8 pad8A[2];s32 x,y;u8 pad94[28];u16 fB0;u8 padB2[22];u16 fC8,fCA,fCC;u8 padCE[22];u32 history[5];u8 padF8[84];};
extern struct Player1084520 players1084520[] asm("gUnk_03003CE0");
extern u8 x1084520[] asm("gUnk_03003D6C");
extern u8 *object1084520 asm("gUnk_03000364");
extern s32 angle1084520(s16,s16) asm("ArcTan2");
extern s32 damage1084520(void*,void*) asm("sub_0801ED8C");
void sub_080A4520(void) {
    register s16 *var_r0 asm("r0");
    register s32 dir asm("r1");
    s16 temp_r1;
    s16 temp_r4_2;
    s32 var_r1;
    s32 temp_r5;
    s32 new_var;
    u16 temp_r4;
    u16 temp_r4_4;
    register u32 temp_r0 asm("r0");
    register u32 var_r4 asm("r4");
    void *temp_r1_2;
    void *temp_r4_3;

    {
        u32 i = sub_080020F4();
        s32 x = (s32)(*(s32 *)((u8 *)(object1084520) + (0x14))) >> 8;
        asm("" : "+r"(x) : "r"(players1084520));
        temp_r4 = x - ((s32)(*(s32 *)((u8 *)(x1084520 + 0x14C * i) + (0))) >> 8);
    }
    temp_r4_2 = (s16) temp_r4;
    temp_r1 = ((s32) (*(s32 *)((u8 *)(object1084520) + (0x18))) >> 8) - ((s32) players1084520[sub_080020F4()].y >> 8);
    if ((u32) Sqrt((temp_r4_2 * temp_r4_2) + (temp_r1 * temp_r1)) > 0x27U) {

    } else if (sub_0800CDF8() != 0) {

    } else if (sub_0800CD8C() != 0) {

    } else if (sub_0800CCCC() != 0) {

    } else if ((*(u16 *)((u8 *)(object1084520) + (0xC))) == 0xB) {

    } else if (players1084520[sub_080020F4()].flags & 0x2000) {

    } else if (players1084520[sub_080020F4()].active == 0) {

    } else if (players1084520[sub_080020F4()].state == 0xE) {

    } else if (players1084520[sub_080020F4()].state == 0xB) {

    } else if (players1084520[sub_080020F4()].state == 0xC) {

    } else if (players1084520[sub_080020F4()].history[(*(u16 *)((u8 *)(object1084520) + (0)))] == (*(u32 *)((u8 *)(object1084520) + (0x50)))) {

    } else {
        players1084520[sub_080020F4()].state = 0xA;
        players1084520[sub_080020F4()].fB0 = 0xFFFE;
        temp_r5 = sub_080020F4();
        temp_r4_3 = object1084520;
        {
            register s32 d asm("r0") = damage1084520(temp_r4_3, &players1084520[sub_080020F4()]);
            register u32 i asm("r1") = temp_r5;
            register u8 *base asm("r7") = (u8 *)players1084520;
            register u32 t asm("r2");
            asm("" : "+r"(d), "+r"(i), "+r"(base));
            i *= 0x14c;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            i += 0x88;
            t = *(u16 *)i;
            asm("" : "+r"(d), "+r"(i), "+r"(t));
            *(u16 *)i = d + t;
        }
        players1084520[sub_080020F4()].history[(*(u16 *)((u8 *)(object1084520) + (0)))] = (*(u32 *)((u8 *)(object1084520) + (0x50)));
        temp_r4_4 = ((s32) (*(s32 *)((u8 *)(x1084520+0x14C*sub_080020F4()) + (0))) >> 8) - ((s32) (*(s32 *)((u8 *)(object1084520) + (0x14))) >> 8);
        new_var = (((s32) players1084520[sub_080020F4()].y >> 8) - ((s32) (*(s32 *)((u8 *)(object1084520) + (0x18))) >> 8));
        temp_r0 = (u32)angle1084520((s16) temp_r4_4, (s16) new_var) << 0x10;
        {
            register u32 r asm("r1") = temp_r0 * 8;
            var_r4 = temp_r0 >> 0x1D;
            asm("" : "+r"(r), "+r"(var_r4));
            if (r > 0x80000000U) {
                if (var_r4 <= 6U) {
                    var_r4 += 1;
                } else {
                    var_r4 = 0;
                }
            }
        }
        if (var_r4 == 0) goto zero;
        if (var_r4 == 1) goto one;
        {
            register u32 i asm("r0") = sub_080020F4();
            register u8 *base asm("r2") = (u8 *)players1084520;
            u8 *p;
            asm("" : "+r"(i), "+r"(base));
            i *= 0x14C;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            p = (u8 *)i;
            dir = var_r4 - 2;
            var_r0 = (s16 *)(p + 0xCA);
        }
        goto store;
zero:
        {
            register u32 i asm("r0") = sub_080020F4();
            register u8 *base asm("r2") = (u8 *)players1084520;
            u8 *p;
            asm("" : "+r"(i), "+r"(base));
            i *= 0x14C;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            p = (u8 *)i;
            var_r0 = (s16 *)(p + 0xCA);
        }
        dir = 6;
        goto store;
one:
        {
            register u32 i asm("r0") = sub_080020F4();
            register u8 *base asm("r2") = (u8 *)players1084520;
            u8 *p;
            asm("" : "+r"(i), "+r"(base));
            i *= 0x14C;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            p = (u8 *)i;
            var_r0 = (s16 *)(p + 0xCA);
        }
        dir = 7;
store:
        *var_r0 = dir;
        players1084520[sub_080020F4()].fCC = 0x400;
        players1084520[sub_080020F4()].fC8 = 0x10;
    }
    if (players1084520[sub_080020F4()].fC8 == 0) {
        (*(u32 *)((u8 *)(object1084520) + (0x50))) = (s32) ((*(u32 *)((u8 *)(object1084520) + (0x50))) + 1);
    }
}


struct Spr47A0 { u32 f0, f4, f8; u8 *palette; u8 pad10[12]; u8 style, paletteId; u8 pad1E[22]; };
struct Oam47A0 { u32 f0, f4; s32 x, y; };
struct Off47A0 { s16 x, y; };
struct XY47A0 { s32 x, y; };
extern u8 *gObj47A0 asm("gUnk_03000364");
extern struct Spr47A0 gSpr47A0[] asm("gUnk_03000380");
extern u8 gFrame47A0 asm("gUnk_030003FC");
extern u8 gSide47A0 asm("gUnk_030003F0");
extern u8 gDir47A0 asm("gUnk_030003FB");
extern u16 gPal47A0 asm("gUnk_030003E8");
extern s16 gOffX47A0[] asm("gUnk_08518754");
extern s16 gOffY47A0[] asm("gUnk_08518756");
void anim47A0(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
void proj47A0(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
struct Oam47A0 *draw47A0(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
u8 prio47A0(s32, s32, s32) asm("sub_0800BC44");
void sub_080A47A0_v(void) asm("sub_080A47A0");
void sub_080A47A0_v(void)
{
    u16 tile, rot;
    s16 sx, sy;
    u8 *res;
    struct XY47A0 pos;
    u8 f;
    u8 animation;
    u8 mode;
    s32 z;
    struct Oam47A0 *o;

    res = gObj47A0 + 0x204;
    rot = 0;
    tile = 0;
    for (;;) {
    wait:
        if ((f = gFrame47A0) == 0) {
            sub_080003F0();
            goto wait;
        }
        if (gSide47A0 == 1)
            animation = f + 5;
        else {
            register vu8 *frame asm("r0") = &gFrame47A0;
            animation = *frame;
        }
        pos.x = *(s32 *)(gObj47A0 + 0x14);
        pos.y = *(s32 *)(gObj47A0 + 0x18);
        {
            s32 k = gDir47A0 * 4;
            register u32 ox asm("r2") = (u32)gOffX47A0;
            pos.x += *(s16 *)(k + ox);
            /* Keep the table address live until the x-offset load completes. */
            asm("" : : "r"(ox));
            pos.y += *(s16 *)((u8 *)gOffY47A0 + k);
        }
        gSpr47A0[gSide47A0].style = gPal47A0;
        sub_08000AF0(gPal47A0 + 0x10, gSpr47A0[gSide47A0].palette + (*(u16 *)(res + 0xD6) << 5), 1);
        {
            s32 t = sub_0800CD8C();
            if (t == 0)
                anim47A0(&gSpr47A0[gSide47A0], animation, &tile, &rot, t);
        }
        if (sub_08098004() & 1)
            mode = sub_08097FF8();
        else
            mode = prio47A0(pos.x >> 8, pos.y >> 8, 0);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && (z = sub_0800CD34()) == 0) {
            proj47A0((s16)(*(s32 *)(gObj47A0 + 0x14) >> 8), (s16)(*(s32 *)(gObj47A0 + 0x18) >> 8), &sx, &sy, z, z);
            o = draw47A0(sx, sy + 1, animation, tile, mode, &gSpr47A0[gSide47A0].style, gSpr47A0[gSide47A0].f8, gSpr47A0[gSide47A0].f0);
            proj47A0((s16)(pos.x >> 8), (s16)(pos.y >> 8), &sx, &sy, z, z);
            o->x = sx;
            o->y = sy;
        }
        sub_080003F0();
        if (sub_0800CED8() != 0 || sub_0800CB78() != 0 || sub_0800CD00() != 0)
            break;
    }
}
void sub_080A49A8(void)
{
    sub_0805867C(0xDF);
    if (*(s16 *)((u8 *)gUnk_03000368 + 0x5C) != 0) {
        sub_080A4BFC();
        sub_080A4B10();
        sub_080A4A54();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_030003E8);
}
struct Task10849EC {u32 f0,f4,f8;};
extern u8 byte108EA asm("gUnk_030003EA");
extern u8 byte108F0 asm("gUnk_030003F0");
extern u8 byte108EF asm("gUnk_030003EF");
extern u8 byte108F2 asm("gUnk_030003F2");
extern u8 byte108F1 asm("gUnk_030003F1");
extern u8 array108EC[] asm("gUnk_030003EC");
extern u8 array108F8[] asm("gUnk_030003F8");
extern struct Task10849EC *task108 asm("gUnk_03000358");
void sub_080A49EC(void)
{
 u8 i;
 byte108F1=byte108F2=byte108EF=byte108F0=byte108EA=0;
 for(i=0;i<=2;i++)array108F8[i]=array108EC[i]=0;
 task108=(struct Task10849EC*)sub_08001494(0x28);
 task108->f8=0;
}
void sub_080A4A54(void) {
    if (sub_08000470(gUnk_03000358) != 0) {
        sub_080003A8(gUnk_03000358);
    }
    sub_08001538(gUnk_03000358);
    gUnk_03000358 = 0;
}
void sub_080A4A7C(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000358) == 0 && gTP03000358->f8 != 0)
        return;
    gTP03000358->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP03000358;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A35D0;
    t->f24 = (u32)sub_080A4AD0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A4AD0(void) {
    gUnk_030056FC &= ~2;
}
void sub_080A4AE4(void)
{
  int i;
  gUnk_0300035C = sub_08001494(0x78);
  for (i = 0; i < 3; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_0300035C) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_080A4B10(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_0300035C;
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
  sub_08001538(gUnk_0300035C);
  gUnk_0300035C = i;
}
void sub_080A4B48(s32 arg0)
{
  u16 argIndex = arg0;
  u8 i;
  u8 *entry = (u8 *) gUnk_0300035C;
  for (i = 0; i <= 2; i++, entry += 0x28)
  {
    u32 mem;
    if (sub_08000470((u32) entry) != 0)
    {
      continue;
    }
    if ((*((s32 *) (((s8 *) entry) + 8))) != 0)
    {
      continue;
    }
    *((s32 *) (((s8 *) entry) + 8)) = argIndex + 0x46;
    mem = sub_08001494(0x400);
    *((s32 *) (((s8 *) entry) + 0x20)) = mem;
    *((s32 *) (((s8 *) entry) + 0x10)) = mem + 0x3FC;
    *((s32 *) (((s8 *) entry) + 0xC)) = (s32) sub_080A3D2C;
    *((s32 *) (((s8 *) entry) + 0x24)) = (s32) sub_080A4BB0;
    sub_08000274((s32 *) entry, argIndex);
    break;
  }

}
void sub_080A4BB0(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x46;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000370[obj[2]]);
}
void sub_080A4BE0(void)
{
  s8 *new_var;
  s32 temp_r0;
  temp_r0 = (gUnk_03000360 = (s32) sub_08001494(0x28U));
  new_var = (s8 *) temp_r0;
  *((s32 *) (new_var + 8)) = 0;
}
void sub_080A4BFC(void) {
    if (sub_08000470(gUnk_03000360) != 0) {
        sub_080003A8(gUnk_03000360);
    }
    sub_08001538(gUnk_03000360);
    gUnk_03000360 = 0;
}
void sub_080A4C24(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000360) == 0 && gTP03000360->f8 != 0)
        return;
    gTP03000360->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP03000360;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A47A0;
    t->f24 = 0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A4C74(u8 arg0, u8 arg1) {
    if (gUnk_030003F1 != 0xFF) {
        gUnk_030003F2 = gUnk_030003F1;
    }
    gUnk_030003F1 = arg0;
    M2C_FIELD(gUnk_03000368, s16 *, 8) = (s16) arg1;
}
void sub_080A4CA8(u8 index, u32 a, u32 b, u8 value)
{
    gA030003F8[index] = a;
    gA030003F4[index] = b;
    *(u16 *)(gA03000370[index] + 8) = value;
}
void sub_080A4CDC(s8 arg0, s8 arg1) {
    gUnk_030003FB = arg1;
    gUnk_030003FC = arg0;
}
void sub_080A4CF0(s8 arg0) {
    gUnk_030003EF = arg0;
}
void sub_080A4CFC(s8 arg0) {
    gUnk_030003F0 = arg0;
}
#ifdef NONMATCHING
struct Sprite1084D {u32 f0,f4,f8;u8 *palette;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
extern u8 *object1084D asm("gUnk_03000400");
extern u16 palette1084D asm("gUnk_03000404");
extern u8 select1084D asm("gUnk_03000406");
extern u8 selectSecond1084D asm("gUnk_03000407");
extern u8 *game1084D asm("gUnk_03005CF4");
extern u8 players1084D[] asm("gUnk_03003CE0");
extern u8 history1084D[] asm("gUnk_03003DC4");
extern u8 config1084D[] asm("gUnk_084A8088");
#define F_1084D(p,t,o) (*(t*)((u8*)(p)+(o)))
extern void h1084D00BC08(s32,s32,s16*,s16*,s32,void*) asm("sub_0800BC08");
extern void h1084D015C8C() asm("sub_08015C8C");
extern void h1084D015CE0() asm("sub_08015CE0");
extern void h1084D01623C() asm("sub_0801623C");
extern u16 h1084D016E04() asm("sub_08016E04");
extern s32 h1084D019CE8() asm("sub_08019CE8");
extern void h1084D019F60() asm("sub_08019F60");
extern void h1084D01A120() asm("sub_0801A120");
extern void h1084D01C8F0() asm("sub_0801C8F0");
extern void h1084D029A7C() asm("sub_08029A7C");
extern void h1084D058688() asm("sub_08058688");
extern void h1084D0586B4() asm("sub_080586B4");
extern void h1084D06171C() asm("sub_0806171C");
extern void h1084D065158(void*,s32,u16,s32,s32) asm("sub_08065158");
extern void h1084D067CA8() asm("sub_08067CA8");
extern void h1084D0970CC() asm("sub_080970CC");
extern u8 h1084D0A6258() asm("sub_080A6258");
extern void h1084D0A6510() asm("sub_080A6510");
extern s32 h1084D0A66E0() asm("sub_080A66E0");
extern void h1084D0A7ECC() asm("sub_080A7ECC");
extern void h1084D0A7F94() asm("sub_080A7F94");
extern void h1084D0A803C() asm("sub_080A803C");
extern s32 h1084D0A8090() asm("sub_080A8090");
extern void h1084D0A8114() asm("sub_080A8114");
extern u8* h1084D007870(s32,s32,u32,u32,u32,void*,u32,u32) asm("sub_08007870");
extern u32 h1084D065370(void*,u16,u16*,u16*,s32) asm("sub_08065370");
extern u32 h1084D05DF38(u32,u32,u32,u32,u32,u32) asm("sub_0805DF38");
void sub_080A4D08(u8 *arg0) {
    s32 sp0;
    void *sp4;                                         /* compiler-managed */
    s32 sp8;
    s32 spC;
    struct Sprite1084D sp10;
    s8 sp44;
    s16 sp46;
    s16 sp48;
    void *sp4C;
    s32 sp50;
    s32 sp54;
    s32 sp58;
    s32 sp5C;
    s32 sp60;
    s32 sp64;
    u32 sp68;
    u32 sp6C;
    s32 sp70;
    s32 sp74;
    s32 sp78;
    s32 sp7C;
    s32 sp80;
    s32 sp84;
    s32 sp88;
    s32 sp8C;
    u16 *sp90;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r1_2;
    s16 var_r1;
    s16 var_r2;
    s32 *temp_r2_3;
    s32 *temp_r2_4;
    s32 *temp_r2_5;
    s32 *temp_r3;
    s32 *temp_r3_2;
    s32 *temp_r3_3;
    s32 *temp_r3_4;
    s32 *var_r1_4;
    s32 *var_r2_2;
    s32 temp_r0_10;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r0_16;
    s32 temp_r0_17;
    s32 temp_r0_18;
    s32 temp_r0_19;
    s32 temp_r0_20;
    s32 temp_r0_21;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1_11;
    s32 temp_r1_12;
    s32 temp_r1_7;
    s32 temp_r1_9;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_10;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r4_6;
    s32 temp_r4_7;
    s32 temp_r4_9;
    s32 temp_r5;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r3;
    s32 var_r4;
    s8 *var_r0_4;
    s8 *var_r1_2;
    s8 *var_r1_3;
    s8 var_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_10;
    u16 temp_r1_14;
    u16 temp_r1_15;
    u16 temp_r1_3;
    u16 temp_r1_4;
    u16 temp_r1_5;
    u16 temp_r1_6;
    u16 temp_r1_8;
    u16 var_sl;
    u32 temp_r0_22;
    u32 temp_r0_23;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r1_13;
    u8 temp_r0_11;
    u8 temp_r0_14;
    u8 temp_r0_9;
    u8 temp_r8;
    u8 temp_r8_2;
    u8 temp_r8_3;
    u8 temp_r8_4;
    u8 temp_r8_5;
    u8 var_r0_5;
    u8 var_r0_6;
    void *temp_r0;
    void *temp_r4_8;

    object1084D = arg0;
    temp_r0 = arg0 + 0x204;
    sp4C = temp_r0;
    h1084D01623C(arg0, &config1084D, 0);
    h1084D019F60(temp_r0);
    sub_0801A0A4((void *) arg0);
    temp_r0_2 = h1084D016E04(F_1084D(arg0,u16,0x2D8), F_1084D(arg0,u16,0x2DA));
    palette1084D = temp_r0_2;
    temp_r1 = temp_r0_2;
    if (temp_r1 == 0xFFFF) {
loop_2:
        F_1084D(arg0,u16,0xC) = 0xBU;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            gUnk_030056FC &= ~(1 << F_1084D(arg0,u16,0x0));
            return;
        }
        sub_080003F0();
        if (palette1084D != temp_r1) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    sp0 = 1;
    h1084D065158(&sp10, 0x5000F, palette1084D, -1, sp0);
    sp10.f1C = (s8) palette1084D;
    F_1084D(object1084D,u16,0x68) = 0x10U;
    F_1084D(object1084D,u16,0x6A) = 0U;
    F_1084D(object1084D,u16,0x6C) = 0;
    sp70 = 1;
    temp_r0_3 = F_1084D(sp4C,s16,0x6) * 3;
    F_1084D(arg0,u16,0x1D6) = temp_r0_3;
    F_1084D(arg0,u16,0x5C) = temp_r0_3;
    temp_r0_4 = F_1084D(sp4C,s16,0x4) * 0xA * 2;
    F_1084D(arg0,u16,0x1D4) = temp_r0_4;
    F_1084D(arg0,u16,0x5E) = temp_r0_4;
    F_1084D(arg0,u16,0xC) = 0U;
    sp5C = 0xFFFF;
    sp60 = 0;
    sp64 = 0;
    F_1084D(arg0,u8,0x1FD) = 2U;
    F_1084D(arg0,u8,0x1FE) = 2U;
    sp7C = 0;
    sp68 = 0;
    var_sl = 0;
    var_r1 = 0;
    sp74 = 0;
    sp78 = 0;
    sp80 = 0;
    sp44 = 0;
    sp88 = 0;
    sp84 = 1;
    F_1084D(arg0,u32,0x50) = sp70;
    sp90=(u16*)((u8*)sp4C+0xD6);
    do {
        var_r2 = 0;
loop_8:
        temp_r1_2 = var_r2;
        F_1084D(history1084D+temp_r1_2*4+var_r1*0x14C,u32,0) = 0;
        temp_r1_3 = temp_r1_2 + 1;
        var_r2 = (s16) temp_r1_3;
        if ((s32) (s16) temp_r1_3 <= 4) {
            goto loop_8;
        }
        temp_r0_5 = (var_r1 << 0x10) + 0x10000;
        var_r1 = (s16) (temp_r0_5 >> 0x10);
    } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 3);
    select1084D = 0xFF;
    selectSecond1084D = 0xFF;
    sub_08097FE4();
    sub_08097A4C();
    sub_080A7E68();
    sub_080A7FF8();
    sub_080A7F30();
    sub_080A80BC();
    h1084D0A8114();
    F_1084D(arg0,s32,0x18) = 0xE00;
    sp50 = F_1084D(arg0,s32,0x14);
    sp54 = 0x6800;
    F_1084D(arg0,u8,0x1FC) = (u8) ((-0x10 & F_1084D(arg0,u8,0x1FC)) | (0xF & (u8) F_1084D(arg0,u16,0x0)));
    F_1084D(arg0,u16,0x202) = (u16) F_1084D(arg0,u16,0x2);
    F_1084D(arg0,u8,0x200) = (u8) (F_1084D(arg0,u8,0x200) | 0xFF);
    sp8C = 0;
    sub_08067C18();
loop_12:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_12;
    }
    sub_08067BF8();
    sub_0805865C(0x1A1);
loop_206:
    if ((sub_0800CB78() == 0) && (sub_08056E90() == 0)) {
        if ((F_1084D(arg0,u16,0xC) == 0xA) && (sp60 == 0)) {
            sp60 = 8;
        }
        if (sub_08058DB0() == 0) {
            h1084D01C8F0(arg0);
            temp_r0_6 = F_1084D(arg0,u8,0x1FD) - 1;
            switch (temp_r0_6) {                    /* switch 1 */
            case 0:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                if (sub_08067C08() != 0) {
                    F_1084D(arg0,u8,0x1FD) = (u8) F_1084D(arg0,u8,0x1FE);
                    sub_08067BF8();
                }
                break;
            case 1:                                 /* switch 1 */
                sub_0801A0B0((void *) arg0);
                switch (sp74) {                     /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    temp_r1_4 = var_sl;
                    var_sl = temp_r1_4 + 1;
                    if ((u32) temp_r1_4 <= 0x78U) {
block_60:
                        F_1084D(arg0,s32,0x18) = (s32) (F_1084D(arg0,s32,0x18) + 0xC0);
                    } else {
                        sp74 = 1;
                        var_sl = 0;
                        F_1084D(object1084D,u16,0x68) = 0xEU;
                        sp70 = 0;
                    }
                    break;
                case 1:                             /* switch 2 */
                    if (F_1084D(arg0,u16,0x6E) != 0) {
                        F_1084D(object1084D,u16,0x68) = 0x11U;
                        sp70 = 0;
                        sub_0805867C(0x1A1);
                        sub_0801A0A4((void *) arg0);
                        sp74 = 0;
                        var_sl = 0;
                        var_r1_2 = arg0 + 0x1FE;
                        var_r0 = 3;
block_155:
                        *var_r1_2 = var_r0;
                        var_r1_3 = arg0 + 0x1FD;
block_156:
                        *var_r1_3 = 1;
                        sub_08067C18();
                    }
                    break;
                }
                break;
            case 2:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                sub_0801A0A4((void *) arg0);
                F_1084D(arg0,u16,0x68) = 0x11U;
                F_1084D(arg0,u32,0x8) = 0;
                temp_r1_5 = var_sl;
                var_sl = temp_r1_5 + 1;
                if ((u32) temp_r1_5 > 0xB4U) {
                    F_1084D(arg0,u8,0x1FE) = 9U;
                    var_r1_3 = arg0 + 0x1FD;
                    goto block_156;
                }
                break;
            case 3:                                 /* switch 1 */
                sub_0801A0B0((void *) arg0);
                switch (sp74) {                     /* switch 3; irregular */
                case 0:                             /* switch 3 */
                    F_1084D(arg0,u16,0xC) = 1U;
                    F_1084D(arg0,u16,0x68) = 0x10U;
                    sp70 = 1;
                    temp_r1_6 = var_sl;
                    var_sl = temp_r1_6 + 1;
                    if ((u32) temp_r1_6 > 0x50U) {
                        sp74 = 1;
                    } else {
                        F_1084D(arg0,s32,0x18) = (s32) (F_1084D(arg0,s32,0x18) - 0xC0);
                    }
                    if (select1084D != 0xFF) {
                        h1084D015CE0();
                        F_1084D(players1084D+0x14C*sub_080020F4(),u16,0xB0) = 0x21;
                        var_r4 = sub_080020F4();
                        var_r0_2 = sub_080020F4();
block_115:
                        temp_r0_7 = F_1084D(arg0,s32,0x14);
                        F_1084D(players1084D+0x14C*var_r0_2,s32,0x94) = temp_r0_7;
                        F_1084D(players1084D+0x14C*var_r4,s32,0x8C) = temp_r0_7;
                        temp_r4 = sub_080020F4();
                        var_r2_2 = (0x14C * temp_r4) + (players1084D+0x90);
                        var_r1_4 = (0x14C * sub_080020F4()) + (players1084D+0x98);
                        var_r0_3 = F_1084D(arg0,s32,0x18) + 0x1000;
block_116:
                        *var_r1_4 = var_r0_3;
                        *var_r2_2 = var_r0_3;
                    }
                    break;
                case 1:                             /* switch 3 */
                    F_1084D(arg0,u16,0xC) = (u16) sp74;
                    F_1084D(arg0,u16,0x68) = 0U;
                    sp70 = 1;
                    temp_r1_7 = F_1084D(arg0,s32,0x14);
                    if (temp_r1_7 < 0xFFFFE000) {
                        if (select1084D != 0xFF) {
                            h1084D015C8C();
                        }
                        sub_0805865C(0x1AB);
                        var_sl = 0;
                        sp68 = 0;
                        F_1084D(arg0,u8,0x1FE) = 0xDU;
                        F_1084D(arg0,u8,0x1FF) = 0xAU;
                        F_1084D(arg0,u8,0x1FD) = 1U;
                        sub_08067C18();
                        sub_0805867C(0x1A1);
                    } else {
                        F_1084D(arg0,s32,0x14) = (s32) (temp_r1_7 + 0xFFFFFD80);
                    }
                    if (select1084D != 0xFF) {
                        F_1084D(players1084D+0x14C*sub_080020F4(),u16,0xB0) = 0x21;
                        temp_r4_2 = sub_080020F4();
                        temp_r0_8 = F_1084D(arg0,s32,0x14) + 0xFFFFF000;
                        F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x94) = temp_r0_8;
                        F_1084D(players1084D+0x14C*temp_r4_2,s32,0x8C) = temp_r0_8;
                        temp_r4_3 = sub_080020F4();
                        var_r2_2 = (0x14C * temp_r4_3) + (players1084D+0x90);
                        var_r1_4 = (0x14C * sub_080020F4()) + (players1084D+0x98);
                        var_r0_3 = F_1084D(arg0,s32,0x18) + 0x2000;
                        goto block_116;
                    }
                    break;
                }
                break;
            case 5:                                 /* switch 1 */
                sub_0801A0B0((void *) arg0);
                switch (sp74) {                     /* switch 4; irregular */
                case 0:                             /* switch 4 */
                    F_1084D(arg0,u16,0xC) = 1U;
                    if (F_1084D(arg0,u16,0x68) != 0) {
                        sub_0805865C(0x1A1);
                    }
                    F_1084D(arg0,u16,0x68) = (u16) sp74;
                    sp70 = 1;
                    temp_r2 = F_1084D(arg0,s32,0x14);
                    if ((s32) (gUnk_03003170.width0 * 4) >= (s32) (temp_r2 >> 8)) {
                        sp74 = 1;
                        var_sl = 0;
                    } else {
                        F_1084D(arg0,s32,0x14) = (s32) (temp_r2 + 0xFFFFFD80);
                    }
                    break;
                case 1:                             /* switch 4 */
                    F_1084D(arg0,u16,0xC) = (u16) sp74;
                    F_1084D(arg0,u16,0x68) = 0x10U;
                    sp70 = 1;
                    temp_r1_8 = var_sl;
                    var_sl = temp_r1_8 + 1;
                    if ((u32) temp_r1_8 > 0x50U) {
                        sp74 = 2;
                        var_sl = 0;
                        F_1084D(object1084D,u16,0x68) = 0xEU;
                    } else {
                        goto block_60;
                    }
                    break;
                case 2:                             /* switch 4 */
                    F_1084D(arg0,u16,0xC) = 1U;
                    sp70 = 0;
                    if (F_1084D(object1084D,u16,0x6E) == 0) {

                    } else {
                        sub_0805867C(0x1A1);
                        var_sl = 0;
                        F_1084D(arg0,u8,0x1FE) = 3U;
                        var_r0_4 = arg0 + 0x1FD;
block_119:
                        *var_r0_4 = 1;
                        sub_08067C18();
                    }
                    break;
                }
                break;
            case 6:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0A4((void *) arg0);
                if (F_1084D(arg0,u16,0x68) != 0) {
                    h1084D0A7ECC(0);
                    h1084D0A7ECC(1);
                    h1084D0A7ECC(2);
                    h1084D0A7ECC(3);
                    h1084D0A7ECC(4);
                    h1084D0A7ECC(5);
                    h1084D0A7ECC(6);
                    h1084D0A7ECC(7);
                }
                F_1084D(arg0,u16,0x68) = 0U;
                sp70 = 1;
                F_1084D(arg0,u32,0x8) = 2;
                temp_r1_9 = F_1084D(arg0,s32,0x14);
                if (temp_r1_9 < 0xFFFFE000) {
                    sub_0801A0B0((void *) arg0);
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xDU;
                    F_1084D(arg0,u8,0x1FF) = 5U;
                    F_1084D(arg0,u8,0x1FD) = (u8) sp70;
                    sub_08067C18();
                    if (select1084D != 0xFF) {
                        h1084D015C8C();
                    }
                } else {
                    F_1084D(arg0,s32,0x14) = (s32) (temp_r1_9 + 0xFFFFFD00);
                }
                h1084D0A6258(0);
                break;
            case 7:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                F_1084D(arg0,u32,0x8) = 0;
                switch (sp74) {                     /* switch 5; irregular */
                case 0:                             /* switch 5 */
                    sub_0801A0B0((void *) arg0);
                    if (F_1084D(arg0,u16,0x68) != 0) {
                        sub_0805865C(0x1A1);
                    }
                    F_1084D(arg0,u16,0x68) = (u16) sp74;
                    if ((s32) (gUnk_03003170.width0 * 4) >= (s32) ((s32) F_1084D(arg0,s32,0x14) >> 8)) {
                        sp74 = 1;
                        var_sl = 0;
                        h1084D0A7F94(0);
                        h1084D0A7F94(1);
                    } else {
                        var_r3 = 0xFFFFFD80;
block_121:
                        F_1084D(arg0,s32,0x14) = (s32) (F_1084D(arg0,s32,0x14) + var_r3);
                    }
                    break;
                case 1:                             /* switch 5 */
                    F_1084D(arg0,u16,0x68) = 0x10U;
                    sp70 = 1;
                    sub_0801A0A4((void *) arg0);
                    temp_r0_9 = sp7C + 2;
                    sp7C = (s32) temp_r0_9;
                    F_1084D(arg0,s32,0x18) = (s32) (F_1084D(arg0,s32,0x18) + ((s16) gUnk_080B9704[temp_r0_9] >> 1));
                    temp_r1_10 = var_sl;
                    var_sl = temp_r1_10 + 1;
                    if ((u32) temp_r1_10 <= 0x12CU) {

                    } else {
                        sp74 = 2;
                    }
                    break;
                case 2:                             /* switch 5 */
                    F_1084D(arg0,u16,0x68) = 0U;
                    sp70 = 1;
                    sub_0801A0B0((void *) arg0);
                    temp_r1_11 = F_1084D(arg0,s32,0x14);
                    if (temp_r1_11 < 0xFFFFE000) {
                        var_sl = 0;
                        F_1084D(arg0,u8,0x1FE) = 0xDU;
                        F_1084D(arg0,u8,0x1FF) = 5U;
                        F_1084D(arg0,u8,0x1FD) = (u8) sp70;
                        sub_08067C18();
                        sub_0805867C(0x1A1);
                    } else {
                        F_1084D(arg0,s32,0x14) = (s32) (temp_r1_11 + 0xFFFFFD80);
                    }
                    break;
                }
                break;
            case 8:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0A4((void *) arg0);
                if (F_1084D(arg0,u16,0x68) != 0xF) {
                    sub_0805865C(0x1A3);
                    F_1084D(arg0,u16,0x6E) = 0U;
                }
                F_1084D(arg0,u16,0x68) = 0xFU;
                sp70 = 0;
                F_1084D(arg0,u32,0x8) = 0;
                if (F_1084D(arg0,u16,0x6E) != 0) {
                    sub_0801A0B0((void *) arg0);
                    sp74 = 0;
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 4U;
                    F_1084D(arg0,u8,0x1FD) = 1U;
                    sub_08067C18();
                    sub_0805865C(0x1A1);
                } else {
                    h1084D0A6510();
                }
                if (select1084D == 0xFF) {

                } else {
                    temp_r4_4 = sub_080020F4();
                    temp_r0_10 = F_1084D(arg0,s32,0x14);
                    F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x94) = temp_r0_10;
                    F_1084D(players1084D+0x14C*temp_r4_4,s32,0x8C) = temp_r0_10;
                    temp_r4_5 = sub_080020F4();
                    var_r2_2 = (0x14C * temp_r4_5) + (players1084D+0x90);
                    var_r1_4 = (0x14C * sub_080020F4()) + (players1084D+0x98);
                    var_r0_3 = F_1084D(arg0,s32,0x18) + 0x1000;
                    goto block_116;
                }
                break;
            case 10:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0B0((void *) arg0);
                if ((h1084D0A8090(arg0 + 0x14) << 0x18) == 0) {

                } else {
                    sp88 = 0;
                    selectSecond1084D = 0xFF;
                    if ((sub_0800CE68() == 0) && (sub_0800CC98() == 0)) {
                        sub_08015C38();
                    }
                    F_1084D(arg0,u8,0x1FE) = 0xCU;
                    var_r1_3 = arg0 + 0x1FD;
                    goto block_156;
                }
                break;
            case 11:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0B0((void *) arg0);
                if (F_1084D(arg0,u16,0x68) != 0) {
                    sub_0805865C(0x1A1);
                }
                F_1084D(arg0,u16,0x68) = 0U;
                sp70 = 1;
                if (sp88 == 0) {
                    temp_r0_11 = h1084D0A6258(1);
                    sp88 = (s32) temp_r0_11;
                    if (temp_r0_11 != 0) {
                        sub_0805865C(0x1AB);
                    }
                }
                temp_r1_12 = F_1084D(arg0,s32,0x14);
                if (temp_r1_12 < 0xFFFFE000) {
                    var_sl = 0;
                    sp68 = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xDU;
                    F_1084D(arg0,u8,0x1FF) = 0xAU;
                    F_1084D(arg0,u8,0x1FD) = 1U;
                    sub_08067C18();
                    sub_0805867C(0x1A1);
                    if (select1084D == 0xFF) {

                    } else {
                        h1084D015C8C();
                        goto block_112;
                    }
                } else {
                    F_1084D(arg0,s32,0x14) = (s32) (temp_r1_12 + 0xFFFFFD00);
block_112:
                    if (select1084D == 0xFF) {

                    } else {
                        var_r4 = sub_080020F4();
                        var_r0_2 = sub_080020F4();
                        goto block_115;
                    }
                }
                break;
            case 4:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 1U;
                F_1084D(arg0,u16,0x68) = 1U;
                sp70 = 1;
                sub_0801A0B0((void *) arg0);
                if ((s32) ((gUnk_03003170.width0 * 8) + 0x32) <= (s32) ((s32) F_1084D(arg0,s32,0x14) >> 8)) {
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xEU;
                    var_r0_4 = arg0 + 0x1FD;
                    goto block_119;
                }
                var_r3 = 0x120;
                goto block_121;
            case 9:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0B0((void *) arg0);
                if (select1084D != 0xFF) {
                    temp_r4_6 = sub_080020F4();
                    temp_r0_12 = F_1084D(arg0,s32,0x14);
                    F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x94) = temp_r0_12;
                    F_1084D(players1084D+0x14C*temp_r4_6,s32,0x8C) = temp_r0_12;
                    temp_r4_7 = sub_080020F4();
                    temp_r0_13 = F_1084D(arg0,s32,0x18);
                    F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x98) = temp_r0_13;
                    F_1084D(players1084D+0x14C*temp_r4_7,s32,0x90) = temp_r0_13;
                }
                temp_r1_13 = sp68;
                sp68 = (u32) (u16) (temp_r1_13 + 1);
                if (temp_r1_13 > 0x1EU) {
                    sp68 = 0;
                    if (select1084D != 0xFF) {
                        F_1084D(players1084D+0x14C*sub_080020F4(),u16,0xB0) = 0xFFFE;
                        if (sub_0800CE30() == 1) {
                            h1084D029A7C(5, 0x32, 3);
                        } else {
                            h1084D029A7C(5, 0x1E, 3);
                        }
                    }
                }
                F_1084D(arg0,u16,0x68) = 4U;
                sp70 = 1;
                temp_r2_2 = F_1084D(arg0,s32,0x14);
                if ((s32) ((gUnk_03003170.width0 * 8) + 0x32) <= (s32) (temp_r2_2 >> 8)) {
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xEU;
                    F_1084D(arg0,u8,0x1FD) = 1U;
                    sub_08067C18();
                } else {
                    F_1084D(arg0,s32,0x14) = (s32) (temp_r2_2 + 0x120);
                }
                break;
            case 12:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                sp84 = 0;
                sub_0801A0B0((void *) arg0);
                temp_r1_14 = var_sl;
                var_sl = temp_r1_14 + 1;
                if ((u32) temp_r1_14 <= 0x5AU) {

                } else {
                    F_1084D(arg0,s32,0x18) = 0x2B00;
                    F_1084D(arg0,u8,0x1FE) = (u8) F_1084D(arg0,u8,0x1FF);
                    var_r1_3 = arg0 + 0x1FD;
                    goto block_156;
                }
                break;
            case 13:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                sp84 = 1;
                sub_0801A0B0((void *) arg0);
                temp_r1_15 = var_sl;
                var_sl = temp_r1_15 + 1;
                if ((u32) temp_r1_15 > 0x5AU) {
                    if (select1084D != 0xFF) {
                        sp80 = 1;
                    }
                    if (sub_0800CE30() == 1) {
                        if (sp78 != 3) {
                            goto block_143;
                        }
                        goto block_144;
                    }
                    if (sp78 != 2) {
block_143:
                        var_r0_5 = sp78 + 1;
                    } else {
block_144:
                        var_r0_5 = 0;
                    }
                    sp78 = (s32) var_r0_5;
                    switch (sp78) {                 /* switch 6; irregular */
                    case 0:                         /* switch 6 */
                        sp74 = 0;
                        var_sl = 0;
                        F_1084D(arg0,s32,0x18) = 0x2B00;
                        F_1084D(arg0,u8,0x1FE) = 8U;
                        var_r1_3 = arg0 + 0x1FD;
                        goto block_156;
                    case 1:                         /* switch 6 */
                        F_1084D(arg0,s32,0x18) = 0x4800;
                        F_1084D(arg0,u8,0x1FE) = 7U;
                        F_1084D(arg0,u8,0x1FD) = (u8) sp78;
                        sub_08067C18();
                        break;
                    case 2:                         /* switch 6 */
                        sp74 = 0;
                        var_sl = 0;
                        F_1084D(arg0,s32,0x18) = 0x2B00;
                        var_r1_2 = arg0 + 0x1FE;
                        var_r0 = 6;
                        goto block_155;
                    case 3:                         /* switch 6 */
                        sp74 = 0;
                        var_sl = 0;
                        F_1084D(arg0,s32,0x18) = 0x2800;
                        h1084D0A803C();
                        F_1084D(arg0,u8,0x1FE) = 0xBU;
                        F_1084D(arg0,u8,0x1FD) = 1U;
                        sub_08067C18();
                        break;
                    }
                }
                break;
            }
            if ((sp80 != 0) && ((h1084D0A66E0(&sp44) << 0x18) != 0)) {
                sp80 = 0;
            }
        }
        if ((select1084D != 0xFF) || (selectSecond1084D != 0xFF)) {
            sub_08015C14();
        }
        if (sp5C != F_1084D(object1084D,u16,0x68)) {
            sp5C = (s32) F_1084D(object1084D,u16,0x68);
            F_1084D(object1084D,u16,0x6C) = 0;
            F_1084D(object1084D,u16,0x6A) = 0;
        }
        sp50 = F_1084D(object1084D,s32,0x14);
        if ((u32) (u8) (F_1084D(arg0,u8,0x1FD) - 0xD) <= 1U) {

        } else {
            if (sub_0800CD8C() == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
            }
            if (1 & sub_08098004()) {
                var_r0_6 = sub_08097FF8();
            } else {
                var_r0_6 = (u8) sub_0800BC44((u32) ((s32) F_1084D(arg0,s32,0x14) >> 8), (u32) ((s32) F_1084D(arg0,s32,0x18) >> 8), 0U);
            }
            temp_r0_14 = var_r0_6;
            sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
            temp_r4_8 = &sp46;
            sp0 = 0;
            sp4 = NULL;
            h1084D00BC08((s32) (F_1084D(arg0,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(arg0,s32,0x18) << 8) >> 0x10, temp_r4_8, &sp48, sp0, sp4);
            if (sp60 != 0) {
                temp_r0_15 = sp60;
                sp60 = (s32) (u16) (temp_r0_15 - 1);
                if ((1 & temp_r0_15) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                    sp0 = (s32) temp_r0_14;
                    sp4 = &sp10.f1C;
                    sp8 = sp10.f8;
                    spC = sp10.f0;
                    h1084D007870(sp46, sp48, F_1084D(arg0,u16,0x68), F_1084D(arg0,u16,0x6A), sp0, sp4, sp8, spC);
                }
            } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                sp0 = (s32) temp_r0_14;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(arg0,u16,0x68), F_1084D(arg0,u16,0x6A), sp0, sp4, sp8, spC);
            }
            if (((u32) (F_1084D(arg0,s32,0x14) + 0xFFFFD600) <= 0x9200U) && (sp84 == 1) && (gUnk_03002344 & sp84) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
                temp_r0_16 = sub_0800CD34();
                if (temp_r0_16 == 0) {
                    temp_r4_9 = sp50 >> 8;
                    temp_r5 = sp54 >> 8;
                    temp_r8 = (u8) sub_0800BC44((u32) temp_r4_9, (u32) temp_r5, 0U);
                    sp0 = temp_r0_16;
                    sp4 = temp_r0_16;
                    h1084D00BC08((s32) (s16) temp_r4_9, (s32) (s16) temp_r5, temp_r4_8, &sp48, sp0, sp4);
                    sp0 = (s32) temp_r8;
                    sp4 = &sp10.f1C;
                    sp8 = sp10.f8;
                    spC = sp10.f0;
                    F_1084D(h1084D007870(sp46,1,0x12U,0U, sp0, sp4, sp8, spC),s32,0xC) = (s32) sp48;
                }
            }
        }
        temp_r0_17 = F_1084D(arg0,u32,0x4C);
        if ((temp_r0_17 != 0) && (sp58 != temp_r0_17)) {
            sp58 = temp_r0_17;
            sp64 = 0xA;
            sp6C = 0;
        }
        if (sp64 != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                h1084D01A120(arg0, sp58, (s16) sp6C);
            }
            if (2 & sp64) {
                sp6C = (u32) ((sp6C << 0x10) + 0xFFFF0000) >> 0x10;
            }
            sp64 = (s32) (u16) (sp64 - 1);
        } else {
            sp58 = 0;
            F_1084D(arg0,u32,0x4C) = sp64;
        }
        if ((h1084D019CE8(arg0) << 0x10) != 0) {
            sp8C = 1;
        }
        sub_080003F0();
        if (sp8C == 0) {
            goto loop_206;
        }
    }
    gUnk_030056FC = 0;
    temp_r2_3 = (sub_080020F4() * 0x14C) + (players1084D+0x30);
    *temp_r2_3 |= 1;
    sub_080A7E94();
    sub_080A7F5C();
    sub_080A8014();
    if (F_1084D(object1084D,u16,0x68) != 0x10) {
        F_1084D(object1084D,u16,0x68) = 0x11U;
    }
    F_1084D(object1084D,u16,0x6A) = 0U;
    F_1084D(object1084D,u16,0x6C) = 0;
    sp70 = 1;
    sp6C = 0;
    sp64 = 0xA;
loop_211:
    temp_r3 = (0x14C * sub_080020F4()) + (players1084D+0x30);
    *temp_r3 |= 1;
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_18 = sub_0800CD34();
        if (temp_r0_18 == 0) {
            sp0 = sp70;
            F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
            sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
            temp_r8_2 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
            sp0 = temp_r0_18;
            sp4 = temp_r0_18;
            h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
            sp0 = (s32) temp_r8_2;
            sp4 = &sp10.f1C;
            sp8 = sp10.f8;
            spC = sp10.f0;
            h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            h1084D01A120(arg0, sp58, (s16) sp6C);
        }
    }
    if (2 & sp64) {
        sp6C = (u32) ((sp6C << 0x10) + 0xFFFF0000) >> 0x10;
    }
    sub_080003F0();
    sp64 = (s32) (u16) (sp64 - 1);
    if (sp64 != 0xFFFF) {
        goto loop_211;
    }
    sub_080683CC();
    h1084D067CA8(F_1084D(object1084D,u16,0x2));
    sub_08068330(-0x21520532);
loop_226:
    if (sub_080682B8(-0x21520532) == 0) {
        temp_r3_2 = (0x14C * sub_080020F4()) + (players1084D+0x30);
        *temp_r3_2 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_19 = sub_0800CD34();
            if (temp_r0_19 == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
                sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
                temp_r8_3 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
                sp0 = temp_r0_19;
                sp4 = temp_r0_19;
                h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
                sp0 = (s32) temp_r8_3;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_226;
    }
    sub_08065E38(-0x21520532);
loop_234:
    if (sub_08058DB0() != 0) {
        temp_r3_3 = (0x14C * sub_080020F4()) + (players1084D+0x30);
        *temp_r3_3 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_20 = sub_0800CD34();
            if (temp_r0_20 == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
                sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
                temp_r8_4 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
                sp0 = temp_r0_20;
                sp4 = temp_r0_20;
                h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
                sp0 = (s32) temp_r8_4;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_234;
    }
    h1084D0586B4(0);
    temp_r2_4 = (sub_080020F4() * 0x14C) + (players1084D+0x30);
    *temp_r2_4 |= 1;
    sp0 = 0x3C;
    sp4 = (void*)0x14006A;
    F_1084D(game1084D,u32,0x720) = h1084D05DF38(1U, 0xEU, 0x19U, 2U, sp0, (u32)sp4);
loop_242:
    if (sub_0805EEFC((void *) F_1084D(game1084D,u32,0x720)) == 0) {
        temp_r3_4 = (0x14C * sub_080020F4()) + (players1084D+0x30);
        *temp_r3_4 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_21 = sub_0800CD34();
            if (temp_r0_21 == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
                sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
                temp_r8_5 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
                sp0 = temp_r0_21;
                sp4 = temp_r0_21;
                h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
                sp0 = (s32) temp_r8_5;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_242;
    }
    temp_r2_5 = (0x14C * sub_080020F4()) + (players1084D+0x30);
    *temp_r2_5 &= ~1;
    sub_0805867C(0x1A1);
    h1084D058688(0xD);
    h1084D0970CC(object1084D, &sp10, *sp90, palette1084D);
    if (!(F_1084D(players1084D+0x14C*sub_080020F4(),u32,0x30) & 0x2000) && (F_1084D(object1084D,u16,0x5A) != 0)) {
        temp_r4_10 = sub_0801E46C((void *) gUnk_030034E0, sp4C);
        sp6C = 0x1D;
        do {
            F_1084D(object1084D,s32,0x18) = (s32) (F_1084D(object1084D,s32,0x18) - 0x20);
            h1084D06171C(object1084D, temp_r4_10);
            sub_080003F0();
            temp_r0_22 = (sp6C << 0x10) + 0xFFFF0000;
            sp6C = temp_r0_22 >> 0x10;
        } while (((s32) temp_r0_22 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4_10);
    }
    sp6C = 0x6F;
    do {
        sub_080003F0();
        temp_r0_23 = (sp6C << 0x10) + 0xFFFF0000;
        sp6C = temp_r0_23 >> 0x10;
    } while (((s32) temp_r0_23 >> 0x10) != -1);
    sub_08067C18();
loop_252:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_252;
    }
    sub_08067BF8();
    sub_08056E24();
loop_255:
    if (sub_08056E90() == 0) {
        sub_080003F0();
        goto loop_255;
    }
    sub_080A80D8();
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4D08);
#endif
struct T109P6258 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x, y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[2]; u16 fC8, fCA, fCC; u8 pCE[0x16]; u32 fE4[26]; };
struct T109Obj6258 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x,y; u8 p1C[0x34]; u32 serial; };
extern struct T109P6258 t109P6258[] asm("gUnk_03003CE0");
extern struct T109Obj6258 *t109O6258 asm("gUnk_03000400");
extern u8 gUnk_03000406;
extern s32 t109Calc6258(struct T109Obj6258 *,struct T109P6258 *) asm("sub_0801ED8C");
extern s32 t109X6258[] asm("gUnk_03003D6C");
extern s32 t109Angle6258(s16,s16) asm("ArcTan2");
s32 sub_080A6258(u8 arg0) {
    s32 result = 0;
    u16 dx;
    s16 x,y,hp;
    s32 i,j;
    u32 angle, angle3;
    s32 objx;
    u32 direction;
    s32 amount, value88;
    s32 first, second, yy;
    struct T109P6258 *base;
    struct T109P6258 *dst;
    s32 value;
    struct T109Obj6258 *obj;
    first = sub_080020F4();
    objx = t109O6258->x >> 8;
    base = t109P6258;
    dx = objx - (t109X6258[first*0x53] >> 8);
    second = sub_080020F4();
    yy = (t109O6258->y >> 8) + 12;
    y = yy - (t109P6258[second].y >> 8);
    x = dx;
    if ((u16)Sqrt(x*x+y*y) > 23) goto end;
    if (sub_0800CDF8() != 0) goto end;
    if (sub_0800CCCC() != 0) goto end;
    if (sub_0800CD8C() != 0) goto end;
    if (t109O6258->fC == 11) goto end;
    if (t109P6258[sub_080020F4()].flags & 0x2000) goto end;
    if (t109P6258[sub_080020F4()].f68 == 0) goto end;
    if (t109P6258[sub_080020F4()].state == 14) goto end;
    if (t109P6258[sub_080020F4()].state == 11) goto end;
    if (t109P6258[sub_080020F4()].state == 12) goto end;
    if (t109P6258[sub_080020F4()].fE4[t109O6258->id] == t109O6258->serial) goto end;
    base[sub_080020F4()].state = 10;
    t109P6258[sub_080020F4()].fB0 = 0xFFFE;
    i = sub_080020F4();
    obj = t109O6258;
    amount = t109Calc6258(obj, &t109P6258[sub_080020F4()]);
    value88 = t109P6258[i].f88;
    t109P6258[i].f88 = amount + value88;
    t109P6258[sub_080020F4()].fE4[t109O6258->id] = t109O6258->serial++;
    dx = (t109X6258[sub_080020F4()*0x53] >> 8) - (t109O6258->x >> 8);
    x = dx;
    y = (t109P6258[sub_080020F4()].y >> 8) - (t109O6258->y >> 8);
    angle = (u16)t109Angle6258(x,y);
    angle3 = (u16)(angle << 3);
    direction = angle >> 13;
    if (angle3 > 0x8000) {
        if (direction <= 6) direction++;
        else direction = 0;
    }
    switch (direction) {
    case 0:
        t109P6258[sub_080020F4()].fCA = 6;
        break;
    case 1:
        t109P6258[sub_080020F4()].fCA = 7;
        break;
    default:
        t109P6258[sub_080020F4()].fCA = direction - 2;
        break;
    }
    t109P6258[sub_080020F4()].fCC = 0x400;
    t109P6258[sub_080020F4()].fC8 = 8;
    if (arg0 != 0) {
        hp = t109P6258[sub_080020F4()].fC4;
        if (hp > t109P6258[sub_080020F4()].f88) {
            gUnk_03000406 = 0;
            sub_08015C14();
            if (sub_0800CE68() != 0 || sub_0800CC98() != 0) sub_0800D038();
        }
    }
    result = 1;
end:
    return result;
}
struct T109P6510 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x; s32 y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[0x1E]; u32 fE4[26]; };
struct T109Obj6510 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x; s32 y; u8 p1C[0x34]; u32 serial; };
extern struct T109P6510 t109P6510[] asm("gUnk_03003CE0");
extern struct T109Obj6510 *t109O6510 asm("gUnk_03000400");
extern u8 gUnk_03000406;
extern s32 t109Calc6510(struct T109Obj6510 *, struct T109P6510 *) asm("sub_0801ED8C");
s32 sub_080A6510(void)
{
  s32 result = 0;
  u16 dx;
  s16 x;
  s16 y;
  s16 hp;
  s32 i;
  s32 j;
  s32 amount;
  s32 value;
  struct T109P6510 *dst;
  struct T109Obj6510 *obj;
  dx = (t109O6510->x >> 8) - (t109P6510[sub_080020F4()].x >> 8);
  y = (t109O6510->y >> 8) - (t109P6510[sub_080020F4()].y >> 8);
  x = dx;
  if (((u16) Sqrt((x * x) + (y * y))) > 47)
  {
    goto end;
  }
  if (gUnk_03000406 != 255)
  {
    goto end;
  }
  if (sub_0800CDF8() != 0)
  {
    goto end;
  }
  if (sub_0800CD8C() != 0)
  {
    goto end;
  }
  if (sub_0800CCCC() != 0)
  {
    goto end;
  }
  if (t109O6510->fC == 11)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].flags & 0x2000)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].f68 == 0)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].state == 14)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].state == 11)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].state == 12)
  {

    goto end;
  }
  if (t109P6510[sub_080020F4()].fE4[t109O6510->id] == t109O6510->serial)
  {
    goto end;
  }
  t109P6510[sub_080020F4()].state = 10;
  t109P6510[sub_080020F4()].fB0 = 0xFFFE;
  i = sub_080020F4();
  obj = t109O6510;
  amount = t109Calc6510(obj, &t109P6510[sub_080020F4()]);
  dst = &t109P6510[i];
  value = dst->f88;
  dst->f88 = amount + value;
  t109P6510[sub_080020F4()].fE4[t109O6510->id] = t109O6510->serial++;
  hp = t109P6510[sub_080020F4()].fC4;
  if (hp > t109P6510[sub_080020F4()].f88)
  {
    gUnk_03000406 = 0;
    sub_08015C14();
    if ((sub_0800CE68() != 0) || (sub_0800CC98() != 0))
    {
      sub_0800D038();
    }
  }
  result = 1;
  end:
  return result;

}
struct T109Player { u8 pad0[0x1C]; s16 f1C; u8 pad1E[0x6E]; s32 x, y, x2, y2; u8 pad9C[0x14]; u16 fB0; u8 padB2[0x9A]; };
extern struct T109Player t109Players[] asm("gUnk_03003CE0");
extern s32 t109X[] asm("gUnk_03003D6C");
extern s32 t109Origin[2] asm("gUnk_085187B4");
extern s32 t109Targets[][4][2] asm("gUnk_085187BC");
extern void sub_08015CB4(void);
extern void sub_08015D04(void);
extern void sub_08029A7C(s32,s32,s32);
s32 sub_080A66E0(u8 *arg0) {
    s32 result = 0;
    s32 i0;
    s32 i1;
    s32 i2;
    s32 i3;
    s32 i4;
    s32 i5;
    s32 i6;
    s32 i7;
    s32 mode;
    struct T109Player *base;
    s32 j;
    if (gUnk_03000406 != 0xFF) {
        if (*arg0 == 0) {
            i0 = sub_080020F4();
            t109Players[i0].x = t109Players[sub_080020F4()].x2 = t109Origin[0];
            i1 = sub_080020F4();
            t109Players[i1].y = t109Players[sub_080020F4()].y2 = t109Origin[1];
            sub_08015CB4();
        } else {
            mode = sub_08002164() - 1;
            i2 = sub_080020F4();
            j = sub_080020F4();
            base = t109Players;
            t109X[i2 * 0x53] += (t109Targets[mode][j][0] - t109Origin[0]) / 20;
            i3 = sub_080020F4();
            t109Players[i3].y += (t109Targets[mode][sub_080020F4()][1] - t109Origin[1]) / 20;
            i4 = sub_080020F4();
            t109Players[i4].x2 = t109X[sub_080020F4() * 0x53];
            i5 = sub_080020F4();
            t109Players[i5].y2 = t109Players[sub_080020F4()].y;
            base[sub_080020F4()].f1C = 5;
        }
        if (++*arg0 > 19) {
            *arg0 = 0;
            result = 1;
            gUnk_03000406 = 0xFF;
            sub_08015D04();
            sub_08015C38();
            t109Players[sub_080020F4()].fB0 = 0xFFFE;
            if (sub_0800CE30() == 1) sub_08029A7C(0, 100, 3);
            else sub_08029A7C(0, 70, 3);
        }
    }
    return result;
}
struct T109P68B0 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x; s32 y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[0x1E]; u32 fE4[26]; };
struct T109Obj68B0 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x; s32 y; u8 p1C[0x34]; u32 serial; };
extern struct T109P68B0 t109P68B0[] asm("gUnk_03003CE0");
extern struct T109Obj68B0 *t109O68B0 asm("gUnk_03000400");
extern s32 t109Calc68B0(struct T109Obj68B0 *, struct T109P68B0 *) asm("sub_0801ED8C");
extern u16 t109Index68B0 asm("gUnk_03000404");
extern void t109Init68B0(void *,s32,u16,s32,s32) asm("sub_08065158");
extern void t109Screen68B0(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void t109Draw68B0(s16,s16,s32,u16,s32,void *,s32,s32) asm("sub_08007870");
extern void t109Anim68B0(void *,s32,u16 *,u16 *,s32) asm("sub_08065370");
extern u32 t109Serial68B0[][83] asm("gUnk_03003DC4");
extern void t109Run68B0(u16) asm("sub_080A68B0");
void t109Run68B0(u16 arg0) {
    u8 sprite[0x34];
    s16 outX, outY;
    u16 frame, tick;
    u8 *resource;
    s32 speed, remaining;
    u8 wait;
    s32 delay;
    s32 pos[2];
    u16 dx;
    s16 x,y;
    s32 i, amount, value;
    struct T109P68B0 *dst;
    struct T109Obj68B0 *obj;
    s32 zero;
    s32 second, yy;
    s32 *task;
    resource = (u8 *)t109O68B0 + 0x204;
    t109Init68B0(sprite,0x5000F,t109Index68B0,-1,1);
    sprite[0x1C] = t109Index68B0;
    speed = 0x80;
    remaining = 240;
    wait = 0;
    tick = 0;
    frame = wait;
    sub_0805865C(0x1A4);
    delay = arg0 * 17;
    do {
        if (delay > wait) {
            wait++;
            pos[0] = t109O68B0->x;
            pos[1] = t109O68B0->y;
            if (delay <= wait) sub_0805865C(0x1A4);
        } else {
            if (arg0 & 1) pos[0] += 0xC0;
            pos[1] += speed;
            speed += 18;
            dx = (pos[0] >> 8) - (t109P68B0[sub_080020F4()].x >> 8);
            x = dx;
            second = sub_080020F4();
            yy = (pos[1] >> 8) + 12;
            y = yy - (t109P68B0[second].y >> 8);
            if ((u16)Sqrt(x*x+y*y) > 15) goto contactDone;
            if (sub_0800CDF8() != 0) goto contactDone;
            if (sub_0800CD8C() != 0) goto contactDone;
            if (sub_0800CCCC() != 0) goto contactDone;
            if (t109O68B0->fC == 11) goto contactDone;
            if (t109P68B0[sub_080020F4()].flags & 0x2000) goto contactDone;
            if (t109P68B0[sub_080020F4()].f68 == 0) goto contactDone;
            if (t109P68B0[sub_080020F4()].state == 14) goto contactDone;
            if (t109P68B0[sub_080020F4()].state == 11) goto contactDone;
            if (t109P68B0[sub_080020F4()].state == 12) goto contactDone;
            if (t109Serial68B0[sub_080020F4()][t109O68B0->id] == t109O68B0->serial) goto contactDone;
            t109P68B0[sub_080020F4()].state = 10;
            t109P68B0[sub_080020F4()].fB0 = 0xFFFE;
            i = sub_080020F4();
            obj = t109O68B0;
            amount = t109Calc68B0(obj, &t109P68B0[sub_080020F4()]);
            dst = &t109P68B0[i];
            value = dst->f88;
            dst->f88 = amount + value;
            { s32 player=sub_080020F4(); register struct T109Obj68B0 *p asm("r2"); register struct T109Obj68B0 **a asm("r3")=&t109O68B0; asm("" : "+r"(a)); p=*a; t109Serial68B0[player][p->id]=p->serial; }
contactDone:
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
                zero = sub_0800CD34();
                if (zero == 0) {
                    t109Screen68B0((s32)(pos[0]<<8)>>16,(s32)(pos[1]<<8)>>16,&outX,&outY,zero,zero);
                    sub_08000AF0(t109Index68B0+16,*(u8 **)(sprite+0xC)+(*(u16 *)(resource+0xD6)<<5),1);
                    t109Anim68B0(sprite,2,&frame,&tick,1);
                    t109Draw68B0(outX,outY,2,frame,zero,sprite+0x1C,*(s32 *)(sprite+8),*(s32 *)sprite);
                }
            }
        }
        sub_080003F0();
        if (sub_0800CED8() != 0 || sub_0800CB78() != 0 || (zero = sub_0800CD00()) != 0) {
            task = (s32 *)sub_0800048C();
            task[2] = 0;
            return;
        }
        remaining = (u16)(remaining-1);
    } while (remaining != 0xFFFF);
    sub_080003F0();
    t109O68B0->serial++;
    task = (s32 *)sub_0800048C();
    task[2] = zero;
}
struct Pl6BE8 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x, y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x32]; u32 hitIds[26]; };
struct Obj6BE8 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 serial; };
struct Anim6BE8 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct Part6BE8 { s32 x, y, speed; u16 frame, tick; u8 dir, timer, hit, delay; };
extern struct Pl6BE8 gPl6BE8[] asm("gUnk_03003CE0");
extern struct Obj6BE8 *gObj6BE8 asm("gUnk_03000400");
extern u16 gTile6BE8 asm("gUnk_03000404");
extern s16 gSin6BE8[] asm("gUnk_080B9704");
extern u16 gAng6BE8[] asm("gUnk_085186DC");
u16 calc6BE8(void *, void *) asm("sub_0801ED8C");
void animInit6BE8(void *, s32, s32, s32, s32) asm("sub_08065158");
void proj6BE8(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
void draw6BE8(s32, s32, s32, u16, s32, void *, u32, u32) asm("sub_08007870");
void anim6BE8(void *, s32, u16 *, u16 *, s32) asm("sub_08065370");
void loadPal6BE8(u32, void *, u32) asm("sub_08000AF0");
void sub_080A6BE8_v(u16 cw) asm("sub_080A6BE8");
void sub_080A6BE8_v(u16 cw)
{
    struct Anim6BE8 anim;
    struct Part6BE8 p[4];
    s16 sx, sy;
    u8 *res;
    struct Part6BE8 *ph;
    s32 spacing;
    u8 i;
    u16 n;
    u16 dx, dy;
    u16 dist;
    s32 j;
    s32 z;
    struct Obj6BE8 *o;

    res = (u8 *)gObj6BE8 + 0x204;
    animInit6BE8(&anim, 0x5000F, gTile6BE8, -1, 1);
    anim.f1C = gTile6BE8;
    spacing = (sub_0800CE30() == 1) ? 8 : 16;
    for (i = 0; i <= 3; i++) {
        if (cw != 0) {
            p[i].dir = i + 4;
            p[i].x = gObj6BE8->x + 0x800;
            p[i].delay = (3 - i) * spacing;
        } else {
            p[i].dir = i;
            p[i].dir++;
            p[i].x = gObj6BE8->x - 0x800;
            p[i].delay = i * spacing;
        }
        p[i].timer = 0;
        p[i].speed = 0x80;
        p[i].y = gObj6BE8->y;
        p[i].tick = 0;
        p[i].frame = 0;
        p[i].hit = 0;
    }
    n = 0xF0;
    do {
        for (i = 0; i <= 3; i++) {
            if (p[i].delay != 0) {
                if (--p[i].delay == 0)
                    sub_0805865C(0x1A2);
            } else {
                if (p[i].timer++ > 8) {
                    p[i].timer = 0;
                    if (cw != 0)
                        p[i].dir = (p[i].dir == 7) ? 0 : ++p[i].dir;
                    else
                        p[i].dir = (p[i].dir == 0) ? 7 : --p[i].dir;
                }
                if (p[i].dir == 0 || p[i].dir == 4)
                    p[i].y += gSin6BE8[gAng6BE8[p[i].dir]] * p[i].speed / 304;
                else
                    p[i].y += gSin6BE8[gAng6BE8[p[i].dir]] * p[i].speed / 256;
                p[i].x += gSin6BE8[gAng6BE8[p[i].dir] + 0x40] * p[i].speed / 256;
                { s32 t = p[i].speed + 0x20; p[i].speed = t - i; }
            }
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (z = sub_0800CD34()) == 0) {
                loadPal6BE8(gTile6BE8 + 0x10, anim.fC + *(u16 *)(res + 0xD6) * 32, 1);
                proj6BE8((s16)(p[i].x >> 8), (s16)(p[i].y >> 8), &sx, &sy, z, z);
                anim6BE8(&anim, p[i].dir + 5, &p[i].frame, &p[i].tick, 1);
                draw6BE8(sx, sy, p[i].dir + 5, p[i].frame, z, &anim.f1C, anim.f8, anim.f0);
            }
            ph = &p[i];
            if (ph->hit == 0) {
                dx = (ph->x >> 8) - (gPl6BE8[sub_080020F4()].x >> 8);
                dy = (p[i].y >> 8) + 12 - (gPl6BE8[sub_080020F4()].y >> 8);
                dist = Sqrt((s16)dx * (s16)dx + (s16)dy * (s16)dy);
                if (dist <= 15 && !sub_0800CDF8() && !sub_0800CD8C() && !sub_0800CCCC()
                    && gObj6BE8->fC != 11
                    && !(gPl6BE8[sub_080020F4()].flags & 0x2000)
                    && gPl6BE8[sub_080020F4()].f68 != 0
                    && gPl6BE8[sub_080020F4()].state != 14
                    && gPl6BE8[sub_080020F4()].state != 11
                    && gPl6BE8[sub_080020F4()].state != 12
                    && gPl6BE8[sub_080020F4()].hitIds[gObj6BE8->id] != gObj6BE8->serial) {
                    gPl6BE8[sub_080020F4()].state = 10;
                    gPl6BE8[sub_080020F4()].fB0 = 0xFFFE;
                    j = sub_080020F4();
                    o = gObj6BE8;
                    gPl6BE8[j].f88 += calc6BE8(o, &gPl6BE8[sub_080020F4()]);
                    gPl6BE8[sub_080020F4()].hitIds[gObj6BE8->id] = gObj6BE8->serial++;
                    ph->hit = 1;
                }
            }
        }
        sub_080003F0();
    } while (--n != 0xFFFF);
    *(u32 *)((u8 *)sub_0800048C() + 8) = 0;
}
struct Pl705C { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x, y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[0x1E]; u32 hitIds[25]; u16 *f148; };
struct Obj705C { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 serial; };
struct Anim705C { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct Part705C { s32 x, y, timer; u16 frame, tick; u8 dir, active, p12[2]; };
struct XY705C { s32 x, y; };
extern struct Pl705C gPl705C[] asm("gUnk_03003CE0");
extern struct Obj705C *gObj705C asm("gUnk_03000400");
extern u16 gTile705C asm("gUnk_03000404");
extern u8 gFlag705C asm("gUnk_03000407");
extern s32 gY705C asm("gUnk_03000414");
u16 calc705C(void *, void *) asm("sub_0801ED8C");
s32 rnd705C(s32) asm("sub_08096594");
void animInit705C(void *, s32, s32, s32, s32) asm("sub_08065158");
void proj705C(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
void draw705C(s32, s32, s32, u16, s32, void *, u32, u32) asm("sub_08007870");
void anim705C(void *, s32, u16 *, u16 *, s32) asm("sub_08065370");
void loadPal705C(u32, void *, u32) asm("sub_08000AF0");
void end705C(s32) asm("sub_08097A38");
void sub_080A705C_v(void) asm("sub_080A705C");
void sub_080A705C_v(void)
{
    struct Anim705C anim;
    struct Part705C p[12];
    struct XY705C tgt[12];
    struct XY705C org[12];
    u8 done[12];
    u8 cnt[12];
    s16 sx, sy;
    u8 *res;
    u8 i;
    u16 dx, dy;
    u16 dist;
    s32 j;
    s32 z;
    s32 found;
    struct Obj705C *o;
    struct Pl705C *pl;

    res = (u8 *)gObj705C + 0x204;
    animInit705C(&anim, 0x5000F, gTile705C, -1, 1);
    anim.f1C = gTile705C;
    for (i = 0; i <= 11; i++) {
        p[i].dir = 1;
        org[i].x = p[i].x = gObj705C->x;
        org[i].y = p[i].y = gObj705C->y;
        p[i].timer = i * 20 + 30;
        p[i].active = 1;
        done[i] = 0;
        p[i].tick = 0;
        p[i].frame = 0;
        cnt[i] = 24;
    }
    sub_0805865C(0x1A2);
    gY705C = 0;
    do {
        for (i = 0; i <= 11; i++) {
            if (p[i].timer != 0) {
                do {
                    p[i].timer--;
                    pl = &gPl705C[rnd705C(0)];
                } while (0);
                tgt[i].x = (pl->f148[0] >> 4) << 8;
                tgt[i].y = (u32)(pl->f148[1] << 20) >> 12;
                if (p[i].timer == 0)
                    sub_0805865C(0x1A2);
            } else if (done[i] == 0) {
                if (cnt[i] != 0) {
                    cnt[i]--;
                    p[i].x += (tgt[i].x - org[i].x) / 24;
                    p[i].y += (tgt[i].y - org[i].y) / 24;
                } else {
                    done[i] = 1;
                    p[i].active = 0;
                    dx = (p[i].x >> 8) - (gPl705C[sub_080020F4()].x >> 8);
                    dy = (p[i].y >> 8) + 8 - (gPl705C[sub_080020F4()].y >> 8);
                    dist = Sqrt((s16)dx * (s16)dx + (s16)dy * (s16)dy);
                    if (dist <= 11 && !sub_0800CDF8() && !sub_0800CD8C() && !sub_0800CCCC()
                        && gObj705C->fC != 11
                        && !(gPl705C[sub_080020F4()].flags & 0x2000)
                        && gPl705C[sub_080020F4()].f68 != 0
                        && gPl705C[sub_080020F4()].state != 14
                        && gPl705C[sub_080020F4()].state != 11
                        && gPl705C[sub_080020F4()].state != 12
                        && gPl705C[sub_080020F4()].hitIds[gObj705C->id] != gObj705C->serial) {
                        gPl705C[sub_080020F4()].state = 10;
                        gPl705C[sub_080020F4()].fB0 = 0xFFFE;
                        j = sub_080020F4();
                        o = gObj705C;
                        gPl705C[j].f88 += calc705C(o, &gPl705C[sub_080020F4()]);
                        gPl705C[sub_080020F4()].hitIds[gObj705C->id] = gObj705C->serial++;
                        if (gPl705C[sub_080020F4()].fC4 > gPl705C[sub_080020F4()].f88) {
                            sub_08015C14();
                            gFlag705C = 0;
                            if (sub_0800CE68() != 0 || sub_0800CC98() != 0)
                                sub_0800D038();
                        }
                        gY705C = gPl705C[sub_080020F4()].y - 0x800;
                    }
                }
            }
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (z = sub_0800CD34()) == 0) {
                loadPal705C(gTile705C + 0x10, anim.fC + *(u16 *)(res + 0xD6) * 32, 1);
                proj705C((s16)(p[i].x >> 8), (s16)(p[i].y >> 8), &sx, &sy, z, z);
                anim705C(&anim, p[i].dir + 5, &p[i].frame, &p[i].tick, 1);
                draw705C(sx, sy, p[i].dir + 5, p[i].frame, z, &anim.f1C, anim.f8, anim.f0);
            }
        }
        found = 0;
        for (i = 0; i <= 11; i++) {
            if (p[i].active != 0) {
                found = 1;
                break;
            }
        }
        sub_080003F0();
    } while (found);
    end705C(0);
    *(u32 *)((u8 *)sub_0800048C() + 8) = found;
}
void sub_080A74E8(void)
{
    s32 x = 0;
    s32 y = 0;
    s32 dx = 0x2AA;
    s32 dy = 0x88;
    u8 index = 0;
loop:
    {
        s32 angle;
        u32 angleOffset;
        u16 inverseOffset;
        x += dx;
        y += dy;
        angle = gUnk_080B9704[index] >> 6;
        angleOffset = (u16)(angle + 7);
        inverseOffset = 15 - angle;
        index++;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            waveA74E8(2, 0x3C, 1, angleOffset, inverseOffset, 0);
            scrollA74E8(1, x >> 8, 0);
            scrollA74E8(3, y >> 8, 0);
        }
        sub_080003F0();
        goto loop;
    }
}
struct Anim756C { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct XY756C { s32 x, y; };
struct Pos756C { u16 x; u16 y : 12; u16 r : 4; u8 z : 6; u8 r2 : 2; };
struct Pl756C { u8 p0[0x30]; u32 flags; u8 p34[0x58]; s32 x, y; u8 p94[4]; s32 f98; u8 p9C[0xAC]; struct Pos756C *f148; };
struct Draw756C { u8 p0[0xC]; s32 fC; };
struct G3170_756C { u8 p0[0x90]; u16 f90; };
extern struct Pl756C gPl756C[] asm("gUnk_03003CE0");
extern u16 gTile756C asm("gUnk_03000404");
extern u32 gMask756C asm("gUnk_030056FC");
extern u8 *gGame756C asm("gUnk_03005CF4");
extern s16 gSin756C[] asm("gUnk_080B9704");
extern u32 gFrame756C asm("gUnk_03002344");
extern struct G3170_756C gMap756C asm("gUnk_03003170");
void animInit756C(void *, s32, s32, s32, s32) asm("sub_08065158");
s32 anim756C(void *, s32, u16 *, u16 *, s32) asm("sub_08065370");
void loadPal756C(u32, void *, u32) asm("sub_08000AF0");
u8 reach756C(struct XY756C, struct XY756C, s32) asm("sub_08097B6C");
void step756C(struct XY756C, struct XY756C, struct XY756C *) asm("sub_080979D8");
void cam756C(s32, s32) asm("sub_0800BB80");
void layer756C(s32, s32, s32) asm("sub_0800BBA8");
void sfx2_756C(s32) asm("sub_0805867C");
void fx756C(void *, s32, s32, s32, s32) asm("sub_08065230");
u8 prio756C(s32, s32, s32) asm("sub_0800BC44");
void proj756C(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
struct Draw756C *draw756C(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
s32 msg756C(s32, s32, s32, s32, s32, s32) asm("sub_0805DF38");
s32 msgDone756C(s32) asm("sub_0805EEFC");
void sub_08067DC8(void);
void sub_080A756C_v(void) asm("sub_080A756C");
void sub_080A756C_v(void)
{
    struct Anim756C anim0;
    struct Anim756C anim1;
    u16 frame0, tick0;
    s16 sx, sy;
    u16 frame1, tick1;
    struct XY756C delta;
    struct XY756C dragon;
    struct XY756C cam;
    struct XY756C tgt;
    struct XY756C shadow;
    u32 nPl;
    s32 animDone;
    s32 animId;
    s32 animMode;
    s32 fx;
    u16 timer;
    u8 wave;
    s32 waving;
    s32 landed;
    s32 state;
    s32 sub;
    s32 running;
    s32 x8, y8;
    u8 b;
    s8 i;
    s32 z;
    s32 j;
    struct Draw756C *o;

    gTile756C = 4;
    animInit756C(&anim0, 0x5000F, 0, -1, 1);
    anim0.f1C = gTile756C;
    loadPal756C(gTile756C + 0x10, anim0.fC, 1);
    animInit756C(&anim1, 0x50010, 0, -1, 0);
    fx = 0;
    tick1 = fx;
    frame1 = fx;
    dragon.x = 0x14000;
    dragon.y = 0x2000;
    shadow.x = 0x14000;
    shadow.y = 0x6000;
    wave = 0;
    waving = 0;
    landed = 0;
    tick0 = fx;
    frame0 = fx;
    animId = 0;
    animMode = 1;
    cam.x = 0;
    cam.y = 0;
    layer756C(1, 0, 0);
    layer756C(3, 0, 0);
    layer756C(2, 0, 0);
    nPl = sub_08002164();
    gPl756C[sub_080020F4()].flags |= 1;
    gMask756C = 0;
    state = 0;
    running = 1;
    do {
        switch (state) {
        case 0:
            tgt.x = 0;
            tgt.y = -0x5000;
            if (reach756C(cam, tgt, 1)) {
                sub = 0;
                state = 1;
                sub_0805865C(0x1A1);
            } else {
                step756C(cam, tgt, &delta);
                cam.x += delta.x;
                cam.y += delta.y;
            }
            cam756C((s16)(cam.x >> 8), (s16)(cam.y >> 8));
            break;
        case 1:
            switch (sub) {
            case 0:
                tgt.x = 0x7800;
                tgt.y = 0x2000;
                if (reach756C(dragon, tgt, 1)) {
                    animId = 0x10;
                    tick0 = sub;
                    frame0 = sub;
                    sub = 1;
                } else {
                    step756C(dragon, tgt, &delta);
                    dragon.x += delta.x;
                    dragon.y += delta.y;
                    shadow.x += delta.x;
                }
                break;
            case 1:
                tgt.x = 0x7800;
                tgt.y = 0x6000;
                if (reach756C(dragon, tgt, 1)) {
                    animId = 0xE;
                    animMode = 0;
                    tick0 = animMode;
                    frame0 = animMode;
                    sub = 2;
                } else {
                    step756C(dragon, tgt, &delta);
                    dragon.x += delta.x;
                    dragon.y += delta.y;
                    shadow.x += delta.x;
                }
                break;
            case 2:
                if (animDone != 0) {
                    animId = 0x11;
                    sub = 0;
                    tick0 = sub;
                    frame0 = sub;
                    sfx2_756C(0x1A1);
                    state = 2;
                }
                break;
            }
            break;
        case 2:
            tgt.x = 0;
            tgt.y = 0;
            if (reach756C(cam, tgt, 1)) {
                state = 3;
            } else {
                step756C(cam, tgt, &delta);
                cam.x += delta.x * 2;
                cam.y += delta.y * 2;
            }
            cam756C((s16)(cam.x >> 8), (s16)(cam.y >> 8));
            break;
        case 3:
            switch (sub) {
            case 0:
                for (i = 0; i < nPl; i++) {
                    struct Pos756C *t = gPl756C[i].f148;
                    if ((s32)((u32)(((u16 *)t)[1] << 20) >> 20) <= 0x7B && (u32)(((u8 *)t)[4] << 26) >> 26 == 0x11) {
                        landed = 1;
                        animId = 0x10;
                        tick0 = 0;
                        frame0 = 0;
                        animMode = 1;
                        sub = 1;
                        sub_0805865C(0x1A1);
                        fx = 3;
                    }
                }
                break;
            case 1:
                tgt.x = 0x7800;
                tgt.y = 0x4600;
                if (reach756C(dragon, tgt, 1)) {
                    waving = 1;
                    state = 4;
                } else {
                    step756C(dragon, tgt, &delta);
                    dragon.x += delta.x;
                    dragon.y += delta.y;
                }
                break;
            }
            gPl756C[sub_080020F4()].flags &= ~1;
            break;
        case 4:
            state = 5;
            for (i = 0; i < nPl; i++) {
                struct Pos756C *t = gPl756C[i].f148;
                if ((s32)((u32)(((u16 *)t)[1] << 20) >> 20) > 0x7C && (u32)(((u8 *)t)[4] << 26) >> 26 == 0x11)
                    state = 4;
            }
            if (state == 5) {
                gPl756C[sub_080020F4()].flags |= 1;
                *(s32 *)(gGame756C + 0x720) = msg756C(1, 0xE, 0x19, 2, 0x3C, 0x14008B);
            }
            break;
        case 5:
            if (msgDone756C(*(s32 *)(gGame756C + 0x720)) != 0) {
                gPl756C[sub_080020F4()].flags |= 1;
                gPl756C[sub_080020F4()].flags |= 0x20;
                state = 6;
                sub_0805865C(0x1AB);
            }
            break;
        case 6:
            tgt.x = 0;
            tgt.y = 0xA000;
            if (reach756C(cam, tgt, 1)) {
                timer = 0;
                state = 7;
            } else {
                step756C(cam, tgt, &delta);
                cam.y += delta.y;
                dragon.y -= delta.y;
                shadow.y -= delta.y;
                gPl756C[sub_080020F4()].y -= delta.y;
                j = sub_080020F4();
                gPl756C[j].f98 = gPl756C[sub_080020F4()].y;
            }
            layer756C(2, (s16)(cam.x >> 8), (s16)(cam.y >> 8));
            gPl756C[sub_080020F4()].flags |= 1;
            gPl756C[sub_080020F4()].flags |= 0x20;
            break;
        case 7:
            gPl756C[sub_080020F4()].flags |= 1;
            gPl756C[sub_080020F4()].flags |= 0x20;
            if (timer++ > 0x78)
                running = 0;
            break;
        }
        if (waving != 0) {
            { s32 v = gSin756C[wave += 2]; dragon.y += v >> 1; }
        }
        animDone = anim756C(&anim0, animId, &frame0, &tick0, animMode);
        b = prio756C(dragon.x >> 8, dragon.y >> 8, 0);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && (z = sub_0800CD34()) == 0) {
            if (landed == 0) {
                proj756C((s16)(dragon.x >> 8), (s16)(dragon.y >> 8), &sx, &sy, z, z);
                draw756C(sx, sy, animId, frame0, b, &anim0.f1C, anim0.f8, anim0.f0);
            } else {
                proj756C((s16)(dragon.x >> 8), (s16)(shadow.y >> 8), &sx, &sy, z, z);
                o = draw756C(sx, sy, animId, frame0, b, &anim0.f1C, anim0.f8, anim0.f0);
                proj756C((s16)(dragon.x >> 8), (s16)(dragon.y >> 8), &sx, &sy, z, z);
                o->fC = sy;
            }
            if (shadow.x <= 0xBD00 && (gFrame756C & 1)) {
                proj756C((s16)(shadow.x >> 8), (s16)(shadow.y >> 8), &sx, &sy, 0, 0);
                o = draw756C(sx, 1, 0x12, 0, b, &anim0.f1C, anim0.f8, anim0.f0);
                o->fC = sy;
            }
        }
        if (fx != 0) {
            proj756C((s16)(dragon.x >> 8), (s16)(dragon.y >> 8), &sx, &sy, 0, 0);
            if (anim756C(&anim1, fx, &frame1, &tick1, 0) != 0)
                fx = 0;
            else
                fx756C(&anim1, sx, sy - 0x20, fx, frame1);
        }
        sub_080003F0();
    } while (running);
    sfx2_756C(0x1A1);
    sub_080683CC();
    sub_080003F0();
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        sub_080003F0();
    sub_08065E38(0xDEADFACE);
    sub_080003F0();
    sub_08068384();
    sub_080003F0();
    if (sub_08002204() == 1) {
        *(s32 *)(gGame756C + 0x40) = gMap756C.f90 + 1;
        sub_08067DC8();
    }
    gPl756C[sub_080020F4()].flags &= ~0x20;
    gPl756C[sub_080020F4()].flags &= ~1;
    gMask756C = 0;
}
void sub_080A7DEC(void)
{
    if (*(s16 *)((u8 *)gUnk_03000400 + 0x5C) != 0) {
        sub_080A7E94();
        sub_080A7F5C();
        sub_080A8014();
        sub_080A80D8();
        sub_0805867C(0x1A1);
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_03000404);
}
void sub_080A7E38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
    gUnk_030056FC = 0;
}
void sub_080A7E68(void)
{
  int new_var;
  gUnk_03000408 = sub_08001494(0x140);
  new_var = 0;
  for (new_var = new_var; new_var < 8; new_var++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_03000408) + (0x28 * new_var))) + 8)) = 0;
  }

}
void sub_080A7E94(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_03000408;
  for (i = 0, entry = new_var2; i < 8; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_03000408);
  gUnk_03000408 = i;
}
void sub_080A7ECC(u16 arg0)
{
    u8 *entry = (u8 *)gUnk_03000408;
    u8 i = 0;
    u32 memory;
    goto check;
    do {
next:
        i++;
        entry += 0x28;
check:
        if (i > 7) return;
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            goto next;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
    } while (0);
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A68B0;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274((M2C_UNK *)entry,arg0);
}
void sub_080A7F30(void)
{
  int i;
  gUnk_0300040C = sub_08001494(0x50);
  for (i = 0; i < 2; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_0300040C) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_080A7F5C(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_0300040C;
  for (i = 0, entry = new_var2; i < 2; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_0300040C);
  gUnk_0300040C = i;
}
void sub_080A7F94(u16 arg0)
{
    u8 *entry = (u8 *)gUnk_0300040C;
    u8 i = 0;
    u32 memory;
    goto check;
    do {
next:
        i++;
        entry += 0x28;
check:
        if (i > 1) return;
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            goto next;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
    } while (0);
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A6BE8;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274_(entry,arg0,0);
}
void sub_080A7FF8(void)
{
  s32 temp_r0;
  gUnk_03000410 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A8014(void) {
    if (sub_08000470(gUnk_03000410) != 0) {
        sub_080003A8(gUnk_03000410);
    }
    sub_08001538(gUnk_03000410);
    gUnk_03000410 = 0;
}
void sub_080A803C(void)
{
    u32 memory;
    u8 *entry;
    if (sub_08000470(gUnk_03000410) == 0 && *(u32 *)(gUnk_03000410 + 8) != 0)
        return;
    memory = sub_08001494(0x400);
    entry = (u8 *)gUnk_03000410;
    *(u32 *)(entry + 0x20) = memory;
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A705C;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274_(entry, 0, 0);
}
s32 sub_080A8090(void *arg0)
{
    u32 value = gUnk_03000414;
    if (value == 0)
        value = 0x4800;
    *(u32 *)((u8 *)arg0 + 4) = value;
    if (*(u32 *)((u8 *)gUnk_03000410 + 8) != 0) return 0;
    else return 1;
}
void sub_080A80BC(void)
{
  s32 temp_r0;
  gUnk_03000418 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A80D8(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_03000418) != 0) {
        sub_080003A8(gUnk_03000418);
    }
    sub_08001538(gUnk_03000418);
    gUnk_03000418 = 0;
}
void sub_080A8114(void)
{
    u32 memory;
    u8 *entry;
    if (sub_08000470(gUnk_03000418) == 0 && *(u32 *)(gUnk_03000418 + 8) != 0)
        return;
    *(u32 *)(gUnk_03000418 + 8) = 0x44;
    memory = sub_08001494(0x200);
    entry = (u8 *)gUnk_03000418;
    *(u32 *)(entry + 0x20) = memory;
    *(u32 *)(entry + 0x10) = memory + 0x1FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A74E8;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274_(entry, 0, 0);
}
struct Res8164 { u8 p0[4]; s16 f4, f6; u8 p8[0x22]; u8 f2A, f2B; u8 p2C[0xA8]; u16 fD4, fD6; };
struct Act8164 {
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
    struct Res8164 res;
};
struct Anim8164 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct XY8164 { s32 x, y; };
struct Pl8164 { u8 p0[0x30]; u32 flags; u8 p34[0x118]; };
struct Draw8164 { u8 p0[8]; s32 f8, fC; };
extern struct Act8164 *gCur8164 asm("gUnk_0300041C");
extern u16 gTile8164 asm("gUnk_03000420");
extern u32 gMask8164 asm("gUnk_030056FC");
extern struct Pl8164 gPl8164[] asm("gUnk_03003CE0");
extern u8 gHist8164[] asm("gUnk_03003DC4");
extern u8 gImg8164[] asm("gUnk_084A8EC0");
extern u8 gPath8164[] asm("gUnk_0851883C");
extern u8 *gGame8164 asm("gUnk_03005CF4");
extern void *gData8164 asm("gUnk_030034E0");
void setup8164(void *, void *, s32) asm("sub_0801623C");
void initRes8164(void *) asm("sub_08019F60");
void a0A4_8164(void *) asm("sub_0801A0A4");
void a0B0_8164(void *) asm("sub_0801A0B0");
u16 alloc8164(s32, s32) asm("sub_08016E04");
void animInit8164(void *, s32, s32, s32, s32) asm("sub_08065158");
void cam8164(s32, s32) asm("sub_0800BB80");
void tick8164(void *) asm("sub_0801C8F0");
s32 ev8164(void) asm("sub_08068490");
void step8164(struct XY8164, struct XY8164, struct XY8164 *) asm("sub_080979D8");
u8 reach8164(struct XY8164, struct XY8164, s32) asm("sub_08097B6C");
void pathInit8164(void *, s32, s32, s32) asm("sub_08097EB0");
s32 pathStep8164(s32, struct XY8164 *) asm("sub_08097EF0");
s16 rand8164(void) asm("sub_0800086C");
s32 sel8164(s32) asm("sub_08068450");
void a987C_8164(s32) asm("sub_080A987C");
void a9100_8164(void) asm("sub_080A9100");
void a8F90_8164(void) asm("sub_080A8F90");
void a9680_8164(void) asm("sub_080A9680");
void loadPal8164(u32, void *, u32) asm("sub_08000AF0");
u8 bgFlag8164(void) asm("sub_08098004");
u8 bgPrio8164(void) asm("sub_08097FF8");
u8 prio8164(s32, s32, s32) asm("sub_0800BC44");
u16 anim8164(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
void proj8164(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
struct Draw8164 *draw8164(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
void dmg8164(void *, s32, s16) asm("sub_0801A120");
s16 dead8164(void *) asm("sub_08019CE8");
void free8164(u16) asm("sub_08067CA8");
void msgEnd8164(s32) asm("sub_080586B4");
s32 box8164(s32, s32, s32, s32, s32, s32) asm("sub_0805DF38");
s32 boxDone8164(s32) asm("sub_0805EEFC");
void bgm8164(s32) asm("sub_08058688");
void drop8164(void *, void *, u16, u16) asm("sub_080970CC");
s32 dropFx8164(void *, void *) asm("sub_0801E46C");
void fall8164(void *, s32) asm("sub_0806171C");
void dropEnd8164(void *, s32) asm("sub_0801E4CC");
void init8164_0(void) asm("sub_0806849C");
static inline s32 abs8164(s32 x) { if (x < 0) x = -x; return x; }

void sub_080A8164_v(struct Act8164 *a) asm("sub_080A8164");
void sub_080A8164_v(struct Act8164 *a)
{
    struct Anim8164 anim[3];
    s16 sx, sy;
    struct XY8164 delta;
    struct Res8164 *res;
    struct XY8164 tgt;
    s32 lastHit;
    s32 animState;
    s32 lastState;
    u16 lastAnim;
    s32 flag;
    u16 flash;
    u16 hitTimer;
    u16 frame;
    s32 fxId;
    s16 shake;
    u8 blink;
    u8 cnt;
    s32 animIdx;
    u8 cnt2;
    s32 done;
    struct Anim8164 *sl;
    u8 prio;
    s16 i, j;
    s32 h;
    struct Draw8164 *o;

    gCur8164 = a;
    res = &a->res;
    setup8164(a, gImg8164, 0);
    initRes8164(res);
    a0A4_8164(a);
    a->f14 = 0x16B00;
    a->f18 = 0x7300;
    { u16 *t = &gTile8164; *t = alloc8164(a->res.fD4, a->res.fD6); }
    while (gTile8164 == 0xFFFF) {
        a->fC = 11;
        if (sub_0800CB78() || sub_08056E90()) {
            gMask8164 &= ~(1 << a->f0);
            return;
        }
        sub_080003F0();
    }
    animInit8164(&anim[0], 0x50010, gTile8164, -1, 1);
    animInit8164(&anim[1], 0x50011, gTile8164, -1, 1);
    animInit8164(&anim[2], 0x50012, gTile8164, -1, 1);
    a->f6C = 0;
    a->f6A = 0;
    a->f68 = 0;
    a->f5C = a->f1D6 = res->f6 * 3;
    { s32 t = res->f4 * 2; a->f5E = a->f1D4 = ((res->f4 << 3) + t) * 2; }
    a->fC = 0;
    animState = 0;
    lastState = 0xFFFF;
    lastAnim = 0xFFFF;
    flash = 0;
    hitTimer = 0;
    a->f1FD = 3;
    a->f1FE = 3;
    cam8164(0x30, -0x20);
    a->res.f2A = 0x20;
    a->res.f2B = 0x18;
    a->f50 = 1;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(s32 *)(gHist8164 + j * 4 + i * 0x14C) = 0;
    sub_08097FE4();
    sub_08097A4C();
    sub_080A9818();
    cnt2 = 0;
    blink = 0;
    frame = 0;
    animIdx = 0;
    cnt = 0;
    a->f1FC_lo = a->f0;
    a->f202 = a->f2;
    a->f200 = 0xFF;
    done = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    init8164_0();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (a->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tick8164(a);
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
                a->f200 = ev8164();
                if (a->f200 != 0xFF) {
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
                tgt.x = 0x4600;
                tgt.y = 0x10500;
                step8164(*(struct XY8164 *)&a->f14, tgt, &delta);
                a->f14 += delta.x >> 2;
                a->f18 += delta.y >> 2;
                if (reach8164(*(struct XY8164 *)&a->f14, tgt, 0x10)) {
                    cnt = 0;
                    a->f1FE = 6;
                    a->f1FD = 1;
                    sub_08067C18();
                } else if (cnt2 & 1) {
                    cnt2++;
                    cnt = 0;
                    gCur8164->f6C = 0;
                    gCur8164->f6A = cnt;
                    a->f1FE = 10;
                    a->f1FD = 1;
                    sub_08067C18();
                } else if (++cnt == 0x1F) {
                    cnt2++;
                    cnt = 0;
                    a->f1FE = 8;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 6:
                animState = 0;
                a->fC = 0;
                pathInit8164(gPath8164, 10, 4, 14);
                a->f1FE = 7;
                a->f1FD = 1;
                sub_08067C18();
                break;
            case 7:
                animState = 0;
                a->fC = 0;
                if (pathStep8164(0, &delta) != 0) {
                    a->f1FE = 4;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                a->f14 = delta.x;
                a->f18 = delta.y;
                break;
            case 8:
                animState = 0;
                a->fC = 0;
                if (sub_08002204() == 1) {
                    s16 r = rand8164();
                    a->f200 = abs8164((s16)(r % 2));
                    if (sel8164(a->f200) == 1) {
                        a->f1FE = 2;
                        a->f1FD = 1;
                        sub_08067C18();
                    }
                } else {
                    a->f200 = 0xFF;
                    a->f1FE = 2;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                sub_0805865C(0xE3);
                break;
            case 9:
                animState = 2;
                a->fC = 2;
                if (a->f200 != 0) {
                    a->f68 = 1;
                    animIdx = 1;
                    fxId = 6;
                } else {
                    a->f68 = 0;
                    animIdx = 2;
                    fxId = 1;
                }
                if (a->f6E != 0) {
                    a987C_8164(gCur8164->f200);
                    gCur8164->f200 = 0xFF;
                    a->f1FE = 4;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 10:
                animState = 2;
                a->fC = 2;
                a->f68 = 0;
                animIdx = 1;
                if (a->f6A == 1 && a->f6C == 0)
                    sub_0805865C(0xE5);
                if (a->f6A != 0)
                    a9100_8164();
                if (a->f6E != 0) {
                    a->f1FE = 5;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 5:
                animState = 0;
                a->fC = 0;
                if (++frame == 0x3D) {
                    frame = 0;
                    a->f1FE = 4;
                    a->f1FD = 1;
                    sub_08067C18();
                }
                break;
            }
        }
        a->f8 = 1;
        if (gCur8164->f5C != 0 && a->f1FD != 7) {
            a8F90_8164();
            a9680_8164();
            a0A4_8164(a);
        } else {
            a0B0_8164(a);
        }
        switch (animState) {
        case 0:
            animIdx = 0;
            a->f68 = 0;
            flag = 1;
            fxId = 2;
            break;
        case 1:
            animIdx = 0;
            a->f68 = 1;
            flag = 1;
            fxId = 2;
            break;
        case 2:
            flag = 0;
            break;
        }
        sl = &anim[animIdx];
        {
            struct Act8164 *g = gCur8164;
            if (lastAnim != g->f68 || lastState != animState) {
                lastAnim = g->f68;
                lastState = animState;
                g->f6C = 0;
                g->f6A = 0;
            }
        }
        sl->f1C = gTile8164;
        loadPal8164(gTile8164 + 0x10, sl->fC + res->fD6 * 32, 1);
        if (bgFlag8164() & 1)
            prio = bgPrio8164();
        else
            prio = prio8164(a->f14 >> 8, a->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            a->f6E = anim8164(sl, a->f68, &a->f6A, &a->f6C, flag);
        proj8164((s16)(a->f14 >> 8), (s16)(a->f18 >> 8), &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                draw8164(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            draw8164(sx, sy, a->f68, a->f6A, prio, &sl->f1C, sl->f8, sl->f0);
        }
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0 && a->f1FD != 7 && (blink-- & 1)) {
            o = draw8164(sx, 8, fxId, 0, prio, &sl->f1C, sl->f8, sl->f0);
            o->f8 = sx - 4;
            o->fC = sy + 6;
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
                dmg8164(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = hitTimer;
        }
        if (dead8164(a) != 0)
            done = 1;
        sub_080003F0();
        if (done)
            break;
    }

    gMask8164 = 0;
    gPl8164[sub_080020F4()].flags |= 1;
    sub_080A9844();
    sl = &anim[0];
    sl->f1C = gTile8164;
    {
        struct Act8164 *g = gCur8164;
        g->f6C = 0;
        g->f6A = 0;
        g->f68 = 0;
    }
    shake = 0;
    hitTimer = 10;
    do {
        gPl8164[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal8164(gTile8164 + 0x10, sl->fC + res->fD6 * 32, 1);
                prio = prio8164(gCur8164->f14 >> 8, gCur8164->f18 >> 8, 0);
                gCur8164->f6E = anim8164(sl, gCur8164->f68, &gCur8164->f6A, &gCur8164->f6C, 1);
                proj8164((s16)(gCur8164->f14 >> 8), (s16)(gCur8164->f18 >> 8), &sx, &sy, z, z);
                draw8164(sx, sy, gCur8164->f68, gCur8164->f6A, prio, &sl->f1C, sl->f8, sl->f0);
                dmg8164(a, lastHit, shake);
            }
        }
        if (hitTimer & 2)
            shake--;
        sub_080003F0();
        hitTimer--;
    } while (hitTimer != 0xFFFF);
    sub_080683CC();
    free8164(gCur8164->f2);
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0) {
        gPl8164[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal8164(gTile8164 + 0x10, sl->fC + res->fD6 * 32, 1);
                prio = prio8164(gCur8164->f14 >> 8, gCur8164->f18 >> 8, 0);
                gCur8164->f6E = anim8164(sl, gCur8164->f68, &gCur8164->f6A, &gCur8164->f6C, 1);
                proj8164((s16)(gCur8164->f14 >> 8), (s16)(gCur8164->f18 >> 8), &sx, &sy, z, z);
                draw8164(sx, sy, gCur8164->f68, gCur8164->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            }
        }
        sub_080003F0();
    }
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0) {
        gPl8164[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal8164(gTile8164 + 0x10, sl->fC + res->fD6 * 32, 1);
                prio = prio8164(gCur8164->f14 >> 8, gCur8164->f18 >> 8, 0);
                gCur8164->f6E = anim8164(sl, gCur8164->f68, &gCur8164->f6A, &gCur8164->f6C, 1);
                proj8164((s16)(gCur8164->f14 >> 8), (s16)(gCur8164->f18 >> 8), &sx, &sy, z, z);
                draw8164(sx, sy, gCur8164->f68, gCur8164->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            }
        }
        sub_080003F0();
    }
    msgEnd8164(0);
    gPl8164[sub_080020F4()].flags |= 1;
    *(s32 *)(gGame8164 + 0x720) = box8164(1, 0xE, 0x19, 2, 0x3C, 0x140090);
    while (boxDone8164(*(s32 *)(gGame8164 + 0x720)) == 0) {
        gPl8164[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            s32 z = sub_0800CD34();
            if (z == 0) {
                loadPal8164(gTile8164 + 0x10, sl->fC + res->fD6 * 32, 1);
                prio = prio8164(gCur8164->f14 >> 8, gCur8164->f18 >> 8, 0);
                gCur8164->f6E = anim8164(sl, gCur8164->f68, &gCur8164->f6A, &gCur8164->f6C, 1);
                proj8164((s16)(gCur8164->f14 >> 8), (s16)(gCur8164->f18 >> 8), &sx, &sy, z, z);
                draw8164(sx, sy, gCur8164->f68, gCur8164->f6A, prio, &sl->f1C, sl->f8, sl->f0);
            }
        }
        sub_080003F0();
    }
    gPl8164[sub_080020F4()].flags &= ~1;
    bgm8164(0xD);
    drop8164(gCur8164, sl, res->fD6, gTile8164);
    if (!(gPl8164[sub_080020F4()].flags & 0x2000) && gCur8164->f5A != 0) {
        h = dropFx8164(gData8164, res);
        for (shake = 0x1D; shake != -1; shake--) {
            gCur8164->f18 -= 0x20;
            fall8164(gCur8164, h);
            sub_080003F0();
        }
        dropEnd8164(gData8164, h);
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
struct PlayerHit111 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x34]; u16 lock, direction, power; u8 padCE[0x16]; s32 previous[0x1A]; };
extern struct PlayerHit111 hitPlayers111[] asm("gUnk_03003CE0");
extern u8 *hitObject111 asm("gUnk_0300041C");
void sub_080A8F90(void)
{
    s32 ix, iy, iflags, itable, icmp, offset;
    u8 *objX, *objY, *objTable;
    s32 *px, *py, *table;
    u32 *flags;
    struct PlayerHit111 *base;
    u32 dx;
    s32 dy;
    s16 *target;
    s16 direction;
    ix = sub_080020F4();
    objX = hitObject111;
    base = hitPlayers111;
    ix *= 0x14C;
    px = &base->x;
    dx = (u32)((*(s32 *)(objX + 0x14) - *(s32 *)((u8 *)px + ix)) << 8) >> 16;
    iy = sub_080020F4();
    objY = hitObject111;
    iy *= 0x14C;
    py = &base->y;
    dy = (*(s32 *)(objY + 0x18) - *(s32 *)((u8 *)py + iy)) << 8;
    if (Sqrt((s16)dx * (s16)dx + (dy >> 16) * (dy >> 16)) > 19) return;
    if (*(s16 *)(hitObject111 + 0x5C) == 0) return;
    if (base[sub_080020F4()].lock != 0) return;
    if (sub_0800CDF8() != 0) return;
    if (sub_0800CD8C() != 0) return;
    if (sub_0800CCCC() != 0) return;
    if (*(u16 *)(hitObject111 + 0xC) == 11) return;
    iflags = 0x14C * sub_080020F4();
    flags = &base->flags;
    if (*(u32 *)((u8 *)flags + iflags) & 0x2000) return;
    if (base[sub_080020F4()].active == 0) return;
    if (base[sub_080020F4()].state == 14) return;
    if (base[sub_080020F4()].state == 11) return;
    if (base[sub_080020F4()].state == 12) return;
    itable = sub_080020F4();
    objTable = hitObject111;
    offset = *(u16 *)objTable * 4;
    itable *= 0x14C;
    offset += itable;
    table = base->previous;
    if (*(s32 *)((u8 *)table + offset) == *(s32 *)(objTable + 0x50)) return;
    icmp = 0x14C * sub_080020F4();
    if (*(s32 *)((u8 *)px + icmp) <= *(s32 *)(hitObject111 + 0x14)) {
        target = (s16 *)&base[sub_080020F4()].direction;
        direction = 1;
    } else {
        target = (s16 *)&base[sub_080020F4()].direction;
        direction = 5;
    }
    *target = direction;
    hitPlayers111[sub_080020F4()].power = 0x400;
    hitPlayers111[sub_080020F4()].lock = 8;
}
struct PlayerHit2111 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x1C]; u16 hit; u8 padB2[0x16]; u16 lock, direction, power; u8 padCE[0x16]; s32 previous[0x1A]; };
extern struct PlayerHit2111 hitPlayers2111[] asm("gUnk_03003CE0");
extern u8 *hitObject2111 asm("gUnk_0300041C");
extern s16 hitOffsets111[] asm("gUnk_080B9704");
void sub_080A9100(void)
{
    s32 ix, iy, iflags, itable, offset;
    u8 *objTable;
    s32 *px, *py, *table;
    u32 *flags;
    struct PlayerHit2111 *base;
    u32 dx;
    s32 dy;
    s32 x, y;
    s32 saveIndex, saveOffset;
    u8 *saveObj;
    s32 *saveTable;
    s32 serial;
    s32 *saveDst;
    x = *(s32 *)(hitObject2111 + 0x14);
    y = *(s32 *)(hitObject2111 + 0x18);
    x += hitOffsets111[0xB0] << 5;
    y += hitOffsets111[0x70] << 5;
    ix = sub_080020F4();
    base = hitPlayers2111;
    ix *= 0x14C;
    px = &base->x;
    dx = (u32)((x - *(s32 *)((u8 *)px + ix)) << 8) >> 16;
    iy = 0x14C * sub_080020F4();
    py = &base->y;
    dy = (y - *(s32 *)((u8 *)py + iy)) << 8;
    if (Sqrt((s16)dx * (s16)dx + (dy >> 16) * (dy >> 16)) > 19) return;
    if (base[sub_080020F4()].lock != 0) return;
    if (sub_0800CDF8() != 0) return;
    if (sub_0800CD8C() != 0) return;
    if (sub_0800CCCC() != 0) return;
    if (*(u16 *)(hitObject2111 + 0xC) == 11) return;
    iflags = 0x14C * sub_080020F4();
    flags = &base->flags;
    if (*(u32 *)((u8 *)flags + iflags) & 0x2000) return;
    if (base[sub_080020F4()].active == 0) return;
    if (base[sub_080020F4()].state == 14) return;
    if (base[sub_080020F4()].state == 11) return;
    if (base[sub_080020F4()].state == 12) return;
    itable = sub_080020F4();
    objTable = hitObject2111;
    offset = *(u16 *)objTable * 4;
    itable *= 0x14C;
    offset += itable;
    table = base->previous;
    if (*(s32 *)((u8 *)table + offset) == *(s32 *)(objTable + 0x50)) return;
    if (sub_0800CE30() == 1)
        sub_08029A7C(1, 0xC8, 4);
    else
        sub_08029A7C(1, 0x50, 4);
    hitPlayers2111[sub_080020F4()].hit = 0xFFFE;
    saveIndex = sub_080020F4();
    saveObj = hitObject2111;
    saveOffset = *(u16 *)saveObj * 4;
    saveIndex *= 0x14C;
    saveOffset += saveIndex;
    saveTable = hitPlayers2111->previous;
    saveDst = (s32 *)((u8 *)saveTable + saveOffset);
    serial = *(s32 *)(saveObj + 0x50);
    *saveDst = serial;
    *(s32 *)(saveObj + 0x50) = serial + 1;
    hitPlayers2111[sub_080020F4()].direction = 1;
    hitPlayers2111[sub_080020F4()].power = 0x400;
    hitPlayers2111[sub_080020F4()].lock = 0x50;
}
struct PlayerEffect111 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x1C]; u16 hit; u8 padB2[0x16]; u16 lock, direction, power; u8 padCE[0x16]; s32 previous[0x1A]; };
extern struct PlayerEffect111 effectPlayers111[] asm("gUnk_03003CE0");
extern u8 *effectObject111 asm("gUnk_0300041C");
struct SpriteEffect111 { s32 f0, f4, f8, fC, f10, f14, f18; u8 bytes[0x18]; };
struct Pos111 { s32 x, y; };
extern void initEffect111(void *, u32, u32, s32, s32) asm("sub_08065158");
extern void moveEffect111(s32, s32, s32, s32, s32 *) asm("sub_080979D8");
extern u8 testEffect111(struct Pos111, struct Pos111, s32) asm("sub_08097B6C");
extern void screenEffect111(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void animateEffect111(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern u8 *drawEffect111(s32, s32, u32, u32, u8, void *, s32, s32) asm("sub_08007870");
void sub_080A92C0_(u32 argument) asm("sub_080A92C0");
void sub_080A92C0_(u32 argument)
{
    u32 kind;
    struct SpriteEffect111 sprite;
    s16 screenX, screenY;
    u16 frame, tick;
    s32 velocity[2];
    struct Pos111 pos;
    struct Pos111 area;
    s32 hit;
    s32 ix, iy, iflags, itable, offset, saveIndex, saveOffset;
    u32 dx;
    s32 dy;
    u16 distance;
    struct PlayerEffect111 *base;
    s32 *px, *py, *table, *saveTable, *saveDst;
    u32 *flags;
    u8 *objTable, *saveObj;
    s32 serial;
    s32 zero;
    u32 layer;
    u8 *p;

    kind = (u16)argument;
    initEffect111(&sprite, 0x50011, gUnk_03000420, -1, 1);
    sprite.bytes[0] = gUnk_03000420;
    pos.x = *(s32 *)(effectObject111 + 0x14);
    pos.y = *(s32 *)(effectObject111 + 0x18);
    if (kind != 0) {
        pos.x -= 0x800;
        pos.y -= 0x800;
    } else {
        pos.x += 0x400;
    }
    tick = 0;
    frame = 0;
    hit = 0;
    sub_0805865C(0xE4);
    for (;;) {
        if (kind != 0) {
            area.x = 0x2000;
            area.y = 0x10000;
        } else {
            area.x = 0x3000;
            area.y = 0x11000;
        }
        moveEffect111(pos.x, pos.y, area.x, area.y, velocity);
        pos.x += velocity[0] * 4;
        pos.y += velocity[1] * 4;
        if (testEffect111(pos, area, 0x18) != 0) break;
        ix = sub_080020F4();
        base = effectPlayers111;
        ix *= 0x14C;
        px = &base->x;
        dx = (u32)((pos.x - *(s32 *)((u8 *)px + ix)) << 8) >> 16;
        iy = 0x14C * sub_080020F4();
        py = &base->y;
        dy = (pos.y - *(s32 *)((u8 *)py + iy)) << 8;
        distance = Sqrt((s16)dx * (s16)dx + (dy >> 16) * (dy >> 16));
        if (hit == 0 && distance <= 11 && sub_0800CDF8() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && *(u16 *)(effectObject111 + 0xC) != 11) {
            iflags = 0x14C * sub_080020F4();
            flags = &base->flags;
            if ((*(u32 *)((u8 *)flags + iflags) & 0x2000) == 0 && base[sub_080020F4()].active != 0 && base[sub_080020F4()].state != 14 && base[sub_080020F4()].state != 11 && base[sub_080020F4()].state != 12) {
                itable = sub_080020F4();
                objTable = effectObject111;
                offset = *(u16 *)objTable * 4;
                itable *= 0x14C;
                offset += itable;
                table = base->previous;
                if (*(s32 *)((u8 *)table + offset) != *(s32 *)(objTable + 0x50)) {
                    if (sub_0800CE30() == 1) sub_08029CEC(1, 0x28, 3);
                    else sub_08029CEC(1, 0xF, 3);
                    effectPlayers111[sub_080020F4()].hit = 0xFFFE;
                    saveIndex = sub_080020F4();
                    saveObj = effectObject111;
                    saveOffset = *(u16 *)saveObj * 4;
                    saveIndex *= 0x14C;
                    saveOffset += saveIndex;
                    saveTable = effectPlayers111->previous;
                    saveDst = (s32 *)((u8 *)saveTable + saveOffset);
                    serial = *(s32 *)(saveObj + 0x50);
                    *saveDst = serial;
                    *(s32 *)(saveObj + 0x50) = serial + 1;
                    hit = 1;
                }
            }
        }
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (zero = sub_0800CD34()) == 0) {
            screenEffect111((pos.x << 8) >> 16, (pos.y << 8) >> 16, &screenX, &screenY, zero, zero);
            sub_08000AF0(gUnk_03000420 + 0x10, (u8 *)sprite.fC + (*(u16 *)(effectObject111 + 0x2DA) << 5), 1);
            animateEffect111(&sprite, 3, &frame, &tick, zero);
            layer = (u8)sub_0800BC44(*(s32 *)(effectObject111 + 0x14) >> 8, *(s32 *)(effectObject111 + 0x18) >> 8, 0);
            if (kind != 0)
                p = drawEffect111(screenX, 0x10, 3, frame, layer, sprite.bytes, sprite.f8, sprite.f0);
            else
                p = drawEffect111(screenX, 0xA0, 3, frame, layer, sprite.bytes, sprite.f8, sprite.f0);
            *(s32 *)(p + 0xC) = screenY;
            if (kind != 0)
                p = drawEffect111(screenX + 0x20, 0x10, 4, frame, layer, sprite.bytes, sprite.f8, sprite.f0);
            else
                p = drawEffect111(screenX + 0x20, 0xA0, 4, frame, layer, sprite.bytes, sprite.f8, sprite.f0);
            *(s32 *)(p + 0xC) = screenY - 0x10;
            if (kind != 0)
                p = drawEffect111(screenX + 0x40, 0x10, 5, frame, layer, sprite.bytes, sprite.f8, sprite.f0);
            else
                p = drawEffect111(screenX + 0x40, 0xA0, 5, frame, layer, sprite.bytes, sprite.f8, sprite.f0);
            *(s32 *)(p + 0xC) = screenY - 0x20;
        }
        sub_080003F0();
    }
    ((u32 *)sub_0800048C())[2] = 0;
}
