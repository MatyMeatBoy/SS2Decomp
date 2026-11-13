#include "global.h"
extern void sub_08029A7C();
extern u16 gArr030007D4[] asm("gUnk_030007D4");
extern u8 *gPtr030007EC asm("gUnk_030007EC");
extern void sub_080A4AD0();
extern void sub_080B5F94();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTP030007E4 asm("gUnk_030007E4");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
void sub_080B5F94(void);
void sub_080B6178(void);

struct ResB3648 { u8 p0[4]; s16 f4, f6; u8 p8[0x22]; u8 f2A, f2B; u8 p2C[0xAA]; u16 fD6; };
struct ActB3648 {
    u16 f0, f2;
    u8 p4[4];
    s16 f8;
    u8 pa[2];
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
    struct ResB3648 res;
};
struct E2E0B3648 { u8 b[0x2E0]; };
struct AnimB3648 { u32 f0, f4, f8; u8 *fC; u8 p10[12]; u8 f1C; u8 p1d[0x17]; };
struct XYB3648 { s32 x, y; };
struct PlB3648 { u8 p0[0x30]; u32 flags; u8 p34[0x114]; u16 *f148; };
struct DrawB3648 { u8 p0[0xC]; s32 fC; };
struct G3170B3648 { u8 p0[0x90]; u16 f90; };

extern struct ActB3648 *gActB3648 asm("gUnk_030007BC");
extern struct ActB3648 *gBossB3648 asm("gUnk_030007B8");
extern u8 *gBaseB3648 asm("gUnk_030056F4");
extern u32 gMaskB3648 asm("gUnk_030056FC");
extern struct G3170B3648 gMapB3648 asm("gUnk_03003170");
extern u16 gTileB3648 asm("gUnk_030007C8");
extern struct XYB3648 gPosB3648 asm("gUnk_030007C0");
extern u8 gDirB3648 asm("gUnk_030007CA");
extern u32 gFrameB3648 asm("gUnk_03002344");
extern struct PlB3648 gPlB3648[] asm("gUnk_03003CE0");
extern void *gDataB3648 asm("gUnk_030034E0");
extern u8 gImgB3648[] asm("gUnk_084AA7B0");

