#include "global.h"

void sub_0809A834(void);
void sub_08096FA0(void);

extern s32 gUnk_030002EC;
extern s32 gUnk_030002F0;

extern s32 gUnk_030002D8;

extern s32 gUnk_030002E4;

extern s32 gUnk_030002F4;
extern s32 gUnk_03000308;

extern s32 *gUnk_03000300[];
extern s32 gUnk_030056FC;

void sub_08097E28(void *arg0, u16 arg1) {
    s32 temp_r1;
    s32 temp_r2;


    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CD34() == 0)) {
        temp_r1 = (s32) ((gUnk_080B9704[gUnk_030002A0.b0D] * (s16) arg1) << 8) >> 0x10;
        temp_r2 = 0x7000 - temp_r1;
        if (temp_r2 > (s32) M2C_FIELD(arg0, s32 *, 4)) {
            M2C_FIELD(arg0, s32 *, 4) = temp_r2;
        }
        temp_r2 = 0xA000 - temp_r1;
        if (temp_r2 < (s32) M2C_FIELD(arg0, s32 *, 4)) {
            M2C_FIELD(arg0, s32 *, 4) = temp_r2;
        }
        if ((s32) M2C_FIELD(arg0, s32 *, 0) <= 0x8FF) {
            M2C_FIELD(arg0, s32 *, 0) = 0x900;
        }
        if ((s32) M2C_FIELD(arg0, s32 *, 0) > 0xE000) {
            M2C_FIELD(arg0, s32 *, 0) = 0xE000;
        }
    }
}


