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

#define BD878(p,o) (*(u8 *)((u8 *)(p)+(o)))
#define HD878(p,o) (*(u16 *)((u8 *)(p)+(o)))
#define SD878(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define ID878(p,o) (*(s32 *)((u8 *)(p)+(o)))
#define PD878(p,o) ((u16 *)((u8 *)(p)+(o)))
struct SpriteD878 {u32 base,p4,data,palette,p10,p14,p18;u8 payload[24];};
struct PlayerD878 {u8 p0[0x30];u32 flags;u8 p34[0x118];};
struct PosD878 {s32 x,y;};
struct ObjD878 {u32 f0,f4,f8;s32 fC;};
struct ResD878 {u8 p0[4];s16 f4;s16 f6;u8 p8[0xCE];u16 fD6;};
struct ActorD878 {
    u16 f0; u16 f2; u8 p4[4]; u16 f8; u8 pA[2]; u16 state; u8 pE[6];
    s32 x; s32 y; u8 p1C[0x30]; s32 damage; s32 f50; u8 p54[6]; u16 f5A; u16 f5C; u16 f5E;
    u8 p60[8]; u16 anim; u16 frame; u16 tick; u16 f6E; u8 p70[0x164]; u16 f1D4; u16 f1D6;
    u8 p1D8[0x24]; u8 lo:4; u8 hi:4; u8 phase; u8 next; u8 p1FF; u8 f200; u8 p201; u16 f202;
    u8 res[0xD4]; u16 f2D8; u16 f2DA;
};
extern struct ActorD878 *actorD878 asm("gUnk_03000310");
extern u16 paletteD878 asm("gUnk_03000314");
extern u32 activeD878 asm("gUnk_030056FC");
extern u32 seenD878[][83] asm("gUnk_03003DC4");
extern struct PlayerD878 playersD878[] asm("gUnk_03003CE0");
extern void *inventoryD878 asm("gUnk_030034E0");
extern u8 *stateD878 asm("gUnk_03005CF4");
extern u8 tilesD878[] asm("gUnk_03003170");
extern u8 configD878[] asm("gUnk_084A2748");
extern struct PosD878 pointsD878[] asm("gUnk_08518724");
extern s16 waveD878[] asm("gUnk_080B9704");
extern void setupD878(void *,void *,s32) asm("sub_0801623C");
extern void resourceInitD878(void *) asm("sub_08019F60");
extern u32 allocateD878(u16,u16) asm("sub_08016E04");
extern void initD878(void *,u32,u32,s32,s32) asm("sub_08065158");
extern u16 animD878(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void screenD878(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern struct ObjD878 *drawD878(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void updateD878(void *) asm("sub_0801C8F0");
extern void floatD878(void *,s32,s32) asm("sub_0801A120");
extern u16 deadD878(void *) asm("sub_08019CE8");
extern u8 moveD878(void *,struct PosD878,s32,s32,s32) asm("sub_08097AC0");
extern void paletteFreeD878(u32) asm("sub_08067CA8");
extern void transitionD878(void *,void *,u32,u32) asm("sub_080970CC");
extern s32 rewardD878(void *,void *) asm("sub_0801E46C");
extern void riseD878(void *,s32) asm("sub_0806171C");
extern void rewardDoneD878(void *,s32) asm("sub_0801E4CC");
extern void soundStopD878(s32) asm("sub_080586B4");
extern void soundD878(s32) asm("sub_08058688");
extern s32 windowD878(s32,s32,s32,s32,s32,s32) asm("sub_0805DF38");
extern s32 windowDoneD878(s32) asm("sub_0805EEFC");
extern void sub_0809F998(void);
extern void sub_0809F9F8(void);
extern void sub_0809FB18(void);
extern void sub_0809FA64(u16);

#define RENDER_D878() { \
    s32 zero; \
    playersD878[sub_080020F4()].flags |= 1; \
    if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) { \
        zero = sub_0800CD34(); \
        if (zero == 0) { \
            sub_08000AF0(paletteD878 + 0x10, (u8 *)sprite.palette + (*pal << 5), 1); \
            priority = sub_0800BC44(actorD878->x >> 8, actorD878->y >> 8, 0); \
            sprite.payload[0] = paletteD878; \
            animD878(&sprite, actorD878->anim, &actorD878->frame, &actorD878->tick, zero); \
            screenD878((actorD878->x << 8) >> 16, (actorD878->y << 8) >> 16, &sx, &sy, zero, zero); \
            drawD878(sx, sy, actorD878->anim, actorD878->frame, priority, sprite.payload, sprite.data, sprite.base); \
        } \
    } \
    sub_080003F0(); \
}

void sub_0809D878(void *input)
{
    struct SpriteD878 sprite;
    s16 sx;
    s16 sy;
    u8 *resource;
    struct PosD878 target;
    s32 lastDamage;
    u16 lastAnim;
    s32 animFlag;
    u16 flash;
    u16 floatingTimer;
    u16 elapsed;
    s16 floatingOffset;
    u8 wave;
    u8 count;
    u8 idx;
    s32 finished;
    u16 *frame;
    u16 *tick;
    u16 *pal;
    struct ActorD878 *actor;
    u16 *animation;
    s32 mode;
    u8 priority;
    s8 cur;
    s16 player;
    s16 entry;
    s32 value;
    s32 reward;
    s32 dmg;
    u32 old;
    u16 alloc;
    struct ObjD878 *obj;

    actor = input;
    actorD878 = actor;
    resource = actor->res;
    setupD878(actor, configD878, 0);
    resourceInitD878(resource);
    sub_0801A0A4(actor);
    alloc = paletteD878 = allocateD878(actor->f2D8, actor->f2DA);
    if (alloc == 0xFFFF) {
        do {
            actor->state = 11;
            if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
                activeD878 &= ~(1 << actor->f0);
                return;
            }
            sub_080003F0();
        } while (paletteD878 == 0xFFFF);
    }
    initD878(&sprite, 0x50007, paletteD878, -1, 1);
    sprite.payload[0] = paletteD878;
    actor->f5C = actor->f1D6 = SD878(resource, 6) * 3;
    value = SD878(resource, 4) * 2;
    actor->f5E = actor->f1D4 = (value * 4 + value) * 2;
    actor->phase = 2;
    actor->next = 2;
    actor->state = 0;
    mode = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    floatingTimer = 0;
    sub_08097FE4();
    sub_08097A4C();
    sub_08097C4C();
    sub_0809F918();
    sub_0809F998();
    sub_0809F9F8();
    sub_0809FACC();
    gUnk_03003170.pad72 = 0x1E;
    actor->tick = floatingTimer;
    actor->frame = floatingTimer;
    actor->anim = floatingTimer;
    idx = 0;
    count = 0;
    elapsed = 0;
    wave = 0;
    player = 0;
    actor->f50 = 1;
    tick = &actor->tick;
    frame = &actor->frame;
    animation = &actor->anim;
    pal = PD878(resource, 0xD6);
    do {
        entry = 0;
        do {
            *(u32 *)((u8 *)seenD878 + entry * 4 + player * 0x14C) = 0;
            entry++;
        } while (entry <= 4);
        player++;
    } while (player <= 3);
    actor->lo = *(u8 *)actor;
    actor->f202 = actor->f2;
    actor->f200 = 0xFF;
    finished = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (actor->state == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            updateD878(actor);
            switch (actor->phase) {
            case 1:
                actor->state = 0;
                if (sub_08067C08() != 0) {
                    actor->phase = actor->next;
                    sub_08067BF8();
                }
                break;
            case 2:
                mode = 0;
                if (sub_08056F78() != 0) {
                    actor->next = 3;
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            case 3:
                mode = 1;
                actor->state = mode;
                cur = idx;
                target.x = pointsD878[cur].x >> 8;
                target.y = pointsD878[cur].y >> 8;
                if (moveD878(actor, target, 0x140, 8, 0) == 0) {
                    elapsed = 0;
                    idx = cur + 1;
                    if ((s8)idx == 5)
                        idx = 0;
                    actor->next = 4;
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            case 4:
                mode = 2;
                actor->state = mode;
                if (++elapsed > 0x3B) {
                    elapsed = 0;
                    if (++count == 6) {
                        count = 0;
                        actor->next = 7;
                    } else if (count & 1) {
                        actor->next = 5;
                        sub_0809FA64(0);
                        sub_0809FA64(1);
                        sub_0809FA64(2);
                        sub_0809FA64(3);
                    } else {
                        actor->next = 6;
                        sub_0809FB18();
                    }
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            case 5:
                mode = 2;
                actor->state = mode;
                if (elapsed++ > 0x3C) {
                    elapsed = 0;
                    actor->next = 3;
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            case 6:
                mode = 2;
                actor->state = mode;
                if (elapsed++ > 0xB4) {
                    elapsed = 0;
                    actor->next = 3;
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            case 7:
                mode = 2;
                actor->state = mode;
                sub_0809F90C();
                actor->next = 8;
                actor->phase = 1;
                sub_08067C18();
                break;
            case 8:
                mode = 2;
                actor->state = mode;
                actor->next = 5;
                actor->phase = 1;
                sub_08067C18();
                break;
            }
            { s32 t = waveD878[wave += 2]; actor->y += t >> 1; }
        }
        switch (mode) {
        case 0:
            *animation = actor->f8;
            animFlag = 1;
            break;
        case 1:
            *animation = actor->f8 + 8;
            animFlag = 1;
            break;
        case 2:
            if (actor->phase == 5) {
                *animation = actor->f8 + 8;
                animFlag = 1;
            } else {
                *animation = 0x18;
                animFlag = 0;
            }
            break;
        }
        if (lastAnim != actorD878->anim) {
            lastAnim = actorD878->anim;
            actorD878->tick = 0;
            actorD878->frame = 0;
        }
        sub_08000AF0(paletteD878 + 0x10, (u8 *)sprite.palette + (*pal << 5), 1);
        if (sub_08098004() & 1)
            priority = sub_08097FF8();
        else
            priority = sub_0800BC44(actor->x >> 8, actor->y >> 8, 0);
        if (sub_0800CD8C() == 0)
            actor->f6E = animD878(&sprite, *animation, frame, tick, animFlag);
        screenD878((actor->x << 8) >> 16, (actor->y << 8) >> 16, &sx, &sy, 0, 0);
        if (flash != 0) {
            old = flash;
            flash = old - 1;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                { obj = drawD878(sx, 0xA0, *animation, *frame, priority, sprite.payload, sprite.data, sprite.base); obj->fC = sy; }
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            { obj = drawD878(sx, 0xA0, *animation, *frame, priority, sprite.payload, sprite.data, sprite.base); obj->fC = sy; }
        }
        dmg = actor->damage;
        if (dmg != 0 && lastDamage != dmg) {
            lastDamage = dmg;
            floatingTimer = 10;
            floatingOffset = 0;
        }
        if (floatingTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                floatD878(actor, lastDamage, floatingOffset);
            if (floatingTimer & 2)
                floatingOffset--;
            floatingTimer--;
        } else {
            lastDamage = 0;
            actor->damage = floatingTimer;
        }
        if (deadD878(actor) != 0)
            finished = 1;
        sub_080003F0();
        if (finished != 0)
            break;
    }
    activeD878 = 0;
    playersD878[sub_080020F4()].flags |= 1;
    sub_0809FAEC();
    sub_0809FA28();
    sub_08097C6C();
    actorD878->tick = 0;
    actorD878->frame = 0;
    actorD878->anim = 0;
    floatingOffset = 0;
    floatingTimer = 10;
    do {
        s32 zero;
        playersD878[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            zero = sub_0800CD34();
            if (zero == 0) {
                sub_08000AF0(paletteD878 + 0x10, (u8 *)sprite.palette + (*pal << 5), 1);
                priority = sub_0800BC44(actorD878->x >> 8, actorD878->y >> 8, 0);
                sprite.payload[0] = paletteD878;
                animD878(&sprite, actorD878->anim, &actorD878->frame, &actorD878->tick, zero);
                screenD878((actorD878->x << 8) >> 16, (actorD878->y << 8) >> 16, &sx, &sy, zero, zero);
                drawD878(sx, sy, actorD878->anim, actorD878->frame, priority, sprite.payload, sprite.data, sprite.base);
                floatD878(actor, lastDamage, floatingOffset);
            }
        }
        if (floatingTimer & 2)
            floatingOffset--;
        sub_080003F0();
        floatingTimer--;
    } while (floatingTimer != 0xFFFF);
    sub_080683CC();
    paletteFreeD878(actor->f2);
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        RENDER_D878();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0)
        RENDER_D878();
    soundStopD878(0);
    ID878(stateD878, 0x720) = windowD878(1, 0xE, 0x19, 2, 0x3C, 0x140047);
    while (windowDoneD878(ID878(stateD878, 0x720)) == 0)
        RENDER_D878();
    playersD878[sub_080020F4()].flags &= ~1;
    soundD878(0xD);
    transitionD878(actorD878, &sprite, *pal, paletteD878);
    if (!(playersD878[sub_080020F4()].flags & 0x2000) && actorD878->f5A != 0) {
        reward = rewardD878(inventoryD878, resource);
        floatingOffset = 0x1D;
        do {
            struct ActorD878 *g = actorD878;
            g->y -= 0x20;
            riseD878(g, reward);
            sub_080003F0();
            floatingOffset--;
        } while (floatingOffset != -1);
        rewardDoneD878(inventoryD878, reward);
    }
    floatingOffset = 0x6F;
    do {
        sub_080003F0();
        floatingOffset--;
    } while (floatingOffset != -1);
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    sub_08056E24();
    while (sub_08056E90() == 0)
        sub_080003F0();
    sub_0809F934();
}
#undef RENDER_D878
#undef BD878
#undef HD878
#undef SD878
#undef ID878
#undef PD878
union BgE468 { struct { u32 cnt:16; u32 spare:16; } bits; u16 half; };
struct PlayerE468 {u8 p0[0xC8];u16 timer;s16 direction;u16 speed;u8 pCE[0x7E];};
extern struct PlayerE468 playersE468[] asm("gUnk_03003CE0");
extern volatile u16 g31EE468 asm("gUnk_0300031E");
extern u8 g31CE468 asm("gUnk_0300031C");
extern volatile u8 g320E468 asm("gUnk_03000320");
extern volatile u8 g321E468 asm("gUnk_03000321");
extern u8 *g310E468 asm("gUnk_03000310");
extern u16 g1250E468[] asm("gUnk_03001250");
extern void scrollE468(u16, u16, s16) asm("sub_0800BBA8");
extern void vcountE468(s32) asm("sub_08001108");
extern void sub_080009F8(s32, s32, s32);
extern s32 sub_0809EDFC(void);
extern s32 sub_0809EF84(void);
extern s32 modE468(s32, s32) asm("__modsi3");
void taskE468(void) asm("sub_0809E468");
void taskE468(void)
{
    union BgE468 bg;
    u32 faded;
    s16 scroll;
    u8 count;
    u16 ticks;
    u16 limit;
    s32 running;
    s32 mode;

    faded = 0;
    scroll = 0;
    count = 0;
    g31EE468 = 0;
    g31CE468 = 0;
    g320E468 = 0;
    g321E468 = 0;
    running = 1;
    do {
        if (sub_0800CD8C() != 0 || sub_0800CCCC() != 0 || sub_0800CD34() != 0 || sub_0800CC98() != 0) {
            if (!faded) {
                faded = 1;
                sub_08000E48();
                sub_0800CC18();
                sub_0800115C(0);
                sub_080011E4(0);
                sub_0800903C(0, 0, 0, 0, 0, 0);
                sub_0800BD48(2, 1);
                if (sub_0800CD8C() != 0)
                    sub_080009F8(0x400, 0, 0);
                else
                    sub_080009C0(0x400, 0, 0);
            }
            goto next;
        }
        faded = 0;
        sub_0800BD48(2, 0);
        sub_0800115C((u32)sub_0809EDFC);
        sub_080011E4(sub_0809EF84);
        if (*(s16 *)(g310E468 + 0x5C) == 0) {
            running = 0;
        } else {
            switch (g320E468) {
            case 0:
                scroll = (s16)(scroll - 4) % 255;
                scrollE468(2, 0, scroll);
                bg.bits.cnt = *(vu16 *)0x0400000A;
                bg.bits.cnt &= 0xFFFC;
                bg.bits.cnt |= 1;
                sub_08000AA8(1, &bg.half);
                bg.half = *(vu16 *)0x0400000C;
                bg.half &= 0xFFFC;
                bg.half |= 2;
                sub_08000AA8(2, &bg.half);
                sub_0800903C(4, 0x28, 1, 6, 0xE, 0);
                sub_0800CC18();
                if (g1250E468[3] < 0x3A)
                    vcountE468(0x3A - g1250E468[3]);
                else
                    vcountE468(0);
                sub_08000D8C();
                break;
            case 1:
                scroll = (s16)(scroll + 8) % 255;
                scrollE468(2, 0, scroll);
                sub_0800903C(4, 0x28, 1, 6, 0xE, 0);
                sub_0800CC18();
                if (g1250E468[3] < 0x3A)
                    vcountE468(0x3A - g1250E468[3]);
                else
                    vcountE468(0);
                sub_08000D8C();
                break;
            case 2:
                scroll = (s16)(scroll + 8) % 255;
                scrollE468(2, 0, scroll);
                sub_0800903C(4, 0x28, 1, g31EE468, 0xE, 0);
                sub_0800CC18();
                if (g1250E468[3] < 0x3A)
                    vcountE468(0x3A - g1250E468[3]);
                else
                    vcountE468(0);
                sub_08000D8C();
                if (count == 0x14 && g31EE468 == 0)
                    sub_08097CA8(0x5A);
                break;
            case 3:
                bg.half = *(vu16 *)0x0400000A;
                bg.half &= 0xFFFC;
                bg.half |= 2;
                sub_08000AA8(1, &bg.half);
                bg.half = *(vu16 *)0x0400000C;
                bg.half &= 0xFFFC;
                bg.half |= 1;
                sub_08000AA8(2, &bg.half);
                sub_0800903C(4, 0x3A, 1, 0x10, 0xC, 0);
                sub_0800CBF8(2);
                sub_08000D8C();
                break;
            case 4:
                scroll = (s16)(scroll - 5) % 255;
                scrollE468(2, 0, scroll);
                bg.half = *(vu16 *)0x0400000A;
                bg.half &= 0xFFFC;
                bg.half |= 2;
                sub_08000AA8(1, &bg.half);
                bg.half = *(vu16 *)0x0400000C;
                bg.half &= 0xFFFC;
                bg.half |= 1;
                sub_08000AA8(2, &bg.half);
                sub_0800903C(4, 0x3A, 1, 0x10, 0xC, 0);
                sub_0800CBF8(2);
                vcountE468(g321E468);
                if (g321E468 < 0x9A)
                    sub_08000D8C();
                else
                    sub_08000E48();
                break;
            case 5:
                scroll = (s16)(scroll - 5) % 255;
                scrollE468(2, 0, scroll);
                bg.half = *(vu16 *)0x0400000A;
                bg.half &= 0xFFFC;
                bg.half |= 2;
                sub_08000AA8(1, &bg.half);
                bg.half = *(vu16 *)0x0400000C;
                bg.half &= 0xFFFC;
                bg.half |= 1;
                sub_08000AA8(2, &bg.half);
                sub_0800CBF8(2);
                sub_0800903C(4, 0x3A, 1, 0x10, 0xC, 0);
                vcountE468(g321E468);
                if (g321E468 < 0x9A)
                    sub_08000D8C();
                else
                    sub_08000E48();
                break;
            case 6:
                bg.half = *(vu16 *)0x0400000A;
                bg.half &= 0xFFFC;
                bg.half |= 1;
                sub_08000AA8(1, &bg.half);
                bg.half = *(vu16 *)0x0400000C;
                bg.half &= 0xFFFC;
                bg.half |= 2;
                sub_08000AA8(2, &bg.half);
                sub_0800903C(4, 0x28, 1, 6, 0xE, 0);
                sub_0800CC18();
                if (count == 0x3C) {
                    vcountE468(0);
                    sub_08000D8C();
                }
                break;
            case 7:
                scroll = (s16)(scroll - 4) % 255;
                scrollE468(2, 0, scroll);
                bg.half = *(vu16 *)0x0400000A;
                bg.half &= 0xFFFC;
                bg.half |= 1;
                sub_08000AA8(1, &bg.half);
                bg.half = *(vu16 *)0x0400000C;
                bg.half &= 0xFFFC;
                bg.half |= 2;
                sub_08000AA8(2, &bg.half);
                sub_0800903C(4, 0x28, 1, 6, 0xE, 0);
                sub_0800CC18();
                if (g321E468 > g1250E468[3])
                    vcountE468(g321E468 - g1250E468[3]);
                else
                    vcountE468(0);
                sub_08000D8C();
                break;
            case 8:
                scroll = (s16)(scroll - 4) % 255;
                scrollE468(2, 0, scroll);
                bg.half = *(vu16 *)0x0400000A;
                bg.half &= 0xFFFC;
                bg.half |= 1;
                sub_08000AA8(1, &bg.half);
                bg.half = *(vu16 *)0x0400000C;
                bg.half &= 0xFFFC;
                bg.half |= 2;
                sub_08000AA8(2, &bg.half);
                sub_0800903C(4, 0x28, 1, 6, 0xE, 0);
                sub_0800CC18();
                if (g1250E468[3] < 0x3A)
                    vcountE468(0x3A - g1250E468[3]);
                else
                    vcountE468(0);
                sub_08000D8C();
                break;
            }
        }
        switch (g320E468) {
        case 0:
            if (g31CE468 == 1) {
                g31CE468 = 0;
                count = 0;
                g31EE468 = 6;
                g320E468 = 1;
            }
            break;
        case 1:
            if (++count == 0xB) {
                count = 0;
                if (--g31EE468 == 0xFFFF) {
                    g31EE468 = 6;
                    g320E468 = 2;
                }
            }
            break;
        case 2:
            if (++count == 0x11) {
                count = 0;
                if (--g31EE468 == 0xFFFF)
                    g320E468 = 3;
            }
            break;
        case 3:
            if (++count == 0x29) {
                g321E468 = 0;
                ticks = 0;
                g320E468 = 4;
                mode = sub_0800CE30();
                limit = 0x1E0;
                if (mode == 1)
                    limit = 0x3C0;
                sub_0805865C(0xB7);
            }
            break;
        case 4:
            if (g321E468 < 0x9A)
                g321E468 += 5;
            else
                g321E468 = 0x9F;
            playersE468[sub_080020F4()].direction = 0;
            playersE468[sub_080020F4()].speed = 0x120;
            playersE468[sub_080020F4()].timer = 8;
            if (limit == ticks++)
                g31CE468 = 1;
            if (g31CE468 == 1) {
                g31CE468 = 0;
                g321E468 = 0;
                g320E468 = 5;
            }
            break;
        case 5:
            if (g321E468 < 0x9A) {
                g321E468 += 5;
            } else {
                g321E468 = 0x9F;
                count = 0;
                g320E468 = 6;
            }
            break;
        case 6:
            if (++count == 0x29) {
                g321E468 = 0;
                g320E468 = 7;
            }
            break;
        case 7:
            if (++g321E468 == 0x3B) {
                count = 0;
                g31EE468 = count;
                g320E468 = 8;
            }
            break;
        case 8:
            if (++count == 0xB) {
                count = 0;
                if (++g31EE468 == 7)
                    g320E468 = count;
            }
            break;
        }
    next:
        sub_080003F0();
    } while (running);

    faded = 0;
    scroll = 0;
    g31EE468 = 0;
    g31CE468 = 0;
    g320E468 = 0;
    g321E468 = 0;
    for (;;) {
        if (sub_0800CD8C() != 0 || sub_0800CCCC() != 0 || sub_0800CD34() != 0 || sub_0800CC98() != 0) {
            if (!faded) {
                faded = 1;
                sub_08000E48();
                sub_0800CC18();
                sub_0800115C(0);
                sub_080011E4(0);
                sub_0800903C(0, 0, 0, 0, 0, 0);
                sub_0800BD48(2, 1);
                if (sub_0800CD8C() != 0)
                    sub_080009F8(0x400, 0, 0);
                else
                    sub_080009C0(0x400, 0, 0);
            }
        } else {
            faded = 0;
            sub_0800BD48(2, 0);
            sub_0800115C((u32)sub_0809EDFC);
            sub_080011E4(sub_0809EF84);
            scroll = (s16)(scroll - 4) % 255;
            scrollE468(2, 0, scroll);
            bg.half = *(vu16 *)0x0400000A;
            bg.half = (bg.half & 0xFFFC) | 1;
            sub_08000AA8(1, &bg.half);
            bg.half = *(vu16 *)0x0400000C;
            bg.half = (bg.half & 0xFFFC) | 2;
            sub_08000AA8(2, &bg.half);
            sub_0800903C(4, 0x28, 1, 6, 0xE, faded);
            sub_0800CC18();
            if (g1250E468[3] < 0x3A)
                vcountE468(0x3A - g1250E468[3]);
            else
                vcountE468(0);
            sub_08000D8C();
        }
        sub_080003F0();
    }
}
extern volatile u16 v0c asm("gUnk_0300030C");
extern volatile u8 v0e asm("gUnk_0300030E");
extern volatile u16 v1e asm("gUnk_0300031E");
extern u8 v20 asm("gUnk_03000320");
extern s32 mod104(s32, s32) asm("__modsi3");
extern s16 wave[] asm("gUnk_080B9704");
s32 sub_0809EDFC(void) {
 register s32 arg asm("r0");
 register volatile u16 *status asm("r3")=(volatile u16 *)0x04000004;
 register u8 *mode asm("r5");
 u32 bit;
 asm("" : "=r"(arg));
 bit=*status & 2;
 mode=&v20;
 if (!bit) { u32 two=2; asm("" : "+r"(two)); do {} while (!(*status & two)); }
 switch (*mode) {
 case 0:
  *(volatile u16 *)0x0400001A=v0c;
  v0c--;
  { register s32 result asm("r1"); register volatile u16 *display asm("r4"); register s16 *waves asm("r3"); register volatile u8 *counter asm("r2");
  result=mod104((s16)v0c,255);
  v0c=result;
  asm("" : "=r"(arg));
  display=(volatile u16 *)0x04000018; waves=wave; counter=&v0e;
  asm("" : "+r"(display), "+r"(waves), "+r"(counter));
  (*counter)++;
  *display=(waves[*counter]*3)>>7; }
  break;
 case 2:
  *(volatile u16 *)0x04000018=0;
  *(volatile u16 *)0x04000000 &= 0xFBFF;
  break;
 case 4:
  *(volatile u16 *)0x04000000 &= 0xFBFF;
  break;
 case 5:
  *(volatile u16 *)0x04000000 |= 0x400;
  break;
 case 6:
  *(volatile u16 *)0x04000000 &= 0xFBFF;
  break;
 case 7:
  *(volatile u16 *)0x04000000 &= 0xFBFF;
  break;
 case 1:
 case 8:
  *(volatile u16 *)0x0400001A=v0c;
  v0c--;
  { register s32 result asm("r1"); register volatile u16 *display asm("r4"); register s16 *waves asm("r3"); register volatile u8 *counter asm("r2");
  result=mod104((s16)v0c,255);
  v0c=result;
  asm("" : "=r"(arg));
  display=(volatile u16 *)0x04000018; waves=wave; counter=&v0e;
  asm("" : "+r"(display), "+r"(waves), "+r"(counter));
  (*counter)++;
  *display=(waves[*counter]*3)>>7; }
  *(volatile u16 *)0x04000052=(v1e&31)|0xE00;
  break;
 }
 asm volatile("" : "+r"(arg));
 return arg;
}
extern u8 modeEF84105 asm("gUnk_03000320");
s32 sub_0809EF84(void)
{
    register s32 status asm("r0")=sub_0800CD8C();
    { register s32 checked asm("r1")=status; asm("" : "+r"(checked));
    if(checked==0) {
        register vu16 *statusReg asm("r3")=(vu16 *)0x04000004; asm("" : "+r"(statusReg));
        if(!(1 & *statusReg)) {
            u32 one=1; asm("" : "+r"(one));
            do {} while(!(one & *statusReg));
        }
        switch(modeEF84105) {
        case 3: case 5:
            *(vu16 *)0x04000000 &= 0xFBFF;
            break;
        case 0:case 1:case 2:case 4:case 7:case 8:
            *(vu16 *)0x04000000 |= 0x400;
            break;
        }
    }
    }
    asm volatile("" : "+r"(status));
    return status;
}
#ifdef NONMATCHING
struct Packed9F018 { u16 x,y; };
union Tail9F018 { u32 seen[26]; struct {u32 pad[25]; struct Packed9F018 *visual;} remote; };
struct Player9F018 {
    u8 p0[0x20]; u16 state; u8 p22[14]; u32 flags;
    u8 p34[0x34]; u8 active; u8 p69[0x1F]; u16 health,p8A;
    s32 x,y; u8 p94[0x1C]; u16 motion; u8 pB2[0x32]; union Tail9F018 tail;
};
struct Actor9F018 {
    u16 id; u8 p2[10]; u16 state; u8 pE[6]; s32 x,y;
    u8 p1C[0x34]; u32 serial; u8 p54[0x286]; u16 paletteOffset;
};
struct Sprite9F018 {u32 base,p4,data,palette,p10,p14,p18;u8 payload[24];};
struct Draw9F018 {u32 p0[3];s32 y;};
typedef struct { s32 x, y; } Vec9F018;
extern struct Player9F018 players9F018[] asm("gUnk_03003CE0");
struct PlayerY9F018 { s32 y; u8 rest[0x148]; };
struct PlayerV9F018 { struct Packed9F018 *visual; u8 rest[0x148]; };
extern struct PlayerY9F018 playersY9F018[] asm("gUnk_03003D70");
extern s32 playerY09F018 asm("gUnk_03003D70");
extern s32 playerY19F018 asm("gUnk_03003EBC");
extern s32 playerY29F018 asm("gUnk_03004008");
extern s32 playerY39F018 asm("gUnk_03004154");
extern struct Packed9F018 *playerV09F018 asm("gUnk_03003E28");
extern struct Packed9F018 *playerV19F018 asm("gUnk_03003F74");
extern struct Packed9F018 *playerV29F018 asm("gUnk_030040C0");
extern struct Packed9F018 *playerV39F018 asm("gUnk_0300420C");
extern struct PlayerV9F018 playersV9F018[] asm("gUnk_03003E28");
extern struct Actor9F018 *actor9F018 asm("gUnk_03000310");
extern u16 variant9F018 asm("gUnk_03000314");
extern void init9F018(void *,u32,u32,s32,s32) asm("sub_08065158");
extern void anim9F018(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void screen9F018(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern struct Draw9F018 *draw9F018(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void vector9F018(Vec9F018,Vec9F018,s32 *) asm("sub_08097978");
extern void effect9F018(s32,s32,s32) asm("sub_08029CEC");

void sub_0809F018(u16 kind)
{
    struct Sprite9F018 sprite;
    u16 frame,tick;
    s16 screenX,screenY;
    s32 velocity[2];
    s32 inputKind;
    Vec9F018 pos;
    u32 count,remaining,countdown,hit;
    s32 *velocityPtr;
    Vec9F018 tgt;
    struct Packed9F018 *visual;
    struct Actor9F018 *actor;
    register struct Player9F018 *pl asm("sl");
    struct Draw9F018 *object;
    s32 zero,player;
    s16 dx,dy;
    u16 distance;
    u32 animation,serial;

    inputKind=kind;
    init9F018(&sprite,0x50008,variant9F018,-1,1);
    count=sub_08002164();
    if(inputKind!=0 && count==1) goto finish9F018;
    if(inputKind==2 && count<=2) goto finish9F018;
    if(inputKind==3 && count!=4) goto finish9F018;
    tick=0;frame=0;hit=0;remaining=420;countdown=270;
    sub_0805865C(0xB5);
    velocityPtr=velocity;
    pl=players9F018;
    do {
        if(countdown!=0) {
            countdown=(u16)(countdown-1);
            pos.x=actor9F018->x;
            pos.y=actor9F018->y;
            if(count==1) {
                if(inputKind==0) {
                    tgt.x=(s32)((u32)pl[0].x<<8)>>16;
                    tgt.y=((s32)((u32)playerY09F018<<8)>>16)-12;
                }
            } else {
                switch(inputKind) {
                case 0:
                    if(sub_080020F4()==0) {
                        tgt.x=(s32)((u32)pl[0].x<<8)>>16;
                        tgt.y=(s32)((u32)playerY09F018<<8)>>16;
                    } else {
                        visual=playerV09F018;
                        tgt.x=visual->x>>4;tgt.y=(u32)(visual->y<<20)>>20;
                    }
                    break;
                case 1:
                    if(sub_080020F4()==1) {
                        tgt.x=(s32)((u32)pl[1].x<<8)>>16;
                        tgt.y=(s32)((u32)playerY19F018<<8)>>16;
                    } else {
                        visual=playerV19F018;
                        tgt.x=visual->x>>4;tgt.y=(u32)(visual->y<<20)>>20;
                    }
                    break;
                case 2:
                    if(count>2) {
                        if(sub_080020F4()==2) {
                            tgt.x=(s32)((u32)pl[2].x<<8)>>16;
                            tgt.y=(s32)((u32)playerY29F018<<8)>>16;
                        } else {
                            visual=playerV29F018;
                            tgt.x=visual->x>>4;tgt.y=(u32)(visual->y<<20)>>20;
                        }
                    }
                    break;
                case 3:
                    if(count==4) {
                        if(sub_080020F4()==3) {
                            tgt.x=(s32)((u32)pl[3].x<<8)>>16;
                            tgt.y=(s32)((u32)playerY39F018<<8)>>16;
                        } else {
                            visual=playerV39F018;
                            tgt.x=visual->x>>4;tgt.y=(u32)(visual->y<<20)>>20;
                        }
                    }
                    break;
                }
            }
            /* Invalid kinds deliberately leave the incoming target values unspecified. */
            vector9F018(pos,tgt,velocityPtr);
        } else {
            pos.x=(s32)((u32)pos.x+(u32)velocity[0]*3);
            pos.y=(s32)((u32)pos.y+(u32)velocityPtr[1]*3);
        }
        if(sub_0800CCCC()==0 && sub_0800CC98()==0 && sub_0800CD8C()==0) {
            zero=sub_0800CD34();
            if(zero==0) {
                sprite.payload[0]=variant9F018;
                sub_08000AF0(variant9F018+16,sprite.palette+(actor9F018->paletteOffset<<5),1);
                anim9F018(&sprite,10,&frame,&tick,1);
                screen9F018((s32)((u32)pos.x<<8)>>16,(s32)((u32)pos.y<<8)>>16,&screenX,&screenY,zero,zero);
                if(countdown!=0) {
                    if(inputKind==0) {
                        if(countdown<=90 && (countdown&1))
                            object=draw9F018(screenX,160,8,frame,inputKind,sprite.payload,sprite.data,sprite.base);
                        else
                            object=draw9F018(screenX,160,0,frame,inputKind,sprite.payload,sprite.data,sprite.base);
                        object->y=screenY;
                    }
                } else {
                    object=draw9F018(screenX,160,8,frame,countdown,sprite.payload,sprite.data,sprite.base);
                    object->y=screenY;
                }
            }
        }
        if(countdown==1) sub_0805865C(0xB6);
        if(countdown==0) {
            dx=(pos.x>>8)-(players9F018[sub_080020F4()].x>>8);
            dy=(s16)((pos.y>>8)+12)-(playersY9F018[sub_080020F4()].y>>8);
            distance=Sqrt((u32)((s32)dx*dx)+(u32)((s32)dy*dy));
            if(hit!=0) goto next9F018;
            if(distance>11) goto next9F018;
            if(sub_0800CDF8()!=0) goto next9F018;
            if(sub_0800CCCC()!=0) goto next9F018;
            if(sub_0800CD8C()!=0) goto next9F018;
            if(actor9F018->state==11) goto next9F018;
            if(players9F018[sub_080020F4()].flags&0x2000) goto next9F018;
            if(players9F018[sub_080020F4()].active==0) goto next9F018;
            if(players9F018[sub_080020F4()].state==14) goto next9F018;
            if(players9F018[sub_080020F4()].state==11) goto next9F018;
            if(players9F018[sub_080020F4()].state==12) goto next9F018;
            if(players9F018[sub_080020F4()].tail.seen[actor9F018->id]==actor9F018->serial) goto next9F018;
            if(sub_0800CE30()==1) effect9F018(2,40,1);
            else effect9F018(2,12,1);
            pl[sub_080020F4()].motion=0xFFFE;
            player=sub_080020F4();actor=actor9F018;
            pl[player].tail.seen[actor->id]=actor->serial++;
            hit=1;
        }
next9F018:
        sub_080003F0();
        remaining=(u16)(remaining-1);
    } while(remaining!=0xFFFF);
finish9F018:
    *(u32 *)((u8 *)sub_0800048C()+8)=0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F018);
#endif
struct Actor9F4A8 {
    u16 id; u8 pad2[10]; u16 state; u8 padE[6];
    s32 x, y; u8 pad1C[0x34]; u32 serial;
    u8 pad54[0x286]; u16 paletteOffset;
};
struct Player9F4A8 {
    u8 pad0[0x20]; u16 state; u8 pad22[14]; u32 flags;
    u8 pad34[0x34]; u8 active; u8 pad69[0x1F];
    u16 health, pad8A; s32 x,y; u8 pad94[0x1C];
    u16 motion; u8 padB2[0x32]; u32 seen[26];
};
struct Sprite9F4A8 { u32 base,pad4,data,palette,pad10,pad14,pad18; u8 payload[24]; };
struct DrawObj9F4A8 { u32 pad0[3]; s32 y; };
extern struct Actor9F4A8 *actor9F4A8 asm("gUnk_03000310");
extern u16 variant9F4A8 asm("gUnk_03000314");
extern struct Player9F4A8 players9F4A8[] asm("gUnk_03003CE0");
extern u32 *task9F4A8 asm("gUnk_03000328");
extern void init9F4A8(void *,u32,u32,s32,s32) asm("sub_08065158");
extern void anim9F4A8(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void screen9F4A8(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern struct DrawObj9F4A8 *draw9F4A8(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void effect9F4A8(s32,s32,s32) asm("sub_08029CEC");

struct XY9F4A8 { s32 x, y; };
void sub_0809F4A8(void)
{
    struct Sprite9F4A8 sprite;
    struct XY9F4A8 pos[4];
    u8 hits[4];
    u16 frame, tick;
    s16 sx, sy;
    s32 amplitude;
    s32 animation;
    u16 timer;
    u16 elapsed;
    u8 angle;
    u32 state;
    u8 i;
    s32 z;
    s32 o;
    s16 dx, dy;
    u16 d;
    struct DrawObj9F4A8 *obj;

    init9F4A8(&sprite, 0x50008, variant9F4A8, -1, 1);
    tick = 0;
    frame = 0;
    angle = 0;
    amplitude = 0;
    elapsed = 0;
    timer = 240;
    i = 0;
    do {
        hits[i] = 0;
        i++;
    } while (i <= 3);
    state = 0;
    do {
        switch (state) {
        case 0:
            if (amplitude > 24) {
                amplitude = 24;
                state = 1;
            } else if (gUnk_03002344 & 1) {
                amplitude++;
            }
            animation = 16;
            break;
        case 1:
            if (elapsed++ > 30) {
                elapsed = 0;
                state = 2;
            }
            animation = 17;
            break;
        case 2:
            if (elapsed++ > 30) {
                elapsed = 0;
                state = 3;
            }
            animation = 18;
            break;
        case 3:
            if (elapsed++ > 30) {
                elapsed = 0;
                state = 4;
            }
            animation = 19;
            break;
        case 4:
            if (elapsed++ > 60) {
                elapsed = 0;
                state = 5;
            }
            animation = 20;
            break;
        case 5:
            timer--;
            if (gUnk_03002344 & 1)
                amplitude += 2;
            break;
        }
        i = 0;
        do {
            pos[i].x = actor9F4A8->x + gUnk_080B9704[(o = (angle + (i << 6)) % 255) + 0x40] * amplitude;
            pos[i].y = actor9F4A8->y - 0x2000 + gUnk_080B9704[o] * amplitude;
            if (gUnk_03002344 & 1)
                angle++;
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (z = sub_0800CD34()) == 0) {
                sprite.payload[0] = variant9F4A8;
                sub_08000AF0(variant9F4A8 + 0x10, (void *)(sprite.palette + (actor9F4A8->paletteOffset << 5)), 1);
                anim9F4A8(&sprite, animation, &frame, &tick, 1);
                screen9F4A8((s16)(pos[i].x >> 8), (s16)(pos[i].y >> 8), &sx, &sy, z, z);
                obj = draw9F4A8(sx, 0xA0, animation, frame, z, sprite.payload, sprite.data, sprite.base);
                obj->y = sy;
            }
            if (state == 5) {
                dx = (pos[i].x >> 8) - (players9F4A8[sub_080020F4()].x >> 8);
                { u32 pi = sub_080020F4(); s32 yy = (pos[i].y >> 8) + 12; dy = yy - (players9F4A8[pi].y >> 8); }
                d = Sqrt(dx * dx + dy * dy);
                if (hits[i] == 0 && d <= 11 && sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0
                    && actor9F4A8->state != 11
                    && !(players9F4A8[sub_080020F4()].flags & 0x2000) && players9F4A8[sub_080020F4()].active
                    && players9F4A8[sub_080020F4()].state != 14 && players9F4A8[sub_080020F4()].state != 11
                    && players9F4A8[sub_080020F4()].state != 12
                    && players9F4A8[sub_080020F4()].seen[actor9F4A8->id] != actor9F4A8->serial) {
                    if (sub_0800CE30() == 1)
                        effect9F4A8(4, 30, 1);
                    else
                        effect9F4A8(4, 10, 1);
                    players9F4A8[sub_080020F4()].motion = 0xFFFE;
                    players9F4A8[sub_080020F4()].seen[actor9F4A8->id] = actor9F4A8->serial++;
                    hits[i] = 1;
                }
            }
            i++;
        } while (i <= 3);
        sub_080003F0();
    } while (timer != 0);
    task9F4A8[2] = timer;
}
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
struct TaskPool105 { u32 next,state,priority,entry,sp,event,prev;u16 time,pad;u32 stack,onExit; };
extern struct TaskPool105 *volatile pool105 asm("gUnk_03000324");
void sub_0809F9F8(void)
{
    struct TaskPool105 *base;
    struct TaskPool105 *volatile *holder = &pool105;
    s32 remaining;
    u32 offset;
    u32 clear;
    base=sub_08001494(0xA0);
    *holder=base;
    if(base!=0) {
        clear=0;
        offset=0;
        remaining=3;
        do {
            ((struct TaskPool105 *)(offset+(u32)*holder))->priority=clear;
            offset+=0x28;
            remaining--;
        } while(remaining>=0);
    }
}
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
#ifdef NONMATCHING
/* Opaque actor/resource layouts are expressed only at audited ARM offsets. */
#define B9FB6C(p,o) (*(u8 *)((u8 *)(p)+(o)))
#define H9FB6C(p,o) (*(u16 *)((u8 *)(p)+(o)))
#define S9FB6C(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define W9FB6C(p,o) (*(u32 *)((u8 *)(p)+(o)))
#define I9FB6C(p,o) (*(s32 *)((u8 *)(p)+(o)))
#define P9FB6C(p,o) ((u16 *)((u8 *)(p)+(o)))
struct Sprite9FB6C {u32 base,p4,data,palette,p10,p14,p18;u8 payload[24];};
struct EntFB6 {
    u16 f0, f2; u8 p4[4]; u16 f8; u8 pA[2]; u16 fC; u8 pE[6];
    s32 x, y; u8 p1C[0x30]; u32 f4C; u32 f50; u8 p54[6]; u16 f5A; u16 f5C; u16 f5E;
    u8 p60[8]; u16 f68, f6A, f6C, f6E;
    u8 p70[0x164]; u16 f1D4, f1D6; u8 p1D8[0x24];
    u8 lo:4; u8 hi:4;
    u8 f1FD, f1FE, p1FF; u8 f200; u8 p201; u16 f202;
    u8 res[0xd4]; u16 f2D8, f2DA;
};
struct AuxFB6 { u8 p0[4]; s16 f4, f6; u8 p8[0xce]; u16 fD6; };
extern struct EntFB6 *actor9FB6C asm("gUnk_0300032C");
struct PlayerFB6 { u8 p0[0x30]; u32 flags; u8 p34[0x118]; };
extern struct PlayerFB6 playersFB6[] asm("gUnk_03003CE0");
extern u16 palette9FB6C asm("gUnk_03000330");
extern u32 active9FB6C asm("gUnk_030056FC");
extern u32 seen9FB6C[][83] asm("gUnk_03003DC4");
extern u8 players9FB6C[] asm("gUnk_03003CE0");
extern void *inventory9FB6C asm("gUnk_030034E0");
extern u8 config9FB6C[] asm("gUnk_084A3EB0");
extern void setup9FB6C(void *,void *,s32) asm("sub_0801623C");
extern void resourceInit9FB6C(void *) asm("sub_08019F60");
extern u32 allocate9FB6C(u32,u32) asm("sub_08016E04");
extern void init9FB6C(void *,u32,u32,s32,s32) asm("sub_08065158");
extern u32 anim9FB6C(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void screen9FB6C(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void draw9FB6C(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void update9FB6C(void *) asm("sub_0801C8F0");
extern void float9FB6C(void *,s32,s32) asm("sub_0801A120");
extern u32 dead9FB6C(void *) asm("sub_08019CE8");
extern s32 random9FB6C(void) asm("sub_0800086C");
extern void callback9FB6C(u32,u8 *) asm("sub_080A0FEC");
extern void reset9FB6C(void) asm("sub_0806849C");
extern void paletteFree9FB6C(u32) asm("sub_08067CA8");
extern void transition9FB6C(void *,void *,u32,u32,u32) asm("sub_080972B8");
extern s32 reward9FB6C(void *,void *) asm("sub_0801E46C");
extern void rise9FB6C(void *,s32) asm("sub_0806171C");
extern void rewardDone9FB6C(void *,s32) asm("sub_0801E4CC");
extern void soundStop9FB6C(s32) asm("sub_080586B4");
extern void sound9FB6C(s32) asm("sub_08058688");

/* Expanded independently in each end phase; no extra helper call is introduced.
 * Both post-animation and pre-draw global actor reloads are significant. */
#define END_RENDER9FB6C() do { \
    actor9FB6C->f6E=anim9FB6C(&sprite,actor9FB6C->f68,&actor9FB6C->f6A,&actor9FB6C->f6C,1); \
    screen9FB6C((s32)(actor9FB6C->x<<8)>>16,(s32)(actor9FB6C->y<<8)>>16,&sx,&sy,zero,zero); \
    sub_08000AF0(palette9FB6C+16,sprite.palette+(H9FB6C(resource,0xD6)<<5),1); \
    draw9FB6C(sx,sy,actor9FB6C->f68,actor9FB6C->f6A,2,sprite.payload,sprite.data,sprite.base); \
} while(0)

void sub_0809FB6C(void *input)
{
    struct Sprite9FB6C sprite;
    u8 callbackDone;
    s16 sx,sy;
    struct EntFB6 *actor,*fresh;
    u16 floatingTimer;
    s16 floatingOffset;
    u32 amplitudeX;
    u8 *resource;
    s32 lastDamage;
    u16 flash;
    u32 elapsed,rounds;
    s32 angle;
    u32 amplitudeY;
    s32 finished;
    u16 *animation,*frame,*tick;
    s16 player,entry,randomValue,remainder;
    u32 value,oldElapsed,animResult;
    u16 allocation;
    u8 priority;
    s32 zero,reward;
    u16 endTimer;

    actor=input;
    actor9FB6C=actor;
    resource=actor->res;
    setup9FB6C(actor,config9FB6C,0);
    resourceInit9FB6C(resource);
    sub_0801A0A4(actor);
    palette9FB6C=allocate9FB6C(actor->f2D8,actor->f2DA);
    while(palette9FB6C==0xFFFF) {
        actor->fC=11;
        if(sub_0800CB78()!=0 || sub_08056E90()!=0) {
            active9FB6C&=~(1U<<actor->f0);
            return;
        }
        sub_080003F0();
    }
    init9FB6C(&sprite,0x50009,palette9FB6C,-1,1);
    sprite.payload[0]=palette9FB6C;
    actor->f5C=actor->f1D6=S9FB6C(resource,6)*3;
    actor->f5E=actor->f1D4=(S9FB6C(resource,4)<<1)*10;
    actor->fC=0;
    floatingTimer=0;flash=0;
    actor->f6C=0; actor->f6A=0; actor->f68=0;
    actor->f1FD=3; actor->f1FE=3;
    sub_08097FE4();sub_08097A4C();sub_08097C4C();sub_080A0FA8();
    sub_080A1170();sub_080A10B8();sub_080A10FC();sub_08097D70();
    actor->f50=1;
    player=0;
    tick=&actor->f6C;frame=&actor->f6A;animation=&actor->f68;
    do {
        entry=0;
        do {
            seen9FB6C[player][entry]=0;
            entry=(s16)(entry+1);
        } while(entry<=4);
        player=(s16)(player+1);
    } while(player<=3);
    angle=0;elapsed=0;rounds=0;amplitudeX=0;amplitudeY=0;
    actor->lo=actor->f0;
    actor->f202=actor->f2;
    actor->f200=0xFF;
    actor->f8=(u16)elapsed;
    finished=0;
    sub_08067C18();
    while(sub_08067C08()==0) sub_080003F0();
    sub_08067BF8();reset9FB6C();
    while(sub_0800CB78()==0 && sub_08056E90()==0) {
        if(actor->fC==10 && flash==0) flash=8;
        if(sub_08058DB0()==0) {
            update9FB6C(actor);
            if(sub_08056F78()!=0) {
                if(amplitudeX<=47) amplitudeX=(u8)(amplitudeX+1); else amplitudeX=48;
                amplitudeY=amplitudeY<=5?(u8)(amplitudeY+1):6;
                actor->x=(u32)(s32)gUnk_080B9704[angle+64]*amplitudeX+0x8000U;
                actor->y=(u32)(s32)gUnk_080B9704[angle]*amplitudeY+0x5800U;
                angle=(u8)(angle+1);
            }
            switch((u32)actor->f1FD-1) {
            case 0:
                actor->fC=0;
                if(sub_08067C08()!=0) {
                    actor->f1FD=actor->f1FE;
                    sub_08067BF8();
                }
                break;
            case 1:
                actor->fC=0;
                actor->f200=sub_08068490();
                if(actor->f200!=0xFF) {
                    actor->f1FE=5;actor->f1FD=1;sub_08067C18();
                }
                break;
            case 2:
                if(sub_08056F78()!=0) {
                    sub_080A1094();sub_08097D64();
                    actor->f1FE=10;actor->f1FD=1;sub_08067C18();
                }
                break;
            case 3:
                { u16 st=1; actor->fC=st; } actor->f50++;
                if(rounds>1) {
                    rounds=0;actor->f1FE=7;actor->f1FD=1;
                    sub_08067C18();sub_080A11B4();
                } else {
                    callbackDone=0;
                    if(sub_08002204()==1) {
                        randomValue=random9FB6C();
                        actor->f200=({ s16 v = randomValue % 4; v < 0 ? -v : v; });
                        if(sub_08068450(actor->f200)==1) {
                            actor->f1FE=2;actor->f1FD=1;sub_08067C18();
                        }
                    } else {
                        actor->f200=0xFF;actor->f1FE=2;
                        actor->f1FD=1;sub_08067C18();
                    }
                }
                break;
            case 4:
                actor->fC=2;sub_0805865C(0xBD);
                callback9FB6C(actor->f200,&callbackDone);
                actor->f200=0xFF;actor->f1FE=6;
                actor->f1FD=1;sub_08067C18();
                break;
            case 5:
                actor->fC=2;
                if(callbackDone==1) {
                    sub_080A1058();rounds=(u8)(rounds+1);elapsed=0;
                    actor->f1FD=1;actor->f1FE=10;sub_08067C18();
                }
                break;
            case 6:
                actor->fC=2;elapsed=0;
                actor->f1FD=1;actor->f1FE=10;sub_08067C18();
                break;
            case 9:
                actor->fC=0;oldElapsed=elapsed;elapsed=(u16)(oldElapsed+1);
                if(oldElapsed>180) {
                    actor->f1FD=1;actor->f1FE=4;sub_08067C18();
                }
                break;
            }
        }
        if(sub_0800CD8C()==0) actor->f6E=anim9FB6C(&sprite,*animation,frame,tick,1);
        if(sub_08098004()&1) priority=(u8)sub_08097FF8();else priority=2;
        screen9FB6C((s32)(actor->x<<8)>>16,(s32)(actor->y<<8)>>16,&sx,&sy,0,0);
        if(flash!=0) {
            u32 old=flash;
            flash=old-1;
            if((old&1) && sub_0800CCCC()==0 && sub_0800CC98()==0 && sub_0800CD34()==0) {
                sub_08000AF0(palette9FB6C+16,sprite.palette+(H9FB6C(resource,0xD6)<<5),1);
                draw9FB6C(sx,sy,*animation,*frame,priority,sprite.payload,sprite.data,sprite.base);
            }
        } else if(sub_0800CCCC()==0 && sub_0800CC98()==0 && sub_0800CD34()==0) {
            sub_08000AF0(palette9FB6C+16,sprite.palette+(H9FB6C(resource,0xD6)<<5),1);
            draw9FB6C(sx,sy,*animation,*frame,priority,sprite.payload,sprite.data,sprite.base);
        }
        value=actor->f4C;
        if(value!=0 && (u32)lastDamage!=value) {
            lastDamage=value;floatingTimer=10;floatingOffset=0;
        }
        if(floatingTimer!=0) {
            if(sub_0800CC98()==0 && sub_0800CCCC()==0 && sub_0800CD34()==0)
                float9FB6C(actor,lastDamage,floatingOffset);
            if(floatingTimer&2) floatingOffset--;
            floatingTimer--;
        } else {lastDamage=0;actor->f4C=floatingTimer;}
        if((u16)dead9FB6C(actor)!=0) finished=1;
        sub_080003F0();
        if(finished!=0) break;
    }
    active9FB6C=0;
    sub_080A1058();sub_080A0FC4();sub_080A118C();sub_08097C6C();
    {
        struct EntFB6 *g=actor9FB6C;
        g->f6C=0;g->f6A=0;g->f68=0;
    }
    floatingOffset=0;floatingTimer=10;
    do {
        if(sub_0800CCCC()==0 && sub_0800CC98()==0) {
            zero=sub_0800CD34();
            if(zero==0) {
                END_RENDER9FB6C();
                float9FB6C(actor,lastDamage,floatingOffset);
            }
        }
        if(floatingTimer&2) floatingOffset--;
        sub_080003F0();floatingTimer--;
    } while(floatingTimer!=0xFFFF);
    sub_080683CC();paletteFree9FB6C(actor9FB6C->f2);
    sub_08068330((s32)0xDEADFACEU);
    while(sub_080682B8((s32)0xDEADFACEU)==0) {
        if(sub_0800CCCC()==0 && sub_0800CC98()==0 && sub_0800CD8C()==0) {
            zero=sub_0800CD34();if(zero==0) {END_RENDER9FB6C();}
        }
        sub_080003F0();
    }
    sub_08065E38((s32)0xDEADFACEU);
    while(sub_08058DB0()!=0) {
        if(sub_0800CCCC()==0 && sub_0800CC98()==0 && sub_0800CD8C()==0) {
            zero=sub_0800CD34();if(zero==0) {END_RENDER9FB6C();}
        }
        sub_080003F0();
    }
    soundStop9FB6C(0);sub_080A10AC();
    if(sub_0800CCCC()==0 && sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CD34()==0) {
        sound9FB6C(13);
        transition9FB6C(actor9FB6C,&sprite,H9FB6C(resource,0xD6),palette9FB6C,2);
    }
    if(!(playersFB6[sub_080020F4()].flags&0x2000) && actor9FB6C->f5A!=0) {
        reward=reward9FB6C(inventory9FB6C,resource);
        floatingOffset=0x1D;
        do {
            struct EntFB6 *g=actor9FB6C;
            g->y-=0x20;
            rise9FB6C(g,reward);
            sub_080003F0();
            floatingOffset--;
        } while(floatingOffset!=-1);
        rewardDone9FB6C(inventory9FB6C,reward);
    }
    floatingOffset=0x6F;
    do {
        sub_080003F0();
        floatingOffset--;
    } while(floatingOffset!=-1);
    sub_08067C18();while(sub_08067C08()==0) sub_080003F0();sub_08067BF8();
    while((u8)sub_080A1088()!=0) sub_080003F0();
    sub_08056E24();while(sub_08056E90()==0) sub_080003F0();
    sub_080A10D4();
}
#undef END_RENDER9FB6C
#undef B9FB6C
#undef H9FB6C
#undef S9FB6C
#undef W9FB6C
#undef I9FB6C
#undef P9FB6C
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809FB6C);
#endif
#ifdef NONMATCHING
struct Sprite105 {u32 base,pad4,data,palette,pad10,pad14,pad18;u8 payload[24];};
struct Actor105 {u16 index;u8 pad2[10];u16 state;u8 padE[0x42];u32 serial;u8 pad54[0x286];u16 paletteOffset;};
struct Player105 {u8 p0[0x20];u16 state;u8 p22[14];u32 flags;u8 p34[0x34];u8 active;u8 p69[0x1F];u16 health;u16 p8A;s32 x,y;u8 p94[0x1C];u16 motion;u8 pB2[0x32];u32 seen[26];};
struct Obj105 {u32 p0,p4,p8;s32 y;};
extern struct Actor105 *actor105 asm("gUnk_0300032C");
extern u16 variant105 asm("gUnk_03000330");
extern struct Player105 players105[] asm("gUnk_03003CE0");
extern void init105(void *,u32,u32,s32,s32) asm("sub_08065158");
extern u32 step105(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void move105(s32 *,s32) asm("sub_08096AF4");
extern void screen105(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern struct Obj105 *draw105(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern s32 damage105(void *,void *) asm("sub_0801ED8C");
extern void camera105(u32) asm("sub_080A107C");
extern void shake105(s32,u32) asm("sub_08097D3C");
extern void sub_08097D64(void);

extern void sub_080A104C(void);
extern void sub_080A1058(void);
void sub_080A05B4(u32 kind,void *done)
{
    struct Sprite105 spr;
    s32 pos[2];
    s32 targetX;
    s32 animDone,timer;
    u16 elapsed;
    s32 contact,started;
    volatile u16 animation;
    volatile u16 other;
    u16 frame,phase;
    s16 sx,sy,dx,dy;
    u8 shade;
    s32 i,damage;
    struct Actor105 *actor;
    struct Obj105 *object;
    kind=(u8)kind;
    init105(&spr,0x5000A,variant105,-1,1);
    spr.payload[0]=variant105;
    switch ((s32)kind) {
    case 0: animation=kind;pos[0]=0x2000;targetX=0x8000;break;
    case 1: animation=kind;targetX=pos[0]=0x2000;break;
    case 2: animation=kind;targetX=pos[0]=0xE000;break;
    case 3: animation=kind;pos[0]=0xE000;targetX=0x8000;break;
    default: animation=0;pos[0]=0x2000;targetX=0x8000;break;
    }
    other=animation+10;pos[1]=0x7600;
    animDone=0;phase=0;frame=(u16)animDone;elapsed=0;started=0;contact=0;timer=90;
    do {
        move105(pos,0);
        if (!sub_0800CD8C()) animDone=(u16)step105(&spr,animation,&frame,&phase,0);
        if (!sub_0800CCCC() && !sub_0800CD34() && !sub_0800CC98()) {
            sub_08000AF0(variant105+16,spr.palette+(actor105->paletteOffset<<5),1);
            screen105((pos[0]<<8)>>16,(pos[1]<<8)>>16,&sx,&sy,0,0);
            object=draw105(sx,0x9F,animation,frame,2,spr.payload,spr.data,spr.base);object->y=sy;
            if (frame) {
                shade=sub_0800BC44(pos[0]>>8,pos[1]>>8,0);
                object=draw105(sx,0x9F,other,(u16)(frame-1),shade,spr.payload,spr.data,spr.base);object->y=sy;
            }
        }
        if (!contact && frame==2 && phase==0) {
            sub_0805865C(0xC0);
            dx=(targetX>>8)-(players105[sub_080020F4()].x>>8);
            dy=0x88-(players105[sub_080020F4()].y>>8);
            if (Sqrt(dx*dx+dy*dy)<=0x27 && !sub_0800CDF8() && !sub_0800CD8C() && !sub_0800CCCC()
                && actor105->state!=11 && !(players105[sub_080020F4()].flags&0x2000)
                && players105[sub_080020F4()].active && players105[sub_080020F4()].state!=14
                && players105[sub_080020F4()].state!=11 && players105[sub_080020F4()].state!=12
                && players105[sub_080020F4()].seen[actor105->index]!=actor105->serial) {
                players105[sub_080020F4()].state=10;
                players105[sub_080020F4()].motion=0xFFFE;
                i=sub_080020F4(); actor=actor105;
                players105[i].health=damage105(actor,&players105[sub_080020F4()])+players105[i].health;
                players105[sub_080020F4()].seen[actor105->index]=actor105->serial++;
                contact=1;
            }
        }
        if (!started && frame==2 && phase==0) {
            started=1;camera105(20);
            if (kind<=1) shake105(-0x20,20);else shake105(0x20,20);
            sub_08097D64();sub_080A1070(4);sub_080A104C();sub_0805865C(0xBE);
        }
        if (animDone || elapsed++ > 0x3B) timer=(u16)(timer-1);
        sub_080003F0();
    } while (timer);
    *(u8 *)done=1;sub_080A1058();*(u32 *)((u8 *)sub_0800048C()+8)=0;
}

#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A05B4);
#endif
struct EntryA099C { u8 pad[8]; u16 unk8, unkA; u8 rest[20]; };
struct PlayerA099C { u8 pad[0x8C]; u32 x, y, xx, yy; u8 rest[0xB0]; };
extern struct PlayerA099C gPlayersA099C[] asm("gUnk_03003CE0");
extern u8 gFlagA099C asm("gUnk_03000338");
extern u8 gFlag2A099C asm("gUnk_03000339");
extern u8 gTimerA099C asm("gUnk_0300033A");
extern u8 gValueA099C asm("gUnk_0300033B");
extern void sub_08097D0C_A099C(s32, s32) asm("sub_08097D0C");
extern void sub_0809689C(void);
extern void sub_080968C0(void);
extern s32 sub_08096AF4(void *, s32);
extern void sub_08097D7C(u8, s8);
extern void sub_08097E28(void *, s32);
void sub_080A099C(void)
{
    s32 a;
    u8 i;
    struct EntryA099C *e;

    sub_0809689C();
    sub_08097D0C_A099C(0, 0x38);
    gUnk_03003170.width0 = 0x1E;
    gUnk_03003170.pad72 = 0x19;
    gUnk_03003170.width1 = gUnk_03003170.width0;
    gUnk_03003170.pad76 = gUnk_03003170.pad72;
    gFlagA099C = 0;
    for (;;) {
        sub_08097D7C(gValueA099C, gUnk_0300033C);
        if (gFlagA099C != 0) {
            if (gFlag2A099C == 0) {
                if (gTimerA099C != 0) {
                    gTimerA099C--;
                } else {
                    gTimerA099C = 0x14;
                    if (gValueA099C > 1)
                        gValueA099C--;
                    if (gUnk_0300033C < 0) {
                        if (gUnk_0300033C < -6)
                            gUnk_0300033C++;
                    } else if (gUnk_0300033C > 6) {
                        gUnk_0300033C--;
                    }
                }
            }
        } else {
            if (gTimerA099C != 0) {
                gTimerA099C--;
            } else {
                gTimerA099C = 0x14;
                if (gUnk_0300033C != 0) {
                    if (gUnk_0300033C < 0)
                        gUnk_0300033C++;
                    else
                        gUnk_0300033C--;
                }
            }
        }
        sub_08097D0C_A099C(0, (s16)(0x64 - gUnk_03003170.scrollY));
        sub_080968C0();
        a = sub_080020F4();
        gPlayersA099C[a].xx = gPlayersA099C[sub_080020F4()].x;
        a = sub_080020F4();
        gPlayersA099C[a].yy = gPlayersA099C[sub_080020F4()].y;
        a = (u16)sub_08096AF4(&gPlayersA099C[sub_080020F4()].x, 1);
        sub_08097E28(&gPlayersA099C[sub_080020F4()].x, (s16)a);
        e = gUnk_03005D58;
        for (i = 0; i <= 15; e++, i++) {
            if ((e->unkA & 1) && (e->unk8 >> 5) == 0)
                sub_08097E28(e, (s16)sub_08096AF4(e, 1));
        }
        sub_080003F0();
    }
}
#ifdef NONMATCHING
struct SubA0B44 { u8 pad0[0xD6]; u16 paletteOffset; };
struct ActorA0B44 {
    u16 id; u8 pad2[10]; u16 state; u8 padE[6];
    s32 x, y; u8 pad1C[0x34]; u32 serial;
    u8 pad54[0x1B0]; struct SubA0B44 sub;
};
struct PosA0B44 { u16 x, y; };
typedef struct { s32 x, y; } VecA0B44;
struct PlayerA0B44 {
    u8 pad0[0x20]; u16 state; u8 pad22[14]; u32 flags;
    u8 pad34[0x34]; u8 active; u8 pad69[0x23];
    s32 x, y; u8 pad94[0x1C];
    u16 motion; u8 padB2[0x32]; u32 seen[25]; struct PosA0B44 *pos;
};
struct SpriteA0B44 { u32 base, pad4, data, palette, pad10, pad14, pad18; u8 payload[24]; };
struct DrawA0B44 { u32 pad0[3]; s32 y; };
extern struct ActorA0B44 *actorA0B44 asm("gUnk_0300032C");
extern struct PlayerA0B44 playersA0B44[] asm("gUnk_03003CE0");
extern u16 variantA0B44 asm("gUnk_03000330");
extern void initA0B44(void *, u32, u32, s32, s32) asm("sub_08065158");
extern u32 animA0B44(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void screenA0B44(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern struct DrawA0B44 *drawA0B44(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
extern void vectorA0B44(VecA0B44, VecA0B44, s32 *) asm("sub_08097978");
extern void effectA0B44(s32, s32, s32) asm("sub_08029CEC");
extern s32 pickA0B44(s32) asm("sub_08096594");
extern void setupA0B44(s32) asm("sub_08097A38");

void sub_080A0B44(void)
{
    struct SpriteA0B44 sprite1, sprite2;
    u16 frame1, tick1, frame2, tick2;
    s16 screenX, screenY;
    s32 velocity[2];
    register struct ActorA0B44 **ref asm("sl");
    struct SubA0B44 *sub;
    struct PlayerA0B44 *target;
    VecA0B44 pos;
    VecA0B44 tgt;
    u16 done, count;
    u8 tick;
    u32 animArg;
    u8 timer, steps;
    u32 running, hit;
    s32 state;
    u8 anim;
    s32 zero, player;
    u16 *palette;
    struct DrawA0B44 *object;
    struct ActorA0B44 *actor;
    s16 dx, dy;
    s32 distance;
    u32 serial;

    ref = &actorA0B44;
    sub = &(*ref)->sub;
    initA0B44(&sprite1, 0x5000A, variantA0B44, -1, 1);
    initA0B44(&sprite2, 0x5000A, variantA0B44, -1, 1);
    sprite1.payload[0] = variantA0B44;
    sprite2.payload[0] = variantA0B44;
    target = &playersA0B44[pickA0B44(0)];
    setupA0B44(0);
    tick1 = 0;
    tick2 = 0;
    frame1 = 0;
    frame2 = 0;
    hit = 0;
    anim = 7;
    tick = 0;
    state = 0;
    running = 1;
    do {
        switch (state) {
        case 0:
            if (sub_0800CD8C() == 0)
                done = animA0B44(&sprite1, 4, &frame1, &tick1, state);
            if (done != 0) {
                anim = 7;
                tick = 0;
                animArg = 0;
                state = 1;
            }
            break;
        case 1:
            if (tick++ > 4) {
                tick = 0;
                if (--anim == 4) {
                    anim = 8;
                    animArg = 1;
                    timer = 60;
                    steps = 0;
                    count = 0;
                    state = 2;
                    sub_0805865C(0xBF);
                }
            }
            break;
        case 2:
            if (timer++ > 16) {
                timer = 0;
                if (steps <= 16) {
                    steps++;
                    tgt.x = target->pos->x >> 4;
                    tgt.y = ((u32)(target->pos->y << 20) >> 20) - 12;
                    vectorA0B44(pos, tgt, velocity);
                }
            }
            pos.x += velocity[0];
            pos.y += velocity[1];
            if (count++ > 480)
                running = 0;
            break;
        }
        if (sub_0800CD8C() == 0)
            animA0B44(&sprite2, anim, &frame2, &tick2, animArg);
        if (sub_0800CCCC() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0 && (zero = sub_0800CC98()) == 0) {
            palette = &sub->paletteOffset;
            if (state == 0 || state == 1) {
                sub_08000AF0(variantA0B44 + 16, sprite1.palette + (*palette << 5), 1);
                {
                    struct ActorA0B44 *a = *ref;
                    screenA0B44((s32)((u32)a->x << 8) >> 16, (s32)((u32)a->y << 8) >> 16, &screenX, &screenY, zero, zero);
                }
                object = drawA0B44(screenX, 0x9F, 4, frame1, 2, sprite1.payload, sprite1.data, sprite1.base);
                object->y = screenY;
                {
                    struct ActorA0B44 *a = *ref;
                    pos.x = a->x + 0x1000;
                    pos.y = a->y - 0x3000;
                }
            }
            sub_08000AF0(variantA0B44 + 16, sprite2.palette + (*palette << 5), 1);
            screenA0B44((s32)((u32)pos.x << 8) >> 16, (s32)((u32)pos.y << 8) >> 16, &screenX, &screenY, zero, zero);
            object = drawA0B44(screenX, 0x9F, anim, frame2, 1, sprite2.payload, sprite2.data, sprite2.base);
            object->y = screenY;
        }
        dx = (pos.x >> 8) - (playersA0B44[sub_080020F4()].x >> 8);
        dy = (s16)((pos.y >> 8) + 12) - (playersA0B44[sub_080020F4()].y >> 8);
        distance = Sqrt(dx * dx + dy * dy);
        if (hit != 0) goto next;
        if (distance > 15) goto next;
        if (sub_0800CDF8() != 0) goto next;
        if (sub_0800CD8C() != 0) goto next;
        if (sub_0800CCCC() != 0) goto next;
        if (actorA0B44->state == 11) goto next;
        if (playersA0B44[sub_080020F4()].flags & 0x2000) goto next;
        if (playersA0B44[sub_080020F4()].active == 0) goto next;
        if (playersA0B44[sub_080020F4()].state == 14) goto next;
        if (playersA0B44[sub_080020F4()].state == 11) goto next;
        if (playersA0B44[sub_080020F4()].state == 12) goto next;
        if (playersA0B44[sub_080020F4()].seen[actorA0B44->id] == actorA0B44->serial) goto next;
        if (sub_0800CE30() == 1)
            effectA0B44(5, 60, 7);
        else
            effectA0B44(5, 15, 5);
        playersA0B44[sub_080020F4()].motion = 0xFFFE;
        {
            u32 *seen;
            player = sub_080020F4();
            actor = *ref;
            seen = playersA0B44[player].seen;
            seen[actor->id] = actor->serial++;
        }
        hit = 1;
    next:
        sub_080003F0();
    } while (running != 0);
    *(u32 *)((u8 *)sub_0800048C() + 8) = 0;
    sub_080003F0();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A0B44);
#endif
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
#define SA12(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define IA12(p,o) (*(s32 *)((u8 *)(p)+(o)))
#define PA12(p,o) ((u16 *)((u8 *)(p)+(o)))
extern struct ActorD878 *actorA12 asm("gUnk_03000348");
extern u16 paletteA12 asm("gUnk_0300034C");
extern u8 configA12[] asm("gUnk_084A5CA8");
extern u8 chaseA12(void *, void *, s32, s32) asm("sub_08097A74");
extern u16 runeA12(s32) asm("sub_08096594");
extern void sub_080A1DA8(void);
extern void sub_080A2720(u8 mode, u16 arg);

#define RENDER_A12() { \
    s32 zero; \
    playersD878[sub_080020F4()].flags |= 1; \
    if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) { \
        zero = sub_0800CD34(); \
        if (zero == 0) { \
            sub_08000AF0(paletteA12 + 0x10, (u8 *)sprite->palette + (*pal << 5), 1); \
            priority = sub_0800BC44(actorA12->x >> 8, actorA12->y >> 8, 0); \
            actorA12->f6E = animD878(sprite, actorA12->anim, &actorA12->frame, &actorA12->tick, 1); \
            screenD878((actorA12->x << 8) >> 16, (actorA12->y << 8) >> 16, &sx, &sy, zero, zero); \
            drawD878(sx, sy, actorA12->anim, actorA12->frame, priority, sprite->payload, sprite->data, sprite->base); \
        } \
    } \
    sub_080003F0(); \
}

void sub_080A1208(void *input)
{
    struct SpriteD878 spriteA;
    struct SpriteD878 spriteB;
    s16 sx;
    s16 sy;
    u8 *resource;
    s32 lastDamage;
    s32 mode;
    u16 lastAnim;
    s32 animFlag;
    u16 flash;
    u16 floatingTimer;
    u16 chase;
    u16 elapsed;
    s16 floatingOffset;
    u16 *pal;
    u16 *frame;
    u16 *tick;
    s32 finished;
    struct ActorD878 *actor;
    u16 *animation;
    struct SpriteD878 *sprite;
    u8 priority;
    s16 player;
    s16 entry;
    s32 value;
    s32 reward;
    s32 dmg;
    u32 old;
    u16 alloc;
    u8 kind;

    actor = input;
    actorA12 = actor;
    resource = actor->res;
    setupD878(actor, configA12, 0);
    resourceInitD878(resource);
    sub_0801A0A4(actor);
    alloc = paletteA12 = allocateD878(actor->f2D8, actor->f2DA);
    if (alloc == 0xFFFF) {
        do {
            actor->state = 11;
            if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
                activeD878 &= ~(1 << actor->f0);
                return;
            }
            sub_080003F0();
        } while (paletteA12 == 0xFFFF);
    }
    initD878(&spriteA, 0x5000B, paletteA12, -1, 1);
    initD878(&spriteB, 0x5000C, paletteA12, -1, 1);
    actor->tick = 0;
    actor->frame = 0;
    actor->anim = 0;
    actor->f5C = actor->f1D6 = SA12(resource, 6) * 3;
    value = SA12(resource, 4) * 2;
    actor->f5E = actor->f1D4 = (value * 4 + value) * 2;
    actor->state = 0;
    mode = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    floatingTimer = 0;
    actor->phase = 2;
    actor->next = 2;
    actor->f50 = 1;
    player = 0;
    tick = &actor->tick;
    frame = &actor->frame;
    animation = &actor->anim;
    pal = PA12(resource, 0xD6);
    do {
        entry = 0;
        do {
            *(u32 *)((u8 *)seenD878 + entry * 4 + player * 0x14C) = 0;
            entry++;
        } while (entry <= 4);
        player++;
    } while (player <= 3);
    sub_08097FE4();
    sub_08097A4C();
    sub_080A26D0();
    actor->lo = *(u8 *)actor;
    actor->f202 = actor->f2;
    finished = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (actor->state == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            updateD878(actor);
            switch (actor->phase) {
            case 1:
                actor->state = 0;
                if (sub_08067C08() != 0) {
                    actor->phase = actor->next;
                    sub_08067BF8();
                }
                break;
            case 2:
                mode = 0;
                if (sub_08056F78() != 0) {
                    chase = 0;
                    actor->state = 1;
                    actor->next = 3;
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            case 3:
                mode = 1;
                actor->state = mode;
                actor->hi = runeA12(0);
                if (chaseA12(actor, &playersD878[actor->hi], 0xC0, 0x28)) {
                    if (chase++ <= 0xB4)
                        break;
                    actor->next = 4;
                    actor->phase = 1;
                    sub_08067C18();
                    sub_08097A38(0);
                    elapsed = 0;
                } else {
                    actor->next = 4;
                    actor->phase = 1;
                    sub_08067C18();
                    sub_08097A38(0);
                    elapsed = 0;
                }
                break;
            case 4:
                mode = 2;
                actor->state = mode;
                if (elapsed == 0) {
                    sub_080A1DA8();
                    kind = sub_0800CE30() == 1;
                    sub_080A2720(kind, 0);
                    sub_080A2720(kind, 1);
                    sub_080A2720(kind, 2);
                    sub_080A2720(kind, 3);
                    sub_080A2720(kind, 4);
                    sub_080A2720(kind, 5);
                    sub_080A2720(kind, 6);
                    sub_080A2720(kind, 7);
                }
                if (elapsed++ > 0x5A) {
                    actor->next = 6;
                    actor->phase = 1;
                    sub_08067C18();
                    elapsed = 0;
                }
                break;
            case 6:
                mode = 0;
                actor->state = mode;
                if (elapsed++ > 0x78) {
                    chase = 0;
                    actor->phase = 1;
                    actor->next = 3;
                    sub_08067C18();
                }
                break;
            }
        }
        switch (mode) {
        case 0:
            sprite = &spriteA;
            *animation = actor->f8;
            animFlag = 1;
            break;
        case 1:
            sprite = &spriteA;
            *animation = actor->f8 + 8;
            animFlag = 1;
            break;
        case 2:
            sprite = &spriteB;
            *animation = actor->f8;
            animFlag = 0;
            break;
        }
        if (lastAnim != actorA12->anim) {
            lastAnim = actorA12->anim;
            actorA12->tick = 0;
            actorA12->frame = 0;
        }
        sprite->payload[0] = paletteA12;
        sub_08000AF0(paletteA12 + 0x10, (u8 *)sprite->palette + (*pal << 5), 1);
        if (sub_08098004() & 1)
            priority = sub_08097FF8();
        else
            priority = sub_0800BC44(actor->x >> 8, actor->y >> 8, 0);
        if (sub_0800CD8C() == 0)
            actor->f6E = animD878(sprite, *animation, frame, tick, animFlag);
        screenD878((actor->x << 8) >> 16, (actor->y << 8) >> 16, &sx, &sy, 0, 0);
        if (flash != 0) {
            old = flash;
            flash = old - 1;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                drawD878(sx, sy, *animation, *frame, priority, sprite->payload, sprite->data, sprite->base);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawD878(sx, sy, *animation, *frame, priority, sprite->payload, sprite->data, sprite->base);
        }
        dmg = actor->damage;
        if (dmg != 0 && lastDamage != dmg) {
            lastDamage = dmg;
            floatingTimer = 10;
            floatingOffset = 0;
        }
        if (floatingTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                floatD878(actor, lastDamage, floatingOffset);
            if (floatingTimer & 2)
                floatingOffset--;
            floatingTimer--;
        } else {
            lastDamage = 0;
            actor->damage = floatingTimer;
        }
        if (deadD878(actor) != 0)
            finished = 1;
        sub_080003F0();
        if (finished != 0)
            break;
    }
    activeD878 = 0;
    playersD878[sub_080020F4()].flags |= 1;
    sub_080A1F88();
    sprite = &spriteA;
    sprite->payload[0] = paletteA12;
    actorA12->tick = 0;
    actorA12->frame = 0;
    actorA12->anim = 0;
    floatingOffset = 0;
    floatingTimer = 10;
    do {
        s32 zero;
        playersD878[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            zero = sub_0800CD34();
            if (zero == 0) {
                sub_08000AF0(paletteA12 + 0x10, (u8 *)sprite->palette + (*pal << 5), 1);
                priority = sub_0800BC44(actorA12->x >> 8, actorA12->y >> 8, 0);
                actorA12->f6E = animD878(sprite, actorA12->anim, &actorA12->frame, &actorA12->tick, 1);
                screenD878((actorA12->x << 8) >> 16, (actorA12->y << 8) >> 16, &sx, &sy, zero, zero);
                drawD878(sx, sy, actorA12->anim, actorA12->frame, priority, sprite->payload, sprite->data, sprite->base);
                floatD878(actor, lastDamage, floatingOffset);
            }
        }
        if (floatingTimer & 2)
            floatingOffset--;
        sub_080003F0();
        floatingTimer--;
    } while (floatingTimer != 0xFFFF);
    sub_080683CC();
    paletteFreeD878(actorA12->f2);
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        RENDER_A12();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0)
        RENDER_A12();
    soundStopD878(0);
    playersD878[sub_080020F4()].flags |= 1;
    IA12(stateD878, 0x720) = windowD878(1, 0xE, 0x19, 2, 0x3C, 0x140061);
    while (windowDoneD878(IA12(stateD878, 0x720)) == 0)
        RENDER_A12();
    playersD878[sub_080020F4()].flags &= ~1;
    soundD878(0xD);
    transitionD878(actorA12, sprite, *pal, paletteA12);
    if (!(playersD878[sub_080020F4()].flags & 0x2000) && actorA12->f5A != 0) {
        reward = rewardD878(inventoryD878, resource);
        floatingOffset = 0x1D;
        do {
            struct ActorD878 *g = actorA12;
            g->y -= 0x20;
            riseD878(g, reward);
            sub_080003F0();
            floatingOffset--;
        } while (floatingOffset != -1);
        rewardDoneD878(inventoryD878, reward);
    }
    floatingOffset = 0x6F;
    do {
        sub_080003F0();
        floatingOffset--;
    } while (floatingOffset != -1);
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    sub_08056E24();
}
#undef RENDER_A12
#undef SA12
#undef IA12
#undef PA12
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
struct ActorA1FF4 { u16 id; u8 p2[6]; s16 facing; u16 pA, state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; s32 serial; };
extern struct ActorA1FF4 *gActorA1FF4 asm("gUnk_03000348");
struct AnimA1FF4 { u32 f0, f4, f8, fC; u8 p10[12]; u8 attr[24]; };
struct PlayerA1FF4 {
    u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags;
    u8 p34[0x34]; u8 active; u8 p69[0x23]; s32 x, y;
    u8 p94[0x1C]; u16 effect; u8 pB2[0x32];
    u32 serial[25]; u8 pad[0x14C-0xE4-100];
};
extern struct PlayerA1FF4 gPlayersA1FF4[] asm("gUnk_03003CE0");
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
    struct { s32 x, y; } base;
    s32 distance, count, phase, hit;
    s32 x, y;
    u16 rawDx, radius;
    s16 dx, dy;
    u8 timer;
    aux = (u8 *)gActorA1FF4 + 0x204;
    sub_08065158(&anim, 0x5000C, gUnk_0300034C, -1, 1);
    anim.attr[0] = gUnk_0300034C;
    base.x = gActorA1FF4->x;
    base.y = gActorA1FF4->y;
    base.x += gUnk_080B9704[gUnk_085186DC[gActorA1FF4->facing] + 0x40] << 5;
    base.y += gUnk_080B9704[gUnk_085186DC[gActorA1FF4->facing]] << 5;
    hit = 0;
    distance = 0;
    phase = (u8)(direction << 5);
    count = 0x168;
    timer = 0x5A;
    do {
        if (timer != 0) {
            timer--;
            x = base.x;
            y = base.y;
            if (timer == 0) sub_0805865C(0xC3);
        } else {
            x = (u32)(distance * gUnk_080B9704[phase + 0x40]) >> 8;
            y = (u32)(distance * gUnk_080B9704[phase]) >> 8;
            x += base.x;
            y += base.y;
            distance += 0x200;
            rawDx = (x >> 8) - (gPlayersA1FF4[sub_080020F4()].x >> 8);
            dx = rawDx;
            dy = (y >> 8) - ((gPlayersA1FF4[sub_080020F4()].y >> 8) - 12);
            radius = Sqrt(dx * dx + dy * dy);
            if (hit == 0 && radius <= 23U &&
                sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0 &&
                gActorA1FF4->state != 11 &&
                !(gPlayersA1FF4[sub_080020F4()].flags & 0x2000) &&
                gPlayersA1FF4[sub_080020F4()].active != 0 &&
                gPlayersA1FF4[sub_080020F4()].state != 14 &&
                gPlayersA1FF4[sub_080020F4()].state != 11 &&
                gPlayersA1FF4[sub_080020F4()].state != 12 &&
                *(u32 *)((u8 *)&gPlayersA1FF4[sub_080020F4()] + 0xE4 + gActorA1FF4->id * 4) != gActorA1FF4->serial) {
                if (sub_0800CE30() == 1) sub_08029CEC(0, 60, 2);
                else sub_08029CEC(0, 30, 2);
                gPlayersA1FF4[sub_080020F4()].effect = 0xFFFE;
                *(u32 *)((u8 *)&gPlayersA1FF4[sub_080020F4()] + 0xE4 + gActorA1FF4->id * 4) = gActorA1FF4->serial++;
                hit = 1;
            }
        }
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            s32 zero = sub_0800CD34();
            if (zero == 0) {
            sub_08000AF0(gUnk_0300034C + 0x10, anim.fC + (*(u16 *)(aux + 0xD6) << 5), 1);
            sub_0800BC08((x << 8) >> 16, (y << 8) >> 16, &screenX, &screenY, zero, zero);
            sub_08065370(&anim, 8, (s32)&tile, (s32)&extra, 1);
            sub_08007870(screenX, screenY, 8, tile, zero, anim.attr, anim.f8, anim.f0);
            }
        }
        sub_080003F0();
        count = (u16)(count - 1);
    } while (count != 0xFFFF);
    *(u32 *)((u8 *)sub_0800048C() + 8) = 0;
}
struct ActorT107A230C { u16 id; u8 p2[6]; s16 facing; u16 pA, state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; s32 serial; };
extern struct ActorT107A230C *gActorT107A230C asm("gUnk_03000348");
struct AnimT107A230C { u32 f0, f4, f8, fC; u8 p10[12]; u8 attr[24]; };
extern void t107CCall08065158(void *, u32, u16, s32, s32) asm("sub_08065158");
extern void t107CCall0800BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 t107CCall08007870(s16, s16, s32, u16, s32, void *, u32, u32) asm("sub_08007870");
extern void t107CCall08029CEC(s32, s32, s32) asm("sub_08029CEC");
/* ABI view: target coordinates use r2/r3; the output pointer follows on stack. */
struct TargetXYT107 { s32 x, y; };
extern void t107VelocityPair(struct TargetXYT107,struct TargetXYT107,s32 *) asm("sub_08097978");
struct Nib107 { u8 lo:4, hi:4; };
struct PlayerT107C {
    u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags;
    u8 p34[0x34]; u8 active; u8 p69[0x23]; s32 x, y;
    u8 p94[0x1C]; u16 effect; u8 pB2[0x32];
    u32 serial[25]; u16 *data;
};
extern struct PlayerT107C t107PlayersC[] asm("gUnk_03003CE0");
void sub_080A230C(void *unused, u16 delay)
{
    struct AnimT107A230C anim;
    u16 tile, extra;
    s16 screenX, screenY;
    s32 velocity[2];
    u8 *aux;
    struct PlayerT107C *target;
    struct TargetXYT107 targetPoint;
    u32 count;
    s32 active, timer, hit;
    struct TargetXYT107 pos;
    s16 dx, dy;
    u16 i;
    s32 radius;
    u8 tick, previous;
    {
        sub_0805865C(0xC2);
        i = 0;
        while ((s32)i < delay * 20) { sub_080003F0(); i++; }
        aux = (u8 *)gActorT107A230C + 0x204;
        t107CCall08065158(&anim, 0x5000C, gUnk_0300034C, -1, 1);
        ((struct Nib107 *)((u8 *)gActorT107A230C + 0x1FC))->hi = sub_08096594(0);
        target = &t107PlayersC[*((u8 *)gActorT107A230C + 0x1FC) >> 4];
        sub_08097A38(0);
        { s32 z; u16 *tq = &tile, *ep = &extra; z = 0; *ep = 0; tile = z; } count = 0; tick = 0; hit = 0;
        pos.x = gActorT107A230C->x; pos.y = gActorT107A230C->y;
        pos.x += gUnk_080B9704[gUnk_085186DC[gActorT107A230C->facing] + 0x40] << 5;
        pos.y += gUnk_080B9704[gUnk_085186DC[gActorT107A230C->facing]] << 5;
        timer = 120; active = 1;
    }
    do {
        if (timer != 0) timer = (u8)(timer - 1);
        else {
            if (count <= 5) {
                previous = tick++;
                if (previous > 20) {
                    u16 *data;
                    tick = 0;
                    data = target->data;
                    targetPoint.x = data[0] >> 4;
                    targetPoint.y = (((u32)data[1] << 20) >> 20) - 12;
                    t107VelocityPair(pos, targetPoint, velocity);
                    count = (u8)(count + 1);
                }
            } else {
                previous = tick++;
                if (previous > 180) active = 0;
            }
            pos.x += velocity[0] + (velocity[0] >> 1);
            pos.y += velocity[1] + (velocity[1] >> 1);
            dx = (pos.x >> 8) - (t107PlayersC[sub_080020F4()].x >> 8);
            { u32 pi = sub_080020F4(); s32 sy = (pos.y >> 8) + 12; dy = sy - (t107PlayersC[pi].y >> 8); }
            radius = (u16)Sqrt(dx * dx + dy * dy);
            if (hit == 0 && radius <= 23 &&
                sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0 &&
                gActorT107A230C->state != 11 &&
                !(t107PlayersC[sub_080020F4()].flags & 0x2000) &&
                t107PlayersC[sub_080020F4()].active != 0 &&
                t107PlayersC[sub_080020F4()].state != 14 &&
                t107PlayersC[sub_080020F4()].state != 11 &&
                t107PlayersC[sub_080020F4()].state != 12 &&
                t107PlayersC[sub_080020F4()].serial[gActorT107A230C->id] != gActorT107A230C->serial) {
                if (sub_0800CE30() == 1) t107CCall08029CEC(0, 60, 2);
                else t107CCall08029CEC(0, 30, 2);
                t107PlayersC[sub_080020F4()].effect = 0xFFFE;
                t107PlayersC[sub_080020F4()].serial[gActorT107A230C->id] = gActorT107A230C->serial++;
                hit = 1;
            }
        }
        if (sub_0800CCCC() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            s32 zero;
            zero = sub_0800CC98();
            if (zero == 0) {
                sub_08065370(&anim, 8, (s32)&tile, (s32)&extra, 1);
                sub_08000AF0(gUnk_0300034C + 0x10, anim.fC + (*(u16 *)(aux + 0xD6) << 5), 1);
                anim.attr[0] = gUnk_0300034C;
                t107CCall0800BC08((pos.x << 8) >> 16, (pos.y << 8) >> 16, &screenX, &screenY, zero, zero);
                t107CCall08007870(screenX, screenY, 8, tile, zero, anim.attr, anim.f8, anim.f0);
            }
        }
        sub_080003F0();
    } while (active != 0);
    sub_0805867C(0xC2);
    *(u32 *)((u8 *)sub_0800048C() + 8) = active;
    sub_080003F0();
}
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
extern void t107Callback0(void) asm("sub_080A1FF4");
extern void t107Callback1(void) asm("sub_080A230C");
struct T107Task { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct T107Task *t107Pool0 asm("gUnk_03000350");
extern struct T107Task *t107Pool1 asm("gUnk_03000354");
void sub_080A2720(u8 mode, u16 arg) {
    struct T107Task *t;
    u8 i;
    u32 limit;
    if (mode == 0) t = t107Pool0;
    else t = t107Pool1;
    limit = 8;
    i = 0;
    goto check;
next:
    i++;
    t++;
check:
    if (i >= limit) return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0) goto next;
    t->f20 = sub_08001494(0x400);
    if (t->f20 == 0) return;
    switch (mode) {
    case 0: t->fC = (u32)t107Callback0; break;
    case 1: t->fC = (u32)t107Callback1; break;
    }
    t->f10 = t->f20 + 0x3FC;
    t->f24 = 0;
    t->f8 = 0x46;
    sub_08000274((u32)t, mode, arg);
}


struct EntA27 {
    u16 f0, f2; u8 p4[8]; u16 fC; u8 pE[6];
    s32 x, y; u8 p1C[0x30]; s32 f4C; u8 p50[10]; u16 f5A; s16 f5C; s16 f5E;
    u8 p60[8]; u16 f68, f6A, f6C, f6E;
    u8 p70[0x164]; s16 f1D4, f1D6; u8 p1D8[0x24];
    u8 lo:4; u8 hi:4;
    u8 f1FD, f1FE, p1FF; u8 f200; u8 p201; u16 f202;
    u8 p204[0x2a]; s8 f22E, f22F; u8 p230[0xa8]; u16 f2D8, f2DA;
};
struct AuxA27 { u8 p0[4]; s16 f4, f6; u8 p8[0xce]; u16 fD6; };
struct AnimA27 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 attr[24]; };
struct PlayerA27 { u8 p0[0x30]; u32 flags; u8 p34[0x118]; };
struct GlobA27 { u8 p0[0x720]; s32 f720; };
extern struct EntA27 *selfA27 asm("gUnk_03000364");
extern struct EntA27 *otherA27 asm("gUnk_03000368");
extern struct EntA27 *summA27[] asm("gUnk_03000370");
extern struct AnimA27 animsA27[] asm("gUnk_03000380");
extern u16 tileA27 asm("gUnk_030003E8");
extern u8 flagA27 asm("gUnk_030003EA");
extern u8 activeA27[] asm("gUnk_030003EC");
extern u8 modeA27 asm("gUnk_030003EF");
extern u8 patA27[] asm("gUnk_08518768");
extern u32 maskA27 asm("gUnk_030056FC");
extern struct PlayerA27 playersA27[] asm("gUnk_03003CE0");
extern struct GlobA27 *globA27 asm("gUnk_03005CF4");
extern void *heapA27 asm("gUnk_030034E0");
extern u8 srcA27[] asm("gUnk_084A6DB8");
extern void setupA27(void *, void *, s32) asm("sub_0801623C");
extern void s19F60A27(void *) asm("sub_08019F60");
extern void s1C8F0A27(void *) asm("sub_0801C8F0");
extern void s1A120A27(void *, s32, s16) asm("sub_0801A120");
extern s32 s16E04A27(u16, u16) asm("sub_08016E04");
extern void initA27(void *, u32, u16, s32, s32) asm("sub_08065158");
extern u16 animA27(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern s32 *drawA27(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
extern void coordsA27(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void yieldA27(void) asm("sub_080003F0");
extern s32 s67C08A27(void) asm("sub_08067C08");
extern s32 s67C18A27(void) asm("sub_08067C18");
extern s32 s67BF8A27(void) asm("sub_08067BF8");
extern void s6849CA27(s32) asm("sub_0806849C");
extern u8 s68490A27(void) asm("sub_08068490");
extern s32 s68450A27(u8) asm("sub_08068450");
extern s16 s0086CA27(void) asm("sub_0800086C");
extern void s97A74A27(void *, void *, s32, s32) asm("sub_08097A74");
extern void s4520A27(void) asm("sub_080A4520");
extern u8 s96594A27(u8) asm("sub_08096594");
extern void s49ECA27(void) asm("sub_080A49EC");
extern void s4A7CA27(void) asm("sub_080A4A7C");
extern void s4C24A27(void) asm("sub_080A4C24");
extern void s4CA8A27(u8, u8, u8, u8) asm("sub_080A4CA8");
extern void s4C74A27(u8, u8) asm("sub_080A4C74");
extern void s4CDCA27(u8, u8) asm("sub_080A4CDC");
extern void s4CF0A27(s8) asm("sub_080A4CF0");
extern void s4CFCA27(s8) asm("sub_080A4CFC");
extern void s97FE4A27(void) asm("sub_08097FE4");
extern void s97A4CA27(void) asm("sub_08097A4C");
extern void s586B4A27(s32) asm("sub_080586B4");
extern void s58688A27(s32) asm("sub_08058688");
extern s32 s5DF38A27(u32, u32, u32, u32, s32, u32) asm("sub_0805DF38");
extern s32 s5EEFCA27(s32) asm("sub_0805EEFC");
extern void s970CCA27(void *, void *, u16, u16) asm("sub_080970CC");
extern s32 s1E46CA27(void *, void *) asm("sub_0801E46C");
extern void s1E4CCA27(void *, s32) asm("sub_0801E4CC");
extern void s6171CA27(void *, s32) asm("sub_0806171C");

#define TAIL_A27()                                                                                         {                                                                                                          s32 z;                                                                                                 playersA27[sub_080020F4()].flags |= 1;                                                                 if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (z = sub_0800CD34()) == 0) {             sub_08000AF0(tileA27 + 0x10, (void *)(animsA27[0].fC + *pD6 * 32), 1);                                pal = sub_0800BC44(selfA27->x >> 8, selfA27->y >> 8, 0);                                               selfA27->f6E = animA27(&animsA27[0], selfA27->f68, &selfA27->f6A, &selfA27->f6C, 1);                   coordsA27((s16)(selfA27->x >> 8), (s16)(selfA27->y >> 8), &sx, &sy, z, z);                             drawA27(sx, sy, selfA27->f68, selfA27->f6A, pal, animsA27[0].attr, animsA27[0].f8, animsA27[0].f0);         }                                                                                                      yieldA27();                                                                                        }

void sub_080A27B8(struct EntA27 *self)
{
    s16 sx, sy;
    struct AuxA27 *aux;
    struct PlayerA27 *target;
    u16 blink;
    u16 flash;
    u16 wait8;
    u16 wait4;
    u16 *pD6;
    s16 shake;
    u8 pal;
    u16 t;
    struct EntA27 *e;
    s16 i;
    s32 h;
    s32 *p;
    u16 st;

    selfA27 = self;
    aux = (struct AuxA27 *)((u8 *)self + 0x204);
    setupA27(self, srcA27, 0);
    s19F60A27(aux);
    sub_0801A0B0(selfA27);
    {
        struct EntA27 *e0 = selfA27;
        e0->x = 0xF200;
        e0->y = 0x8500;
    }
    tileA27 = s16E04A27(self->f2D8, self->f2DA);
    while (tileA27 == 0xFFFF) {
        selfA27->fC = 11;
        if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
            maskA27 &= ~(1 << selfA27->f0);
            return;
        }
        yieldA27();
    }
    initA27(&animsA27[0], 0x5000D, tileA27, -1, 1);
    initA27(&animsA27[1], 0x5000E, tileA27, -1, 1);
    e = selfA27;
    e->f5C = e->f1D6 = aux->f6 * 3;
    e->f5E = e->f1D4 = (aux->f4 << 1) * 10;
    e->fC = 0;
    blink = 0;
    flash = 0;
    e->f1FD = 3;
    selfA27->f1FE = 3;
    s49ECA27();
    s4A7CA27();
    sub_080A4AE4();
    sub_080A4B48(0);
    sub_080A4B48(1);
    sub_080A4B48(2);
    sub_080A4BE0();
    s4C24A27();
    s4C74A27(0, 0);
    s4CA8A27(0, 7, 1, 2);
    s4CA8A27(1, 8, 4, 6);
    s4CA8A27(2, 0, 0, 0);
    s4CDCA27(11, 3);
    s97FE4A27();
    s97A4CA27();
    selfA27->f5C = 999;
    selfA27->f22E = 0x40;
    selfA27->f22F = 0x30;
    selfA27->lo = selfA27->f0;
    selfA27->f202 = selfA27->f2;
    selfA27->f200 = 0xFF;
    s67C18A27();
    pD6 = &aux->fD6;
    while (s67C08A27() == 0)
        yieldA27();
    s6849CA27(s67BF8A27());
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (self->fC == 10) {
            if (blink == 0)
                blink = 8;
            selfA27->f5C = 999;
            selfA27->f4C = 0;
            flash = 10;
            shake = 0;
        }
        if (sub_08058DB0() == 0) {
            s1C8F0A27(selfA27);
            switch (selfA27->f1FD) {
            case 1:
                selfA27->fC = 0;
                if (s67C08A27()) {
                    selfA27->f1FD = selfA27->f1FE;
                    s67BF8A27();
                }
                break;
            case 2:
                selfA27->fC = 0;
                selfA27->f200 = s68490A27();
                if (selfA27->f200 != 0xFF) {
                    selfA27->f1FE = 7;
                    selfA27->f1FD = 1;
                    s67C18A27();
                }
                break;
            case 3:
                if (sub_08056F78()) {
                    selfA27->f1FE = 8;
                    selfA27->f1FD = 1;
                    s67C18A27();
                    wait8 = 0;
                }
                break;
            case 5:
                st = 0; selfA27->fC = st;
                s4C74A27(0xFF, 0);
                s4CA8A27(0, 0, 0, 0);
                s4CA8A27(1, 0, 0, 0);
                s4CA8A27(2, 0, 0, 0);
                s4CDCA27(0, 0);
                s4CF0A27(1);
                s4CFCA27(1);
                wait4 = 0;
                selfA27->hi = s96594A27(0);
                target = &playersA27[*((u8 *)selfA27 + 0x1FC) >> 4];
                sub_08097A38(0);
                selfA27->f1FE = 4;
                selfA27->f1FD = 1;
                s67C18A27();
                sub_0805865C(0xDF);
                break;
            case 4:
                st = 2; selfA27->fC = st;
                s97A74A27(selfA27, target, 0x100, 0x20);
                s4520A27();
                if (wait4 > 120) {
                    sub_0805867C(0xDF);
                    if (sub_08002204() == 1) {
                        s16 m = s0086CA27(); selfA27->f200 = ({ s16 v = m % 5; v < 0 ? -v : v; });
                        if (s68450A27(selfA27->f200) == 1) {
                            selfA27->f1FE = 2;
                            selfA27->f1FD = 1;
                            s67C18A27();
                        }
                    } else {
                        selfA27->f200 = 0xFF;
                        selfA27->f1FE = 2;
                        selfA27->f1FD = 1;
                        s67C18A27();
                    }
                } else {
                    wait4++;
                }
                break;
            case 7:
                st = 0; selfA27->fC = st;
                if (selfA27->f200 == 0xFF)
                    selfA27->f200 = 2;
                s4C74A27(patA27[selfA27->f200 * 15], (&patA27[2])[selfA27->f200 * 15]);
                s4CA8A27(0, (&patA27[3])[selfA27->f200 * 15], (&patA27[4])[selfA27->f200 * 15], (&patA27[5])[selfA27->f200 * 15]);
                s4CA8A27(1, (&patA27[6])[selfA27->f200 * 15], (&patA27[7])[selfA27->f200 * 15], (&patA27[8])[selfA27->f200 * 15]);
                s4CA8A27(2, (&patA27[9])[selfA27->f200 * 15], (&patA27[10])[selfA27->f200 * 15], (&patA27[11])[selfA27->f200 * 15]);
                s4CDCA27((&patA27[12])[selfA27->f200 * 15], (&patA27[13])[selfA27->f200 * 15]);
                s4CF0A27(0);
                sub_0805865C(0xE1);
                flagA27 = 1;
                for (i = 0; i <= 2; i++) {
                    if (summA27[i]->f5C != 0) {
                        sub_0805865C(0xE0);
                        activeA27[i] = 1;
                    }
                }
                selfA27->f200 = 0xFF;
                selfA27->f1FE = 6;
                selfA27->f1FD = 1;
                s67C18A27();
                break;
            case 6:
                st = 0; selfA27->fC = st;
                if (otherA27->f5C == 0)
                    flagA27 = 0;
                for (i = 0; i <= 2; i++) {
                    if (summA27[i]->f5C == 0)
                        activeA27[i] = 0;
                }
                if (flagA27 == 0 && activeA27[0] == 0 && activeA27[1] == 0 && activeA27[2] == 0) {
                    s4CFCA27(0);
                    selfA27->f1FE = 8;
                    selfA27->f1FD = 1;
                    s67C18A27();
                }
                break;
            case 8:
                st = 1; selfA27->fC = st;
                if (wait8 > 180) {
                    wait8 = 0;
                    selfA27->f1FE = 5;
                    selfA27->f1FD = 1;
                    s67C18A27();
                } else {
                    wait8++;
                }
                break;
            }
        }
        animsA27[modeA27].attr[0] = tileA27;
        sub_08000AF0(tileA27 + 0x10, (void *)(animsA27[modeA27].fC + *pD6 * 32), 1);
        if (sub_0800CD8C() == 0)
            selfA27->f6E = animA27(&animsA27[modeA27], 0, &selfA27->f6A, &selfA27->f6C, 1);
        if (sub_08098004() & 1)
            pal = sub_08097FF8();
        else
            pal = sub_0800BC44(selfA27->x >> 8, selfA27->y >> 8, 0);
        coordsA27((s16)(selfA27->x >> 8), (s16)(selfA27->y >> 8), &sx, &sy, 0, 0);
        if (blink != 0) {
            if ((blink-- & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                drawA27(sx, sy, 0, selfA27->f6A, pal, animsA27[modeA27].attr, animsA27[modeA27].f8, animsA27[modeA27].f0);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            drawA27(sx, sy, 0, selfA27->f6A, pal, animsA27[modeA27].attr, animsA27[modeA27].f8, animsA27[modeA27].f0);
        }
        if (modeA27 != 0 && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            animsA27[1].attr[0] = tileA27;
            sub_08000AF0(tileA27 + 0x10, (void *)(animsA27[1].fC + *pD6 * 32), 1);
            p = drawA27(sx, sy - 1, 0x11, 0, pal, animsA27[1].attr, animsA27[1].f8, animsA27[1].f0);
            p[3] = sy;
        }
        if (flash != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                s1A120A27(selfA27, 0x8000, shake);
            if (flash-- & 2)
                shake--;
        }
        yieldA27();
        if (otherA27->f5C == 0)
            break;
    }
    maskA27 = 0;
    sub_0805867C(0xDF);
    playersA27[sub_080020F4()].flags |= 1;
    initA27(&animsA27[0], 0x5000D, tileA27, -1, 1);
    animsA27[0].attr[0] = tileA27;
    {
        struct EntA27 *e9 = selfA27;
        e9->f6C = 0;
        e9->f6A = 0;
        e9->f68 = 0;
    }
    s4CF0A27(0);
    sub_080683CC();
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        TAIL_A27()
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0)
        TAIL_A27()
    s586B4A27(0);
    playersA27[sub_080020F4()].flags |= 1;
    globA27->f720 = s5DF38A27(1, 0xE, 0x19, 2, 0x3C, 0x00140065);
    while (s5EEFCA27(globA27->f720) == 0)
        TAIL_A27()
    playersA27[sub_080020F4()].flags &= ~1;
    sub_080A4BFC();
    sub_080A4B10();
    sub_080A4A54();
    s58688A27(0xD);
    s970CCA27(selfA27, animsA27, *pD6, tileA27);
    if (!(playersA27[sub_080020F4()].flags & 0x2000) && otherA27->f5A != 0) {
        h = s1E46CA27(heapA27, aux);
        shake = 0x1D;
        do {
            selfA27->y -= 0x20;
            s6171CA27(selfA27, h);
            yieldA27();
        } while (--shake != -1);
        s1E4CCA27(heapA27, h);
    }
    shake = 0x6F;
    do
        yieldA27();
    while (--shake != -1);
    s67C18A27();
    while (s67C08A27() == 0)
        yieldA27();
    s67BF8A27();
    sub_08056E24();
}
struct EntA35 {
    u16 f0, f2; u8 p4[8]; u16 fC; u8 pE[6];
    s32 x, y; u8 p1C[0x2c]; u16 f48; u8 p4A[2]; s32 f4C; s32 f50;
    u8 p54[8]; s16 f5C; s16 f5E; u8 p60[10]; u16 f6A, f6C, f6E;
    u8 p70[0x164]; s16 f1D4, f1D6; u8 p1D8[0x24];
    u8 lo:4; u8 hi:4;
    u8 f1FD, f1FE, p1FF; u8 f200; u8 p201; u16 f202;
    u8 p204[0x2a]; s8 f22E, f22F;
};
struct AuxA35 { u8 p0[4]; s16 f4, f6; u8 p8[0xce]; u16 fD6; };
struct AnimA35 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 attr[24]; };
struct TileA35 { u8 p[0x90]; u16 f90; };
extern struct EntA35 *mainA35 asm("gUnk_03000364");
extern struct EntA35 *entA35 asm("gUnk_03000368");
extern struct AnimA35 animsA35[] asm("gUnk_03000380");
extern u16 tileA35 asm("gUnk_030003E8");
extern u8 flagA35 asm("gUnk_030003EA");
extern u8 modeA35 asm("gUnk_030003F0");
extern u8 slotA35 asm("gUnk_030003F1");
extern u8 nextA35 asm("gUnk_030003F2");
struct OffA35 { s16 x, y; };
extern struct OffA35 offsA35[] asm("gUnk_08518754");
extern u8 *poolA35 asm("gUnk_030056F4");
extern u32 maskA35 asm("gUnk_030056FC");
extern struct TileA35 tilesA35 asm("gUnk_03003170");
extern u8 srcA35[] asm("gUnk_084A6DB8");
extern void setupA35(void *, void *, s32) asm("sub_0801623C");
extern void s19F60A35(void *) asm("sub_08019F60");
extern void s1C8F0A35(void *) asm("sub_0801C8F0");
extern u16 s19CE8A35(void *) asm("sub_08019CE8");
extern void s1A120A35(void *, s32, s16) asm("sub_0801A120");
extern void s67CA8A35(u16) asm("sub_08067CA8");
extern u16 animA35(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern s32 *drawA35(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
extern void coordsA35(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void yieldA35(void) asm("sub_080003F0");

void t107MainD(void) asm("sub_080A35D0");
void t107MainD(void)
{
    s16 sx, sy;
    struct AuxA35 *aux;
    s32 last;
    u16 blink;
    u16 flash;
    s16 shake;
    struct EntA35 *ent;
    struct EntA35 *e2;
    struct EntA35 *e3;
    u8 frame;
    u8 pal;
    s32 *p;

    maskA35 |= 2;
    entA35 = (struct EntA35 *)(poolA35 + 0x2E0);
    sub_0801A0A4(entA35);
    setupA35(entA35, srcA35, 1);
    aux = (struct AuxA35 *)((u8 *)entA35 + 0x204);
    s19F60A35(aux);
    ent = entA35;
    ent->f5C = ent->f1D6 = aux->f6 * 3;
    ent->f5E = ent->f1D4 = (aux->f4 << 1) * 10;
    ent->f48 = tilesA35.f90;
    ent->f50 = mainA35->f50;
    ent->fC = 0;
    ent->f0 = 1;
    ent->f2 = 5;
    ent->lo = ent->f0;
    entA35->f202 = entA35->f2;
    entA35->f200 = 0xFF;
    entA35->f1FD = 3;
    entA35->f1FE = 3;
    entA35->fC = 0;
    blink = 0;
    flash = 0;
    for (;;) {
        if (entA35->fC == 10 && blink == 0)
            blink = 8;
        if (sub_08058DB0() == 0) {
            s1C8F0A35(entA35);
            switch (entA35->f1FD) {
            case 1:
                entA35->fC = 0;
                if (sub_080682B8(entA35->f0)) {
                    entA35->f1FD = entA35->f1FE;
                    sub_08065E38(entA35->f0);
                }
                break;
            case 3:
                if (sub_08056F78()) {
                    entA35->f1FE = 8;
                    entA35->f1FD = 1;
                    sub_08068330(entA35->f0);
                }
                break;
            case 8:
                entA35->fC = 0;
                break;
            }
        }
        if (slotA35 == 0xFF) {
            u16 r = s19CE8A35(entA35);
            if (r != 0) {
                slotA35 = nextA35;
                break;
            }
            sub_0801A0B0(entA35);
            entA35->f22E = r;
            entA35->f22F = r;
            yieldA35();
            continue;
        }
        if (modeA35 == 1)
            frame = (slotA35 << 1) + 1;
        else
            frame = slotA35 + 1;
        e2 = entA35;
        e2->x = mainA35->x;
        e2->y = mainA35->y;
        e2->x += offsA35[slotA35].x;
        e2->y += (&offsA35[0].y)[slotA35 * 2];
        if (slotA35 == 0) {
            e2->f22E = 0x20;
            entA35->f22F = 0x28;
        } else {
            e2->f22E = 0x20;
            entA35->f22F = 0x10;
        }
        if (maskA35 & 0x1C)
            sub_0801A0B0(entA35);
        else
            sub_0801A0A4(entA35);
        animsA35[modeA35].attr[0] = tileA35;
        sub_08000AF0(tileA35 + 0x10, (void *)(animsA35[modeA35].fC + aux->fD6 * 32), 1);
        if (sub_0800CD8C() == 0)
            entA35->f6E = animA35(&animsA35[modeA35], frame, &entA35->f6A, &entA35->f6C, 0);
        if (sub_08098004() & 1)
            pal = sub_08097FF8();
        else
            pal = sub_0800BC44(entA35->x >> 8, entA35->y >> 8, 0);
        if (blink != 0) {
            if ((blink-- & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
                coordsA35((s16)(mainA35->x >> 8), (s16)(mainA35->y >> 8), &sx, &sy, 0, 0);
                p = drawA35(sx, sy + 1, frame, entA35->f6A, pal, animsA35[modeA35].attr, animsA35[modeA35].f8, animsA35[modeA35].f0);
                coordsA35((s16)(entA35->x >> 8), (s16)(entA35->y >> 8), &sx, &sy, 0, 0);
                p[2] = sx;
                p[3] = sy;
            }
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            coordsA35((s16)(mainA35->x >> 8), (s16)(mainA35->y >> 8), &sx, &sy, 0, 0);
            p = drawA35(sx, sy + 1, frame, entA35->f6A, pal, animsA35[modeA35].attr, animsA35[modeA35].f8, animsA35[modeA35].f0);
            coordsA35((s16)(entA35->x >> 8), (s16)(entA35->y >> 8), &sx, &sy, 0, 0);
            p[2] = sx;
            p[3] = sy;
        }
        if (entA35->f4C != 0 && last != entA35->f4C) {
            last = entA35->f4C;
            flash = 10;
            shake = 0;
        }
        if (flash != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                s1A120A35(entA35, last, shake);
            if (flash & 2)
                shake--;
            flash--;
        } else {
            last = 0;
            entA35->f4C = 0;
        }
        if (flagA35 == 1 && entA35->f6E != 0)
            flagA35 = 0;
        if (s19CE8A35(entA35) != 0) {
            yieldA35();
            break;
        }
        yieldA35();
    }
out:
    s67CA8A35(entA35->f2);
    flagA35 = 0;
    frame = slotA35 + 1;
    e3 = entA35;
    e3->f6C = 0;
    e3->f6A = 0;
    modeA35 = 0;
    e3->x = mainA35->x;
    e3->y = mainA35->y;
    e3->x += offsA35[slotA35].x;
    e3->y += (&offsA35[0].y)[slotA35 * 2];
    for (;;) {
        animsA35[modeA35].attr[0] = tileA35;
        sub_08000AF0(tileA35 + 0x10, (void *)(animsA35[modeA35].fC + aux->fD6 * 32), 1);
        if (sub_0800CD8C() == 0)
            entA35->f6E = animA35(&animsA35[modeA35], frame, &entA35->f6A, &entA35->f6C, 0);
        if (sub_08098004() & 1)
            pal = sub_08097FF8();
        else
            pal = sub_0800BC44(entA35->x >> 8, entA35->y >> 8, 0);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            coordsA35((s16)(mainA35->x >> 8), (s16)(mainA35->y >> 8), &sx, &sy, 0, 0);
            p = drawA35(sx, sy + 1, frame, entA35->f6A, pal, animsA35[modeA35].attr, animsA35[modeA35].f8, animsA35[modeA35].f0);
            coordsA35((s16)(entA35->x >> 8), (s16)(entA35->y >> 8), &sx, &sy, 0, 0);
            p[2] = sx;
            p[3] = sy;
        }
        yieldA35();
    }
}