void setupB3648(void *, void *, s32) asm("sub_0801623C");
s32 animInitB3648(void *, s32, s32, s32, s32) asm("sub_08065158");
void palB3648(u16 *, void *) asm("sub_08097F70");
void tickB3648(void *) asm("sub_0801C8F0");
s32 readyB3648(s32) asm("sub_080682B8");
void nextB3648(s32) asm("sub_08065E38");
s32 stateB3648(s32) asm("sub_08068330");
void a0B0B3648(void *) asm("sub_0801A0B0");
void a0A4B3648(void *) asm("sub_0801A0A4");
u8 fadeB3648(u16 *, s32, u16, s32) asm("sub_08096E20");
s32 rndB3648(s32) asm("sub_08096594");
u8 reachB3648(void *, void *, s32, s32) asm("sub_08097A74");
void endB3648(s32) asm("sub_08097A38");
u8 aimB3648(s32, s32, u32, u32) asm("sub_08095FC8");
u8 arriveB3648(void *, u32, u32, s32) asm("sub_08097B24");
void walkB3648(s32, void *, u16) asm("sub_08097BA4");
void quakeB3648(s32) asm("sub_08097CA8");
void sfxB3648(s32) asm("sub_0805865C");
u8 hitB3648(void *, struct XYB3648, s32) asm("sub_080B44F0");
void loadPalB3648(u32, void *, u32) asm("sub_08000AF0");
u8 bgFlagB3648(void) asm("sub_08098004");
u8 bgPrioB3648(void) asm("sub_08097FF8");
u8 prioB3648(s32, s32, s32) asm("sub_0800BC44");
u16 animB3648(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
u32 projB3648(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
struct DrawB3648 *drawB3648(s32, s32, s32, u16, u8, void *, u32, u32) asm("sub_08007870");
void dmgB3648(void *, s32, s16) asm("sub_0801A120");
s16 deadB3648(void *) asm("sub_08019CE8");
s32 freeB3648(u16) asm("sub_08067CA8");
s32 dropB3648(void *, void *, u16, u16) asm("sub_080970CC");
s32 dropFxB3648(void *, void *) asm("sub_0801E46C");
void fallB3648(void *, s32) asm("sub_0806171C");
s32 dropEndB3648(void *, s32) asm("sub_0801E4CC");
s32 doorB3648(void *, void *) asm("sub_0805C620");
s32 exitB3648(s32, s32, void *) asm("sub_08066490");

/* [RunLinkedTargetContactActor] Initializes actor slot1 and four sprites, follows shared paired center until
 * linked actor HP clears, then team/fade transition enables independent player pursuit, aimed point travel
 * with virtual height offset, landing-radius and animation-frame offset contacts. Actor-id synchronization
 * gates phases. Death clears mask/collision sizes, queues remote fullHP damage, runs finish/experience; host
 * drop predicate may retry queued item spawn until admission or transition. No door/exit identity inferred. */
void sub_080B3648(void)
{
    struct AnimB3648 anim[4];
    u8 buf[16];
    u16 pal[16];
    struct { s16 x, y; } pos;
    struct XYB3648 tgt;
    struct XYB3648 off;
    s32 lastHit;
    s32 yoff;
    u16 tile;
    u16 lastAnim;
    u16 hitTimer;
    u16 flash;
    s32 flag;
    u16 frame;
    u16 cnt;
    s16 shake;
    u16 animId;
    s32 animIdx;
    s32 dir;
    u8 useAnim;
    u8 cycle;
    u8 hitflag;
    s32 once;
    s32 active;
    struct ResB3648 *res;
    struct ActB3648 *a;
    u8 b;
    u8 c;
    s32 h;
    struct ActB3648 *a0;
    struct PlB3648 *pl;

    gMaskB3648 |= 2;
    gActB3648 = a0 = (struct ActB3648 *)&((struct E2E0B3648 *)gBaseB3648)[1];
    a0->f0 = 1;
    a0->f2 = 6;
    a0->f48 = gMapB3648.f90;
    res = &a0->res;
    setupB3648(a0, gImgB3648, 1);
    a0A4B3648(gActB3648);
    gActB3648->f5C = gActB3648->f1D6 = res->f6 * 3;
    { s32 t = res->f4 * 2; gActB3648->f5E = gActB3648->f1D4 = ((res->f4 << 3) + t) * 2; }
    gActB3648->f1FD = 1;
    gActB3648->f1FE = 1;
    gActB3648->fC = 0;
    gActB3648->f50 = 1;
    tile = gTileB3648 + 1;
    animInitB3648(&anim[0], 0x50019, tile, -1, 1);
    animInitB3648(&anim[1], 0x5001A, tile, -1, 1);
    animInitB3648(&anim[2], 0x5001B, tile, -1, 1);
    animInitB3648(&anim[3], 0x5001C, tile, -1, 1);
    anim[0].f1C = tile;
    anim[1].f1C = tile;
    anim[2].f1C = tile;
    anim[3].f1C = tile;
    gActB3648->f6E = 0;
    gActB3648->f6C = 0;
    gActB3648->f6A = 0;
    gActB3648->f68 = 0;
    gActB3648->f0 = 1;
    gActB3648->f2 = 5;
    gActB3648->f48 = gMapB3648.f90;
    gActB3648->f1FC_lo = gActB3648->f0;
    gActB3648->f202 = gActB3648->f2;
    gActB3648->f200 = 0xFF;
    flash = 0;
    hitTimer = 0;
    once = 0;
    cycle = 0;
    animIdx = 0;
    dir = 0;
    flag = 0;
    hitflag = 0;
    useAnim = 1;
    active = 1;
    yoff = 0;
    palB3648(pal, anim[0].fC + res->fD6 * 32);

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (gActB3648->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tickB3648(gActB3648);
            switch (gActB3648->f1FD) {
            case 2:
                gActB3648->fC = 0;
                if (readyB3648(gActB3648->f0) != 0) {
                    gActB3648->f1FD = gActB3648->f1FE;
                    nextB3648(gActB3648->f0);
                }
                break;
            case 1:
                gActB3648->fC = 0;
                frame = 0;
                gActB3648->f1FE = 0xF;
                gActB3648->f1FD = 2;
                stateB3648(gActB3648->f0);
                break;
            case 4:
                gActB3648->fC = 0;
                switch (cycle) {
                case 0:
                    gActB3648->f1FE = 0xD;
                    break;
                case 1:
                    gActB3648->f1FE = 0x11;
                    break;
                case 2:
                    gActB3648->f1FE = 6;
                    break;
                case 3:
                    gActB3648->f1FE = 0xC;
                    break;
                case 4:
                    gActB3648->f1FE = 6;
                    break;
                }
                frame = 0;
                cycle = (cycle == 4) ? 0 : cycle + 1;
                gActB3648->f1FD = 2;
                stateB3648(gActB3648->f0);
                break;
            case 5:
                gActB3648->fC = 0;
                a0B0B3648(gActB3648);
                active = 0;
                frame++;
                useAnim = fadeB3648(pal, 4, frame, 0x3C);
                if (useAnim != 0) {
                    palB3648(pal, anim[0].fC + res->fD6 * 32);
                    gActB3648->f1FE = 0x10;
                    gActB3648->f1FD = 2;
                    stateB3648(gActB3648->f0);
                }
                break;
            case 16:
                gActB3648->fC = 0;
                a0A4B3648(gActB3648);
                frame = 0;
                gActB3648->f1FE = 4;
                gActB3648->f1FD = 2;
                stateB3648(gActB3648->f0);
                break;
            case 6:
                gActB3648->fC = 1;
                if (frame++ < 0xB4) {
                    frame = 0;
                    pl = &gPlB3648[rndB3648(2)];
                    if (reachB3648(gActB3648, pl, 0x90, 0x18) == 0) {
                        endB3648(2);
                        gActB3648->f1FE = 0x14;
                        gActB3648->f1FD = 2;
                        stateB3648(gActB3648->f0);
                    }
                }
                break;
            case 17:
                gActB3648->fC = 2;
                animIdx = 3;
                if (frame++ < 0x1E) {
                    gActB3648->f1FC_hi = rndB3648(2);
                    a = gActB3648;
                    pl = &gPlB3648[a->f1FC_hi];
                    tgt.x = pl->f148[0] >> 4;
                    tgt.y = (u32)(pl->f148[1] << 20) >> 20;
                    gActB3648->f8 = aimB3648(a->f14 >> 8, a->f18 >> 8, tgt.x, tgt.y);
                } else {
                    endB3648(2);
                    a0B0B3648(gActB3648);
                    cnt = 0;
                    frame = 0;
                    gActB3648->f1FE = 0xB;
                    gActB3648->f1FD = 2;
                    stateB3648(gActB3648->f0);
                }
                break;
            case 11:
                gActB3648->fC = 2;
                animIdx = 3;
                if (cnt < 0x28) {
                    cnt++;
                    yoff += 0xA0;
                }
                gActB3648->f8 = aimB3648(gActB3648->f14 >> 8, gActB3648->f18 >> 8, tgt.x, tgt.y);
                if (arriveB3648(gActB3648, tgt.x, tgt.y, 8) == 0) {
                    walkB3648(0x140, &gActB3648->f14, gActB3648->f8);
                } else {
                    hitflag = 0;
                    frame = 0;
                    gActB3648->f1FE = 0x12;
                    gActB3648->f1FD = 2;
                    stateB3648(gActB3648->f0);
                }
                break;
            case 18:
                gActB3648->fC = 2;
                animIdx = 3;
                if (yoff > 0) {
                    yoff -= 0x120;
                    if (yoff <= 0) {
                        frame = 0;
                        yoff = 0;
                        quakeB3648(0x10);
                        a0A4B3648(gActB3648);
                        if (once == 0) {
                            once = 1;
                            sfxB3648(0x1A8);
                        }
                    }
                } else {
                    off.x = 0;
                    off.y = 0;
                    if (hitflag == 0)
                        hitflag = hitB3648(gActB3648, off, 0x30);
                    if (frame++ > 0x10) {
                        frame = 0;
                        gActB3648->f1FE = 0x14;
                        gActB3648->f1FD = 2;
                        stateB3648(gActB3648->f0);
                    }
                }
                break;
            case 12:
                gActB3648->fC = 2;
                animIdx = 2;
                if (gActB3648->f6A == 1) {
                    sfxB3648(0xA7);
                    switch (dir) {
                    case 0:
                    case 1:
                        off.x = 0x3000;
                        break;
                    case 2:
                    case 3:
                        off.x = -0x3000;
                        break;
                    }
                    off.y = 0;
                    if (hitflag == 0)
                        hitflag = hitB3648(gActB3648, off, 0x28);
                }
                if (gActB3648->f6E != 0) {
                    frame = 0;
                    gActB3648->f1FE = 0x14;
                    gActB3648->f1FD = 2;
                    stateB3648(gActB3648->f0);
                }
                break;
            case 13:
                gActB3648->fC = 2;
                animIdx = 1;
                if (gActB3648->f6A == 1) {
                    switch (dir) {
                    case 0:
                    case 1:
                        off.x = -0x3000;
                        break;
                    case 2:
                    case 3:
                        off.x = 0x3000;
                        break;
                    }
                    off.y = 0;
                    if (hitflag == 0)
                        hitflag = hitB3648(gActB3648, off, 0x20);
                    sfxB3648(0xE1);
                }
                if (gActB3648->f6E != 0) {
                    frame = 0;
                    gActB3648->f1FE = 0x14;
                    gActB3648->f1FD = 2;
                    stateB3648(gActB3648->f0);
                }
                break;
            case 20:
                gActB3648->fC = 0;
                if (frame++ > 0x3C) {
                    frame = 0;
                    once = 0;
                    gActB3648->f1FE = 4;
                    gActB3648->f1FD = 2;
                    stateB3648(gActB3648->f0);
                }
                break;
            case 15:
                gActB3648->fC = 0;
                if (gBossB3648->f5C == 0) {
                    frame = 0;
                    gActB3648->f1FE = 5;
                    gActB3648->f1FD = 2;
                    stateB3648(gActB3648->f0);
                }
                break;
            }
        }
        if (active == 0) {
            switch (gActB3648->f8) {
            case 0:
            case 1:
            case 2:
                dir = 0;
                break;
            case 3:
            case 4:
                dir = 1;
                break;
            case 5:
                dir = 2;
                break;
            case 6:
            case 7:
                dir = 3;
                break;
            }
        } else {
            switch (gDirB3648) {
            case 0:
            case 1:
            case 2:
                dir = 0;
                break;
            case 3:
            case 4:
                dir = 1;
                break;
            case 5:
                dir = 2;
                break;
            case 6:
            case 7:
                dir = 3;
                break;
            }
            switch (dir) {
            case 0:
                gActB3648->f14 = gPosB3648.x + 0x580;
                gActB3648->f18 = gPosB3648.y - 0x180;
                break;
            case 1:
                gActB3648->f14 = gPosB3648.x + 0x580;
                gActB3648->f18 = gPosB3648.y - 0x180;
                break;
            case 2:
                gActB3648->f14 = gPosB3648.x - 0x580;
                gActB3648->f18 = gPosB3648.y - 0x180;
                break;
            case 3:
                gActB3648->f14 = gPosB3648.x - 0x580;
                gActB3648->f18 = gPosB3648.y - 0x180;
                break;
            }
        }
        {
        struct ActB3648 *a = gActB3648;
        switch (a->fC) {
        case 0:
            animIdx = 0;
            flag = 1;
            a->f68 = dir;
            break;
        case 1:
            animIdx = 0;
            flag = 1;
            a->f68 = dir + 4;
            break;
        case 2:
            flag = 0;
            a->f68 = dir;
            c = a->f1FD;
            if (c == 0x11 || c == 0xB || c == 0x12) {
                struct ActB3648 *q = gActB3648;
                q->f68 <<= 1;
                if (q->f1FD == 0xB)
                    q->f68++;
            } else if (c == 3 && active != 0) {
                animIdx = 0;
                flag = 1;
                if (lastAnim == dir)
                    goto skip;
                a->f6C = animIdx;
                a->f6A = animIdx;
                lastAnim = a->f68;
                a->f68 = dir;
            }
            break;
        }
        }
        { struct ActB3648 *b = gActB3648;
        if (lastAnim != b->f68) {
            lastAnim = b->f68;
            b->f6C = 0;
            b->f6A = 0;
        } }
    skip:
        switch (animIdx) {
        case 0:
        case 3:
            animId = dir + 8;
            break;
        case 1:
        case 2:
            animId = dir + 4;
            break;
        }
        if (useAnim != 0)
            loadPalB3648(tile + 0x10, anim[animIdx].fC + res->fD6 * 32, 1);
        else
            loadPalB3648(tile + 0x10, pal, 1);
        if (bgFlagB3648() & 1)
            b = bgPrioB3648();
        else
            b = prioB3648(gActB3648->f14 >> 8, gActB3648->f18 >> 8, 0);
        if (sub_0800CD8C() == 0) {
            if (flag == 0) {
                gActB3648->f6E = animB3648(&anim[animIdx], gActB3648->f68, &gActB3648->f6A, &gActB3648->f6C, flag);
            } else {
                animB3648(&anim[animIdx], gActB3648->f68, &gActB3648->f6A, &gActB3648->f6C, flag);
                gActB3648->f6E = 0;
            }
        }
        projB3648((s16)(gActB3648->f14 >> 8), (s16)((gActB3648->f18 - yoff) >> 8), &pos.x, &pos.y, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                drawB3648(pos.x, pos.y, gActB3648->f68, gActB3648->f6A, b, &anim[animIdx].f1C, anim[animIdx].f8, anim[animIdx].f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawB3648(pos.x, pos.y, gActB3648->f68, gActB3648->f6A, b, &anim[animIdx].f1C, anim[animIdx].f8, anim[animIdx].f0);
        }
        if (sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0 && (gFrameB3648 & 1)) {
            projB3648((s16)(gActB3648->f14 >> 8), (s16)(gActB3648->f18 >> 8), &pos.x, &pos.y, 0, 0);
            drawB3648(pos.x, 2, animId, 0, b + 1, &anim[animIdx].f1C, anim[animIdx].f8, anim[animIdx].f0)->fC = pos.y;
        }
        {
            s32 hh = gActB3648->f4C;
            if (hh != 0 && lastHit != hh) {
                lastHit = hh;
                hitTimer = 10;
                shake = 0;
            }
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmgB3648(gActB3648, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            gActB3648->f4C = 0;
        }
        sub_080003F0();
        if (deadB3648(gActB3648) != 0)
            break;
    }
    {
        struct ActB3648 *p;
        gMaskB3648 &= ~(1 << (p = gActB3648)->f0);
        p->res.f2A = 0;
    }
    gActB3648->res.f2B = 0;
    animIdx = 0;
    
    gActB3648->f68 = dir;
    gActB3648->f6C = animIdx;
    gActB3648->f6A = animIdx;
    freeB3648(gActB3648->f2);
    sfxB3648(0xBD);
    dropB3648(gActB3648, anim, res->fD6, tile);
    if (!(gPlB3648[sub_080020F4()].flags & 0x2000) && gActB3648->f5A != 0) {
        h = dropFxB3648(gDataB3648, res);
        for (shake = 0x1D; shake != -1; shake--) {
            gActB3648->f18 -= 0x20;
            fallB3648(gActB3648, h);
            sub_080003F0();
        }
        dropEndB3648(gDataB3648, h);
    }
    if (sub_08002204() != 0 && doorB3648(gBossB3648, buf) != 0) {
        while (exitB3648(gActB3648->f14, gActB3648->f18, buf) == 0 && sub_08056E90() == 0)
            sub_080003F0();
    }
}
struct Boss0B44F0 { u16 index; u8 p2[0xA]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 hitId; };
struct Player0B44F0 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 alive; u8 p69[0x1F]; u16 hp; u8 p8A[2]; s32 x, y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x32]; u32 hitIds[0x1A]; };
extern struct Player0B44F0 players0B44F0[] asm("gUnk_03003CE0");
extern u16 hit0B44F0(void *, void *) asm("sub_0801ED8C");
s32 sub_080B44F0_v(struct Boss0B44F0 *b, s32 ox, s32 oy, u16 range) asm("sub_080B44F0");
/* [ApplyOffsetRadiusPlayerHit] Tests distance strictly below the unsigned radius around object position plus
 * supplied offsets; after pause/lifecycle/serial gates writes player state 10 and marker 0xFFFE, adds the hit
 * helper result, records and increments the object serial, and returns one; otherwise returns zero. */
s32 sub_080B44F0_v(struct Boss0B44F0 *b, s32 ox, s32 oy, u16 range)
{
    s32 hit;
    struct { s32 x, y; } pos;
    u16 dx;
    u32 ry;
    s32 xx, sy;
    u16 dist;
    s32 i;

    hit = 0;
    pos.x = ox + b->x;
    pos.y = oy + b->y;
    dx = (u32)((pos.x - players0B44F0[sub_080020F4()].x) << 8) >> 16;
    ry = (pos.y - players0B44F0[sub_080020F4()].y) << 8;
    xx = (s16)dx * (s16)dx;
    sy = (s32)ry >> 16;
    dist = Sqrt(xx + sy * sy);
    if (dist < range && !sub_0800CDF8() && !sub_0800CCCC()
        && !sub_0800CD8C() && b->state != 11
        && !(players0B44F0[sub_080020F4()].flags & 0x2000)
        && players0B44F0[sub_080020F4()].alive != 0
        && players0B44F0[sub_080020F4()].state != 14
        && players0B44F0[sub_080020F4()].state != 11
        && players0B44F0[sub_080020F4()].state != 12
        && players0B44F0[sub_080020F4()].hitIds[b->index] != b->hitId) {
        players0B44F0[sub_080020F4()].state = 10;
        players0B44F0[sub_080020F4()].fB0 = 0xFFFE;
        i = sub_080020F4();
        players0B44F0[i].hp += hit0B44F0(b, &players0B44F0[sub_080020F4()]);
        players0B44F0[sub_080020F4()].hitIds[b->index] = b->hitId++;
        hit = 1;
    }
    return hit;
}
struct Boss0B4690 { u16 index; u8 p2[6]; s16 f8; u8 pA[2]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 hitId; };
struct Player0B4690 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 alive; u8 p69[0x1F]; u16 hp; u8 p8A[2]; s32 x, y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x32]; u32 hitIds[0x19]; u16 *f148; };
struct Anim0B4690 { s32 w0, w4, w8; u8 *graphics; u8 p10[12]; u8 data[0x18]; };
struct Vec0B4690 { s32 x, y; };
struct Task0B4690 { u32 f0, f4, f8; u8 pC[0x1C]; };
extern struct Player0B4690 players0B4690[] asm("gUnk_03003CE0");
extern struct Boss0B4690 *boss0B4690 asm("gUnk_030007B8");
extern u8 mode0B4690 asm("gUnk_030007CA");
extern struct Task0B4690 *tasks0B4690 asm("gUnk_030007D0");
extern s32 init0B4690(struct Anim0B4690 *, u32, u32, s32, u32) asm("sub_08065158");
extern s32 animate0B4690(struct Anim0B4690 *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern u32 coords0B4690(s16, s16, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern u32 vis0B4690(s32, s32, s32) asm("sub_0800BC44");
extern s32 draw0B4690(s32, s32, u32, u32, u8, void *, s32, s32) asm("sub_08007870");
extern s32 pick0B4690(s32) asm("sub_08096594");
extern void sel0B4690(s32) asm("sub_08097A38");
extern void aim0B4690(struct Vec0B4690, struct Vec0B4690, struct Vec0B4690 *) asm("sub_08097978");
extern void hurt0B4690(s32, s32, s32) asm("sub_08029CEC");
/* Projectile task: fly from beside the boss towards a player, hurting the local player on contact. */
/* [RunDelayedAimedDamageProjectile] Waits low-halfword index times 48, picks an origin side from facing or
 * shared mode and aims once at a selected packed player position; advances at one-and-a-half velocity for 241
 * iterations, applies distance-23 queued damage requests with a 16-step cooldown and serial updates, then
 * clears the indexed task control+8. */
void sub_080B4690(u32 a0, u32 a1)
{
    struct Anim0B4690 anim;
    u16 tile, rotation;
    s16 sx, sy;
    struct Vec0B4690 vel;
    u8 kind;
    u16 idx;
    u16 i;
    s32 d;
    struct Vec0B4690 pos, dst;
    u16 *t;
    u8 timer;
    u16 count;
    s32 paused;
    u16 dx, dy;
    s32 dist;

    kind = a0;
    idx = a1;
    for (i = 0; i < idx * 48; i++)
        sub_080003F0();
    init0B4690(&anim, 0x50130, 6, -1, 0);
    sub_08000AF0(0x16, anim.graphics + 0x20, 1);
    anim.data[1] = 6;
    rotation = 0;
    tile = 0;
    timer = 0;
    if (kind == 0) {
        switch (boss0B4690->f8) {
        case 0: case 1: case 2: d = 0; break;
        case 3: case 4: d = 1; break;
        case 5: d = 2; break;
        case 6: case 7: d = 3; break;
        }
    } else {
        switch (mode0B4690) {
        case 0: case 1: case 2: d = 0; break;
        case 3: case 4: d = 1; break;
        case 5: d = 2; break;
        case 6: case 7: d = 3; break;
        }
    }
    switch (d) {
    case 0:
        pos.x = boss0B4690->x - 0x3000;
        pos.y = boss0B4690->y;
        break;
    case 1:
        pos.x = boss0B4690->x - 0x3000;
        pos.y = boss0B4690->y;
        break;
    case 2:
        pos.x = boss0B4690->x + 0x3000;
        pos.y = boss0B4690->y;
        break;
    case 3:
        pos.x = boss0B4690->x + 0x3000;
        pos.y = boss0B4690->y;
        break;
    }
    pos.y -= 0x1900;
    sub_0805865C(0xA6);
    {
        struct Player0B4690 *p = &players0B4690[pick0B4690(0)];
        sel0B4690(0);
        t = p->f148;
    }
    dst.x = t[0] >> 4;
    dst.y = ((u32)(t[1] << 20) >> 20) - 12;
    aim0B4690(pos, dst, &vel);
    count = 0xF0;
    do {
        pos.x += vel.x + (vel.x >> 1);
        pos.y += vel.y + (vel.y >> 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && (paused = sub_0800CD34()) == 0) {
            animate0B4690(&anim, 10, &tile, &rotation, 1);
            coords0B4690(pos.x >> 8, pos.y >> 8, &sx, &sy, paused, paused);
            draw0B4690(sx, sy, 10, tile, vis0B4690(pos.x >> 8, pos.y >> 8, 0), anim.data, anim.w8, anim.w0);
        }
        if (timer != 0) {
            timer--;
        } else {
            dx = (pos.x >> 8) - (players0B4690[sub_080020F4()].x >> 8);
            dy = (pos.y >> 8) + 12 - (players0B4690[sub_080020F4()].y >> 8);
            dist = Sqrt((s16)dx * (s16)dx + (s16)dy * (s16)dy);
            if (dist <= 23 && !sub_0800CDF8() && !sub_0800CCCC() && !sub_0800CD8C()
                && boss0B4690->state != 11
                && !(players0B4690[sub_080020F4()].flags & 0x2000)
                && players0B4690[sub_080020F4()].alive != 0
                && players0B4690[sub_080020F4()].state != 14
                && players0B4690[sub_080020F4()].state != 11
                && players0B4690[sub_080020F4()].state != 12
                && players0B4690[sub_080020F4()].hitIds[boss0B4690->index] != boss0B4690->hitId) {
                hurt0B4690(1, 30, 4);
                players0B4690[sub_080020F4()].fB0 = 0xFFFE;
                players0B4690[sub_080020F4()].hitIds[boss0B4690->index] = boss0B4690->hitId++;
                timer = 16;
            }
        }
        sub_080003F0();
    } while (--count != 0xFFFF);
    tasks0B4690[idx].f8 = 0;
}
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
/* [AimSelectedPlayerAtTarget] For an active selected player outside states 11/14/12 and flag 0x2000, derives
 * an eight-direction result toward the supplied fixed-point position and writes halfwords +0xCC=0x240 and
 * +0xC8=8; all rejected paths leave those fields unchanged. */
void sub_080B4A7C(struct B4A7CTarget target)
{
    struct B4A7CPlayer *player;
    struct B4A7CPlayer *players = playersB4A7C;
    u32 index;
    u32 targetIndex;
    s32 x, y;
    u8 *field;
    register u16 *dst asm("r0");
    u32 output;
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
/* [AllocateDelayedAimTaskPool] Allocates 0xA0 bytes into gUnk_030007D0; on success clears +8 in four 0x28-byte
 * controls. Allocation failure leaves the global null. */
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
/* [ReleaseDelayedAimTaskPool] Null global returns early; otherwise cancels four scheduled controls, frees
 * gUnk_030007D0 and clears it. */
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
/* [StartDelayedAimProjectile] Null pool returns; scans four controls for unscheduled plus word0;
 * allocation0x400 failure returns. Installs delayed-aim callback with no destructor, writes u16 argument+0x40
 * and forwards byte kind plus u16 index. */
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
struct Res4C34 { u8 p0[4]; s16 f4, f6; u8 p8[0x1F]; u8 f27; u8 p28[2]; u8 f2A, f2B; u8 p2C[0xA8]; u16 fD4, fD6; };
struct Act4C34 {
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
    struct Res4C34 res;
};
struct Pl4C34 { u8 p0[0xC]; u16 fC; u8 pe[0x22]; u32 flags; u8 p34[0x114]; u16 *f148; };
struct XY4C34 { s32 x, y; };
struct G5CF4_4C34 { u8 p0[0x720]; u32 f720; };

extern struct Act4C34 *gAct4C34 asm("gUnk_030007DC");
extern u16 gTile4C34 asm("gUnk_030007E0");
extern u8 gSel4C34 asm("gUnk_030007D8");
extern u32 gMask4C34 asm("gUnk_030056FC");
extern struct Pl4C34 gPl4C34[] asm("gUnk_03003CE0");
extern u8 gHist4C34[] asm("gUnk_03003DC4");
extern struct G5CF4_4C34 *gGame4C34 asm("gUnk_03005CF4");
extern u8 gImg4C34[] asm("gUnk_084ABA10");

void res4C34(void *) asm("sub_08019F60");
u16 alloc4C34(s32, s32) asm("sub_08016E04");
u32 init4C34_0(void) asm("sub_0806849C");
void b640C_4C34(void) asm("sub_080B640C");
void b63BC_4C34(void) asm("sub_080B63BC");
u8 ev4C34(void) asm("sub_08068490");
u8 move4C34(void *, s32, s32, s32, s32, s32) asm("sub_08097AC0");
void warp4C34(s32, s32) asm("sub_080B6448");
s32 face4C34(void *, s32) asm("sub_08095F10");
void spawn4C34(s32, s32, s32, s32, s32) asm("sub_0807386C");
s16 rand4C34(void) asm("sub_0800086C");
u8 att4C34(s32) asm("sub_080B5B90");
void b5E64_4C34(void) asm("sub_080B5E64");
void b60F4_4C34(void) asm("sub_080B60F4");
void b64A4_4C34(void) asm("sub_080B64A4");
s32 b86B4_4C34(s32) asm("sub_080586B4");
u32 msg4C34(s32, s32, s32, s32, s32, s32) asm("sub_0805DF38");
s32 msgDone4C34(u32) asm("sub_0805EEFC");

static inline s32 ABS4C34(s32 x) { if (x < 0) x = -x; return x; }
#define REDRAW4C34()                                                                                   \
    do {                                                                                               \
        s32 z;                                                                                         \
        gPl4C34[sub_080020F4()].flags |= 1;                                                            \
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (z = sub_0800CD34()) == 0) { \
            loadPalB3648(gTile4C34 + 0x10, anim.fC + *pres * 32, 1);                                   \
            b = prioB3648(gAct4C34->f14 >> 8, gAct4C34->f18 >> 8, 0);                                  \
            gAct4C34->f6E = animB3648(&anim, gAct4C34->f68, &gAct4C34->f6A, &gAct4C34->f6C, 1);        \
            projB3648((s16)(gAct4C34->f14 >> 8), (s16)(gAct4C34->f18 >> 8), &sx, &sy, z, z);    \
            drawB3648(sx, sy, gAct4C34->f68, gAct4C34->f6A, b, &anim.f1C, anim.f8, anim.f0);     \
        }                                                                                              \
        b64A4_4C34();                                                                                  \
        sub_080003F0();                                                                                \
    } while (0)

/* [RunChargeCycleProjectileEncounter] Initializes the actor and palette, waiting for palette availability with
 * active-bit cleanup on session/area abort. Synchronizes phases and cycles charge preparation, player-target
 * pursuit with decaying speed and timeout, recovery, type13 projectile request and conditional encoded-event
 * selection/relocation. Calls the cycle-indexed attack helper during charge phases and updates
 * animation/damage feedback. On death/session/area exit clears its active bit, stops the auxiliary task,
 * dispatches remote full-HP damage, synchronizes the completion token, shows resource0x1400A7 and runs
 * transition/reward feedback when eligible; finally synchronizes and marks the encounter finished. */
void sub_080B4C34(struct Act4C34 *a)
{
    struct AnimB3648 anim;
    s16 sx;
    s16 sy;
    struct XY4C34 tgt;
    struct XY4C34 home;
    struct Res4C34 *res;
    s32 lastHit;
    s32 speed;
    s32 limit;
    s32 animMode;
    u16 flash;
    u16 hitTimer;
    u16 frame;
    s16 shake;
    u8 save22E;
    u8 save22F;
    u8 cooldown;
    u8 cycle;
    u8 cycle2;
    u16 *pres;
    s16 i, j;
    s16 cnt;
    u8 b;
    s32 h;
    struct Pl4C34 *p;

    gAct4C34 = a;
    res = &a->res;
    setupB3648(a, gImg4C34, 0);
    res4C34(res);
    a0A4B3648(gAct4C34);
    { u16 *t = &gTile4C34; *t = alloc4C34(a->res.fD4 + 100, a->res.fD6); }
    while (gTile4C34 == 0xFFFF) {
        gAct4C34->fC = 11;
        if (sub_0800CB78() || sub_08056E90()) {
            gMask4C34 &= ~(1 << gAct4C34->f0);
            return;
        }
        sub_080003F0();
    }
    animInitB3648(&anim, 0x50015, gTile4C34, -1, 1);
    anim.f1C = gTile4C34;
    frame = 0;
    cycle2 = 0;
    cycle = 0;
    cooldown = 0;
    gAct4C34->f68 = 12;
    gAct4C34->f6C = cooldown;
    gAct4C34->f6A = cooldown;
    home.x = gAct4C34->f14;
    home.y = gAct4C34->f18;
    res->f27 = 0;
    gAct4C34->f5C = gAct4C34->f1D6 = res->f6 * 3;
    { s32 t = res->f4 * 2; gAct4C34->f5E = gAct4C34->f1D4 = ((res->f4 << 3) + t) * 2; }
    gAct4C34->fC = cooldown;
    flash = 0;
    hitTimer = 0;
    save22E = gAct4C34->res.f2A;
    save22F = gAct4C34->res.f2B;
    gAct4C34->f50 = 1;
    pres = &res->fD6;
    for (i = 0; i <= 3; i++)
        for (j = 0; j <= 4; j++)
            *(u32 *)(i * 0x14C + j * 4 + (u32)gHist4C34) = 0;
    gAct4C34->f1FD = 3;
    gAct4C34->f1FE = 3;
    gAct4C34->f1FC_lo = gAct4C34->f0;
    gAct4C34->f202 = gAct4C34->f2;
    gAct4C34->f200 = 0xFF;
    sub_08097FE4();
    sub_08097A4C();
    b640C_4C34();
    sub_080B63A0();
    b63BC_4C34();
    sub_08067C18();
    while (!sub_08067C08())
        sub_080003F0();
    sub_08067BF8();
    init4C34_0();

    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (a->fC == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            tickB3648(gAct4C34);
            switch (gAct4C34->f1FD) {
            case 1:
                gAct4C34->fC = 0;
                if (sub_08067C08() != 0) {
                    gAct4C34->f1FD = gAct4C34->f1FE;
                    sub_08067BF8();
                }
                break;
            case 2:
                gAct4C34->fC = 0;
                gAct4C34->f200 = ev4C34();
                if (gAct4C34->f200 != 0xFF) {
                    gAct4C34->f1FE = 11;
                    gAct4C34->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 3:
                gAct4C34->fC = 0;
                if (sub_08056F78() != 0) {
                    gAct4C34->f1FE = 10;
                    gAct4C34->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 4:
                gAct4C34->fC = 1;
                if (gAct4C34->f68 != 0) {
                    gAct4C34->f68 = 0;
                    gAct4C34->f6C = 0;
                    gAct4C34->f6A = 0;
                    gAct4C34->f6E = 0;
                    sfxB3648(0x1A9);
                }
                animMode = 0;
                a0B0B3648(gAct4C34);
                gAct4C34->res.f2A = 0;
                gAct4C34->res.f2B = 0;
                if (gAct4C34->f6E != 0) {
                    frame = 0;
                    speed = 0x200;
                    gAct4C34->f1FE = 5;
                    gAct4C34->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 5:
                gAct4C34->fC = 1;
                animMode = 1;
                gAct4C34->f1FC_hi = rndB3648(0);
                p = &gPl4C34[gAct4C34->f1FC_hi];
                tgt.x = p->f148[0] >> 4;
                tgt.y = (u32)(p->f148[1] << 20) >> 20;
                switch (p->fC) {
                case 7:
                    limit = 0x170;
                    break;
                case 5:
                    limit = 0x160;
                    break;
                case 2:
                    limit = 0x160;
                    break;
                case 8:
                    limit = 0x160;
                    break;
                case 0:
                    limit = 0x160;
                    break;
                case 4:
                    limit = 0x150;
                    break;
                case 6:
                    limit = 0x140;
                    break;
                case 1:
                    limit = 0x140;
                    break;
                case 3:
                    limit = 0x130;
                    break;
                }
                if (limit < speed)
                    speed--;
                if (frame++ < 0x96) {
                    if (move4C34(gAct4C34, tgt.x, tgt.y, speed, 4, 0) != 0) {
                        gAct4C34->f68 = gAct4C34->f8 + 1;
                    } else {
                        frame = 0;
                        endB3648(0);
                        gAct4C34->f68 = gAct4C34->f8 + 1;
                        gAct4C34->f1FE = 6;
                        gAct4C34->f1FD = 1;
                        sub_08067C18();
                    }
                } else {
                    frame = 0;
                    endB3648(0);
                    gAct4C34->f1FE = 6;
                    gAct4C34->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 6:
                gAct4C34->fC = 0;
                if (gAct4C34->f68 != 9) {
                    gAct4C34->f68 = 9;
                    gAct4C34->f6C = 0;
                    gAct4C34->f6A = 0;
                    gAct4C34->f6E = 0;
                    sfxB3648(0x1AA);
                }
                animMode = 0;
                if (gAct4C34->f6E != 0) {
                    cycle2 = (cycle2 == 7) ? 0 : cycle2 + 1;
                    frame = 0;
                    a0A4B3648(gAct4C34);
                    gAct4C34->res.f2A = save22E;
                    gAct4C34->res.f2B = save22F;
                    gAct4C34->f1FE = 9;
                    gAct4C34->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 10:
                gAct4C34->fC = 0;
                cnt = 0;
                for (i = 1; i <= 4; i++)
                    if (gMask4C34 & (1 << i))
                        cnt++;
                if (cnt <= 1) {
                    if (sub_08002204() == 1) {
                        s16 r;
                        struct Act4C34 *q;
                        u8 *f;
                        r = rand4C34();
                        q = gAct4C34;
                        q->f200 = (ABS4C34((s16)(r % 10)) + 1) << 4;
                        r = rand4C34();
                        f = &gAct4C34->f200;
                        *f |= ABS4C34((s16)(r % 5)) & 0xF;
                        if (sub_08068450(gAct4C34->f200) == 1)
                            gAct4C34->f1FE = 2;
                    } else {
                        gAct4C34->f200 = 0xFF;
                        gAct4C34->f1FE = 2;
                    }
                } else {
                    gAct4C34->f1FE = 9;
                }
                a->f1FD = 1;
                sub_08067C18();
                break;
            case 11:
                gAct4C34->fC = 9;
                gSel4C34 = gAct4C34->f200;
                gAct4C34->f200 = 0xFF;
                warp4C34(home.x, home.y);
                gAct4C34->f1FE = 9;
                gAct4C34->f1FD = 1;
                sub_08067C18();
                break;
            case 13:
                gAct4C34->fC = 9;
                gAct4C34->f1FC_hi = rndB3648(0);
                endB3648(0);
                face4C34(gAct4C34, gAct4C34->f1FC_hi);
                gAct4C34->f68 = 12;
                animMode = 1;
                spawn4C34(gAct4C34->f0 + 4, 13, gAct4C34->f1FC_hi, 5, 5);
                gAct4C34->f50++;
                gAct4C34->f1FD = 14;
                break;
            case 14:
                gAct4C34->fC = 9;
                gAct4C34->f68 = 12;
                animMode = 1;
                gAct4C34->f1FE = 9;
                gAct4C34->f1FD = 1;
                sub_08067C18();
                break;
            case 9:
                gAct4C34->fC = 0;
                gAct4C34->f68 = 12;
                animMode = 1;
                if (frame++ > 0x5A) {
                    frame = 0;
                    gAct4C34->f1FE = 0x10;
                    gAct4C34->f1FD = 1;
                    sub_08067C18();
                }
                break;
            case 16:
                gAct4C34->fC = 0;
                switch (cycle) {
                case 0:
                    gAct4C34->f1FE = 4;
                    break;
                case 1:
                    gAct4C34->f1FE = 13;
                    break;
                case 2:
                    gAct4C34->f1FE = 4;
                    break;
                case 3:
                    gAct4C34->f1FE = 10;
                    break;
                }
                gAct4C34->f1FD = 1;
                sub_08067C18();
                cycle = (cycle == 3) ? 0 : cycle + 1;
                speed = 0x200;
                break;
            }
            if (gAct4C34->f5C != 0 && (gAct4C34->f1FD == 4 || gAct4C34->f1FD == 6 || gAct4C34->f1FD == 5)) {
                if (cooldown == 0)
                    cooldown = att4C34(cycle2);
                else
                    cooldown = cooldown - 1;
                b5E64_4C34();
            } else {
                cooldown = 0;
            }
        }
        loadPalB3648(gTile4C34 + 0x10, anim.fC + *pres * 32, 1);
        if (bgFlagB3648() & 1)
            b = bgPrioB3648();
        else
            b = prioB3648(gAct4C34->f14 >> 8, gAct4C34->f18 >> 8, 0);
        if (sub_0800CD8C() == 0)
            gAct4C34->f6E = animB3648(&anim, gAct4C34->f68, &gAct4C34->f6A, &gAct4C34->f6C, animMode);
        projB3648((s16)(gAct4C34->f14 >> 8), (s16)(gAct4C34->f18 >> 8), &sx, &sy, 0, 0);
        if (flash != 0) {
            u16 old = flash;
            flash--;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                drawB3648(sx, sy, gAct4C34->f68, gAct4C34->f6A, b, &anim.f1C, anim.f8, anim.f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawB3648(sx, sy, gAct4C34->f68, gAct4C34->f6A, b, &anim.f1C, anim.f8, anim.f0);
        }
        if (gAct4C34->f4C != 0 && lastHit != gAct4C34->f4C) {
            lastHit = a->f4C;
            hitTimer = 10;
            shake = 0;
        }
        if (hitTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                dmgB3648(a, lastHit, shake);
            if (hitTimer & 2)
                shake--;
            hitTimer--;
        } else {
            lastHit = 0;
            a->f4C = 0;
        }
        if (deadB3648(a) != 0) {
            sub_080003F0();
            break;
        }
        sub_080003F0();
    }
    gMask4C34 &= ~(1 << gAct4C34->f0);
    gPl4C34[sub_080020F4()].flags |= 1;
    b60F4_4C34();
    animInitB3648(&anim, 0x50015, gTile4C34, -1, 1);
    anim.f1C = gTile4C34;
    gAct4C34->f68 = 12;
    gAct4C34->f6C = 0;
    gAct4C34->f6A = 0;
    sub_080683CC();
    freeB3648(gAct4C34->f2);
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        REDRAW4C34();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0)
        REDRAW4C34();
    b86B4_4C34(0);
    gPl4C34[sub_080020F4()].flags |= 1;
    gGame4C34->f720 = msg4C34(1, 14, 0x19, 2, 0x3C, 0x1400A7);
    while (msgDone4C34(gGame4C34->f720) == 0)
        REDRAW4C34();
    dropB3648(gAct4C34, &anim, *pres, gTile4C34);
    if (!(gPl4C34[sub_080020F4()].flags & 0x2000) && gAct4C34->f5A != 0) {
        h = dropFxB3648(gDataB3648, res);
        for (shake = 0x1D; shake != -1; shake--) {
            gAct4C34->f18 -= 0x20;
            fallB3648(gAct4C34, h);
            sub_080003F0();
        }
        dropEndB3648(gDataB3648, h);
    }
    sub_08067C18();
    while (!sub_08067C08())
        sub_080003F0();
    sub_08067BF8();
    sub_08056E24();
}
struct Player0B5B90 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 b68; u8 p69[0x23]; s32 x, y; u8 p94[0x1C]; u16 wB0; u8 pB2[0x16]; u16 knock, dir, speed; u8 pCE[0x16]; u32 hits[4]; u8 pF4[0x14C - 0xF4]; };
struct Boss0B5B90 { u16 slot; u8 p2[0xA]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; u32 hitId; u8 p54[8]; s16 active; };
extern struct Player0B5B90 players0B5B90[] asm("gUnk_03003CE0");
extern struct Boss0B5B90 *boss0B5B90 asm("gUnk_030007DC");
extern s32 atan0B5B90(s16, s16) asm("ArcTan2");
/* Damage and knock back the player when it touches the boss. */
/* [RequestTypedBossContactDamage] Within distance 19 and active/lifecycle/pause/player gates, dispatches
 * sub_08029A7C by byte kind and game mode, writes player marker and records/increments boss serial, then
 * applies direction, magnitude 0x400 and counter 8; returns 0x28 on application or zero on rejection. It does
 * not reject previously seen serials. */
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
/* [ApplyPrimaryActorContact] Scans active entries 1 through 4 within distance 19 of the primary actor; with
 * lifecycle/pause/serial gates satisfied, writes state 10, adds the hit helper result, advances the primary
 * actor serial and applies outward direction, speed 0x400 and counter 8. */
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
/* [RunDualBackgroundScroll] Resets two ticks and a flag, then yields forever while conditionally scrolling
 * backgrounds 1 and 3 in opposite horizontal directions and writing table-derived blend parameters; a shared
 * flag changes the scroll increments and blend-parameter base. */
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
/* [UpdateDualWindowTransition] Stops and clears tracked audio, sets the shared transition flag, conditionally
 * configures display state, increments an eight-bit tick and writes two window ranges; returns zero through
 * tick 119, otherwise resets display state and returns one. */
u32 sub_080B6068(void)
{
    register volatile u8 *tickPtr asm("r1");
    volatile u8 *otherPtr;
    struct Display6068 *display;
    u32 tick;
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
/* [StopTaskRestoreActorFlags] If stored task pointer is null returns without other writes. Otherwise stops it
 * when active, frees task-control allocation, clears pointer, sets actor+0x7A bit0 for active entity slots1..4
 * and clears two stored halfword actor keys. Returns without an explicit completion wait. */
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
struct Spr0B6178 { s32 f0, f4, f8, fC, f10, f14, f18; u8 b1C[0x18]; };
struct Task0B6178 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u8 *ptr0B6178 asm("gUnk_030007DC");
extern u16 arr0B6178[2] asm("gUnk_030007D4");
extern u8 font0B6178 asm("gUnk_030007D8");
extern u8 data0B6178[] asm("gUnk_084ABA10");
extern struct Task0B6178 *task0B6178 asm("gUnk_030007EC");
extern void lock0B6178(void *) asm("sub_0801A0B0");
extern void unlock0B6178(void *) asm("sub_0801A0A4");
extern s32 init0B6178(void *, u32, u32, s32, s32) asm("sub_08065158");
extern u32 anim0B6178(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern u32 coords0B6178(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern u8 *draw0B6178(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
extern s32 busy0B6178(u32) asm("sub_0801A040");
extern u16 open0B6178(void *, u32, u32) asm("sub_08019FD8");
extern void show0B6178(u32, u32) asm("sub_0801A0BC");
/* Same effect sequence as sub_080B2058 for the second boss arena. */
/* The position is passed by value as an 8-byte struct (r0/r1 copied as one pair), like sub_080B2058. */
struct PosB6178 { s32 x, y; };
void sub_080B6178_v(struct PosB6178 pos) asm("sub_080B6178");
/* [RunAlternateImpactSpawn] Disables combat targeting for the global actor, animates resource 0x50020 at the
 * supplied position with sound 0x1A5 and yield iterations; the source loop continues while animation result is
 * zero or the post-increment counter exceeds 59. If actor field 0x5C and sub_08002204 permit, scans two
 * actor-key slots, requests an enemy spawn into the first absent slot, calls the actor-key team setter with 3
 * and waits for active actor presence. Restores actor combat team 2 and clears task control+8 on normal exit.
 * Spawn definition is 0x084ABA10 with high/low selector-byte nibbles. */
void sub_080B6178_v(struct PosB6178 pos)
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
    x = pos.x >> 8;
    y = pos.y >> 8;
    xs = x << 16;
    ys = y << 16;
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
                { register u32 f asm("r0") = font0B6178; *e = open0B6178(data0B6178, f >> 4, f & 0xF); }
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
/* [CleanupPackedSpawnScrollActor] If actor +0x5C is nonzero, releases packed-spawn-effect task and scroll
 * task; always clears peer rings, active mask and palette slot. */
void sub_080B6324(void) {
    if (M2C_FIELD(gUnk_030007DC, s16 *, 0x5C) != 0) {
        sub_080B60F4();
        sub_080B6360();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007E0);
}
/* [ReleaseStagedDualScrollTask] Resets six-argument display effect; cancels gUnk_030007E4 if scheduled; frees
 * and clears control only if nonnull. */
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
/* [AllocateDualScrollBlendControl] Exact allocation and initialization body. */
void sub_080B63A0(void)
{
  s32 temp_r0;
  gUnk_030007E4 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
/* [StartStagedDualScrollTask] Returns only for unscheduled control with nonzero +8; writes0x44, allocates0x400
 * without null check, installs staged-scroll callback and registers task. */
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
/* [AllocatePackedSpawnEffectTask] Zeros two halfword handles, allocates one 0x28-byte task control and clears
 * +8 only on success. */
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
/* [StartPackedSpawnEffect] Returns for null control, scheduled control, nonzero +8 or failed0x400 allocation.
 * Installs packed-selector position effect with word0x3B and forwards two words to scheduler. */
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
/* [FlagFourActorEntries] ORs bit 0 into halfword +0x7A of actor-array entries 1 through 4 at stride 0x2E0;
 * does not test the connected-entry mask. */
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