void sub_08097EB0(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    gUnk_030002B8 = arg3;
    gUnk_030002B6 = arg2;
    gUnk_030002BA = 0;
    gUnk_030002B0 = arg0;
    gUnk_030002B4 = arg1;
}
s16 sub_08097EE4(void) {
    return gUnk_030002BA;
}
extern s32 sub_08096BA8(s32, s32, s32, s32);
s32 sub_08097EF0(s32 arg0, s32 arg1) {
    register u32 temp_r4 asm("r4");
    register s32 mask asm("r2");
    register u32 phase asm("r1");
    s32 temp_r0;
    register s32 var_r2 asm("r2");
    register s32 fraction asm("r3");
    s32 var_r7;
    register s32 current asm("r0");

    var_r7 = 0;
    phase = (u16)gUnk_030002BA;
    current = gUnk_030002BA;
    mask=0xFFF;
    if (current > mask) {
        var_r7 = 2;
    }
    temp_r4 = mask & phase;
    gUnk_030002BA = temp_r4;
    temp_r0 = (((s32) ((u16) gUnk_030002B4 << 0x10) >> 0x11) << 0xC) * gUnk_030002BA;
    fraction = (temp_r0 >> 0xC) & mask;
    var_r2 = (temp_r0 >> 0x18) * 2;
    if (arg0 == 1) {
        register s32 len asm("r1") = gUnk_030002B4;
        register s32 next asm("r0") = var_r2 + 1;
        asm volatile("" : "+r" (next));
        var_r2 = len - next;
    }
    current = (u16)gUnk_030002B8;

    current = temp_r4 + current;

    gUnk_030002BA = current;
    if (sub_08096BA8(var_r2, fraction, arg0, arg1) == 1) {
        var_r7 = 1;
    }
    return var_r7;
}
struct Color100 { u32 r:5; u32 g:5; u32 b:5; u32 flag:1; };
void sub_08097F70(s32 dst, s32 src)
{
    u8 i = 0;
    s32 out = dst;
    do {
        struct Color100 *p = (struct Color100 *)src;
        struct Color100 color;
        struct Color100 *d = (struct Color100 *)out;
        src += 2;
        out += 2;
        color = *p;
        d->r = color.r;
        d->g = color.g;
        d->b = color.b;
        i++;
    } while (i<=15);
}
void sub_08097FE4(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD = 0;
}
u8 sub_08097FF8(void) {
    return gUnk_030002BC;
}
u8 sub_08098004(void) {
    return gUnk_030002BD;
}
void sub_08098010(u8 arg0) {
    gUnk_030002BC = arg0;
    gUnk_030002BD |= 1;
}
void sub_08098028(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD &= 0xFE;
}
void sub_08098044(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_030002C0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_08098060(void) {
    if (sub_08000470(gUnk_030002C0) != 0) {
        sub_080003A8(gUnk_030002C0);
    }
    sub_08001538(gUnk_030002C0);
    gUnk_030002C0 = 0;
}
extern u32 gTaskArgs100[2] asm("gUnk_030002C8");
void sub_08096FA0(void);
void sub_08098088(u32 arg0,u32 arg1,u32 mode)
{
    register u32 b asm("r5")=arg1;
    register u32 a asm("r4")=arg0;
    u32 m;
    register s32 *taskp asm("r6");
    void *buffer;
    register u8 *task asm("r1");
    asm volatile("" : "+r" (b), "+r" (a), "+r" (mode));
    m=(u8)mode;
    taskp=&gUnk_030002C0;
    asm volatile("" : "+r" (taskp));
    if(sub_08000470(*taskp)==0 && M2C_FIELD((void *)*taskp,u32 *,8)!=0) return;
    gTaskArgs100[0]=a;
    gTaskArgs100[1]=b;
    buffer=sub_08001494(0x400);
    task=(u8 *)*taskp;
    asm volatile("" : "+r" (task));
    M2C_FIELD(task,void **,0x20)=buffer;
    if(buffer==0) { M2C_FIELD(task,u32 *,8)=0; return; }
    M2C_FIELD(task,void **,0x10)=(u8 *)buffer+0x3FC;
    M2C_FIELD(task,u32 *,0xC)=(u32)sub_08096FA0;
    M2C_FIELD(task,u32 *,0x24)=0;
    M2C_FIELD(task,u32 *,8)=0x44;
    sub_08000274(task,m);
}
s32 sub_080980F0(void)
{
    if (M2C_FIELD((void *)gUnk_030002C0, u32 *, 8))
        return 0;
    else
        return 1;
}
#ifdef NONMATCHING
extern u8 gStateClear100 asm("gUnk_03003DC4");
extern u8 gPlayerPtr100 asm("gUnk_03003E28");
extern u8 gImageData100 asm("gUnk_0849F878");
extern void sub_08007870(s16,s16,u16,u16,u32,void *,s32,s32);
extern void sub_0800BC08(s32,s32,s16 *,s16 *,u32,u32);
extern void sub_0801623C(void *,void *,s32);
extern u16 sub_08016E04(u16,u16);
extern u32 queryRegistration100(u16,u16) asm("sub_08016E04");
extern s32 sub_08019CE8(void *);
extern void sub_08019F60(void *);
extern void sub_0801A120(void *,s32,s16);
extern void sub_0801C8F0(void *);
extern void sub_08058688(s32);
extern void sub_080586B4(s32);
extern void sub_0806171C(void *,s32);
extern void sub_08065158(void *,s32,u16,s32,s32);
extern void sub_080656B8(s32);
extern void sub_08067CA8(u16);
extern u8 sub_08096594(s32);
extern void sub_080970CC(void *,void *,u16,u16);
extern u8 sub_08098F2C(void);
extern void sub_0809975C(void);
extern void sub_080997C0(u16,u16);
#endif
#ifdef NONMATCHING
struct Sprite108 {u32 base,p4,data,palette,p10,p14,p18;u8 payload[24];};
struct Player108 {u8 p0[0x30];u32 flags;u8 p34[0x118];};
struct Spr108 {u8 *sprite;u8 p4[0x148];};
struct Actor108 {
    u16 f0; u16 f2; u8 p4[4]; u16 f8; u8 pA[2]; u16 state; u8 pE[6];
    s32 x; s32 y; u8 p1C[0x30]; s32 damage; s32 f50; u8 p54[6]; u16 f5A; u16 f5C; u16 f5E;
    u8 p60[8]; u16 anim; u16 frame; u16 tick; u16 f6E; u8 p70[0x164]; u16 f1D4; u16 f1D6;
    u8 p1D8[0x24]; u8 lo:4; u8 hi:4; u8 phase; u8 next; u8 p1FF; u8 f200; u8 p201; u16 f202;
    u8 res[0xD4]; u16 f2D8; u16 f2DA;
};
#define S108(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define I108(p,o) (*(s32 *)((u8 *)(p)+(o)))
#define P108(p,o) ((u16 *)((u8 *)(p)+(o)))
extern struct Actor108 *actor108 asm("gUnk_030002D0");
extern u16 palette108 asm("gUnk_030002D4");
extern u32 active108 asm("gUnk_030056FC");
extern u32 seen108[] asm("gUnk_03003DC4");
extern struct Player108 players108[] asm("gUnk_03003CE0");
extern struct Spr108 sprites108[] asm("gUnk_03003E28");
extern void *inventory108 asm("gUnk_030034E0");
extern u8 *state108 asm("gUnk_03005CF4");
extern u8 config108[] asm("gUnk_0849F878");
extern void setup108(void *,void *,s32) asm("sub_0801623C");
extern void resourceInit108(void *) asm("sub_08019F60");
extern u32 allocate108(u16,u16) asm("sub_08016E04");
extern void init108(void *,u32,u32,s32,s32) asm("sub_08065158");
extern u16 anim108(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void screen108(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void draw108(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void update108(void *) asm("sub_0801C8F0");
extern void float108(void *,s32,s32) asm("sub_0801A120");
extern u16 dead108(void *) asm("sub_08019CE8");
extern void paletteFree108(u32) asm("sub_08067CA8");
extern void transition108(void *,void *,u32,u32) asm("sub_080970CC");
extern s32 reward108(void *,void *) asm("sub_0801E46C");
extern void rise108(void *,s32) asm("sub_0806171C");
extern void rewardDone108(void *,s32) asm("sub_0801E4CC");
extern void soundStop108(s32) asm("sub_080586B4");
extern void sound108(s32) asm("sub_08058688");
extern s32 window108(s32,s32,s32,s32,s32,s32) asm("sub_0805DF38");
extern s32 windowDone108(s32) asm("sub_0805EEFC");
extern u8 chase108(void *, void *, s32, s32) asm("sub_08097A74");
extern u32 rune108(s32) asm("sub_08096594");
extern void bgm108(s32) asm("sub_080656B8");
extern u8 countdown108(void) asm("sub_08098F2C");
extern void reset108(void) asm("sub_0809975C");
extern void shot108(u32, u32) asm("sub_080997C0");
extern u16 wander108(s32, s32 *, u32, s32, s32) asm("sub_08013E90");

#define RENDER_108() { \
    s32 zero; \
    players108[sub_080020F4()].flags |= 1; \
    if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) { \
        zero = sub_0800CD34(); \
        if (zero == 0) { \
            sub_08000AF0(palette108 + 0x10, (u8 *)sprite->palette + (*P108(resource, 0xD6) << 5), 1); \
            priority = sub_0800BC44(actor108->x >> 8, actor108->y >> 8, 0); \
            actor108->f6E = anim108(sprite, actor108->anim, &actor108->frame, &actor108->tick, 1); \
            screen108((actor108->x << 8) >> 16, (actor108->y << 8) >> 16, &sx, &sy, zero, zero); \
            draw108(sx, sy, actor108->anim, actor108->frame, priority, sprite->payload, sprite->data, sprite->base); \
        } \
    } \
    sub_080003F0(); \
}

void sub_08098108(void *input)
{
    struct Sprite108 spriteA;
    struct Sprite108 spriteB;
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
    s32 limit1;
    s16 limit2;
    s16 shots;
    s16 wait2;
    s16 floatingOffset;
    u8 target;
    u8 timer;
    s32 toggle;
    s32 finished;
    u8 countdown;
    struct Actor108 *actor;
    struct Sprite108 *sprite;
    u8 priority;
    s16 player;
    s16 entry;
    s16 i;
    u32 n;
    s32 value;
    s32 reward;
    s32 dmg;
    u32 old;
    u16 alloc;

    actor = input;
    actor108 = actor;
    resource = actor->res;
    setup108(actor, config108, 0);
    resourceInit108(resource);
    sub_0801A0A4(actor);
    alloc = palette108 = allocate108(actor->f2D8, actor->f2DA);
    if (alloc == 0xFFFF) {
        do {
            actor->state = 11;
            if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
                active108 &= ~(1 << actor->f0);
                return;
            }
            sub_080003F0();
        } while (palette108 == 0xFFFF);
    }
    init108(&spriteA, 0x50000, palette108, -1, 1);
    init108(&spriteB, 0x50001, palette108, -1, 1);
    actor->tick = 0;
    actor->frame = 0;
    actor->anim = 0;
    actor->f5C = actor->f1D6 = S108(resource, 6) * 3;
    value = S108(resource, 4) * 2;
    actor->f5E = actor->f1D4 = (value * 4 + value) * 2;
    actor->state = 0;
    mode = 0;
    lastAnim = 0xFFFF;
    flash = 0;
    actor->phase = 2;
    actor->next = 2;
    bgm108(1);
    reset108();
    toggle = 0;
    chase = 0;
    floatingTimer = 0;
    actor->f50 = 1;
    player = 0;
    do {
        entry = 0;
        do {
            *(u32 *)((u8 *)seen108 + entry * 4 + player * 0x14C) = 0;
            entry++;
        } while (entry <= 4);
        player++;
    } while (player <= 3);
    if (sub_0800CE30() == 1) {
        limit1 = 0x78;
        limit2 = 0x168;
    } else {
        limit1 = 0xF0;
        limit2 = 0xF0;
    }
    actor->lo = *(u8 *)actor;
    actor->f202 = actor->f2;
    actor->f200 = 0xFF;
    sub_08097FE4();
    sub_08097A4C();
    finished = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (actor->state == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            update108(actor);
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
                if (chase108(actor, &players108[rune108(0)], 0x100, 0x20)) {
                    if (chase++ <= limit1)
                        break;
                    actor->phase = 1;
                    shots = 0;
                    if (toggle == 0) {
                        actor->next = 6;
                        sub_08097A38(0);
                    } else {
                        actor->next = 4;
                        actor->f50++;
                        wait2 = 0;
                    }
                    sub_08067C18();
                    chase = 0;
                } else {
                    actor->phase = 1;
                    shots = 0;
                    if (toggle == 0) {
                        actor->next = 6;
                        sub_08097A38(0);
                    } else {
                        actor->next = 4;
                        actor->f50++;
                        wait2 = 0;
                    }
                    sub_08067C18();
                }
                break;
            case 6:
                mode = 2;
                actor->state = mode;
                if (actor->f6E != 0) {
                    if (shots++ <= 7) {
                        sub_0805865C(0xA6);
                        if (sub_0800CE30() == 1) {
                            shot108(actor->f8, (u16)shots);
                        } else {
                            shot108(actor->f8, 0);
                            shot108(actor->f8, 2);
                            shot108(actor->f8, 4);
                            shot108(actor->f8, 6);
                        }
                        actor->f50++;
                        actor->tick = 0;
                        actor->frame = 0;
                        actor->f8 = (actor->f8 + 1) & 7;
                    } else {
                        actor->next = 7;
                        actor->phase = 1;
                        sub_08067C18();
                        timer = 0;
                    }
                }
                break;
            case 4:
                mode = 0;
                actor->state = mode;
                target = rune108(0);
                sub_08097A38(0);
                countdown = 0;
                actor->next = 5;
                actor->phase = 1;
                sub_08067C18();
                break;
            case 5:
                mode = 2;
                actor->state = mode;
                if (actor->frame == 0 && actor->tick != 0)
                    sub_0805865C(0xA7);
                chase108(actor, &players108[target], 0x60, 0x20);
                if (countdown == 0)
                    countdown = countdown108();
                else
                    countdown = countdown - 1;
                if (sub_0800CE30() == 0) {
                    if (wait2++ > 0x3C) {
                        n = sub_08002164();
                        actor->f200 = 0xFF;
                        for (i = 0; i < n; i++) {
                            if ((u32)(sprites108[i].sprite[0] << 28) >> 28 == 10)
                                actor->f200 = 0;
                        }
                        if (actor->f200 == 0) {
                            sub_0805865C(0xA8);
                            actor->next = 8;
                            actor->phase = 1;
                            sub_08067C18();
                            timer = 0;
                        }
                    }
                }
                if (shots++ > limit2) {
                    sub_0805865C(0xA8);
                    actor->next = 8;
                    actor->phase = 1;
                    sub_08067C18();
                    timer = 0;
                }
                break;
            case 7:
                mode = 0;
                actor->state = mode;
                if (timer++ > 0x78) {
                    toggle = 1;
                    actor->next = 3;
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            case 8:
                mode = 0;
                actor->state = mode;
                actor->f8 = wander108(0x40, &actor->x, actor->f8, 0, mode);
                if (timer++ > 0x78) {
                    toggle = 0;
                    actor->next = 3;
                    actor->phase = 1;
                    sub_08067C18();
                }
                break;
            }
        }
        switch (mode) {
        case 0:
            sprite = &spriteA;
            if (actor->phase == 7)
                goto a7;
            if (actor->phase == 8)
                goto a8;
            if (actor->next == 7)
                goto b7;
            if (actor->next == 8)
                goto b8;
            actor->anim = actor->f8;
            animFlag = 1;
            break;
        a7:
            actor->anim = 0x10;
            animFlag = 1;
            break;
        a8:
            actor->anim = 0x11;
            animFlag = 0;
            break;
        b7:
            actor->anim = 0x10;
            animFlag = 1;
            break;
        b8:
            actor->anim = 0x11;
            animFlag = 0;
            break;
        case 1:
            sprite = &spriteA;
            actor->anim = actor->f8 + 8;
            animFlag = 1;
            break;
        case 2:
            sprite = &spriteB;
            if (toggle == 0) {
                actor->anim = actor->f8 + 2;
                animFlag = 0;
            } else {
                actor->anim = 0;
                animFlag = 1;
            }
            break;
        }
        if (lastAnim != actor108->anim) {
            lastAnim = actor108->anim;
            actor108->tick = 0;
            actor108->frame = 0;
        }
        sprite->payload[0] = palette108;
        sub_08000AF0(palette108 + 0x10, (u8 *)sprite->palette + (*P108(resource, 0xD6) << 5), 1);
        if (sub_08098004() & 1)
            priority = sub_08097FF8();
        else
            priority = sub_0800BC44(actor->x >> 8, actor->y >> 8, 0);
        if (sub_0800CD8C() == 0)
            actor->f6E = anim108(sprite, actor->anim, &actor->frame, &actor->tick, animFlag);
        screen108((actor->x << 8) >> 16, (actor->y << 8) >> 16, &sx, &sy, 0, 0);
        if (flash != 0) {
            old = flash;
            flash = old - 1;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                draw108(sx, sy, actor->anim, actor->frame, priority, sprite->payload, sprite->data, sprite->base);
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            draw108(sx, sy, actor->anim, actor->frame, priority, sprite->payload, sprite->data, sprite->base);
        }
        dmg = actor->damage;
        if (dmg != 0 && lastDamage != dmg) {
            lastDamage = dmg;
            floatingTimer = 10;
            floatingOffset = 0;
        }
        if (floatingTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                float108(actor, lastDamage, floatingOffset);
            if (floatingTimer & 2)
                floatingOffset--;
            floatingTimer--;
        } else {
            lastDamage = 0;
            actor->damage = floatingTimer;
        }
        if (dead108(actor) != 0)
            finished = 1;
        sub_080003F0();
        if (finished != 0)
            break;
    }
    active108 = 0;
    players108[sub_080020F4()].flags |= 1;
    sub_08099788();
    sub_080656EC();
    sprite = &spriteA;
    sprite->payload[0] = palette108;
    actor108->anim = 0x10;
    actor108->tick = 0;
    actor108->frame = 0;
    floatingOffset = 0;
    floatingTimer = 10;
    do {
        s32 zero;
        players108[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            zero = sub_0800CD34();
            if (zero == 0) {
                sub_08000AF0(palette108 + 0x10, (u8 *)sprite->palette + (*P108(resource, 0xD6) << 5), 1);
                priority = sub_0800BC44(actor108->x >> 8, actor108->y >> 8, 0);
                actor108->f6E = anim108(sprite, actor108->anim, &actor108->frame, &actor108->tick, 1);
                screen108((actor108->x << 8) >> 16, (actor108->y << 8) >> 16, &sx, &sy, zero, zero);
                draw108(sx, sy, actor108->anim, actor108->frame, priority, sprite->payload, sprite->data, sprite->base);
                float108(actor, lastDamage, floatingOffset);
            }
        }
        if (floatingTimer & 2)
            floatingOffset--;
        sub_080003F0();
        floatingTimer--;
    } while (floatingTimer != 0xFFFF);
    sub_080683CC();
    paletteFree108(actor->f2);
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        RENDER_108();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0)
        RENDER_108();
    soundStop108(0);
    players108[sub_080020F4()].flags |= 1;
    I108(state108, 0x720) = window108(1, 0xE, 0x19, 2, 0x3C, 0x140032);
    while (windowDone108(I108(state108, 0x720)) == 0)
        RENDER_108();
    players108[sub_080020F4()].flags &= ~1;
    sound108(0xD);
    transition108(actor108, sprite, *P108(resource, 0xD6), palette108);
    if (!(players108[sub_080020F4()].flags & 0x2000) && actor108->f5A != 0) {
        reward = reward108(inventory108, resource);
        floatingOffset = 0x1D;
        do {
            struct Actor108 *g = actor108;
            g->y -= 0x20;
            rise108(g, reward);
            sub_080003F0();
            floatingOffset--;
        } while (floatingOffset != -1);
        rewardDone108(inventory108, reward);
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
#undef RENDER_108
#undef S108
#undef I108
#undef P108
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098108);
#endif
struct Player98F {u8 p0[0x20];u16 state;u8 p22[14];u32 flags;u8 p34[0x34];u8 active;u8 p69[0x1F];u16 angle;u16 p8A;s32 x,y;u8 p94[0x1C];u16 motion;u8 pB2[0x16];u16 timer;s16 direction;u16 speed;u8 pCE[0x16];u32 seen[26];};
struct Entity98F {u16 index;u8 p2[10];u16 state;u8 pE[6];s32 x,y;u8 p1C[0x34];u32 counter;};
extern struct Player98F players98F[] asm("gUnk_03003CE0");
extern struct Entity98F *entity98F asm("gUnk_030002D0");
extern u16 delta98F(void *, void *) asm("sub_0801ED8C");
u8 sub_08098F2C(void)
{
    s16 dx, dy;
    u32 dir;
    u16 a, lo;
    s32 id;

    dx = (entity98F->x - players98F[sub_080020F4()].x) >> 8;
    dy = (entity98F->y - players98F[sub_080020F4()].y) >> 8;
    if (Sqrt(dx * dx + dy * dy) <= 0x2F && sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0
        && entity98F->state != 0xB && !(players98F[sub_080020F4()].flags & 0x2000)
        && players98F[sub_080020F4()].active != 0 && players98F[sub_080020F4()].state != 0xE
        && players98F[sub_080020F4()].state != 0xB && players98F[sub_080020F4()].state != 0xC
        && players98F[sub_080020F4()].seen[entity98F->index] != entity98F->counter) {
        players98F[sub_080020F4()].state = 0xA;
        players98F[sub_080020F4()].motion = 0xFFFE;
        id = sub_080020F4();
        players98F[id].angle += delta98F(entity98F, &players98F[sub_080020F4()]);
        players98F[sub_080020F4()].seen[entity98F->index] = entity98F->counter;
        dx = (players98F[sub_080020F4()].x - entity98F->x) >> 8;
        dy = (players98F[sub_080020F4()].y - entity98F->y) >> 8;
        a = ArcTan2(dx, dy);
        lo = a << 3;
        dir = a >> 13;
        if (lo > 0x8000U) {
            if (dir <= 6) dir++; else dir = 0;
        }
        switch (dir) {
        case 0:
            players98F[sub_080020F4()].direction = 6;
            break;
        case 1:
            players98F[sub_080020F4()].direction = 7;
            break;
        default:
            players98F[sub_080020F4()].direction = dir - 2;
            break;
        }
        players98F[sub_080020F4()].speed = 0x400;
        players98F[sub_080020F4()].timer = 0x10;
    }
    if (players98F[sub_080020F4()].timer == 0)
        entity98F->counter++;
}
struct Player99468 {u8 p0[0x20];u16 state;u8 p22[14];u32 flags;u8 p34[0x34];u8 active;u8 p69[0x1F];u16 angle;u16 p8A;s32 x,y;u8 p94[0x1C];u16 motion;u8 pB2[0x16];u16 timer;s16 direction;u16 speed;u8 pCE[0x16];u32 seen[26];};
struct Entity99468 {u16 index;u8 p2[10];u16 state;u8 pE[6];s32 x,y;u8 p1C[0x34];u32 counter;};
extern struct Player99468 players99468[] asm("gUnk_03003CE0");
extern struct Entity99468 *entity99468 asm("gUnk_030002D0");
extern void sub_08065748();
void sub_0809919C(u32 corner, s32 dir)
{
    s32 x;
    s32 y;
    s16 dx;
    s16 dy;
    s16 count;

    switch (corner) {
    case 0:
        x = entity99468->x;
        y = entity99468->y + 0x1000;
        break;
    case 1:
        x = entity99468->x - 0x2800;
        y = entity99468->y + 0x1000;
        break;
    case 2:
        x = entity99468->x - 0x3000;
        y = entity99468->y - 0x1000;
        break;
    case 3:
        x = entity99468->x - 0x1800;
        y = entity99468->y - 0x1800;
        break;
    case 4:
        x = entity99468->x;
        y = entity99468->y - 0x1C00;
        break;
    case 5:
        x = entity99468->x + 0x1800;
        y = entity99468->y - 0x1800;
        break;
    case 6:
        x = entity99468->x + 0x2800;
        y = entity99468->y - 0x1000;
        break;
    case 7:
        x = entity99468->x + 0x2800;
        y = entity99468->y + 0x1000;
        break;
    }
    dir = gUnk_0847AD0A[dir];
    count = 9;
    do {
        x += gUnk_080B9704[dir + 0x40];
        y += gUnk_080B9704[dir];
        dx = (u32)((x - players99468[sub_080020F4()].x) << 8) >> 16;
        dy = (u32)((y - players99468[sub_080020F4()].y) << 8) >> 16;
        if ((count & 0xF) == 0)
            sub_08065748(x >> 8, y >> 8, 5);
        if (Sqrt(dx * dx + dy * dy) <= 0x13 && sub_0800CDF8() == 0 && sub_0800CCCC() == 0
            && sub_0800CD8C() == 0 && entity99468->state != 0xB && !(players99468[sub_080020F4()].flags & 0x2000)
            && players99468[sub_080020F4()].active != 0 && players99468[sub_080020F4()].state != 0xE
            && players99468[sub_080020F4()].state != 0xB && players99468[sub_080020F4()].state != 0xC
            && players99468[sub_080020F4()].seen[entity99468->index] != entity99468->counter) {
            sub_08029CEC(1, 5, 1);
            players99468[sub_080020F4()].motion = 0xFFFE;
            players99468[sub_080020F4()].seen[entity99468->index] = entity99468->counter;
        }
        sub_080003F0();
    } while (--count != -1);
    *(u32 *)((u8 *)sub_0800048C() + 8) = 0;
}
struct Sprite99468 {u32 f0,f4,f8,fC;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
void sub_08099468(u32 unused, s32 dir)
{
    struct Sprite99468 sprite;
    s16 sx;
    s16 sy;
    u16 tile;
    s16 rotation;
    s32 vx;
    s32 vy;
    s16 count;
    s32 x;
    s32 y;
    s32 px;
    s32 py;
    s16 dx;
    s32 dy;

    dir--;
    if (dir == 0 || dir == 4)
        vy = gUnk_080B9704[gUnk_085186DC[dir]] * 0x180 / 304;
    else
        vy = gUnk_080B9704[gUnk_085186DC[dir]] * 0x180 / 256;
    vx = gUnk_080B9704[gUnk_085186DC[dir] + 0x40] * 0x180 / 256;
    x = entity99468->x;
    y = entity99468->y;
    t071Init(&sprite, 0x50130, 5, -1, 0);
    sub_08000AF0(0x15, (void *)(sprite.fC + 0x20), 1);
    sprite.f1D = 5;
    count = 0x10D;
    do {
        x += vx;
        y += vy;
        t071Coords((s16)(px = x >> 8), (s16)(py = y >> 8), &sx, &sy, 0, 0);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0) {
            t071Animate(&sprite, 10, &tile, &rotation, 1);
            {
                /* u16 temporary: narrowing to u8 at the call matches */
                u16 mode = sub_0800BC44(px, py, 0);

                t071Draw(sx, sy, 10, tile, (u8)mode, &sprite.f1C, sprite.f8, sprite.f0);
            }
        }
        dx = (u32)((x - players99468[sub_080020F4()].x) << 8) >> 16;
        dy = (y - players99468[sub_080020F4()].y) << 8;
        if (Sqrt(dx * dx + (dy >> 16) * (dy >> 16)) <= 0x13 && sub_0800CDF8() == 0 && sub_0800CCCC() == 0
            && sub_0800CD8C() == 0 && entity99468->state != 0xB && !(players99468[sub_080020F4()].flags & 0x2000)
            && players99468[sub_080020F4()].active != 0 && players99468[sub_080020F4()].state != 0xE
            && players99468[sub_080020F4()].state != 0xB && players99468[sub_080020F4()].state != 0xC
            && players99468[sub_080020F4()].seen[entity99468->index] != entity99468->counter) {
            sub_08029CEC(1, 0x1E, 5);
            players99468[sub_080020F4()].motion = 0xFFFE;
            players99468[sub_080020F4()].seen[entity99468->index] = entity99468->counter;
        }
        sub_080003F0();
    } while (--count != -1);
    *(u32 *)((u8 *)sub_0800048C() + 8) = 0;
}
void sub_08099720(void) {
    if (M2C_FIELD(gUnk_030002D0, s16 *, 0x5C) != 0) {
        sub_08099788();
        sub_080656EC();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002D4);
}
void sub_0809975C(void)
{
    u32 i;
    gUnk_030002D8 = sub_08001494(0xA00);
    for (i = 0; i < 64; i++)
        M2C_FIELD((u8 *)gUnk_030002D8 + i * 0x28, s32 *, 8) = 0;
}
void sub_08099788(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_030002D8;
  for (i = 0, entry = new_var2; i < 64; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002D8);
  gUnk_030002D8 = i;
}
struct TaskP97C0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct TaskP97C0 *gTP030002D8 asm("gUnk_030002D8");
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern void sub_08099468();
extern void sub_0809919C();
void sub_080997C0(u16 a, u16 b)
{
    struct TaskP97C0 *t = gTP030002D8;
    u32 i;
    i = 0;
    goto check;
next:
    i++;
    t = (struct TaskP97C0 *)((u8 *)t + 0x28);
check:
    if (i > 0x3F)
        return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0)
        goto next;
    if ((t->f20 = sub_08001494(0x400)) == 0)
        return;
    t->f10 = t->f20 + 0x3FC;
    if (sub_0800CE30() == 1)
        t->fC = (u32)sub_08099468;
    else
        t->fC = (u32)sub_0809919C;
    t->f24 = 0;
    t->f8 = 0x46;
    sub_08000274_3((u32)t, a, b);
}
#ifdef NONMATCHING
struct Sprite99 {u32 base,p4,data,palette,p10,p14,p18;u8 payload[24];};
struct Player99 {u8 p0[0x30];u32 flags;u8 p34[0x118];};
struct Spr99 {u8 *sprite;u8 p4[0x148];};
struct Actor99 {
    u16 f0; u16 f2; u8 p4[4]; u16 f8; u8 pA[2]; u16 state; u8 pE[6];
    s32 x; s32 y; u8 p1C[0x30]; s32 damage; s32 f50; u8 p54[6]; u16 f5A; u16 f5C; u16 f5E;
    u8 p60[8]; u16 anim; u16 frame; u16 tick; u16 f6E; u8 p70[0x164]; u16 f1D4; u16 f1D6;
    u8 p1D8[0x24]; u8 lo:4; u8 hi:4; u8 phase; u8 next; u8 p1FF; u8 f200; u8 p201; u16 f202;
    u8 res[0xD4]; u16 f2D8; u16 f2DA;
};
#define S99(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define I99(p,o) (*(s32 *)((u8 *)(p)+(o)))
#define P99(p,o) ((u16 *)((u8 *)(p)+(o)))
extern struct Actor99 *actor99 asm("gUnk_030002DC");
extern u16 palette99 asm("gUnk_030002E0");
extern u32 active99 asm("gUnk_030056FC");
extern u32 seen99[] asm("gUnk_03003DC4");
extern struct Player99 players99[] asm("gUnk_03003CE0");
extern struct Spr99 sprites99[] asm("gUnk_03003E28");
extern void *inventory99 asm("gUnk_030034E0");
extern u8 *state99 asm("gUnk_03005CF4");
extern u8 config99[] asm("gUnk_084A06B0");
extern void setup99(void *,void *,s32) asm("sub_0801623C");
extern void resourceInit99(void *) asm("sub_08019F60");
extern u32 allocate99(u16,u16) asm("sub_08016E04");
extern void init99(void *,u32,u32,s32,s32) asm("sub_08065158");
extern u16 anim99(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void screen99(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void draw99(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void update99(void *) asm("sub_0801C8F0");
extern void float99(void *,s32,s32) asm("sub_0801A120");
extern u16 dead99(void *) asm("sub_08019CE8");
extern void paletteFree99(u32) asm("sub_08067CA8");
extern void transition99(void *,void *,u32,u32) asm("sub_080970CC");
extern s32 reward99(void *,void *) asm("sub_0801E46C");
extern void rise99(void *,s32) asm("sub_0806171C");
extern void rewardDone99(void *,s32) asm("sub_0801E4CC");
extern void soundStop99(s32) asm("sub_080586B4");
extern void sound99(s32) asm("sub_08058688");
extern s32 window99(s32,s32,s32,s32,s32,s32) asm("sub_0805DF38");
extern s32 windowDone99(s32) asm("sub_0805EEFC");
extern u8 chase99(void *, void *, s32, s32) asm("sub_08097A74");
extern u32 rune99(s32) asm("sub_08096594");
extern void bgm99(s32) asm("sub_080656B8");
extern u8 countdown99(void) asm("sub_08098F2C");
extern void reset99(void) asm("sub_0809975C");
extern void shot99(u32, u32) asm("sub_080997C0");
extern u16 wander99(s32, s32 *, u32, s32, s32) asm("sub_08013E90");

extern u32 blink99 asm("gUnk_03002344");
extern u8 cool99(void) asm("sub_0809A5E0");
extern void quake99(u32) asm("sub_08097CA8");
extern void spawn99(u32) asm("sub_0809AE88");
extern void start99(void) asm("sub_0809AE24");
extern void end99(void) asm("sub_0809AE50");
#define PAL99 (*P99(resource, 0xD6))

#define RENDER_99() {     s32 zero;     players99[sub_080020F4()].flags |= 1;     if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {         zero = sub_0800CD34();         if (zero == 0) {             sub_08000AF0(palette99 + 0x10, (u8 *)sprite->palette + (PAL99 << 5), 1);             priority = sub_0800BC44(actor99->x >> 8, actor99->y >> 8, 0);             actor99->f6E = anim99(sprite, 0, &actor99->frame, &actor99->tick, 1);             screen99((actor99->x << 8) >> 16, (actor99->y << 8) >> 16, &sx, &sy, zero, zero);             draw99(sx, sy, actor99->anim, actor99->frame, priority, sprite->payload, sprite->data, sprite->base);             if (blink99 & 1)                 draw99(sx, sy - 1, 0x18, 0, priority, sprite->payload, sprite->data, sprite->base);         }     }     sub_080003F0(); }

void sub_08099838(void *input)
{
    struct Sprite99 spriteA;
    struct Sprite99 spriteB;
    s16 sx;
    s16 sy;
    struct Sprite99 *sprite;
    u8 *resource;
    s32 range;
    s32 lastDamage;
    s32 mode;
    u16 lastAnim;
    s32 lastMode;
    s32 animFlag;
    u16 flash;
    u16 floatingTimer;
    u32 limit;
    u16 chase;
    u16 elapsed;
    s32 blinkAnim;
    s16 floatingOffset;
    u8 cooldown;
    s32 finished;
    struct Actor99 *actor;
    u8 priority;
    s16 player;
    s16 entry;
    s16 i;
    u32 n;
    s32 value;
    s32 reward;
    s32 dmg;
    u32 old;
    u16 alloc;

    actor = input;
    actor99 = actor;
    resource = actor->res;
    setup99(actor, config99, 0);
    resourceInit99(resource);
    sub_0801A0A4(actor);
    alloc = palette99 = allocate99(actor->f2D8, actor->f2DA);
    if (alloc == 0xFFFF) {
        do {
            actor->state = 11;
            if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
                active99 &= ~(1 << actor->f0);
                return;
            }
            sub_080003F0();
        } while (palette99 == 0xFFFF);
    }
    init99(&spriteA, 0x50002, palette99, -1, 1);
    init99(&spriteB, 0x50003, palette99, -1, 1);
    actor->tick = 0;
    actor->frame = 0;
    actor->anim = 0;
    actor->f5C = actor->f1D6 = S99(resource, 6) * 3;
    value = S99(resource, 4) * 2;
    actor->f5E = actor->f1D4 = (value * 4 + value) * 2;
    actor->state = 0;
    mode = 0;
    lastAnim = 0xFFFF;
    lastMode = 0xFFFF;
    flash = 0;
    floatingTimer = 0;
    cooldown = 0;
    actor->phase = 2;
    actor->next = 2;
    start99();
    sub_08097C4C();
    actor->f50 = 1;
    player = 0;
    do {
        entry = 0;
        do {
            *(u32 *)((u8 *)seen99 + entry * 4 + player * 0x14C) = 0;
            entry++;
        } while (entry <= 4);
        player++;
    } while (player <= 3);
    if (sub_0800CE30() == 1) {
        limit = 0xB4;
        range = 0x80;
    } else {
        limit = 0x168;
        range = 0x40;
    }
    actor->lo = *(u8 *)actor;
    actor->f202 = actor->f2;
    actor->f200 = 0xFF;
    sub_08097FE4();
    sub_08097A4C();
    finished = 0;
    elapsed = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (actor->state == 10 && flash == 0)
            flash = 8;
        if (sub_08058DB0() == 0) {
            update99(actor);
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
                    chase = 0;
                }
                break;
            case 3:
                mode = 1;
                actor->state = mode;
                actor->hi = rune99(0);
                if (chase99(actor, &players99[actor->hi], range, 0x30)) {
                    if (chase++ <= limit)
                        break;
                    actor->next = 4;
                    actor->phase = 1;
                    cooldown = 0;
                    chase = 0;
                    elapsed = 0;
                    sub_08067C18();
                    sub_08097A38(0);
                } else {
                    actor->next = 4;
                    actor->phase = 1;
                    cooldown = 0;
                    chase = 0;
                    elapsed = 0;
                    sub_08067C18();
                    sub_08097A38(0);
                }
                break;
            case 4:
                mode = 2;
                actor->state = mode;
                if (actor->frame == 2 && actor->tick == 0) {
                    sub_0805865C(0xAC);
                    if (cooldown == 0)
                        cooldown = cool99();
                    quake99(0x3C);
                }
                if (actor->f6E == 0) {
                    if (elapsed++ <= 0x3B)
                        break;
                }
                elapsed = 0;
                n = sub_08002164();
                if (n == 1) {
                    spawn99(0);
                    spawn99(1);
                    spawn99(2);
                    spawn99(3);
                    spawn99(4);
                } else {
                    for (i = 0; i < n; i++)
                        spawn99((u16)i);
                }
                actor->phase = 1;
                actor->next = 5;
                sub_08067C18();
                break;
            case 5:
                mode = 0;
                actor->state = mode;
                if (elapsed++ > 0xB4) {
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
            actor->anim = actor->f8;
            animFlag = 1;
            blinkAnim = 0x18;
            break;
        case 1:
            sprite = &spriteA;
            actor->anim = actor->f8 + 8;
            animFlag = 1;
            blinkAnim = 0x18;
            break;
        case 2:
            sprite = &spriteB;
            actor->anim = actor->f8;
            blinkAnim = 8;
            animFlag = 0;
            break;
        }
        if (lastAnim != actor99->anim || lastMode != mode) {
            lastMode = mode;
            lastAnim = actor99->anim;
            actor99->tick = 0;
            actor99->frame = 0;
        }
        sprite->payload[0] = palette99;
        sub_08000AF0(palette99 + 0x10, (u8 *)sprite->palette + (PAL99 << 5), 1);
        if (sub_08098004() & 1)
            priority = sub_08097FF8();
        else
            priority = sub_0800BC44(actor->x >> 8, actor->y >> 8, 0);
        if (sub_0800CD8C() == 0)
            actor->f6E = anim99(sprite, actor->anim, &actor->frame, &actor->tick, animFlag);
        screen99((actor->x << 8) >> 16, (actor->y << 8) >> 16, &sx, &sy, 0, 0);
        if (flash != 0) {
            old = flash;
            flash = old - 1;
            if ((old & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
                draw99(sx, sy, actor->anim, actor->frame, priority, sprite->payload, sprite->data, sprite->base);
                draw99(sx, sy - 1, blinkAnim, 0, priority, sprite->payload, sprite->data, sprite->base);
            }
        } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
            draw99(sx, sy, actor->anim, actor->frame, priority, sprite->payload, sprite->data, sprite->base);
            if (blink99 & 1)
                draw99(sx, sy - 1, blinkAnim, 0, priority, sprite->payload, sprite->data, sprite->base);
        }
        dmg = actor->damage;
        if (dmg != 0 && lastDamage != dmg) {
            lastDamage = dmg;
            floatingTimer = 10;
            floatingOffset = 0;
        }
        if (floatingTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                float99(actor, lastDamage, floatingOffset);
            if (floatingTimer & 2)
                floatingOffset--;
            floatingTimer--;
        } else {
            lastDamage = 0;
            actor->damage = floatingTimer;
        }
        if (dead99(actor) != 0)
            finished = 1;
        sub_080003F0();
        if (finished != 0)
            break;
    }
    active99 = 0;
    players99[sub_080020F4()].flags |= 1;
    sub_08097C6C();
    end99();
    sprite = &spriteA;
    actor99->tick = 0;
    actor99->frame = 0;
    actor99->anim = 0;
    sprite->payload[0] = palette99;
    floatingOffset = 0;
    floatingTimer = 10;
    do {
        s32 zero;
        players99[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            zero = sub_0800CD34();
            if (zero == 0) {
                sub_08000AF0(palette99 + 0x10, (u8 *)sprite->palette + (PAL99 << 5), 1);
                priority = sub_0800BC44(actor99->x >> 8, actor99->y >> 8, 0);
                actor99->f6E = anim99(sprite, 0, &actor99->frame, &actor99->tick, 1);
                screen99((actor99->x << 8) >> 16, (actor99->y << 8) >> 16, &sx, &sy, zero, zero);
                draw99(sx, sy, actor99->anim, actor99->frame, priority, sprite->payload, sprite->data, sprite->base);
                if (blink99 & 1)
                    draw99(sx, sy - 1, 0x18, 0, priority, sprite->payload, sprite->data, sprite->base);
                float99(actor, lastDamage, floatingOffset);
            }
        }
        if (floatingTimer & 2)
            floatingOffset--;
        sub_080003F0();
        floatingTimer--;
    } while (floatingTimer != 0xFFFF);
    sub_080683CC();
    paletteFree99(actor->f2);
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        RENDER_99();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0)
        RENDER_99();
    soundStop99(0);
    players99[sub_080020F4()].flags |= 1;
    I99(state99, 0x720) = window99(1, 0xE, 0x19, 2, 0x3C, 0x14003C);
    while (windowDone99(I99(state99, 0x720)) == 0)
        RENDER_99();
    players99[sub_080020F4()].flags &= ~1;
    sound99(0xD);
    transition99(actor99, sprite, PAL99, palette99);
    if (!(players99[sub_080020F4()].flags & 0x2000) && actor99->f5A != 0) {
        reward = reward99(inventory99, resource);
        floatingOffset = 0x1D;
        do {
            struct Actor99 *g = actor99;
            g->y -= 0x20;
            rise99(g, reward);
            sub_080003F0();
            floatingOffset--;
        } while (floatingOffset != -1);
        rewardDone99(inventory99, reward);
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
#undef RENDER_99
#undef PAL99
#undef S99
#undef I99
#undef P99
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099838);
#endif
extern s32 x102A5[] asm("gUnk_03003D6C");
struct Player102A5 {u8 p0[0x20];u16 state;u8 p22[14];u32 flags;u8 p34[0x34];u8 active;u8 p69[0x1F];u16 angle;u16 p8A;s32 x,y;u8 p94[0x1C];u16 motion;u8 pB2[0x16];u16 timer;s16 direction;u16 speed;u8 pCE[0x16];u32 seen[26];};
struct Entity102A5 {u16 index;u8 p2[10];u16 state;u8 pE[6];s32 x,y;u8 p1C[0x34];u32 counter;};
extern struct Player102A5 players102A5[] asm("gUnk_03003CE0");
extern struct Entity102A5 *entity102A5 asm("gUnk_030002DC");
extern u16 delta102A5(void *, void *) asm("sub_0801ED8C");
u8 sub_0809A5E0(void)
{
    s16 dx, dy;
    u32 result = 0;
    u32 dir;
    u16 a, lo;
    s32 id;

    { register s32 k asm("r0"); register struct Entity102A5 *e asm("r1"); k=sub_080020F4(); e=entity102A5; asm("" : "+r"(k), "+r"(e)); asm("" : : "r"(players102A5)); dx=(e->x-x102A5[k*83])>>8; }
    dy = (entity102A5->y - players102A5[sub_080020F4()].y) >> 8;
    if (Sqrt(dx * dx + dy * dy) <= 0x2F && sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0
        && entity102A5->state != 0xB && !(players102A5[sub_080020F4()].flags & 0x2000)
        && players102A5[sub_080020F4()].active != 0 && players102A5[sub_080020F4()].state != 0xE
        && players102A5[sub_080020F4()].state != 0xB && players102A5[sub_080020F4()].state != 0xC
        && players102A5[sub_080020F4()].seen[entity102A5->index] != entity102A5->counter) {
        players102A5[sub_080020F4()].state = 0xA;
        players102A5[sub_080020F4()].motion = 0xFFFE;
        id = sub_080020F4();
        players102A5[id].angle += delta102A5(entity102A5, &players102A5[sub_080020F4()]);
        { s32 i; register u32 index asm("r1"); register u32 *dest asm("r1"); register u32 n asm("r0"); struct Entity102A5 *e; i=sub_080020F4(); e=entity102A5; index=e->index; index<<=2; asm("" : "+r"(index)); index+=i*0x14c; asm("" : "+r"(index)); dest=(u32 *)((u8 *)players102A5+0xe4+index); n=e->counter; asm("" : "+r"(n), "+r"(dest)); *dest=n; e->counter=n+1; }
        dx = (x102A5[sub_080020F4()*83] - entity102A5->x) >> 8;
        dy = (players102A5[sub_080020F4()].y - entity102A5->y) >> 8;
        a = ArcTan2(dx, dy);
        lo = a << 3;
        dir = a >> 13;
        if (lo > 0x8000U) {
            if (dir <= 6) dir++; else dir = 0;
        }
        switch (dir) {
        case 0:
            players102A5[sub_080020F4()].direction = 6;
            break;
        case 1:
            players102A5[sub_080020F4()].direction = 7;
            break;
        default:
            players102A5[sub_080020F4()].direction = dir - 2;
            break;
        }
        players102A5[sub_080020F4()].speed = 0x400;
        players102A5[sub_080020F4()].timer = 8;
        result = 1;
    }
    return result;
}
struct Player834 {u8 p0[0x20];u16 state;u8 p22[14];u32 flags;u8 p34[0x34];u8 active;u8 p69[0x23];s32 x,y;u8 p94[0x1C];u16 motion;u8 pB2[0x32];u32 seen[25];u16 *home;};
struct Entity834 {u16 index;u8 p2[10];u16 state;u8 pE[6];s32 x,y;u8 p1C[0x34];u32 counter;};
struct Sprite834 {u32 f0,f4,f8;u8 *fC;u8 pad10[12];u8 f1C[13];u8 f29;u8 pad2A[10];};
struct Obj834 {u32 f0,f4,f8;s32 fC;};
extern struct Player834 players834[] asm("gUnk_03003CE0");
extern struct Entity834 *entity834 asm("gUnk_030002DC");
extern struct Obj834 *draw834(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void sub_08029A7C(s32, s32, s32);
extern void anim834(void *,u32,u16 *,s16 *,s32) asm("sub_08065370");
extern void coords834(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
extern void init834(void *,s32,s32,s32,s32) asm("sub_08065158");
extern struct Obj834 *self834(void) asm("sub_0800048C");
void task834(u32 who) asm("sub_0809A834");
void task834(u32 who)
{
    struct Sprite834 sprite;
    u16 tile;
    s16 rotation;
    s16 sx;
    s16 sy;
    u32 count;
    s32 x;
    s32 y;
    s32 d;
    u32 mode;
    u32 n;
    s32 running;
    s16 dx;
    s16 dy;
    register u32 z asm("r4"); /* zero kept live for the early exit */
    u32 odd;
    struct Obj834 *p;

    init834(&sprite, 0x50004, 0xD, -1, 1);
    { u8 *q = &sprite.f29; z = 0; *q = 5; }
    count = sub_08002164();
    if (count == 1) {
        switch (who) {
        case 0:
            x = players834[0].x;
            y = players834[0].y;
            break;
        case 1:
            x = 0x7800;
            y = 0x17000;
            break;
        case 2:
            x = 0x4400;
            y = 0x13500;
            break;
        case 3:
            x = 0xAE00;
            y = 0x13500;
            break;
        case 4:
            x = 0x7B00;
            y = 0xE400;
            break;
        default:
            goto fail;
        }
    } else {
        switch (who) {
        case 0:
            if (sub_080020F4() == 0) {
                x = players834[0].x;
                y = players834[0].y;
            } else {
                x = (players834[0].home[0] >> 4) << 8;
                y = (u32)(players834[0].home[1] << 20) >> 12;
            }
            break;
        case 1:
            if (sub_080020F4() == 1) {
                x = players834[1].x;
                y = players834[1].y;
            } else {
                x = (players834[1].home[0] >> 4) << 8;
                y = (u32)(players834[1].home[1] << 20) >> 12;
            }
            break;
        case 2:
            if (count <= 2)
                goto fail;
            if (sub_080020F4() == 2) {
                x = players834[2].x;
                y = players834[2].y;
            } else {
                x = (players834[2].home[0] >> 4) << 8;
                y = (u32)(players834[2].home[1] << 20) >> 12;
            }
            break;
        case 3:
            if (count != 4)
                goto fail;
            if (sub_080020F4() == 3) {
                x = players834[3].x;
                y = players834[3].y;
            } else {
                x = (players834[3].home[0] >> 4) << 8;
                y = (u32)(players834[3].home[1] << 20) >> 12;
            }
            break;
        default:
        fail:
            p = self834();
            p->f8 = z;
            return;
        }
    }
    if (who == 0)
        sub_0805865C(0xAD);
    count = sub_0800CE30();
    n = 0x3C;
    if (count == 1)
        n = 0x28;
    d = n << 10;
    running = 1;
    do {
        d -= 0x400;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            sub_08000AF0(0x15, sprite.fC + 0x1A0, 1);
            anim834(&sprite, 1, &tile, &rotation, 1);
            mode = (u8)sub_0800BC44(x >> 8, y >> 8, 0);
            coords834((s16)(x >> 8), (s16)(y >> 8), &sx, &sy, 0, 0);
            if (n > 0x1E) {
                odd = n;
                n = (u16)(odd - 1);
                if (odd & 1)
                    { p = draw834(sx - 4, 1, 2, 0, mode, sprite.f1C, sprite.f8, sprite.f0); p->fC = sy - 1; }
            } else {
                { p = draw834(sx - 4, 1, 2, 0, (u8)mode, sprite.f1C, sprite.f8, sprite.f0); p->fC = sy - 1; }
            }
            mode = (u8)sub_0800BC44(x >> 8, (y - d) >> 8, 0);
            coords834((s16)(x >> 8), (s16)((y - d) >> 8), &sx, &sy, 0, 0);
            { p = draw834(sx, 0x9F, 1, tile, mode, sprite.f1C, sprite.f8, sprite.f0); p->fC = sy + 1; }
        }
        if (d < 0) {
            dx = (x >> 8) - (players834[sub_080020F4()].x >> 8);
            dy = ((y - d) >> 8) - (players834[sub_080020F4()].y >> 8);
            if (Sqrt(dx * dx + dy * dy) <= 0xF && sub_0800CDF8() == 0 && sub_0800CCCC() == 0
                && sub_0800CD8C() == 0 && entity834->state != 0xB && !(players834[sub_080020F4()].flags & 0x2000)
                && players834[sub_080020F4()].active != 0 && players834[sub_080020F4()].state != 0xE
                && players834[sub_080020F4()].state != 0xB && players834[sub_080020F4()].state != 0xC
                && players834[sub_080020F4()].seen[entity834->index] != entity834->counter) {
                if (sub_0800CE30() == 1)
                    sub_08029A7C(0, 0xA0, 1);
                else
                    sub_08029A7C(0, 0x28, 1);
                players834[sub_080020F4()].motion = 0xFFFE;
                players834[sub_080020F4()].seen[entity834->index] = entity834->counter++;
            }
            running = 0;
        }
        sub_080003F0();
    } while (running);
    if (who == 0)
        sub_0805865C(0xAE);
    n = 0x78;
    do {
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            anim834(&sprite, 1, &tile, &rotation, 1);
            if (n & 1) {
                coords834((s16)(x >> 8), (s16)(y >> 8), &sx, &sy, 0, 0);
                draw834(sx - 4, sy - 1, 2, 0, (u8)mode, sprite.f1C, sprite.f8, sprite.f0);
                coords834((s16)(x >> 8), (s16)((y - d) >> 8), &sx, &sy, 0, 0);
                draw834(sx, sy, 1, tile, (u8)mode, sprite.f1C, sprite.f8, sprite.f0);
            }
        }
        sub_080003F0();
        n = (u16)(n - 1);
    } while (n != 0xFFFF);
    p = self834();
    p->f8 = 0;
}
void sub_0809ADE8(void) {
    if (M2C_FIELD(gUnk_030002DC, s16 *, 0x5C) != 0) {
        sub_08097C6C();
        sub_0809AE50();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002E0);
}
void sub_0809AE24(void)
{
    u32 i;
    gUnk_030002E4 = sub_08001494(0xC8);
    for (i = 0; i < 5; i++)
        M2C_FIELD((u8 *)gUnk_030002E4 + i * 0x28, s32 *, 8) = 0;
}
void sub_0809AE50(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_030002E4;
  for (i = 0, entry = new_var2; i < 5; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002E4);
  gUnk_030002E4 = i;
}
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern void sub_08000274_1(u32) asm("sub_08000274");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern u8 *gP030002E4 asm("gUnk_030002E4");
extern void sub_0809A834();
void sub_0809AE88(u16 arg)
{
  struct TaskP *t = (struct TaskP *) gP030002E4;
  u32 z;
  u32 i;
  i = 0;
  goto check;
  next:
  i++;

  t = (struct TaskP *) (((u8 *) t) + 0x28);
  check:
  if (i > 4)
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
 do { t->f10 = t->f20 + 0x3FC; t->fC = (u32) sub_0809A834; t->f24 = z; t->f8 = 0x46; sub_08000274_2(t, arg); } while (0);
}
struct SpriteAEE8 {u32 base,p4,data,palette,p10,p14,p18;u8 payload[24];};
struct PlayerAEE8 {u8 p0[0x30];u32 flags;u8 p34[0x118];};
struct PosAEE8 {s32 x,y;};
struct OrbitAEE8 {s32 x,y;u8 angle;u8 pad[3];};
struct ResAEE8 {u8 p0[4];s16 f4;s16 f6;u8 p8[0x22];u8 f2A;u8 f2B;u8 p2C[0xA8];u16 fD4;u16 fD6;};
struct ActorAEE8 {
    u16 f0; u16 f2; u8 p4[4]; u16 f8; u8 pA[2]; u16 state; u8 pE[2]; u16 f10; u8 p12[2];
    s32 x; s32 y; u8 p1C[0x2C]; u16 f48; u16 f4A; s32 damage; s32 f50; s32 f54; u8 p58[2]; u16 f5A; u16 f5C; u16 f5E;
    u8 p60[8]; u16 anim; u16 frame; u16 tick; u16 f6E; u8 p70[0x164]; u16 f1D4; u16 f1D6;
    u8 p1D8[0x24]; u8 lo:4; u8 hi:4; u8 phase; u8 next; u8 p1FF; u8 f200; u8 p201; u16 f202;
    struct ResAEE8 res;
};
extern struct ActorAEE8 *actorAEE8 asm("gUnk_030002EC");
extern u16 paletteAEE8 asm("gUnk_030002F0");
extern s8 introAEE8 asm("gUnk_030002E8");
extern u32 activeAEE8 asm("gUnk_030056FC");
extern u8 *poolAEE8 asm("gUnk_030056F4");
extern u32 blinkAEE8 asm("gUnk_03002344");
extern u32 seenAEE8[] asm("gUnk_03003DC4");
extern struct PlayerAEE8 playersAEE8[] asm("gUnk_03003CE0");
extern void *inventoryAEE8 asm("gUnk_030034E0");
extern u8 *stateAEE8 asm("gUnk_03005CF4");
extern u8 configAEE8[] asm("gUnk_084A1910");
extern struct PosAEE8 pointsAEE8[] asm("gUnk_085186FC");
extern s16 waveAEE8[] asm("gUnk_080B9704");
extern void setupAEE8(void *,void *,s32) asm("sub_0801623C");
extern void resourceInitAEE8(void *) asm("sub_08019F60");
extern u32 allocateAEE8(u16,u16) asm("sub_08016E04");
extern void initAEE8(void *,u32,u32,s32,s32) asm("sub_08065158");
extern u16 animAEE8(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void screenAEE8(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void drawAEE8(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
extern void updateAEE8(void *) asm("sub_0801C8F0");
extern void floatAEE8(void *,s32,s32) asm("sub_0801A120");
extern u16 deadAEE8(void *) asm("sub_08019CE8");
extern u8 moveAEE8(void *,struct PosAEE8,s32,s32,s32) asm("sub_08097AC0");
extern void paletteFreeAEE8(u32) asm("sub_08067CA8");
extern void transitionAEE8(void *,void *,u32,u32) asm("sub_080970CC");
extern s32 rewardAEE8(void *,void *) asm("sub_0801E46C");
extern void riseAEE8(void *,s32) asm("sub_0806171C");
extern void rewardDoneAEE8(void *,s32) asm("sub_0801E4CC");
extern void soundStopAEE8(s32) asm("sub_080586B4");
extern void soundAEE8(s32) asm("sub_08058688");
extern s32 windowAEE8(s32,s32,s32,s32,s32,s32) asm("sub_0805DF38");
extern s32 windowDoneAEE8(s32) asm("sub_0805EEFC");
extern void dropAEE8(u8) asm("sub_0809D77C");
extern void markAEE8(u16) asm("sub_0809D620");
extern void flashAEE8(void *,u16) asm("sub_0809D710");
extern void sub_0809D7E4(void);

#define RENDER_AEE8() { \
    s32 zero; \
    playersAEE8[sub_080020F4()].flags |= 1; \
    if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) { \
        zero = sub_0800CD34(); \
        if (zero == 0) { \
            sub_08000AF0(paletteAEE8 + 0x10, (u8 *)sprite.palette + (resource->fD6 << 5), 1); \
            priority = sub_0800BC44(actorAEE8->x >> 8, actorAEE8->y >> 8, 0); \
            actorAEE8->f6E = animAEE8(&sprite, 0, &actorAEE8->frame, &actorAEE8->tick, 1); \
            screenAEE8((actorAEE8->x << 8) >> 16, (actorAEE8->y << 8) >> 16, &sx, &sy, zero, zero); \
            drawAEE8(sx, sy, actorAEE8->anim, actorAEE8->frame, priority, sprite.payload, sprite.data, sprite.base); \
            { u32 o = flash; \
            flash = o - 1; \
            if (o & 1) \
                drawAEE8(sx, sy - 1, 0x18, 0, priority, sprite.payload, sprite.data, sprite.base); } \
        } \
    } \
    sub_080003F0(); \
}

void sub_0809AEE8(void *input)
{
    s16 i;
    struct OrbitAEE8 orbit[3];
    struct SpriteAEE8 intro;
    struct SpriteAEE8 sprite;
    s16 sx;
    s16 sy;
    struct ActorAEE8 *allies[2];
    struct ResAEE8 *resource;
    struct PosAEE8 target;
    s32 lastDamage;
    s32 mode;
    u16 lastAnim;
    s32 animFlag;
    u16 flash;
    u16 floatingTimer;
    u16 elapsed;
    s16 floatingOffset;
    s16 j;
    u16 wait;
    s8 idx;
    u8 blink;
    u8 amp;
    s32 dir;
    u8 shake;
    u8 orbitDone;
    u8 saved2A;
    u8 saved2B;
    s32 finished;
    struct ActorAEE8 *actor;
    struct ActorAEE8 *e;
    u8 priority;
    s8 cur;
    s32 value;
    s32 reward;
    s32 dmg;
    u32 old;
    u16 alloc;
    s32 x;
    s32 y;
    u32 oldf;
    s8 t;

    actor = input;
    actorAEE8 = actor;
    resource = &actor->res;
    setupAEE8(actor, configAEE8, 0);
    resourceInitAEE8(resource);
    sub_0801A0A4(actor);
    saved2A = actor->res.f2A;
    saved2B = actor->res.f2B;
    actor->res.f2A = 0;
    actor->res.f2B = 0;
    alloc = paletteAEE8 = allocateAEE8(actor->res.fD4, actor->res.fD6);
    if (alloc == 0xFFFF) {
        do {
            actor->state = 11;
            if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
                activeAEE8 &= ~(1 << actor->f0);
                return;
            }
            sub_080003F0();
        } while (paletteAEE8 == 0xFFFF);
    }
    initAEE8(&intro, 0x50006, 0xE, -1, 1);
    initAEE8(&sprite, 0x50005, paletteAEE8, -1, 1);
    actor->f5C = actor->f1D6 = resource->f6 * 3;
    value = resource->f4 * 2;
    actor->f5E = actor->f1D4 = (value * 4 + value) * 2;
    actor->tick = 0;
    actor->frame = 0;
    actor->anim = 0;
    actor->state = 0;
    mode = 0;
    lastAnim = 0xFFFF;
    floatingTimer = 0;
    flash = 0;
    actor->phase = 2;
    actor->next = 2;
    introAEE8 = 0;
    sub_08097FE4();
    sub_08097A4C();
    sub_0809D5B8();
    sub_0809D6A8();
    sub_0809D7E4();
    dropAEE8(0);
    dropAEE8(1);
    wait = 0;
    elapsed = 0;
    blink = 0;
    idx = 1;
    actor->f50 = 1;
    i = 0;
    do {
        j = 0;
        do {
            *(u32 *)((u8 *)seenAEE8 + j * 4 + i * 0x14C) = 0;
            j++;
        } while (j <= 4);
        i++;
    } while (i <= 3);
    if (sub_0800CE30() == 1) {
        elapsed = 300;
        amp = 0x40;
        dir = 0;
    }
    actor->lo = *(u8 *)actor;
    actor->f202 = actor->f2;
    actor->f200 = 0xFF;
    finished = 0;
    sub_08067C18();
    while (sub_08067C08() == 0)
        sub_080003F0();
    sub_08067BF8();
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        if (introAEE8 == 0) {
            updateAEE8(actor);
            sub_0801A0B0(actor);
            actor->res.f2A = 0;
            actor->res.f2B = 0;
            if (sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
                s32 zero = sub_0800CD34();
                if (zero == 0) {
                    intro.payload[0] = 0xE;
                    sub_08000AF0(0x1E, (u8 *)intro.palette + (resource->fD6 << 5), 1);
                    screenAEE8(0xEF, 0x98, &sx, &sy, zero, zero);
                    animAEE8(&intro, 0, &actor->frame, &actor->tick, 1);
                    { u32 o = blink;
                    blink = o + 1;
                    if (o & 1)
                        drawAEE8(sx, sy, 0, actor->frame, zero, intro.payload, intro.data, intro.base); }
                }
            }
            if (sub_08056F78() != 0 && sub_0800CE30() == 1) {
                if (elapsed++ > 0x1E0) {
                    elapsed = 0;
                    markAEE8(0);
                    markAEE8(1);
                    markAEE8(2);
                    markAEE8(3);
                }
            }
        } else {
            if (actor->state == 10 && flash == 0) {
                flash = 8;
                shake = 0x40;
            }
            if (actor->phase == 6) {
                for (i = 0; i <= 1; i++) {
                    if (allies[i]->state == 10) {
                        shake = 0x40;
                        allies[i]->state = 2;
                        flashAEE8(actor, 0);
                        flashAEE8(allies[0], 1);
                        flashAEE8(allies[1], 2);
                    }
                }
            }
            if (sub_08058DB0() == 0) {
                updateAEE8(actor);
                sub_0801A0A4(actor);
                actor->res.f2A = saved2A;
                actor->res.f2B = saved2B;
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
                        actor->state = 1;
                        actor->next = 4;
                        actor->phase = 1;
                        sub_08067C18();
                    }
                    break;
                case 3:
                    break;
                case 4:
                    mode = 1;
                    actor->state = mode;
                    target.x = pointsAEE8[idx].x >> 8;
                    target.y = pointsAEE8[idx].y >> 8;
                    if (moveAEE8(actor, target, 0xC0, 8, 0) == 0) {
                        wait = 0;
                        if (sub_0800CE30() == 1 && idx == 0) {
                            shake = 0;
                            orbitDone = 0;
                            for (i = 0; i <= 1; i++) {
                                allies[i] = (struct ActorAEE8 *)(poolAEE8 + (i * 0x2E0 + 0x8A0));
                                activeAEE8 |= 1 << (i + 3);
                                sub_0801A0A4(allies[i]);
{ struct ActorAEE8 *a = allies[i];
                                a->f54 = 0;
                                a->damage = 0;
                                a->f4A = 0;
                                a->tick = 0;
                                a->f10 = 0;
                                a->anim = 0;
                                a->frame = 0;
                                a->f8 = 0;
                                a->f5E = 0; }
                                allies[i]->f5C = 999;
                                allies[i]->f48 = gUnk_03003170.f90;
                                allies[i]->state = 2;
                                memcpy(&allies[i]->res, &actor->res, sizeof(struct ResAEE8));
                                allies[i]->res.f2A = saved2A;
                                allies[i]->res.f2B = saved2B;
                                allies[i]->f0 = i + 3;
                                allies[i]->f50 = actor->f50;
                                allies[i]->f2 = allies[i]->f0 + 4;
                                allies[i]->lo = *(u8 *)allies[i];
                                allies[i]->f202 = allies[i]->f2;
                                allies[i]->f200 = 0xFF;
                            }
                            for (i = 0; i <= 2; i++) {
                                orbit[i].x = 0xEF6E;
                                orbit[i].y = 0xAD00;
                                orbit[i].angle = i * 0x55;
                            }
                            idx = 1;
                            actor->next = 6;
                            actor->phase = 1;
                            sub_08067C18();
                        } else {
                            actor->next = 7;
                            idx++;
                            if (idx == 5)
                                idx = 0;
                        }
                        actor->phase = 1;
                        sub_08067C18();
                    }
                    break;
                case 5:
                    mode = 0;
                    actor->state = 0;
                    if (wait++ > 0xB3) {
                        actor->next = 4;
                        actor->phase = 1;
                        sub_08067C18();
                    }
                    break;
                case 6:
                    mode = 2;
                    actor->state = 2;
                    j = 0;
                    for (i = 0; i <= 2; i++) {
                        x = orbit[i].x;
                        y = orbit[i].y;
                        if (i == 0) {
                            actor->x = x + waveAEE8[orbit[0].angle + 0x40] * (s8)amp;
                            actor->y = y + waveAEE8[orbit[0].angle] * (s8)amp;
                            x = actor->x;
                            y = actor->y;
                        } else {
                            e = allies[j];
                            e->x = x + waveAEE8[orbit[i].angle + 0x40] * (s8)amp;
                            e->y = y + waveAEE8[orbit[i].angle] * (s8)amp;
                            x = e->x;
                            y = e->y;
                            j++;
                        }
                        if (sub_08098004() & 1)
                            priority = sub_08097FF8();
                        else
                            priority = sub_0800BC44(actor->x >> 8, actor->y >> 8, 0);
                        screenAEE8((x << 8) >> 16, (y << 8) >> 16, &sx, &sy, 0, 0);
                        orbit[i].angle++;
                        sub_08000AF0(paletteAEE8 + 0x10, (u8 *)sprite.palette + (resource->fD6 << 5), 1);
                        if (sub_0800CD8C() == 0)
                            animAEE8(&sprite, 0, &actor->frame, &actor->tick, 1);
                        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
                            if (orbit[i].angle & 1)
                                drawAEE8(sx, sy, actor->anim, actor->frame, priority, sprite.payload, sprite.data, sprite.base);
                            if (i == 0 && (blinkAEE8 & 1))
                                drawAEE8(sx, sy - 1, 0x18, 0, priority, sprite.payload, sprite.data, sprite.base);
                        }
                    }
                    if (orbit[0].angle == 0)
                        orbitDone++;
                    if (orbitDone == 3) {
                        value = activeAEE8 & ~8;
                        activeAEE8 = value & ~0x10;
                        elapsed = 0;
                        actor->next = 8;
                        actor->phase = 1;
                        sub_08067C18();
                    }
                    break;
                case 7:
                    mode = 2;
                    actor->state = 2;
                    markAEE8(0);
                    markAEE8(1);
                    markAEE8(2);
                    markAEE8(3);
                    markAEE8(4);
                    markAEE8(5);
                    markAEE8(6);
                    markAEE8(7);
                    flashAEE8(actor, 0);
                    elapsed = 0;
                    actor->next = 8;
                    actor->phase = 1;
                    sub_08067C18();
                    break;
                case 8:
                    mode = 0;
                    actor->state = 0;
                    if (elapsed++ > 0x3B) {
                        actor->next = 5;
                        actor->phase = 1;
                        sub_08067C18();
                    }
                    break;
                }
            }
            switch (mode) {
            case 0:
                actor->anim = actor->f8;
                animFlag = 1;
                break;
            case 1:
                actor->anim = actor->f8 + 8;
                animFlag = 1;
                break;
            case 2:
                actor->anim = actor->f8 + 0x10;
                animFlag = 0;
                break;
            }
            if (lastAnim != actorAEE8->anim) {
                lastAnim = actorAEE8->anim;
                actorAEE8->tick = 0;
                actorAEE8->frame = 0;
            }
            if (actor->phase != 6) {
                sprite.payload[0] = paletteAEE8;
                if (sub_08098004() & 1)
                    priority = sub_08097FF8();
                else
                    priority = sub_0800BC44(actor->x >> 8, actor->y >> 8, 0);
                if (sub_0800CD8C() == 0)
                    actor->f6E = animAEE8(&sprite, actor->anim, &actor->frame, &actor->tick, animFlag);
                screenAEE8((actor->x << 8) >> 16, (actor->y << 8) >> 16, &sx, &sy, 0, 0);
                sub_08000AF0(paletteAEE8 + 0x10, (u8 *)sprite.palette + (resource->fD6 << 5), 1);
                if (flash != 0) {
                    oldf = flash;
                    flash = oldf - 1;
                    if ((oldf & 1) && sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0)
                        drawAEE8(sx, sy, actor->anim, actor->frame, priority, sprite.payload, sprite.data, sprite.base);
                } else if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0) {
                    drawAEE8(sx, sy, actor->anim, actor->frame, priority, sprite.payload, sprite.data, sprite.base);
                }
                if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD34() == 0 && (blinkAEE8 & 1))
                    drawAEE8(sx, sy - 1, 0x18, 0, priority, sprite.payload, sprite.data, sprite.base);
            }
        }
        dmg = actor->damage;
        if (dmg != 0 && lastDamage != dmg) {
            lastDamage = dmg;
            floatingTimer = 10;
            floatingOffset = 0;
        }
        if (floatingTimer != 0) {
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                floatAEE8(actor, lastDamage, floatingOffset);
            if (floatingTimer & 2)
                floatingOffset--;
            floatingTimer--;
        } else {
            lastDamage = 0;
            actor->damage = floatingTimer;
        }
        if (shake != 0) {
            shake--;
            if ((u8)dir) {
                t = amp;
                if (t < 0x40)
                    amp = t + 4;
                else {
                    amp = 0x40;
                    dir = 0;
                }
            } else {
                t = amp;
                if (t > -0x40)
                    amp = t - 4;
                else {
                    amp = 0xC0;
                    dir = 1;
                }
            }
        } else {
            amp = 0xC0;
            if ((u8)dir)
                amp = 0x40;
        }
        if (deadAEE8(actor) != 0)
            finished = 1;
        sub_080003F0();
        if (finished != 0)
            break;
    }
    activeAEE8 = 0;
    playersAEE8[sub_080020F4()].flags |= 1;
    sub_0809D5E4();
    sub_0809D6D8();
    sub_0809D810();
    actorAEE8->tick = 0;
    actorAEE8->frame = 0;
    actorAEE8->anim = 0;
    floatingOffset = 0;
    floatingTimer = 10;
    do {
        s32 zero;
        playersAEE8[sub_080020F4()].flags |= 1;
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0) {
            zero = sub_0800CD34();
            if (zero == 0) {
                sub_08000AF0(paletteAEE8 + 0x10, (u8 *)sprite.palette + (resource->fD6 << 5), 1);
                priority = sub_0800BC44(actorAEE8->x >> 8, actorAEE8->y >> 8, 0);
                actorAEE8->f6E = animAEE8(&sprite, 0, &actorAEE8->frame, &actorAEE8->tick, 1);
                screenAEE8((actorAEE8->x << 8) >> 16, (actorAEE8->y << 8) >> 16, &sx, &sy, zero, zero);
                drawAEE8(sx, sy, actorAEE8->anim, actorAEE8->frame, priority, sprite.payload, sprite.data, sprite.base);
                { u32 o = flash;
                flash = o - 1;
                if (o & 1)
                    drawAEE8(sx, sy - 1, 0x18, 0, priority, sprite.payload, sprite.data, sprite.base); }
                floatAEE8(actor, lastDamage, floatingOffset);
            }
        }
        if (floatingTimer & 2)
            floatingOffset--;
        sub_080003F0();
        floatingTimer--;
    } while (floatingTimer != 0xFFFF);
    sub_080683CC();
    paletteFreeAEE8(actor->f2);
    sub_08068330(0xDEADFACE);
    while (sub_080682B8(0xDEADFACE) == 0)
        RENDER_AEE8();
    sub_08065E38(0xDEADFACE);
    while (sub_08058DB0() != 0)
        RENDER_AEE8();
    soundStopAEE8(0);
    playersAEE8[sub_080020F4()].flags |= 1;
    *(s32 *)(stateAEE8 + 0x720) = windowAEE8(1, 0xE, 0x19, 2, 0x3C, 0x140042);
    while (windowDoneAEE8(*(s32 *)(stateAEE8 + 0x720)) == 0)
        RENDER_AEE8();
    playersAEE8[sub_080020F4()].flags &= ~1;
    soundAEE8(0xD);
    transitionAEE8(actorAEE8, &sprite, resource->fD6, paletteAEE8);
    if (!(playersAEE8[sub_080020F4()].flags & 0x2000) && actorAEE8->f5A != 0) {
        reward = rewardAEE8(inventoryAEE8, resource);
        floatingOffset = 0x1D;
        do {
            struct ActorAEE8 *g = actorAEE8;
            g->y -= 0x20;
            riseAEE8(g, reward);
            sub_080003F0();
            floatingOffset--;
        } while (floatingOffset != -1);
        rewardDoneAEE8(inventoryAEE8, reward);
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
#undef RENDER_AEE8
struct SprC1B4 { u32 f0, f4, f8, fC; u8 pad10[0xC]; u8 f1C[7]; u8 f23; u8 f24; u8 pad25[0xF]; };
struct PlayerC1B4 { u8 p0[0x20]; u16 state; u8 p22[0xe]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x23]; s32 x, y; u8 p94[0x1c]; u16 fb0; u8 pb2[0x32]; u32 fe4[26]; };
struct ObjC1B4 { u16 f0; u8 p2[6]; s16 f8; u16 fa, fc; u8 pe[6]; s32 x, y; u8 p1c[0x34]; s32 f50; };
extern struct PlayerC1B4 playersC1B4[] asm("gUnk_03003CE0");
extern struct ObjC1B4 *objC1B4 asm("gUnk_030002EC");
extern u16 palC1B4 asm("gUnk_030002F0");
extern void initC1B4(void *, s32, s32, s32, s32) asm("sub_08065158");
extern void animC1B4(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern s32 *drawC1B4(s32, s32, s32, u16, s32, void *, u32, u32) asm("sub_08007870");
extern void coordsC1B4(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern u16 sqrtC1B4(s32) asm("Sqrt");
extern void sub_08029CEC(s32, s32, s32);
struct TaskC1B4 { u32 f0, f4, f8; };
extern struct TaskC1B4 *taskC1B4(void) asm("sub_0800048C");

void sub_0809C1B4(u16 arg0)
{
    struct SprC1B4 spr;
    s16 sx, sy;
    u16 frame, h2;
    s32 baseX, baseY;
    u16 timer;
    s32 radius;
    u8 delay;
    s32 hit;
    u8 ang;
    s32 x, y;
    u16 dx, dy;
    u16 d;

    initC1B4(&spr, 0x50005, 0, -1, 1);
    spr.f1C[0] = palC1B4;
    baseX = objC1B4->x;
    baseY = objC1B4->y;
    hit = 0;
    radius = 0;
    ang = arg0 << 5;
    timer = 360;
    delay = 120;
    sub_0805865C(0xE6);
    do {
        if (delay != 0) {
            delay--;
            x = baseX;
            y = baseY;
            if (delay == 0)
                sub_0805865C(0xE7);
        } else {
            x = (u32)(gUnk_080B9704[ang + 0x40] * radius) >> 8;
            y = radius;
            y = (u32)(gUnk_080B9704[ang] * y) >> 8;
            x += baseX;
            y += baseY;
            radius += 0x200;
            if (sub_0800CE30() == 1 && (arg0 & 1))
                ang--;
            else
                ang++;
        }
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            sub_08000AF0(palC1B4 + 0x10, (void *)spr.fC, 1);
            coordsC1B4((s16)(x >> 8), (s16)(y >> 8), &sx, &sy, 0, 0);
            animC1B4(&spr, 0x1A, &frame, &h2, 1);
            if (delay != 0) {
                if (arg0 == 0)
                    drawC1B4(sx, sy + 2, 0x1A, frame, arg0, spr.f1C, spr.f8, spr.f0)[3] = sy;
            } else if (timer & 1) {
                drawC1B4(sx, sy, 0x1A, frame, delay, spr.f1C, spr.f8, spr.f0);
            }
        }
        dx = (x >> 8) - (playersC1B4[sub_080020F4()].x >> 8);
        dy = (y >> 8) + 12 - (playersC1B4[sub_080020F4()].y >> 8);
        d = sqrtC1B4((s16)dx * (s16)dx + (s16)dy * (s16)dy);
        if (delay == 0 && hit == 0 && d <= 9
            && sub_0800CDF8() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0 && objC1B4->fc != 11
            && !(playersC1B4[sub_080020F4()].flags & 0x2000) && playersC1B4[sub_080020F4()].f68
            && playersC1B4[sub_080020F4()].state != 14 && playersC1B4[sub_080020F4()].state != 11
            && playersC1B4[sub_080020F4()].state != 12
            && playersC1B4[sub_080020F4()].fe4[objC1B4->f0] != objC1B4->f50) {
            if (sub_0800CE30() == 1)
                sub_08029CEC(0, 0x46, 5);
            else
                sub_08029CEC(0, 0xC, 1);
            playersC1B4[sub_080020F4()].fb0 = 0xFFFE;
            playersC1B4[sub_080020F4()].fe4[objC1B4->f0] = objC1B4->f50++;
            hit = 1;
        }
        sub_080003F0();
    } while (--timer != 0xFFFF);
    taskC1B4()->f8 = 0;
}
#ifdef NONMATCHING
struct PosC4E8 { u16 x, y; };
struct PlayerC4E8 { u8 p0[0x20]; u16 state; u8 p22[0xe]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x23]; s32 x, y; u8 p94[0x1c]; u16 fb0; u8 pb2[0x32]; u32 fe4[25]; struct PosC4E8 *pos; };
extern struct PlayerC4E8 playersC4E8[] asm("gUnk_03003CE0");
extern struct ObjC1B4 *objC4E8 asm("gUnk_030002EC");
struct XYC4E8 { s32 x, y; };
struct PlayerYC4E8 { s32 y; u8 rest[0x148]; };
extern struct PlayerYC4E8 playersYC4E8[] asm("gUnk_03003D70");
extern s32 y0C4E8 asm("gUnk_03003D70");
extern s32 y1C4E8 asm("gUnk_03003EBC");
extern s32 y2C4E8 asm("gUnk_03004008");
extern s32 y3C4E8 asm("gUnk_03004154");
extern struct PosC4E8 *v0C4E8 asm("gUnk_03003E28");
extern struct PosC4E8 *v1C4E8 asm("gUnk_03003F74");
extern struct PosC4E8 *v2C4E8 asm("gUnk_030040C0");
extern struct PosC4E8 *v3C4E8 asm("gUnk_0300420C");
extern u8 aimC4E8(s32, s32, s32, s32) asm("sub_08095FC8");
extern void moveC4E8(s32, struct XYC4E8 *, u8) asm("sub_08097BA4");

void sub_0809C4E8(u16 which)
{
    struct PlayerC4E8 *pl;
    struct SprC1B4 spr;
    s16 sx, sy;
    u16 frame, h2;
    struct XYC4E8 pos;
    u32 nplayers;
    u16 timer;
    u8 delay;
    s32 hit;
    struct XYC4E8 t;
    u16 dx, dy;
    u16 d;

    initC1B4(&spr, 0x50005, 0, -1, 1);
    spr.f1C[0] = palC1B4;
    nplayers = sub_08002164();
    hit = 0;
    timer = 360;
    delay = 120;
    sub_0805865C(0xE6);
    pl = playersC4E8;
    do {
        if (nplayers == 1) {
            if (which != 0)
                goto end;
            t.x = (s16)(pl[0].x >> 8);
            t.y = (s16)(y0C4E8 >> 8);
        } else {
            switch (which) {
            case 0:
                if (sub_080020F4() == 0) {
                    t.x = (s16)(pl[0].x >> 8);
                    t.y = (s16)(y0C4E8 >> 8);
                } else {
                    t.x = v0C4E8->x >> 4;
                    t.y = ((u32)v0C4E8->y << 20) >> 20;
                }
                break;
            case 1:
                if (sub_080020F4() == 1) {
                    t.x = (s16)(pl[1].x >> 8);
                    t.y = (s16)(y1C4E8 >> 8);
                } else {
                    t.x = v1C4E8->x >> 4;
                    t.y = ((u32)v1C4E8->y << 20) >> 20;
                }
                break;
            case 2:
                if (nplayers <= 2)
                    goto end;
                if (sub_080020F4() == 2) {
                    t.x = (s16)(pl[2].x >> 8);
                    t.y = (s16)(y2C4E8 >> 8);
                } else {
                    t.x = v2C4E8->x >> 4;
                    t.y = ((u32)v2C4E8->y << 20) >> 20;
                }
                break;
            case 3:
                if (nplayers != 4)
                    goto end;
                if (sub_080020F4() == 3) {
                    t.x = (s16)(pl[3].x >> 8);
                    t.y = (s16)(y3C4E8 >> 8);
                } else {
                    t.x = v3C4E8->x >> 4;
                    t.y = ((u32)v3C4E8->y << 20) >> 20;
                }
                break;
            }
        }
        if (delay != 0) {
            delay--;
            pos.x = objC4E8->x;
            pos.y = objC4E8->y;
            if (delay == 0)
                sub_0805865C(0xE7);
        } else {
            moveC4E8(0xF8, &pos, aimC4E8(pos.x >> 8, pos.y >> 8, t.x, t.y));
        }
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
            sub_08000AF0(palC1B4 + 0x10, (void *)spr.fC, 1);
            coordsC1B4((s16)(pos.x >> 8), (s16)(pos.y >> 8), &sx, &sy, 0, 0);
            if (delay != 0) {
                if (which == 0 && sub_0800CD8C() == 0) {
                    animC1B4(&spr, 0x1A, &frame, &h2, 1);
                    drawC1B4(sx, sy + 2, 0x1A, frame, 0, spr.f1C, spr.f8, spr.f0)[3] = sy;
                }
            } else if ((timer & 1) && sub_0800CD8C() == 0) {
                animC1B4(&spr, 0x1A, &frame, &h2, 1);
                drawC1B4(sx, sy, 0x1A, frame, delay, spr.f1C, spr.f8, spr.f0);
            }
        }
        dx = (pos.x >> 8) - (playersC4E8[sub_080020F4()].x >> 8);
        dy = (pos.y >> 8) + 12 - (playersYC4E8[sub_080020F4()].y >> 8);
        d = sqrtC1B4((s16)dx * (s16)dx + (s16)dy * (s16)dy);
        if (delay == 0 && hit == 0 && d <= 15
            && sub_0800CCCC() == 0 && sub_0800CD8C() == 0 && sub_0800CDF8() == 0 && objC4E8->fc != 11
            && !(playersC4E8[sub_080020F4()].flags & 0x2000) && playersC4E8[sub_080020F4()].f68
            && playersC4E8[sub_080020F4()].state != 14 && playersC4E8[sub_080020F4()].state != 11
            && playersC4E8[sub_080020F4()].state != 12
            && playersC4E8[sub_080020F4()].fe4[objC4E8->f0] != objC4E8->f50) {
            sub_08029CEC(0, 0x46, 5);
            playersC4E8[sub_080020F4()].fb0 = 0xFFFE;
            playersC4E8[sub_080020F4()].fe4[objC4E8->f0] = objC4E8->f50++;
            hit = 1;
        }
        sub_080003F0();
    } while (--timer != 0xFFFF);
end:
    taskC1B4()->f8 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C4E8);
#endif
struct PlayerC8F4 { u8 p0[0x20]; u16 state; u8 p22[0xe]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1f]; u16 f88; u8 p8a[2]; s32 x, y; u8 p94[0x1c]; u16 fb0; u8 pb2[0x16]; u16 fc8, fca, fcc; u8 pce[0x16]; u32 fe4[26]; };
extern struct PlayerC8F4 playersC8F4[] asm("gUnk_03003CE0");
extern u16 atanC8F4(s16, s16) asm("ArcTan2");
extern u16 hitC8F4(void *, void *) asm("sub_0801ED8C");

void sub_0809C8F4_(struct ObjC1B4 *o) asm("sub_0809C8F4");
void sub_0809C8F4_(struct ObjC1B4 *o)
{
    struct SprC1B4 spr;
    s16 sx, sy;
    u16 frame, h2;
    u16 timer;
    s32 hit;
    s32 ox, oy;
    u16 dx, dy;
    u16 d;
    s32 n;
    u32 angle, rem, dir;

    initC1B4(&spr, 0x50005, 0, -1, 1);
    spr.f1C[0] = palC1B4;
    hit = 0;
    timer = 180;
    do {
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0 && (timer & 1)) {
            sub_08000AF0(palC1B4 + 0x10, (void *)spr.fC, 1);
            coordsC1B4((s16)(o->x >> 8), (s16)(o->y >> 8), &sx, &sy, 0, 0);
            animC1B4(&spr, 0x19, &frame, &h2, 1);
            drawC1B4(sx, sy + 1, 0x19, frame, 0, spr.f1C, spr.f8, spr.f0)[3] = sy - 0x17;
        }
        ox = o->x;
        oy = o->y;
        dx = (ox >> 8) - (playersC8F4[sub_080020F4()].x >> 8);
        dy = (oy >> 8) - (playersC8F4[sub_080020F4()].y >> 8);
        d = sqrtC1B4((s16)dx * (s16)dx + (s16)dy * (s16)dy);
        if (hit == 0 && d <= 0x2F
            && sub_0800CDF8() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && o->fc != 11
            && !(playersC8F4[sub_080020F4()].flags & 0x2000) && playersC8F4[sub_080020F4()].f68
            && playersC8F4[sub_080020F4()].state != 14 && playersC8F4[sub_080020F4()].state != 11
            && playersC8F4[sub_080020F4()].state != 12
            && playersC8F4[sub_080020F4()].fe4[o->f0] != o->f50) {
            hit = 1;
            playersC8F4[sub_080020F4()].fb0 = 0xFFFE;
            playersC8F4[sub_080020F4()].state = 10;
            n = sub_080020F4();
            playersC8F4[n].f88 += hitC8F4(o, &playersC8F4[sub_080020F4()]);
            playersC8F4[sub_080020F4()].fe4[o->f0] = o->f50++;
            dx = (playersC8F4[sub_080020F4()].x >> 8) - (o->x >> 8);
            dy = (playersC8F4[sub_080020F4()].y >> 8) - (o->y >> 8);
            angle = atanC8F4(dx, dy);
            rem = angle << 19;
            dir = angle >> 13;
            if (rem > 0x80000000U) {
                if (dir <= 6) dir++; else dir = 0;
            }
            switch (dir) {
            case 0: playersC8F4[sub_080020F4()].fca = 6; break;
            case 1: playersC8F4[sub_080020F4()].fca = 7; break;
            default: playersC8F4[sub_080020F4()].fca = dir - 2; break;
            }
            playersC8F4[sub_080020F4()].fcc = 0x400;
            playersC8F4[sub_080020F4()].fc8 = 8;
            sub_0805865C(0xE2);
        }
        sub_080003F0();
    } while (--timer != 0xFFFF);
    taskC1B4()->f8 = 0;
}
#ifdef NONMATCHING
struct SprCC2C { u32 f0, f4, f8, fC; u8 pad10[0xC]; u8 f1C[7]; u8 f23; u8 f24; u8 pad25[0xF]; };
struct PosCC2C { u16 x, y; };
struct XYCC2C { u32 x, y; };
struct PlayerCC2C { u8 p0[0x30]; u32 flags; u8 p34[0x114]; struct PosCC2C *pos; };
struct SubCC2C { u8 p0[4]; s16 f4, f6; u8 p8[0xce]; u16 fd6; };
struct EntCC2C {
    u16 f0, f2; u8 p4[4]; u16 f8; u8 pa[2]; u16 fc; u8 pe[6];
    s32 x, y; u8 p1c[0x2c]; u16 f48; u8 p4a[2]; s32 f4c; s32 f50, f54;
    u8 p58[2]; u16 f5a; s16 f5c; s16 f5e; u8 p60[8]; u16 f68, f6a, f6c, f6e;
    u8 p70[0x164]; s16 f1d4, f1d6; u8 p1d8[0x24];
    u8 lo:4; u8 hi:4;
    u8 f1fd, f1fe, p1ff; u8 f200; u8 p201; u16 f202;
    struct SubCC2C sub;
};
extern struct PlayerCC2C playersCC2C[] asm("gUnk_03003CE0");
extern u8 *entsCC2C asm("gUnk_030056F4");
extern u32 maskCC2C asm("gUnk_030056FC");
extern struct EntCC2C *tblCC2C[] asm("gUnk_03000300");
extern struct EntCC2C *objCC2C asm("gUnk_030002EC");
extern s32 heapCC2C asm("gUnk_030034E0");
struct TileCC2C { u8 p[0x90]; u16 f90; };
extern struct TileCC2C tileCC2C asm("gUnk_03003170");
extern u8 srcCC2C[] asm("gUnk_084A1910");
extern void initCC2C(void *, s32, s32, s32, s32) asm("sub_08065158");
extern u16 animCC2C(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void drawCC2C(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
extern void coordsCC2C(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void setupCC2C(void *, void *, s32) asm("sub_0801623C");
extern void s19F60(void) asm("sub_08019F60");
extern u8 s96594(u8) asm("sub_08096594");
extern u8 s97AC0(void *, struct XYCC2C, u32, s32, s32) asm("sub_08097AC0");
extern u8 s9D374(void *) asm("sub_0809D374");
extern void s1C8F0(void *) asm("sub_0801C8F0");
extern void s96640(void *) asm("sub_08096640");
extern void s1A120(void *, s32, s16) asm("sub_0801A120");
extern u16 s19CE8(void *) asm("sub_08019CE8");
extern void s6171C(void *, s32) asm("sub_0806171C");
extern s32 s0800CD8C(void) asm("sub_0800CD8C");
extern s32 s0800CCCC(void) asm("sub_0800CCCC");
extern s32 s0800CC98(void) asm("sub_0800CC98");
extern s32 s0800CD34(void) asm("sub_0800CD34");
extern s32 s080020F4(void) asm("sub_080020F4");
extern void yieldCC2C(void) asm("sub_080003F0");

void sub_0809CC2C_(u8 idx) asm("sub_0809CC2C");
void sub_0809CC2C_(u8 idx)
{
    struct SprCC2C spr1;
    struct SprCC2C spr2;
    s16 sx, sy;

    struct EntCC2C *ent;
    struct SubCC2C *sub;
    struct SprCC2C *spr;
    struct XYCC2C t;
    struct PosCC2C *pos;
    s32 last;
    u32 speed;
    s32 mode;
    u16 prevFrame; u32 prevMode;
    u16 blink;
    u16 flash;
    s32 flag;
    u16 timer;
    u16 limit;
    s16 shake;
    u8 done;
    u16 *p68, *p6a, *p6c;
    u8 pal;
    u32 palNo;
    u32 v;
    struct EntCC2C **pp;
    s32 h;
    s32 r;
    struct PlayerCC2C *pl;
    s16 *p5c;


    palNo = 6;
    ent = (struct EntCC2C *)(entsCC2C + (idx * 0x2e0 + 0x2e0));
    sub_0801A0A4(ent);
    maskCC2C |= 1 << (idx + 1);
    tblCC2C[idx] = ent;
    switch (idx) {
    case 0: ent->x = 0x890E; break;
    case 1: ent->x = 0x14945; break;
    }
    ent->y = 0xDC50;
    setupCC2C(ent, srcCC2C, idx + 1);
    sub = &ent->sub;
    s19F60();
    ent->f48 = tileCC2C.f90;
    ent->f0 = idx + 1;
    ent->f2 = idx + 5;
    ent->f50 = 1;
    ent->f54 = 0;
    ent->lo = ent->f0;
    ent->f202 = ent->f2;
    ent->f200 = 0xFF;
    ent->f1fd = 2;
    initCC2C(&spr1, 0x5004C, 6, -1, 0);
    initCC2C(&spr2, 0x5004B, 6, -1, 0);
    ent->f5c = ent->f1d6 = sub->f6 * 3;
    ent->f5e = ent->f1d4 = (sub->f4 << 1) * 10;
    ent->f6c = 0;
    ent->f6a = 0;
    ent->f68 = 0;
    ent->fc = 0;
    mode = 0;
    prevFrame = 0xFFFF;
    prevMode = 0xFFFF;
    flash = 0;
    blink = 0;
    done = 0;
    r = sub_0800CE30();
    p5c = &ent->f5c;
    p6c = &ent->f6c;
    p6a = &ent->f6a;
    p68 = &ent->f68;
    do {
    if (r == 1) {
        limit = 90;
        speed = 0x100;
    } else {
        limit = 180;
        speed = 0x80;
    }
    while (gUnk_030002E8 == 0 ? sub_0801A0B0(ent) : sub_0801A0A4(ent), objCC2C->f5c != 0) {
        if (ent->fc == 10 && blink == 0)
            blink = 8;
        if (sub_08058DB0() == 0) {
            s1C8F0(ent);
            switch (ent->f1fd) {
            case 1:
                ent->fc = 0;
                if (sub_080682B8(ent->f0)) {
                    ent->f1fd = ent->f1fe;
                    sub_08065E38(ent->f0);
                }
                break;
            case 2:
                mode = 0;
                if (sub_08056F78()) {
                    ent->f1fe = 4;
                    ent->f1fd = 1;
                    sub_08068330(ent->f0);
                }
                break;
            case 4:
                mode = 1;
                ent->fc = 1;
                ent->hi = s96594(idx);
                pl = &playersCC2C[ent->hi];
                pos = pl->pos;
                t.x = pos->x >> 4;
                t.y = ((u32)pos->y << 20) >> 20;
                if (s97AC0(ent, t, speed, 0x30, mode) == 0) {
                    sub_08097A38(idx);
                    ent->f1fe = 6;
                    ent->f1fd = 1;
                    sub_08068330(ent->f0);
                }
                break;
            case 6:
                mode = 2;
                ent->fc = 2;
                if (*p6a == 1 && *p6c == 0 && done == 0)
                    done = s9D374(ent);
                if (ent->f6e != 0) {
                    done = 0;
                    timer = 0;
                    ent->f1fe = 8;
                    ent->f1fd = 1;
                    sub_08068330(ent->f0);
                }
                break;
            case 8:
                mode = 0;
                ent->fc = 0;
                if (timer++ >= limit) {
                    ent->f1fe = 4;
                    ent->f1fd = 1;
                    sub_08068330(ent->f0);
                }
                break;
            }
        }
        s96640(ent);
        switch (mode) {
        case 0:
            spr = &spr1;
            *p68 = ent->f8;
            flag = 1;
            break;
        case 1:
            spr = &spr1;
            *p68 = ent->f8 + 8;
            flag = 1;
            break;
        case 2:
            spr = &spr2;
            *p68 = ent->f8;
            flag = 0;
            break;
        }
        if (prevFrame != *p68 || prevMode != mode) {
            prevMode = mode;
            prevFrame = *p68;
            *p6c = 0;
            *p6a = 0;
        }
        spr->f1C[0] = palNo;
        sub_08000AF0(palNo + 0x10, (void *)(spr->fC + sub->fd6 * 32), 1);
        if (sub_08098004() & 1)
            pal = sub_08097FF8();
        else
            pal = sub_0800BC44(ent->x >> 8, ent->y >> 8, 0);
        if (s0800CD8C() == 0)
            ent->f6e = animCC2C(spr, *p68, p6a, p6c, flag);
        coordsCC2C((s16)(ent->x >> 8), (s16)(ent->y >> 8), &sx, &sy, 0, 0);
        if (blink != 0) {
            if ((blink-- & 1) && s0800CCCC() == 0 && s0800CC98() == 0 && s0800CD34() == 0)
                drawCC2C(sx, sy, *p68, *p6a, pal, spr->f1C, spr->f8, spr->f0);
        } else if (s0800CCCC() == 0 && s0800CC98() == 0 && s0800CD34() == 0) {
            drawCC2C(sx, sy, *p68, *p6a, pal, spr->f1C, spr->f8, spr->f0);
        }
        v = ent->f4c;
        if (v != 0 && last != v) {
            last = v;
            flash = 10;
            shake = 0;
        }
        if (flash != 0) {
            if (s0800CC98() == 0 && s0800CCCC() == 0 && s0800CD34() == 0)
                s1A120(ent, last, shake);
            if (flash & 2)
                shake--;
            flash--;
        } else {
            last = 0;
            ent->f4c = 0;
        }
        if (s19CE8(ent) != 0) {
            yieldCC2C();
            goto out;
        }
        yieldCC2C();
    }
    *p5c = 0;
    ent->fc = 11;
out:
    maskCC2C &= ~(1 << tblCC2C[idx]->f0);
    blink = 20;
    do {
        spr->f1C[0] = palNo;
        sub_08000AF0(palNo + 0x10, (void *)(spr->fC + sub->fd6 * 32), 1);
        if (sub_08098004() & 1)
            pal = sub_08097FF8();
        else
            pal = sub_0800BC44(ent->x >> 8, ent->y >> 8, 0);
        if (s0800CD8C() == 0)
            ent->f6e = animCC2C(spr, *p68, p6a, p6c, flag);
        coordsCC2C((s16)(ent->x >> 8), (s16)(ent->y >> 8), &sx, &sy, 0, 0);
        if ((blink & 1) && s0800CCCC() == 0 && s0800CC98() == 0 && s0800CD34() == 0)
            drawCC2C(sx, sy, *p68, *p6a, pal, spr->f1C, spr->f8, spr->f0);
        yieldCC2C();
    } while (--blink != 0xFFFF);
    if (!(playersCC2C[s080020F4()].flags & 0x2000)) {
        pp = &tblCC2C[idx];
        if ((*pp)->f5a != 0) {
            h = sub_0801E46C((void *)heapCC2C, sub);
            shake = 0x1d;
            do {
                (*pp)->y -= 0x20;
                s6171C(*pp, h);
                yieldCC2C();
            } while (--shake != -1);
            sub_0801E4CC((u8 *)heapCC2C, h);
        }
    }
    } while (0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809CC2C);
#endif
struct PosD374 { u16 x, y; };
struct PlayerD374 { u8 p0[0x20]; u16 state; u8 p22[0xe]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1f]; u16 f88; u8 p8a[0x26]; u16 fb0; u8 pb2[0x32]; u32 fe4[25]; struct PosD374 *pos; };
struct ObjectD374 { u16 f0; u8 p2[6]; s16 f8; u16 fa, fc; u8 pe[6]; s32 x,y; u8 p1c[0x34]; s32 f50; };
extern struct PlayerD374 playersD374[] asm("gUnk_03003CE0");
extern u16 sqrtD374(s32) asm("Sqrt");
extern u16 atanD374(s16,s16) asm("ArcTan2");
extern u16 hitD374(void *,void *) asm("sub_0801ED8C");
s32 sub_0809D374(struct ObjectD374 *o) {
    u16 x = (u32)(o->x << 8) >> 16;
    u16 y = (u32)(o->y << 8) >> 16;
    u8 *positionBaseD374 = (u8 *)playersD374;
    s32 indexD374;
    u32 scaledIndexD374;
    u32 px;
    register u32 py asm("r1");
    s16 dx, dy;
    s32 ret;
    u32 angle, direction, rem;
    asm("" : "+r"(positionBaseD374));
    indexD374 = sub_080020F4();
    scaledIndexD374 = indexD374 * 0x14C;
    /* Share the position-slot base across both player lookups. */
    positionBaseD374 += 0x148;
    px = (*(struct PosD374 **)(positionBaseD374 + scaledIndexD374))->x >> 4;
    py = (u32)(*(struct PosD374 **)(positionBaseD374 + sub_080020F4() * 0x14C))->y << 20;
    px -= (s16)x;
    py = (py >> 20) - (s16)y;
    dx = px;
    dy = py;
    ret = 0;
    if (sqrtD374(dx * dx + dy * dy) <= 47) {
        angle = atanD374(dx,dy);
        rem = angle << 19;
        direction = angle >> 13;
        if (rem > 0x80000000U) {
            if (direction <= 6) direction++; else direction = 0;
        }
        if ((o->f8 == 0 && direction == 2) || (o->f8 == 1 && direction == 3) || (o->f8 == 2 && direction == 4) || (o->f8 == 3 && direction == 5) || (o->f8 == 4 && direction == 6) || (o->f8 == 5 && direction == 7) || (o->f8 == 6 && direction == 0) || (o->f8 == 7 && direction == 1)) {
            if (sub_0800CDF8() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && o->fc != 11 && !(playersD374[sub_080020F4()].flags & 0x2000) && playersD374[sub_080020F4()].f68 && playersD374[sub_080020F4()].state != 14 && playersD374[sub_080020F4()].state != 11 && playersD374[sub_080020F4()].state != 12 && playersD374[sub_080020F4()].fe4[o->f0] != o->f50) {
                s32 n;
                playersD374[sub_080020F4()].state = 10;
                playersD374[sub_080020F4()].fb0 = 0xfffe;
                n = sub_080020F4();
                playersD374[n].f88 += hitD374(o, &playersD374[sub_080020F4()]);
                playersD374[sub_080020F4()].fe4[o->f0] = o->f50++;
                ret = 1;
            }
        }
    }
    return ret;
}
void sub_0809D558(void) {
    gUnk_030002E8 = 1;
}
s8 sub_0809D564(void) {
    return (s8) (u8) gUnk_030002E8;
}
void sub_0809D574(void)
{
    sub_0805867C(0xE6);
    if (*(s16 *)((u8 *)gUnk_030002EC + 0x5C) != 0) {
        sub_0809D5E4();
        sub_0809D6D8();
        sub_0809D810();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_030002F0);
}
void sub_0809D5B8(void)
{
  int i;
  gUnk_030002F4 = sub_08001494(0x140);
  for (i = 0; i < 8; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_030002F4) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_0809D5E4(void)
{
  u32 i;
  u8 *new_var;
  u8 *entry;
  new_var = (entry = (u8 *) gUnk_030002F4);
  sub_0805867C(0xE6);
  for (i = 0, new_var; i < 8; i++)
  {
    if (sub_08000470(entry) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002F4);
  gUnk_030002F4 = i;
}
extern struct TaskP *gTP030002F4 asm("gUnk_030002F4");
extern s8 gS030002E8 asm("gUnk_030002E8");
extern void sub_0809C4E8();
extern void sub_0809C1B4();
void sub_0809D620(u16 a)
{
    struct TaskP *t = gTP030002F4;
    u8 i;
    i = 0;
    goto check;
next:
    i++;
    t = (struct TaskP *)((u8 *)t + 0x28);
check:
    if (i > 7)
        return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0)
        goto next;
    if ((t->f20 = sub_08001494(0x400)) == 0)
        return;
    t->f10 = t->f20 + 0x3FC;
    if (sub_0800CE30() == 1 && gS030002E8 == 0)
        t->fC = (u32)sub_0809C4E8;
    else
        t->fC = (u32)sub_0809C1B4;
    t->f24 = 0;
    t->f8 = 0x46;
    sub_08000274_2(t, a);
}
void sub_0809D6A8(void)
{
  u8 var_r2;
  void *new_var;
  gUnk_030002F8 = (new_var = sub_08001494(0x78U));
  var_r2 = 0;
  do
  {
    *((s32 *) (((s8 *) ((var_r2 * 0x28) + gUnk_030002F8)) + 8)) = 0;
    var_r2 += 1;
  }
  while (((u32) var_r2) <= 2U);
}
void sub_0809D6D8(void)
{
  s32 var_r4;
  u32 var_r5;
  s32 new_var;
  int new_var2;
  new_var = gUnk_030002F8;
  var_r5 = 0;
  var_r4 = new_var;
  do
  {
    if (sub_08000470(var_r4) != 0)
    {
 do { sub_080003A8(var_r4); } while (0);
    }
    var_r4 += 0x28;
    var_r5 += 1;
  }
  while (var_r5 <= 2U);
  new_var2 = 0;
  sub_08001538(gUnk_030002F8);
  gUnk_030002F8 = new_var2;
}
extern u8 *gP030002F8 asm("gUnk_030002F8");
void sub_0809D710(u32 a, u16 arg)
{
  struct TaskP *t = (struct TaskP *) gP030002F8;
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
 do { t->f10 = t->f20 + 0x3FC; t->fC = (u32) sub_0809C8F4; t->f24 = z; t->f8 = 0x46; sub_08000274_3((u32)t, a, arg); } while (0);
}
extern struct TaskP *gTP03000308 asm("gUnk_03000308");
extern void sub_0809D848();
void sub_0809D77C(u8 a)
{
    struct TaskP *t = gTP03000308;
    u8 i;
    i = 0;
    goto check;
next:
    i++;
    t = (struct TaskP *)((u8 *)t + 0x28);
check:
    if (i > 1)
        return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0)
        goto next;
    t->f8 = a + 0x46;
    t->f20 = sub_08001494(0x400);
    t->f10 = t->f20 + 0x3FC;
    t->fC = (u32)sub_0809CC2C;
    t->f24 = (u32)sub_0809D848;
    sub_08000274_2(t, a);
}
void sub_0809D7E4(void)
{
    u32 i;
    gUnk_03000308 = sub_08001494(0x50);
    for (i = 0; i < 2; i++)
        M2C_FIELD((u8 *)gUnk_03000308 + i * 0x28, s32 *, 8) = 0;
}
void sub_0809D810(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_03000308;
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
  sub_08001538(gUnk_03000308);
  gUnk_03000308 = i;
}
void sub_0809D848(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x46;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000300[obj[2]]);
}
