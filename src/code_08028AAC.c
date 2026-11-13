#include "global.h"
extern void sub_08028918();

void sub_080003F4(s32);
void sub_080867F8(void);

void sub_0802939C(s32, s32);

typedef struct { s32 x, y; } Vec028AAC;
struct Actor028AAC { u32 id; u8 p4[4]; Vec028AAC pos, target; u8 p18[0x58]; };
struct Obj028AAC { Vec028AAC pos; u8 p8[0x12]; u16 f1A, f1C; u8 p1E[6]; };
struct State028AAC { u8 p0[0x7A4]; struct Actor028AAC actors[15]; };
struct Enemy028AAC { u8 p0[0x14]; Vec028AAC pos, prev, target; u8 p2C[0x2B4]; };
struct Player028AAC { u8 p0[0x8C]; Vec028AAC pos, prev, target; u8 pA4[0xA8]; };
extern struct State028AAC *state028AAC asm("gUnk_03005CF4");
extern struct Enemy028AAC *enemies028AAC asm("gUnk_030056F4");
extern struct Player028AAC players028AAC[] asm("gUnk_03003CE0");
extern void lerp028AAC(s32 *, s32, s32, s32) asm("sub_080659F4");
extern void mark028AAC(u16, u16, u16, u16, s32) asm("sub_0800AEF4");
static inline struct Actor028AAC *find028AAC(u32 id)
{
    struct Actor028AAC *p = state028AAC->actors;
    u32 i;

    i = 0;
    do {
        if (p->id == id)
            return p;
        i++;
        p++;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
void sub_08028AAC_v(u32 who, s32 ax, s32 ay, s32 af) asm("sub_08028AAC");
/* [MoveSceneEntityToPosition] Converts unsigned pixel coordinates to 24.8 fixed point and linearly
 * interpolates all supported entity positions with sub_080659F4, yielding each step; zero frames writes
 * immediately. Player/enemy previous coordinates are synchronized; map objects unmark/remark their collision
 * footprint. Original ABI truncates X,Y,frames to unsigned16. Selector>0x100000 searches15 actors by word ID;
 * missing actor yields once then returns.6..0x100000 directly indexes map-object base+0x4B4+selector*0x24
 * WITHOUT capacity check;1..5 enemies,0 localplayer. Coordinates shifted8;timed step=floor(1024/frames),sample
 * t=0 while t<=1023. */
void sub_08028AAC_v(u32 who, s32 ax, s32 ay, s32 af)
{
    u32 t, step;
    s32 x, y, frames;
    Vec028AAC s;
    x = (u16)ax; y = (u16)ay; frames = (u16)af;

    if (who > 0x100000) {
        struct Actor028AAC *a = find028AAC(who);
        if (a == NULL)
            return;
        if (frames != 0) {
            t = 0;
            step = 0x400 / frames;
            a->target.x = x << 8;
            a->target.y = y << 8;
            s = a->pos;
            do {
                lerp028AAC(&a->pos.x, s.x, a->target.x, t);
                lerp028AAC(&a->pos.y, s.y, a->target.y, t);
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            return;
        }
        a->pos.x = x << 8;
        a->pos.y = y << 8;
        sub_080003F0();
        return;
    }
    if (who > 5) {
        struct Obj028AAC *o = (struct Obj028AAC *)((u8 *)state028AAC + (who * 0x24 + 0x4B4));
        if (frames != 0) {
            Vec028AAC d;
            t = 0;
            step = 0x400 / frames;
            d.x = x << 8;
            d.y = y << 8;
            s = o->pos;
            do {
                mark028AAC(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, 0);
                lerp028AAC(&o->pos.x, s.x, d.x, t);
                lerp028AAC(&o->pos.y, s.y, d.y, t);
                mark028AAC(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, 1);
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            return;
        }
        mark028AAC(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, frames);
        o->pos.x = x << 8;
        o->pos.y = y << 8;
        mark028AAC(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, 1);
        sub_080003F0();
        return;
    }
    if (who != 0) {
        struct Enemy028AAC *e;
        who--;
        if (who > 4)
            return;
        e = &enemies028AAC[who];
        if (frames != 0) {
            t = 0;
            step = 0x400 / frames;
            e->target.x = x << 8;
            e->target.y = y << 8;
            s = e->pos;
            do {
                lerp028AAC(&e->pos.x, s.x, e->target.x, t);
                lerp028AAC(&e->pos.y, s.y, e->target.y, t);
                e->prev = e->pos;
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            return;
        }
        e->pos.x = x << 8;
        e->pos.y = y << 8;
        e->prev = e->pos;
        sub_080003F0();
        return;
    }
    {
        struct Player028AAC *p = &players028AAC[sub_080020F4()];
        if (frames != 0) {
            t = 0;
            step = 0x400 / frames;
            p->target.x = x << 8;
            p->target.y = y << 8;
            s = p->pos;
            do {
                lerp028AAC(&p->pos.x, s.x, p->target.x, t);
                lerp028AAC(&p->pos.y, s.y, p->target.y, t);
                p->prev = p->pos;
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            p->prev = p->pos;
            return;
        }
        p->pos.x = x << 8;
        p->pos.y = y << 8;
        p->prev = p->pos;
        sub_080003F0();
    }
}
typedef struct { s32 x, y; } Vec028D98;
struct Actor028D98 { u32 id; u8 p4[4]; Vec028D98 pos, target; u8 p18[0x58]; };
struct Obj028D98 { Vec028D98 pos; u8 p8[0x12]; u16 f1A, f1C; u8 p1E[6]; };
struct State028D98 { u8 p0[0x7A4]; struct Actor028D98 actors[15]; };
struct Enemy028D98 { u8 p0[0x14]; Vec028D98 pos, prev, target; u8 p2C[0x2B4]; };
struct Player028D98 { u8 p0[0x8C]; Vec028D98 pos, prev, target; u8 pA4[0xA8]; };
extern struct State028D98 *state028D98 asm("gUnk_03005CF4");
extern struct Enemy028D98 *enemies028D98 asm("gUnk_030056F4");
extern struct Player028D98 players028D98[] asm("gUnk_03003CE0");
extern void lerp028D98(s32 *, s32, s32, s32) asm("sub_080659F4");
extern void mark028D98(u16, u16, u16, u16, s32) asm("sub_0800AEF4");
static inline struct Actor028D98 *find028D98(u32 id)
{
    struct Actor028D98 *p = state028D98->actors;
    u32 i;

    i = 0;
    do {
        if (p->id == id)
            return p;
        i++;
        p++;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
void sub_08028D98_v(u32 who, s32 ax, s32 ay, s32 af) asm("sub_08028D98");
/* [MoveSceneEntityByOffset] Sign-extends pixel offsets and adds them to the current 24.8 coordinates; timed
 * paths interpolate from saved positions, zero frames translates immediately. The same selector distinguishes
 * scene actors, map objects, enemies and local player. Original ABI offsets use signedlow16 shifted8;frames
 * unsignedlow16. Same movement selector domains and unchecked object index as28AAC. Timed interpolation uses
 * floor(1024/frames),samples<1024 without endpoint snap;frames>1024 gives step0/no loop progress. Zero frames
 * translates then yields once. Actor failed lookup yields once then returns. */
void sub_08028D98_v(u32 who, s32 ax, s32 ay, s32 af)
{
    u32 t, step;
    s32 x, y, frames;
    Vec028D98 s;
    x = (u16)ax; y = (u16)ay; frames = (u16)af;

    if (who > 0x100000) {
        struct Actor028D98 *a = find028D98(who);
        if (a == NULL)
            return;
        if (frames != 0) {
            t = 0;
            step = 0x400 / frames;
            a->target.x = a->pos.x + ((s16)x << 8);
            a->target.y = a->pos.y + ((s16)y << 8);
            s = a->pos;
            do {
                lerp028D98(&a->pos.x, s.x, a->target.x, t);
                lerp028D98(&a->pos.y, s.y, a->target.y, t);
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            return;
        }
        a->pos.x += (s16)x << 8;
        a->pos.y += (s16)y << 8;
        sub_080003F0();
        return;
    }
    if (who > 5) {
        struct Obj028D98 *o = (struct Obj028D98 *)((u8 *)state028D98 + (who * 0x24 + 0x4B4));
        if (frames != 0) {
            Vec028D98 d;
            t = 0;
            step = 0x400 / frames;
            d.x = o->pos.x + ((s16)x << 8);
            d.y = o->pos.y + ((s16)y << 8);
            s = o->pos;
            do {
                mark028D98(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, 0);
                lerp028D98(&o->pos.x, s.x, d.x, t);
                lerp028D98(&o->pos.y, s.y, d.y, t);
                mark028D98(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, 1);
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            return;
        }
        mark028D98(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, frames);
        o->pos.x += (s16)x << 8;
        o->pos.y += (s16)y << 8;
        mark028D98(o->pos.x >> 8, o->pos.y >> 8, o->f1A, o->f1C, 1);
        sub_080003F0();
        return;
    }
    if (who != 0) {
        struct Enemy028D98 *e;
        who--;
        if (who > 4)
            return;
        e = &enemies028D98[who];
        if (frames != 0) {
            t = 0;
            step = 0x400 / frames;
            e->target.x = e->pos.x + ((s16)x << 8);
            e->target.y = e->pos.y + ((s16)y << 8);
            s = e->pos;
            do {
                lerp028D98(&e->pos.x, s.x, e->target.x, t);
                lerp028D98(&e->pos.y, s.y, e->target.y, t);
                e->prev = e->pos;
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            return;
        }
        e->pos.x += (s16)x << 8;
        e->pos.y += (s16)y << 8;
        e->prev = e->pos;
        sub_080003F0();
        return;
    }
    {
        struct Player028D98 *p = &players028D98[sub_080020F4()];
        if (frames != 0) {
            t = 0;
            step = 0x400 / frames;
            p->target.x = p->pos.x + ((s16)x << 8);
            p->target.y = p->pos.y + ((s16)y << 8);
            s = p->pos;
            do {
                lerp028D98(&p->pos.x, s.x, p->target.x, t);
                lerp028D98(&p->pos.y, s.y, p->target.y, t);
                p->prev = p->pos;
                t += step;
                sub_080003F0();
            } while (t <= 0x3FF);
            p->prev = p->pos;
            return;
        }
        p->pos.x += (s16)x << 8;
        p->pos.y += (s16)y << 8;
        p->prev = p->pos;
        sub_080003F0();
    }
}
extern u8 *scene026E4 asm("gUnk_03005CF4");
struct Monster026E4 {u8 pad[8];u16 value;u8 tail[0x2D6];};
extern struct Monster026E4 *monsters026E4 asm("gUnk_030056F4");
struct Player026E4 {u8 pad[0x1C];u16 value;u8 tail[0x12E];};
extern struct Player026E4 players026E4[] asm("gUnk_03003CE0");
void task026E4(u32,u32) asm("sub_080290E4");
/* [SetSceneEntityFacing] Writes direction at actor +0x24, enemy +8, or local player +0x1C. Actor path requests
 * mode 3 at +0x36 and yields until the update consumes it. Original290E8..EA narrowsdirection low16. Actor
 * IDs>0x100000 search15 records;missing yields once/returns. Actor+24STRH direction,+36STRH3 then repeatedly
 * yields while+36==3,without timeout/cancel. Enemy selector1..5 writesSTRH+8;all other nonzero
 * selectors<=0x100000 return after subtract/rangecheck;0 writes localplayer+1C. This setter DOES NOT support
 * map-object selector6+. No direction0..7 validation. */
void task026E4(u32 id,u32 value)
{
    u8 *row;
    u8 *found;
    u32 index;
    u32 key;
    u32 savedValue;
    u32 offset;
    struct Monster026E4 **monsterAddress;
    u32 playerIndex;
    register struct Player026E4 *playerBase asm("r1");
    key=id;
    asm("" : "+r"(key));
    savedValue=(u16)value;
    
    if(key>0x100000U) {
        row=scene026E4+0x7A4;
        index=0;
search:
        if(*(u32 *)row==key) goto matched;
        index++;
        row+=0x70;
        if(index<=14) goto search;
        sub_080003F0();
        found=0;
consume:
        
        if(found!=0) {
            *(u16 *)(found+0x24)=savedValue;
            *(u16 *)(found+0x36)=3;
            do { sub_080003F0(); } while(*(u16 *)(found+0x36)==3);
        }
        goto done;
matched:
        found=row;
        goto consume;
    } else if(key!=0) {
        key--;
        if(key<=4) {
            monsterAddress=&monsters026E4;
            offset=key*0x2E0;
            
            *(u16 *)((u8 *)*monsterAddress+offset+8)=savedValue;
        }
    } else {
        playerIndex=sub_080020F4()*0x14C;
        playerBase=players026E4;
        
        ((struct Player026E4 *)(playerIndex+(u32)playerBase))->value=savedValue;
    }
done:
    return;
}
struct Actor029174 { u32 id; u8 p4[0x20]; u16 f24; u8 p26[6]; u16 f2C, f2E, f30, f32, f34; u8 p36[2]; u16 f38; u8 p3A[0x36]; };
struct State029174 { u8 p0[0x7A4]; struct Actor029174 actors[15]; };
struct Enemy029174 { u8 p0[0xC]; u16 fC, fE; u8 p10[0x5A]; u16 f6A, f6C, f6E, f70, f72; u8 p74[0x26C]; };
struct Player029174 { u8 p0[0x10]; u16 f10; u8 p12[0xE]; u16 f20, f22; u8 p24[0x92]; u16 fB6; u8 pB8[2]; u16 fBA, fBC, fBE, fC0; u8 pC2[0x8A]; };
extern struct State029174 *state029174 asm("gUnk_03005CF4");
extern struct Enemy029174 *enemies029174 asm("gUnk_030056F4");
extern struct Player029174 players029174[] asm("gUnk_03003CE0");
static inline struct Actor029174 *find029174(u32 id)
{
    struct Actor029174 *p = state029174->actors;
    u32 i;

    i = 0;
    do {
        if (p->id == id)
            return p;
        i++;
        p++;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
/* Start a text/emote on an actor (id > 0x100000), an enemy (1..5) or the local player (0). */
void sub_08029174_v(u32 target, u16 val) asm("sub_08029174");
void sub_08029174_v(u32 target, u16 val)
{
    if (target > 0x100000) {
        struct Actor029174 *a = find029174(target);
        if (a != NULL) {
            a->f38 = val;
            a->f2C = val + a->f24;
            a->f30 = 0;
            a->f2E = 0;
            a->f32 = 0;
            a->f34 = 0;
        }
    } else if (target != 0) {
        target--;
        if (target <= 4) {
            struct Enemy029174 *e = &enemies029174[target];
            e->fC = 12;
            e->fE = 5;
            e->f70 = val;
            e->f6C = 0;
            e->f6A = 0;
            e->f72 = 0;
        }
    } else {
        struct Player029174 *p = &players029174[sub_080020F4()];
        u16 hi;

        if ((u16)(val & 0x8000)) {
            p->fC0 = 1;
            val &= 0x7FFF;
        } else {
            p->fC0 = 0;
        }
        hi = (val >> 8) & 0xF;
        if (hi == 0)
            hi = p->f10;
        p->fBA = val & 0xFF;
        p->fBC = hi;
        p->fBE = 0;
        p->f20 = 12;
        p->f22 = 5;
    }
}
/* Like sub_08029174, then wait until the text has finished. */
void sub_0802926C_v(u32 target, u16 val) asm("sub_0802926C");
/* [PlaySceneEntityAnimationAndWait] Same state setup as sub_08029174, then yields until actor +0x32, enemy
 * +0x6E or player +0xB6 is nonzero. Actor path resets completion+32 then at leastoneyield;enemy+6E
 * andplayer+B6 ARE NOT RESET beforetesting,so stale nonzero completion canreturn immediately (29302/29382)
 * before newanimationruns. No timeout/cancel or guaranteed complete-new-animation contract. Otherwise sameABI
 * setup as29174. Original0D368packet/step closure establishesplayerB6meaning only,not an assumption
 * fromtextcomments. */
void sub_0802926C_v(u32 target, u16 val)
{
    if (target > 0x100000) {
        struct Actor029174 *a = find029174(target);
        if (a != NULL) {
            a->f38 = val;
            a->f2C = val + a->f24;
            a->f30 = 0;
            a->f2E = 0;
            a->f32 = 0;
            a->f34 = 0;
            do
                sub_080003F0();
            while (a->f32 == 0);
        }
    } else if (target != 0) {
        target--;
        if (target <= 4) {
            struct Enemy029174 *e = &enemies029174[target];
            e->fC = 12;
            e->fE = 5;
            e->f70 = val;
            e->f6C = 0;
            e->f6A = 0;
            e->f72 = 0;
            while (e->f6E == 0)
                sub_080003F0();
        }
    } else {
        struct Player029174 *p = &players029174[sub_080020F4()];
        u16 hi;

        if ((u16)(val & 0x8000)) {
            p->fC0 = 1;
            val &= 0x7FFF;
        } else {
            p->fC0 = 0;
        }
        hi = (val >> 8) & 0xF;
        val &= 0xFF;
        if (hi == 0)
            hi = p->f10;
        p->fBA = val;
        p->fBC = hi;
        p->fBE = 0;
        p->f20 = 12;
        p->f22 = 5;
        while (p->fB6 == 0)
            sub_080003F0();
    }
}
/* Same as sub_08029174, but the text is started in its "continue" mode. */
void sub_0802939C_v(u32 target, u16 val) asm("sub_0802939C");
/* [LoopSceneEntityAnimation] Same animation request as sub_08029174 with actor +0x34, enemy +0x72 and player
 * +0xBE set to 1 rather than 0. Player loop behavior is established by the original consumer below. Player
 * original loopclosed:2939C stores+BE=1;114FA..11508 packsbyte6bit7;123E4..E8 readsloop;12646..54
 * feeds65370,whichforwardsfifthargto08CC4;08D12..1A nonzeroloopresetsframe0,08D1C..28
 * zerofreezeslastframeandreturns1. Actor+34/enemy+72writes independentlyconfirmed;their complete
 * consumerloopcontracts notestablishedinthisreview. All selectors notjustmapobjects
 * supportedonlyactor/enemy/local. Nameapprovedforclosedplayerpath,otherflagroles stated narrowly. */
void sub_0802939C_v(u32 target, u16 val)
{
    if (target > 0x100000) {
        struct Actor029174 *a = find029174(target);
        if (a != NULL) {
            a->f38 = val;
            a->f2C = val + a->f24;
            a->f30 = 0;
            a->f2E = 0;
            a->f32 = 0;
            a->f34 = 1;
        }
    } else if (target != 0) {
        target--;
        if (target <= 4) {
            struct Enemy029174 *e = &enemies029174[target];
            e->fC = 12;
            e->fE = 5;
            e->f70 = val;
            e->f6C = 0;
            e->f6A = 0;
            e->f72 = 1;
        }
    } else {
        struct Player029174 *p = &players029174[sub_080020F4()];
        u16 hi;

        if ((u16)(val & 0x8000)) {
            p->fC0 = 1;
            val &= 0x7FFF;
        } else {
            p->fC0 = 0;
        }
        hi = (val >> 8) & 0xF;
        if (hi == 0)
            hi = p->f10;
        p->fBA = val & 0xFF;
        p->fBC = hi;
        p->fBE = 1;
        p->f20 = 12;
        p->f22 = 5;
    }
}
struct Vec02949C { s32 x, y; };
struct ActorPos02949C { u32 id; u8 p4[4]; struct Vec02949C pos; u8 p10[0x14]; s16 dir; u16 goal; u8 p28[0x48]; };
struct State02949C { u8 p0[0x7A4]; struct ActorPos02949C actors[15]; };
struct EnemyPos02949C { u8 p0[8]; s16 dir; u16 goal; u8 pC[8]; struct Vec02949C pos; u8 p1C[0x2C4]; };
struct PlayerPos02949C { u8 p0[0x1C]; s16 dir; u16 goal; u8 p20[0x6C]; struct Vec02949C pos; u8 p94[0xB8]; };
extern struct State02949C *state02949C asm("gUnk_03005CF4");
extern struct EnemyPos02949C *enemies02949C asm("gUnk_030056F4");
extern struct PlayerPos02949C players02949C[] asm("gUnk_03003CE0");
extern u8 dirTable02949C[] asm("gUnk_084790B4");
extern void face02949C(u32, s32) asm("sub_080290E4");
static inline void wait02949C(u16 n)
{
    while (n) {
        sub_080003F0();
        if (sub_080021A8())
            break;
        n--;
    }
}
static inline struct ActorPos02949C *find02949C(u32 id)
{
    struct ActorPos02949C *p = state02949C->actors;
    u32 i;

    i = 0;
    do {
        if (p->id == id)
            return p;
        i++;
        p++;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
/* Turn `who` step by step until it faces `toward` (actor id, enemy 1..5 or
 * local player 0 for both). */
/* [TurnSceneEntityTowardEntity] Resolves positions of both entity selectors, computes ArcTan2 of their
 * difference, maps to an eight-direction table, saves original facing into goal, then calls sub_080290E4 in
 * shortest wrapping steps with two-tick waits until facing the target. Original reads both supported selector
 * domains actor>0x100000,enemy1..5,local0;invalidnonzero<=0x100000 or missingactor returns. Saves original
 * direction halfword to actor+26/enemy+A/player+1E;differences narrow signed16
 * afterfixedcoordinates>>8;ArcTan2 maps16sectors via084790B4 to8directions. Repeated calls290E4 with
 * wrappingdirection and2-yield helper;021A8 shortens eachwait only,not outerloop cancellation. */
void sub_0802949C(u32 who, u32 toward)
{
    struct ActorPos02949C *a;
    struct EnemyPos02949C *e;
    struct PlayerPos02949C *p;
    struct Vec02949C from, to;
    u8 want;
    s16 step, cur;

    if (who > 0x100000) {
        a = find02949C(who);
        if (a == NULL)
            return;
        from = a->pos;
    } else if (who != 0) {
        who--;
        if (who > 4)
            return;
        e = &enemies02949C[who];
        from = e->pos;
        who++;
    } else {
        p = &players02949C[sub_080020F4()];
        from = p->pos;
    }
    if (toward > 0x100000) {
        struct ActorPos02949C *t = find02949C(toward);
        if (t == NULL)
            return;
        to = t->pos;
    } else if (toward != 0) {
        struct EnemyPos02949C *t;
        toward--;
        if (toward > 4)
            return;
        t = &enemies02949C[toward];
        to = t->pos;
    } else {
        struct PlayerPos02949C *t = &players02949C[sub_080020F4()];
        to = t->pos;
    }
    if (who > 0x100000)
        a->goal = a->dir;
    else if (who != 0)
        e->goal = e->dir;
    else
        p->goal = p->dir;
    { s16 dx = (to.x - from.x) >> 8, dy = (to.y - from.y) >> 8;
    want = ((u32)(ArcTan2(dx, dy) << 16) + 0x08000000) >> 28; }
    want = dirTable02949C[want];
    if (who > 0x100000)
        cur = a->dir - want;
    else if (who != 0)
        cur = e->dir - want;
    else
        cur = p->dir - want;
    {
        s32 d = cur;

        if (d >= 0) {
            step = 1;
            if (d <= 4)
                step = -1;
        } else {
            d = -d;
            step = -1;
            if (d <= 4)
                step = 1;
        }
    }
    if (who > 0x100000) {
        cur = a->dir;
        if (a->dir == want)
            return;
        do {
            face02949C(who, cur);
            wait02949C(2);
            cur = cur + step;
            if (cur > 7)
                cur = 0;
            else if (cur < 0)
                cur = 7;
        } while (a->dir != want);
    } else if (who != 0) {
        cur = e->dir;
        if (e->dir == want)
            return;
        do {
            face02949C(who, cur);
            wait02949C(2);
            cur = cur + step;
            if (cur > 7)
                cur = 0;
            else if (cur < 0)
                cur = 7;
        } while (e->dir != want);
    } else {
        cur = p->dir;
        if (p->dir == want)
            return;
        do {
            face02949C(who, cur);
            wait02949C(2);
            cur = cur + step;
            if (cur > 7)
                cur = 0;
            else if (cur < 0)
                cur = 7;
        } while (p->dir != want);
    }
}
struct Actor029788 { u32 id; u8 p4[0x20]; s16 dir; u16 goal; u8 p28[0x48]; };
struct State029788 { u8 p0[0x7A4]; struct Actor029788 actors[15]; };
struct Enemy029788 { u8 p0[8]; s16 dir; u8 pA[0x2D6]; };
struct Player029788 { u8 p0[0x1C]; s16 dir; u16 goal; u8 p20[0x12C]; };
extern struct State029788 *state029788 asm("gUnk_03005CF4");
extern struct Enemy029788 *enemies029788 asm("gUnk_030056F4");
extern struct Player029788 players029788[] asm("gUnk_03003CE0");
extern void face029788(u32, s32) asm("sub_080290E4");
static inline struct Actor029788 *find029788(u32 id)
{
    struct Actor029788 *p = state029788->actors;
    u32 i;

    i = 0;
    do {
        if (p->id == id)
            return p;
        i++;
        p++;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
static inline void wait029788(u16 n)
{
    while (n) {
        sub_080003F0();
        if (sub_080021A8())
            break;
        n--;
    }
}
/* Turn an actor (id > 0x100000), enemy (1..5) or the local player (0) one
 * step at a time toward its goal direction. The enemy path never loads its
 * goal or difference (original bug, kept). */
void sub_08029788_v(u32 target) asm("sub_08029788");
void sub_08029788_v(u32 target)
{
    struct Actor029788 *a;
    struct Enemy029788 *e;
    struct Player029788 *p;
    u16 goal;
    s16 step, cur;

    if (target > 0x100000) {
        a = find029788(target);
        if (a == NULL)
            return;
        goal = a->goal;
        cur = a->dir - goal;
    } else if (target != 0) {
        target--;
        if (target > 4)
            return;
        e = &enemies029788[target];
    } else {
        p = &players029788[sub_080020F4()];
        goal = p->goal;
        cur = p->dir - goal;
    }
    {
        s32 d = cur;

        if (d >= 0) {
            step = 1;
            if (d <= 4)
                step = -1;
        } else {
            d = -d;
            step = -1;
            if (d <= 4)
                step = 1;
        }
    }
    if (target > 0x100000) {
        cur = a->dir;
        if (a->dir == goal)
            return;
        do {
            face029788(target, (s16)cur);
            wait029788(2);
            cur = (s16)cur + (s16)step;
            if ((s16)cur > 7)
                cur = 0;
            else if ((s16)cur < 0)
                cur = 7;
        } while (a->dir != goal);
    } else if (target != 0) {
        cur = e->dir;
        if (e->dir == goal)
            return;
        do {
            face029788(target, (s16)cur);
            wait029788(2);
            cur = (s16)cur + (s16)step;
            if ((s16)cur > 7)
                cur = 0;
            else if ((s16)cur < 0)
                cur = 7;
        } while (e->dir != goal);
    } else {
        cur = p->dir;
        if (p->dir == goal)
            return;
        do {
            face029788(target, (s16)cur);
            wait029788(2);
            cur = (s16)cur + (s16)step;
            if ((s16)cur > 7)
                cur = 0;
            else if ((s16)cur < 0)
                cur = 7;
        } while (p->dir != goal);
    }
}
struct P96C { u16 id; u8 pad2[0x2E]; u32 flags; u8 pad34[0x2C]; u16 f60; u16 f62; u8 pad64[4]; u8 f68; u8 pad69[0x59]; u16 fC2; u16 fC4; u8 tail[0x14C-0xC6]; };
extern struct P96C players96C[] asm("gUnk_03003CE0");
#define DRAIN_96C(n) p=&players96C[index]; do { h=(void*)sub_0801E1D8(p,n,100); if(h) {sub_0801DB94(p->id,h,0); asm("":"+r"(h));} } while(h)
/* [RestoreLocalPlayerVitals] Copies local player maximum fields+0x62 and+0x60 to current HP+0xC4 and MP+0xC2,
 * marks active byte+0x68=1, clears flags0x2002, then repeatedly finds and reinitializes status records for
 * types6,7,5,4,2 using lookup key100. Does not claim every status type is cleared or active buffs preserved.
 * Original2999E..A4 maskFFFFDFFD clears BOTH0x2000 and0x2 (mask2002), not just2000. HP/MP current/max accesses
 * STRH/LDRH; active+68 isBYTE. Status helper iterations6,7,5,4,2 are distinct original loops with key100
 * and1DB94(owner,record,0); lookup progress is required for termination and not proven for arbitrary corrupted
 * status lists. No universal remove-all-status or network acknowledgement contract. */
void sub_0802996C(void) {
 s32 index; void *h; struct P96C *p;
 index=sub_080020F4();
 players96C[index].fC4=players96C[index].f62;
 players96C[index].fC2=players96C[index].f60;
 players96C[index].f68=1;
 players96C[index].flags &= 0xFFFFDFFD;
 DRAIN_96C(6); DRAIN_96C(7); DRAIN_96C(5); DRAIN_96C(4); DRAIN_96C(2);
}
#define H_A7(p,n) (*(u16*)((p)+(n)))
#define W_A7(p,n) (*(u32*)((p)+(n)))
extern void initA7C(void*,void*,u16,u16,u32) asm("sub_08069388");
extern void runA7C(void*,u16,s32,u32,u32,u32) asm("sub_08069080");
extern u16 valueA7C(u16,u16,void*) asm("sub_08021D00");
extern u16 scaleA7C(u16,u16,u16) asm("sub_08021C74");
/* [QueueRandomizedLocalPlayerDamage] For eligible active local player outside scene-stop gates and
 * states10/11/14, first computes randomized quadratic damage using amount,player+0x5A,200; rolls target status
 * kind, updates an effect slot if found, applies squared resistance factor, sets state10 and accumulates
 * resulting halfword into pending damage+0x88. Clears+0x110,+0xC8,+0xCA,+0xE0 and invokes69080
 * secondary-effect handling. Queues hit state rather than directly decrementing current HP. Original29AD0..B2E
 * narrows amount, action and setup argument to low16 for arithmetic/status helpers. Eligibility gates
 * independently verified; pending+88 ADDS with STRH wrap, not HP subtraction. */
void sub_08029A7C(u32 action,u32 amount,s32 argument)
{
 u8 result[8]; u8 *res; u8 *player; u32 flags; s32 handle; u16 kind;
 player=(u8*)&gUnk_03003CE0[sub_080020F4()];
 if(sub_0800CDF8()==0 && sub_08058DB0()==0){
  kind=H_A7(player,0x20);
  if(kind!=14 && player[0x68]!=0 && kind!=11){
   flags=W_A7(player,0x30)&0x2000;
   if(flags==0 && kind!=10){
    amount=scaleA7C(amount,H_A7(player,0x5A),200);
    res=result;
    initA7C(result,player+0x4C,argument,action,H_A7(player,0));
    handle=sub_0801E164(player,0);
    if(handle)sub_0801DB94(H_A7(player,0),(void*)handle,res[1]);
    amount=valueA7C(action,amount,player+0x4C);
    H_A7(player,0x20)=10; H_A7(player,0x88)+=amount;
    W_A7(player,0x110)=flags; H_A7(player,0xC8)=flags; H_A7(player,0xCA)=flags; W_A7(player,0xE0)=flags;
    if(H_A7(player,0xC)==8)sub_0805865C(0x4B); else sub_0805865C(H_A7(player,0xC)+0x45);
    runA7C(player+0x4C,amount,argument,0,H_A7(player,0),action);
   }
  }
 }
}
struct ResultB98 {u8 a,b,c,d;u16 value;u16 pad;};
#define H_B9(p,n) (*(u16*)((p)+(n)))
#define W_B9(p,n) (*(u32*)((p)+(n)))
extern u32 finishB98(void*) asm("sub_080660EC");
extern void initB98(void*,void*,u16,u16,u16) asm("sub_08069388");
extern void *lookupB98(u8*,u32) asm("sub_0801E104");
extern void runB98(void*,u16,u32,s32,s32,u32) asm("sub_08069080");
extern u16 valueB98(u16,u16,void*) asm("sub_08021D00");
extern u16 scaleB98(u16,u16,u16) asm("sub_08021C74");
/* [QueueRandomizedEnemyDamage] Checks active-enemy mask, byte1DC and state not10/11, then computes randomized
 * quadratic damage via21C74(amount low16, defense halfword1CE,200) and applies squared
 * resistance21D00(action,amount,enemy+218). Initializes effect packet through69388 and optional1DB94 except
 * enemy class226==3. Sets stateC=10; writes packet target byte from enemy+2, damage half+4 and auxiliary
 * lowbytes from args5/6, applies hit-motion1F2CC, sets attacker58 to local player, ASSIGNS pending4A and
 * last4C (does not add), ORs local player bit into5A, calls EnqueueOrMergeLinkHit660EC; display69080 skipped
 * for class3. */
void sub_08029B98(s32 index,u32 action,u32 amount,u32 argument,u16 arg4,u16 arg5)
{
 struct ResultB98 result; struct ResultB98 *res; struct ResultB98 *res1; u8 *object; void *handle;
 if(((u32)gUnk_030056FC & (1<<index))==0)return;
 object=(u8*)gUnk_030056F4+index*0x2E0;
 if(object[0x1DC] && H_B9(object,0xC)!=11 && H_B9(object,0xC)!=10){
  amount=scaleB98(amount,H_B9(object,0x1CE),200);
  if(object[0x226]!=3){
   res1=&result;
   initB98(&result,object+0x218,argument,action,H_B9(object,0)+4);
   handle=lookupB98(object,0);
   if(handle)sub_0801DB94(H_B9(object,0)+4,handle,res1->b);
  }
  amount=valueB98(action,amount,object+0x218);
  H_B9(object,0xC)=10;
  res=&result;
  res->value=amount;res->a=H_B9(object,2);res->c=arg4;res->d=arg5;
  sub_0801F2CC(object,(u8*)res);
  H_B9(object,0x58)=sub_080020F4(); H_B9(object,0x4A)=amount;W_B9(object,0x4C)=amount;
  H_B9(object,0x5A)|=1<<sub_080020F4();
  finishB98(&result);
  if(object[0x226]!=3)runB98(object+0x218,res->value,argument,index,index+4,action);
 }
}
#define H_CE(p,n) (*(u16*)((p)+(n)))
#define W_CE(p,n) (*(u32*)((p)+(n)))
extern u8 *stateCEC asm("gUnk_030034E0");
extern s32 extraCEC(u32,u16,u8*) asm("sub_08069224");
extern void initCEC(void*,void*,u16,u16,u32) asm("sub_08069388");
extern void runCEC(void*,u16,s32,u32,u32,u32) asm("sub_08069080");
extern u16 valueCEC(u16,u16,void*) asm("sub_08021D00");
/* [QueueLocalPlayerDamageAndAttemptResistanceGrowth] Uses same eligible local-player pending-hit route as29A7C
 * but omits randomized quadratic preprocessing. Applies resistance factor, records action atplayer+0xE0,
 * calls69224(action,adjustedAmount,save+0x24), sets state10 and accumulates pending damage+0x88;
 * clears110/C8/CA and invokes69080 secondary effects. Helper69224 probabilistically increments the
 * corresponding one ofsix resistance progression halfwords with caps; growth is attempted, not guaranteed.
 * Existing catalog names69224 TryIncreaseEffectResistanceStat; source and original call08029DA0 anchor this
 * role independently of field alias guesses. */
void sub_08029CEC(u32 action,u32 amount,s32 argument)
{
 u8 result[8]; u8 *res; u8 *player; u32 flags; s32 handle; u16 kind;
 player=(u8*)&gUnk_03003CE0[sub_080020F4()];
 if(sub_0800CDF8()==0 && sub_08058DB0()==0){
  kind=H_CE(player,0x20);
  if(kind!=14 && player[0x68]!=0 && kind!=11){
   flags=W_CE(player,0x30)&0x2000;
   if(flags==0 && kind!=10){
    res=result;
    initCEC(result,player+0x4C,argument,action,H_CE(player,0));
    handle=sub_0801E164(player,0);
    if(handle)sub_0801DB94(H_CE(player,0),(void*)handle,res[1]);
    amount=valueCEC(action,amount,player+0x4C);
    W_CE(player,0xE0)=action; extraCEC(action,amount,stateCEC+0x24); H_CE(player,0x20)=10; H_CE(player,0x88)+=amount;
    W_CE(player,0x110)=flags; H_CE(player,0xC8)=flags; H_CE(player,0xCA)=flags;
    if(H_CE(player,0xC)==8)sub_0805865C(0x4B); else sub_0805865C(H_CE(player,0xC)+0x45);
    runCEC(player+0x4C,amount,argument,0,H_CE(player,0),action);
   }
  }
 }
}
struct ResultE0C {u8 a,b,c,d;u16 value;u16 pad;};
#define H_E0(p,n) (*(u16*)((p)+(n)))
#define W_E0(p,n) (*(u32*)((p)+(n)))
extern u32 finishE0C(void*) asm("sub_080660EC");
extern void initE0C(void*,void*,u16,u16,u16) asm("sub_08069388");
extern void *lookupE0C(u8*,u32) asm("sub_0801E104");
extern void runE0C(void*,u16,u32,s32,s32,u32) asm("sub_08069080");
extern u16 valueE0C(u16,u16,void*) asm("sub_08021D00");
/* [QueueEnemyDamage] Enemy mask/active1DC/stateC exclusions10/11 as29B98, but NO quadratic randomization:
 * applies21D00(action low16,amount low16,enemy+218). For class226!=3 initializes69388 packet and optional1DB94
 * effect; class3 bypasses packet initialization but retains send, so packet effect byte1 may be uninitialized.
 * Sets stateC10, ASSIGNS pending4A and last4C, fills packet targetbyte from enemy+2, damage+4, auxiliary
 * lowbytes args5/6. Clears impulse byte2 when bit80 or enemy word210==FF; calls1F2CC, sets attacker58=local
 * player, sends660EC and displays69080 except class3. Unlike29B98 does not OR local bit5A. */
void sub_08029E0C(s32 index,u32 action,u32 amount,u32 argument,u16 arg4,u16 arg5)
{
 u8 zero; struct ResultE0C result; struct ResultE0C *res; struct ResultE0C *res1; u8 *object; void *handle;
 if(((u32)gUnk_030056FC & (1<<index))==0)return;
 object=(u8*)gUnk_030056F4+index*0x2E0;
 if(object[0x1DC] && H_E0(object,0xC)!=11 && H_E0(object,0xC)!=10){
  if(object[0x226]!=3){
   res1=&result;
   initE0C(&result,object+0x218,argument,action,H_E0(object,0)+4);
   handle=lookupE0C(object,0);
   if(handle)sub_0801DB94(H_E0(object,0)+4,handle,res1->b);
  }
  amount=valueE0C(action,amount,object+0x218);
  zero=0;
  H_E0(object,0xC)=10+zero; H_E0(object,0x4A)=amount; W_E0(object,0x4C)=amount;
  res=&result;
  res->value=amount;res->c=arg4;res->a=H_E0(object,2);res->d=arg5;
  if(res->c&0x80)res->c=zero;
  if(W_E0(object,0x210)==0xFF)res->c=zero;
  sub_0801F2CC(object,(u8*)&result);
  H_E0(object,0x58)=sub_080020F4();
  finishE0C(&result);
  if(object[0x226]!=3)runE0C(object+0x218,res->value,argument,index,index+4,action);
 }
}
struct PackedF54 {u16 low:4;u16 x:12;u16 y:12;u16 high:4;u8 flags:6;u8 unused:2;};
struct RefF54 {struct PackedF54 *position;u8 padding[0x148];};
struct TaskF54 {u32 f0,f4,f8,fC;u8 *f10;u32 f14,f18,f1C;u8 *f20;u32 f24;};
extern struct RefF54 refsF54[] asm("gUnk_03003E28");
extern u8 *stateF54 asm("gUnk_03005CF4");
extern void finishF54(void) asm("sub_0800035C");
extern s32 overlapF54(struct V2W12 *,struct V2W12 *,u32 *,u32 *) asm("sub_08021FE0");
extern void startF54(struct TaskF54 *,u32) asm("sub_08000274");
/* [TriggerSceneEventForPlayerRectangleOverlap] Scans replicated player positions against supplied rectangle
 * center and width/height using08021FE0 with packed player extents0x200018. On overlap searches30 scene event
 * task slots, retries0x400 stack allocation for the first free slot, starts supplied callback, then
 * calls0800035C to terminate current task. If no task slot exists it still terminates; it is not a persistent
 * wait-for-entry helper or guaranteed event delivery. Original performs one scan, returns normally with no
 * hit; unlikeA080 it does NOT reject packet flag20. Player extents are unsignedhalfwords24x32; supplied
 * rectangle extents narrowedlow16;21FE0 inclusive AABB. */
void sub_08029F54(s32 x,s32 y,u32 low,s32 high,volatile u32 callback)
{
    struct V2W12 center;
    struct V2W12 player;
    u32 mask,range,narrowed;
    u32 index,next,slot;
    s32 hit;
    struct RefF54 *base;
    struct RefF54 *reference;
    struct TaskF54 *task;
    u8 *memory;
    narrowed=low<<16;
    mask=0x200018;
    center.x=(u32)x<<8;
    center.y=(u32)y<<8;
    high=(u32)high<<16;
    range=(narrowed>>16)|(u32)high;
    index=0;
    base=refsF54;
    while(index<sub_08002164()) {
        reference=(struct RefF54 *)(index*0x14C+(u32)base);
        player.x=reference->position->x<<8;
        player.y=reference->position->y<<8;
        hit=overlapF54(&player,&center,&mask,&range);
        next=index+1;
        if(hit) {
            task=(struct TaskF54 *)(stateF54+0xE34);
            slot=0;
            while(slot<=0x1D) {
                if(sub_08000470((u32)task)==0) {
                    while((task->f20=memory=sub_08001494(0x400))==0)sub_080003F0();
                    task->f8=0x3C;
                    { register u32 cb asm("r2") = callback; task->fC=cb; }
                    task->f10=memory+0x3FC;
                    task->f24=0;
                    startF54(task,0);
                    break;
                }
                slot++;
                task++;
            }
            finishF54();
        }
        index=next;
    }
}
/* [ReleaseDeferredEnemyDeathRemoval] Scans five active enemy slots(stride2E0), targets only enemy flags7A
 * mask8. Sets death/removal timer64=30, flag66=1 and clears7A mask8; no HP or state check and no direct
 * damage. Semantic closure in matched enemy updater1801C: original1864C health consumer19CE8 result writes
 * flag66;1865E..70 mask8 suppresses lethal removal by zeroing timer64 andflag66. Original192E8..1934C
 * whenflag66 nonzero decrements timer64, blinks using predecrement timer mask0x2 under drawgates, then exits
 * update at zero. Caller502DC source2320..2349 polls19C3C while scene+4 mask0x10 is clear; a set mask forces
 * wait=1 and prevents this loop from completing. */
void sub_0802A01C(void)
{
  u8 *p = gUnk_030056F4;
  int new_var;
  u32 i = 0;
  do
  {
    if ((gUnk_030056FC & (new_var = 1 << i)) && (8 & (*((u16 *) (p + 0x7A)))))
    {
      *((u16 *) (p + 0x64)) = 0x1E;
      *((u16 *) (p + 0x66)) = 1;
      *((u16 *) (p + 0x7A)) &= 0xFFF7;
    }
    i++;
    p += 0x2E0;
  }
  while (i <= 4);
}
struct PackedA080 {u16 low:4;u16 x:12;u16 y:12;u16 high:4;u8 flags:6;u8 unused:2;};
struct RefA080 {struct PackedA080 *position;u8 padding[0x148];};
extern struct RefA080 refsA080[] asm("gUnk_03003E28");
extern s32 overlapA080(struct V2W12 *,struct V2W12 *,u32 *,u32 *) asm("sub_08021FE0");
/* [WaitForAnyPlayerInRectangle] Decodes each player replicated 12-bit XY coordinate into 24.8 values, rejects
 * flag 0x20, tests sub_08021FE0 against center and supplied width/height with zero player extents, and yields
 * until any eligible player overlaps. OriginalA084/A092 narrowextentsunsigned16;x/y shifted8 full32.
 * Playercount02164 checkedoneachiteration,refs03003E28+index14C dereferencedwithoutnull/capacityguard.
 * Packetlowhalf>>4 isX12bits,secondhalf&FFF isY;byte4mask20excludes.21FE0 inclusiveabsaxes
 * <=sumunsignedhalfextents/2,hereplayerextents0. ScansALLplayersafterhit,thenALWAYSyields oncebefore
 * return;zeroplayercountwaitsforever,no timeout/cancel. */
void sub_0802A080(s32 x,s32 y,u32 low,s32 high)
{
    struct V2W12 center;
    struct V2W12 player;
    u32 mask;
    u32 narrowed;
    u32 range;
    s32 wait;
    u32 index;
    u32 flag;
    struct RefA080 *reference;
    struct RefA080 *base;
    narrowed=low<<16;
    mask=0;
    center.x=(u32)x<<8;
    center.y=(u32)y<<8;
    high=(u32)high<<16;
    range=(narrowed>>16)|(u32)high;
    base=refsA080;
    do {
        wait=1;
        index=0;
        while(index<sub_08002164()) {
            reference=(struct RefA080 *)(index*0x14C+(u32)base);
            player.x=reference->position->x<<8;
            player.y=reference->position->y<<8;
            flag=reference->position->flags; flag&=0x20;
            if(!flag && overlapA080(&player,&center,&mask,&range))wait=0;
            index++;
        }
        sub_080003F0();
    } while(wait);
}
struct TaskP2A1 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u8 *gGS2A1 asm("gUnk_03005CF4");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
void sub_0802A104_v(struct TaskP2A1 *src, u32 idx) asm("sub_0802A104");
/* [StartSceneEventAfterObjectBreak] Waits for selected scene object state+0x14 to equal12, aborting on scene
 * flags+0x4 mask0x10; then starts descriptor callback/argument in first free30-slot scene event task pool,
 * retrying allocation. Object stride0x24 and base0x4B4 mean selector6 addresses first destructible at0x58C.
 * Full task pool returns without event. Descriptor WORD+C callback andWORD+10argument captured before waiting.
 * Object address=game+4B4+selector*36 with no bounds guard. State+14 readLDRH. If already12, scene-stop flag
 * check is bypassed; otherwise scene+4mask10 returns. Full30-slot pool returns, allocation retries without
 * cancellation after free slot selected. No successful event delivery guaranteed. */
void sub_0802A104_v(struct TaskP2A1 *src, u32 idx)
{
    u32 arg = src->f10;
    u32 cb = src->fC;
    u8 *e = gGS2A1 + (idx * 36 + 0x4B4);
    struct TaskP2A1 *t;
    u32 i;
    u32 mem;
    while (*(u16 *)(e + 0x14) != 0xC) {
        if ((*(u16 *)(gGS2A1 + 4) >> 4) & 1)
            return;
        sub_080003F0();
    }
    t = (struct TaskP2A1 *)(gGS2A1 + 0xE34);
    i = 0;
    goto check;
next:
    i++;
    t++;
check:
    if (i > 0x1D)
        return;
    if (sub_08000470((u32)t) != 0)
        goto next;
    while ((t->f20 = mem = sub_08001494(0x400)) == 0)
        sub_080003F0();
    t->f8 = 0x3C;
    t->fC = cb;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_2(t, arg);
}
void sub_080867F8(void);

/* [OpenMonsterCardCatalogAndRestoreScene] Marks menu fade active, requests window hide10 and waits transition
 * idle, requests map background reload and full-screen menu state, then starts867F8. Saves layer scroll
 * coordinates, waits on signal11201100, restores scroll/menu flags and waits transition idle again.
 * Consumer867F8 starts855D4, whose monster-card inventory/count/monster-stat UI and English prompt140542
 * identify the monster-card catalog screen. */
void sub_0802A19C(void) {
    s16 *p4;
    s16 *p5;
    s32 a;
    s32 b;
    sub_0800CE40();
    sub_0801ABE8(10);
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    p4 = (s16 *)&gUnk_03003170;
    p5 = p4 + 0x3E;
    a = (s16)p5[0];
    b = (s16)p4[0x3F];
    sub_080867F8();
    sub_080003F4(0x11201100);
    p5[0] = a;
    p4[0x3F] = b;
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
}

struct StateA228 {u16 f0;u8 pad2[2];u16 flags;u8 pad6[0xA];u16 f10;u8 pad12[0x24];u16 f36;u8 pad38[8];u32 f40;u8 pad44[0x6D8];u32 table;};
extern struct StateA228 *stateA228 asm("gUnk_03005CF4");
extern u32 gUnk_084F0AC0[];
extern u32 gUnk_084F26E4[];
extern u32 gUnk_084F4818[];
extern u32 gUnk_084F794C[];
extern u32 gUnk_084FA298[];
extern u32 gUnk_084FD06C[];
extern u32 gUnk_0850008C[];
extern u32 gUnk_085028BC[];
extern u32 gUnk_085060D4[];
extern u32 gUnk_08508B54[];
extern u32 gUnk_0850C6E8[];
extern u32 gUnk_0850D4EC[];
extern u32 gUnk_0850DE28[];
extern u32 gUnk_0850EAC4[];
extern u32 gUnk_0850ED20[];
extern u32 gUnk_0850F894[];
extern u32 gUnk_08510530[];
extern u32 gUnk_08511538[];
extern u32 gUnk_08512670[];
extern u32 gUnk_08513680[];
extern u32 gUnk_08514FAC[];
extern u32 gUnk_08515FCC[];
extern u32 gUnk_08517220[];
extern u32 gUnk_0851810C[];
/* [RequestSceneMapAreaChange] Requests map update task stop through0800BB40 and yields up to5 ticks, selects
 * one of24 map-group tables and replaces scene event pointer+0x71C with the selected area descriptor. Map0
 * calls0800CCDC and resets variant+0x36; other maps call0800CCEC and set scene flags mask0x10. Writes
 * requested mapID+0 and areaID+0x40, clears transition phase+0x10 and stops scene tasks through28918. No
 * separate pending descriptor at+0x720 is asserted. Original map argument switch accepts0..23; area argument
 * is used unchecked as WORD-pointer-table index. Outside switch, still writes HALFWORD game+10=0,
 * WORD+40=area, HALFWORD+0=low16map and calls28918 while oldtable may remain. */
void sub_0802A228(u32 arg0, s32 arg1) {
    register u32 *var_r1 asm("r1");
    u32 *var_r3; struct StateA228 *current;
    u16 var_r4;

    sub_0800BB40();
    for(var_r4=5;var_r4;var_r4--){sub_080003F0();if(sub_080021A8())break;}
    switch (arg0) {                                 /* irregular */
    case 0:
        sub_0800CCDC();
        stateA228->table = (s32) gUnk_084F0AC0[arg1];
        stateA228->f36 = 0;
        break;
    case 1:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_084F26E4;
        goto block_30;
    case 2:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_084F4818;
        goto block_30;
    case 3:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_084F794C;
        goto block_30;
    case 4:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_084FA298;
        goto block_30;
    case 5:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_084FD06C;
        goto block_30;
    case 6:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0850008C;
        goto block_30;
    case 7:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_085028BC;
        goto block_30;
    case 8:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_085060D4;
        goto block_30;
    case 9:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08508B54;
        goto block_30;
    case 10:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0850C6E8;
        goto block_30;
    case 11:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0850D4EC;
        goto block_30;
    case 12:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0850DE28;
        goto block_30;
    case 13:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0850EAC4;
        goto block_30;
    case 14:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0850ED20;
        goto block_30;
    case 15:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0850F894;
        goto block_30;
    case 16:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08510530;
        goto block_30;
    case 17:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08511538;
        goto block_30;
    case 18:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08512670;
        goto block_30;
    case 19:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08513680;
        goto block_30;
    case 20:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08514FAC;
        goto block_30;
    case 21:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08515FCC;
        goto block_30;
    case 22:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_08517220;
        goto block_30;
    case 23:
        sub_0800CCEC();
        current=stateA228; var_r3 = &current->table;
        var_r1 = gUnk_0851810C;
block_30:
        
        *var_r3 = var_r1[arg1];
        current->flags = (u16) (0x10 | current->flags);
        break;
    }
    stateA228->f10 = 0;
    stateA228->f40 = arg1;
    stateA228->f0 = (s16) arg0;
    sub_08028918();
}

struct ColorA590 {u32 r:5;u32 g:5;u32 b:5;u32 unused:1;};
extern struct ColorA590 paletteA590[] asm("gUnk_03001F40");
extern void copyA590(const void *,void *,u32) asm("CpuSet");
/* [ConvertPaletteBanksToGrayscale] Copies count 32-byte palette banks starting at first from gUnk_03001F40 to
 * a heap backup; for every 15-bit BGR entry computes the integer mean of the three five-bit channels and
 * writes that mean into all three channels. Queues palette upload through sub_08000B38 and frees backup.
 * Originalfirst/count narrowedunsigned16;allocatescount*32 withoutnullcheck andindexes03001F40+first*32
 * withoutbankbounds. Copy count*8words;sourcepixels readLDR32 at2bytestride,onlylow15bitsused;
 * RGBarithmeticmeanfloor/3,bit15destinationpreserved bymaskedbyte/halfwordwrites. Calls00B38thenfreesbackup;
 * no allocationfailure or palettecapacitycontract. FullprimaryC/originalA59C..A62A agree. */
void sub_0802A590(u16 first,u16 count)
{
    struct ColorA590 *backup;
    struct ColorA590 *dest;
    struct ColorA590 *source;
    u32 total;
    u32 index;
    u16 gray;
    backup=sub_08001494((u32)count<<5);
    dest=(struct ColorA590 *)((u8 *)paletteA590+((u32)first<<5));
    copyA590(dest,backup,((u32)count*8)|0x04000000);
    total=(u32)count*16;
    source=backup;
    index=0;
    while(index<total) {
        gray=(u16)(((u32)source->r+source->g+source->b)/3);
        dest->r=gray;
        dest->g=gray;
        dest->b=gray;
        index++;
        dest=(struct ColorA590 *)((u8 *)dest+2);
        source=(struct ColorA590 *)((u8 *)source+2);
    }
    sub_08000B38();
    sub_08001538((s32)backup);
}
extern u8 nameA644[] asm("gUnk_03003CE2");
extern s32 clearA644(s32,s32) asm("sub_0801A664");
extern void drawA644(u8*,s32,u32) asm("sub_0801A3D0");
/* [DisplayTypewriterNarrationText] Reads resource 0x140000|id after its two-byte header and progressively
 * draws two 32-byte text rows at tile rows 15 and 17 through QueueTextGlyphTiles. Handles FD end, FF
 * linebreak, FC zero-terminated player-slot-0 name substitution from gUnk_03003CE2, and FE clear/pause.
 * Reveals a byte every seven iterations and clears tilemap rows on completion. Original ASM 0802A67E..A684
 * compares the preincremented counter to 5 (0..5 skipped, 6 consumed); 0802A6C8..A704 reads the
 * zero-terminated substitution bytes at 03003CE2. OriginalA67E..684 preincrementvalue>5
 * meansoneencodedbyte/actionevery7outeriterations;FE180-yieldpause021A8can
 * shorten;postFDunconditional180-yieldholdthen clear(15,4),oneyield. */
void sub_0802A644(s32 id)
{
 u8 text[0x80]; u8 *stream,*line; u32 row,column,tick,i,y;  u16 wait; u8 nameIndex; u8 *names;
 stream=(u8*)sub_08007290(0x140000|id)+2;
 row=0;column=0;tick=0;nameIndex=0;text[0]=0xFD;names=nameA644;text[0x20]=0xFD;
 while(*stream!=0xFD){
  if(tick++>5){
   if(*stream==0xFF){
    column=0;row++;
    if(row>1){text[0]=0xFD;text[0x20]=0xFD;row=0;}
    else text[row*0x20]=0xFD;
    stream++;
   } else if(*stream==0xFC){
    text[column+row*0x20]=names[nameIndex];column++;text[row*0x20+column]=0xFD;
    nameIndex++;
    if(names[nameIndex]==0){stream++;nameIndex=0;column--;}
   } else if(*stream==0xFE){
    text[0]=0xFD;text[0x20]=0xFD;row=0;column=0;stream+=3;
    for(wait=180;wait;wait--){sub_080003F0();if(sub_080021A8())break;}
   } else {
    text[column+row*0x20]=*stream;stream++;column++;text[row*0x20+column]=0xFD;
   }
   tick=0;
  }
  for(i=0;i<=1;i++)drawA644(text+i*0x20,1,(u16)(i*2+15));
  sub_080003F0();
 }
 tick=179;
 do{
  i=0;if(i<row){y=0xF0000;line=text;do{drawA644(line,1,y>>16);y+=0x20000;line+=0x20;i++;}while(i<row);} 
  sub_080003F0();
 }while(--tick!=-1);
 clearA644(15,4);sub_080003F0();
}
extern void sub_080009F8(s32,s32,s32);
extern void sub_0801AA8C(s32);
extern void sub_0801AB90(s32);
extern void sub_0805DC1C(s32,s32,s32,s32);
extern void sub_0808899C(void);
extern void sub_0802A590(u16,u16);
extern void sub_0802A644(s32);
/* [RunEndingEpilogue] Sets local-player flag masks one and two at separate stages, activates scene flag0x200,
 * desaturates palette banks, configures display blend/window registers, runs four narration text resources
 * 0x49A..0x49D, fades out, stops actor tasks and transitions to sub_0808899C. English resources14049A..49D
 * identify the ending epilogue: peace returns to Klantol Castle, King Marcel/Queen/Camille praise the named
 * hero, and final resource49D reads The End... OriginalA8CA..DE invokes49A..49D and
 * ownEnglishROM=ELFpayloadreceiptsconfirmrestoredKlantolpeace,KingMarcel,Queen,Camille,andliteralTheEnd. */
void sub_0802A7DC(void)
{
  u16 wait;
  struct Player *player;
  u8 *task;
  u32 i;
  u32 handle; s32 *counter;
  sub_0801AC24(10);
  for (wait = 12; wait; wait--)
  {
    sub_080003F0();
    if (sub_080021A8())
    {
      break;
    }
  }

  player = &gUnk_03003CE0[sub_080020F4()];
  player->flags |= 1;
  sub_0800D0F4();
  if (!(gUnk_030027D0 & 0x20))
  {
    sub_08006D08(0x180);
  }
  gGameState->flags = 0x200 | gGameState->flags;
  sub_0805DC1C(4, 2, 18, 10);
  sub_0802A590(0, 23);
  gUnk_03001250[0x38 / 2] = 0xFFFF;
  gUnk_03001250[0x3A / 2] = 0xE1E1;
  gUnk_03001250[0x32 / 2] = 0x23C5;
  gUnk_03001250[0x36 / 2] = 0x1773;
  for (wait = 1; wait; wait--)
  {
    sub_080003F0();
    if (sub_080021A8())
    {
      break;
    }
  }

  sub_080009C0(0, 0x4000, 1);
  sub_0801AB90(10);
  for (wait = 12; wait; wait--)
  {
    sub_080003F0();
    if (sub_080021A8())
    {
      break;
    }
  }

  sub_0802A644(0x49A);
  sub_0802A644(0x49B);
  sub_0802A644(0x49C);
  sub_0802A644(0x49D);
  counter=&gUnk_03005CF8; 
  sub_08006C30(30);
  *counter = 0;
  sub_0801AA8C(30);
  while (!sub_0801AAE0())
  {
    sub_080003F0();
  }

  sub_080009F8(0, 0x4000, 1);
  task = ((u8 *) gGameState) + 0x7A4;
  i = 0;
  do
  {
    handle = (u32) (task + 0x48);
    if (sub_08000470(handle))
    {
      sub_080003A8(handle);
    }
    i++;
    task += 0x70;
  }
  while (i <= 14);
  sub_0800D108();
  sub_0800D0F4();
  ;
  (&gUnk_03003CE0[sub_080020F4()])->flags |= 2;
  sub_08067D74();
  *((u32 *) (((u8 *) (&gUnk_03003CE0[sub_080020F4()])) + 0x8C)) = 0x12C00;
  for (wait = 10; wait; wait--)
  {
    sub_080003F0();
    if (sub_080021A8())
    {
      break;
    }
  }

  sub_0808899C();
}
/* [FindCharacterNameStartingBonusIndex] Searches thirteen name resources 0x140533 through 0x14053F in
 * ascending order. Compares resource halfwords beginning at +2, terminated by halfword 0x00FF, against current
 * character name bytes beginning at save +0. Requires all compared symbols to match and the saved name to
 * contain byte 0xFD at exactly that length. Returns the first matched resource index 0..12, or -1. Does not
 * hash/randomize a name, change stats itself, enforce a maximum name length or validate resource
 * pointers/terminators. */
s32 sub_0802A9B0(void) {
    u32 var_r5 = 0x533;
    register u8 **seqAddr asm("r6");
    register u8 **globalAddr asm("r0");
    u8 *seq;
    s32 var_r7;
    volatile u16 *attrs;
    register s32 var_r3 asm("r3");
    register u16 temp_r1 asm("r1");
    u16 temp_r2;
    do {
        u8 *temp_r0 = (u8 *)sub_08007290(0x140000 | var_r5);
        attrs = (volatile u16 *)(temp_r0 + 2);
        var_r7 = 1;
        var_r3 = 0;
        temp_r2 = *(u16 *)(temp_r0 + 2);
        if (temp_r2 != 0xFF) {
            globalAddr = (u8 **)&gUnk_030034E0;
            seq = *globalAddr;
            seqAddr = globalAddr;
            if (temp_r2 != seq[0]) goto block_9;
            do {
                var_r3++;
                temp_r1 = attrs[var_r3];
                if (temp_r1 == 0xFF) break;
                if (temp_r1 != (*seqAddr)[var_r3]) {
                    var_r7 = 0;
                    break;
                }
            } while (1);
        }
        if (var_r7 != 0 && ((u8 *)gUnk_030034E0)[var_r3] == 0xFD) return var_r5 - 0x533;
block_9:
        asm volatile (".ltorg");
        var_r5++;
    } while (var_r5 <= 0x53F);
    return -1;
}
extern u8 *stateAA28 asm("gUnk_03005CF4");
/* Second name for the same slot: keeps the relocation but stops CSE with stateAA28. */
extern u8 *sceneAA28 asm("gUnk_03005CF4");
#define F_AA(p,t,o) (*(t*)((u8*)(p)+(o)))
void sub_0801AA8C(s32);                                /* extern */
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_0802A228(u32, s32);                           /* extern */
void sub_0802A590(u16, u16);                           /* extern */
void sub_080400D4();                                   /* extern */
void sub_080402F4();                                   /* extern */
void sub_08040530();                                   /* extern */
void sub_0804076C(s32);                                /* extern */
void sub_08041030(s32, s32);                           /* extern */
void sub_08041B7C(s32);                                /* extern */
void sub_08041E8C();                                   /* extern */
void sub_080420C8();                                   /* extern */
void sub_08042390();                                   /* extern */
void sub_080425CC(s32);                                /* extern */
void sub_08042938(s32);                                /* extern */
void sub_08042BB0();                                   /* extern */
void sub_080576A8();                                   /* extern */

extern void sub_0802F578(void);
extern void sub_0802FA80(void);
extern void sub_0802FEA0(void);
extern void sub_08030480(void);
extern void sub_080308B4(void);
extern void sub_08030B28(void);
extern void sub_08044EB4(void);
extern void sub_08045B68(void);
/* [InitializeProgressionActorScene] Branches on progression byte+0x1B3/+0x1BF: value10 becomes5 and runs
 * sub_08042BB0; values>1 create resource0x3003D, install progression dialog callback and restore screen;
 * values0/1 create configured actors0x20,0x1F,0x13,0xA,0x3F plus progression-selected
 * actor0x1003B/0x3A/0x2003C/0x3003D/0x40040. Binds callbacks through15-slot scans, selects scenes from
 * low10bit progression XOR saved word, updates progression flags, sometimes changes scene(0,3), otherwise
 * attempts background actor tasks. Task pool30 full skips startup,0x400 allocation retries; missing actor
 * handles skip configuration after one yield; unsupported selector can leave handle unspecified. */
void sub_0802AA28(void) {
    struct Slot27 { u8 pad[0x20]; void *data; u32 off24; };
    s32 sp0;
    s32 sp4;
    u8 *var_r0_10;
    u8 *var_r0_13;
    u8 *var_r0_21;
    u8 *var_r0_3;
    u8 *var_r0_4;
    u8 *var_r0_7;
    u8 *var_r0_8;
    u8 *var_r0_9;
    u8 *var_r1;
    u8 *var_r1_10;
    u8 *var_r1_11;
    u8 *var_r1_12;
    u8 *var_r1_13;
    u8 *var_r1_14;
    u8 *var_r1_15;
    u8 *var_r1_16;
    u8 *var_r1_17;
    u8 *var_r1_18;
    u8 *var_r1_19;
    u8 *var_r1_20;
    u8 *var_r1_21;
    u8 *var_r1_22;
    u8 *var_r1_23;
    u8 *var_r1_24;
    u8 *var_r1_2;
    u8 *var_r1_3;
    u8 *var_r1_4;
    u8 *var_r1_5;
    u8 *var_r1_6;
    u8 *var_r1_7;
    u8 *var_r1_8;
    u8 *var_r1_9;
    u8 *var_r2_11;
    u8 *var_r2_15;
    u8 *var_r2_18;
    u8 *var_r2_21;
    u8 *var_r2_24;
    u8 *var_r2_2;
    u8 *var_r2_36;
    u8 *var_r2_5;
    u8 *var_r2_8;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r1;
    s32 temp_r4;
    s32 bit7Word27;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_sl;
    s32 var_r0_12;
    s32 var_r3;
    s32 var_r5_3;
    s32 var_r6;
    s32 var_r7;
    register s32 var_r8 asm("r8");
    s8 *var_r0_19;
    s8 *var_r0_22;
    s8 *var_r0_23;
    u16 var_r4_2;
    u32 var_r2;
    u32 var_r2_10;
    u32 var_r2_12;
    u32 var_r2_14;
    u32 var_r2_16;
    u32 var_r2_17;
    u32 var_r2_19;
    u32 var_r2_20;
    u32 var_r2_22;
    u32 var_r2_23;
    u32 var_r2_25;
    u32 var_r2_27;
    u32 var_r2_28;
    u32 var_r2_29;
    u32 var_r2_30;
    u32 var_r2_31;
    u32 var_r2_32;
    u32 var_r2_33;
    u32 var_r2_35;
    u32 var_r2_37;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_6;
    u32 var_r2_7;
    u32 var_r2_9;
    u32 case1Mask;
    u32 firstTaskCallback27;
    u32 taskCallback27;
    u32 scanCallback27;
    u32 helperArgument27;
    s32 helperByte27;
    u32 var_r4;
    u32 var_r4_3;
    u32 var_r5_2;
    u32 var_r5_4;
    u8 *var_r0;
    u8 *var_r0_11;
    u8 *var_r0_14;
    u8 *var_r0_15;
    u8 *var_r0_16;
    u8 *var_r0_17;
    u8 *var_r0_18;
    u8 *var_r0_20;
    u8 *var_r0_2;
    u8 *var_r0_5;
    u8 *var_r0_6;
    u8 *var_r2_13;
    u8 *var_r2_26;
    u8 *var_r2_34;
    u8 temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_5;

    if (sub_0800CE30() != 0) {
        var_r0 = stateAA28 + 0x1BF;
    } else {
        var_r0 = stateAA28 + 0x1B3;
    }
    helperByte27 = *var_r0;
    {
        register s32 progressWord27 asm("r0") = helperByte27;
        asm("" : "+r"(progressWord27));
        var_r5_3 = progressWord27;
    }
    if (var_r5_3 != 0xA) {
        if ((s32) var_r5_3 > 1) {
            if (sub_0800CE30() != 0) {
                var_r0_20 = stateAA28 + 0x1C6;
            } else {
                var_r0_20 = stateAA28 + 0x1BA;
            }
            helperByte27 = *var_r0_20;
            var_r5_3 = (helperByte27 >> 2) & 1;
            asm("" : "+r"(var_r5_3));
            if (!var_r5_3) {
                u32 requestedResource27;
                if (sub_0800CE30() != 0) {
                    var_r2_34 = stateAA28 + 0x1C6;
                } else {
                    var_r2_34 = stateAA28 + 0x1BA;
                }
                {
                    register s32 flagByte27 asm("r1") = *var_r2_34;
                    
                    {
                        s32 flagResult27 = flagByte27 | 4;
                        
                        *var_r2_34 = flagResult27;
                    }
                }
                requestedResource27 = 0x188;
                gUnk_03005CF8 = requestedResource27;
                if (!(gUnk_030027D0 & 0x20)) {
                    sub_08006CB4(requestedResource27);
                }
            }
            var_r6 = sub_080289C0(0x3003D, 0x78, 0x78);
            var_r1_23 = stateAA28 + 0x7A4;
            var_r2_35 = 0;
            do {
                if (*(s32*)var_r1_23 == var_r6) {
                    var_r2_36 = var_r1_23;
                    goto found27scan_18;
                }
                var_r2_35 += 1;
                var_r1_23 += 0x70;
            } while (var_r2_35 <= 0xEU);
            sub_080003F0();
            var_r2_36 = ((void *)0);
found27scan_18:
            if (var_r2_36 != ((void *)0)) {
                (*(u16*)((u8*)(var_r2_36)+(0x18))) = 8;
                (*(u16*)((u8*)(var_r2_36)+(0x1A))) = 4;
                (*(u32*)((u8*)(var_r2_36)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_36)+(0x3C))) | 0x10);
            }
            scanCallback27 = (u32) &sub_080308B4;
            var_r1_24 = stateAA28 + 0x7A4;
            var_r2_37 = 0;
            do {
                if (*(s32*)var_r1_24 == var_r6) {
                    var_r0_21 = var_r1_24;
                    goto found27scan_24;
                }
                var_r2_37 += 1;
                var_r1_24 += 0x70;
            } while (var_r2_37 <= 0xEU);
            sub_080003F0();
            var_r0_21 = ((void *)0);
found27scan_24:
            if (var_r0_21 != ((void *)0)) {
                (*(u32*)((u8*)(var_r0_21)+(0x44))) = scanCallback27;
            }
            temp_r4 = 3;
            if (sub_0800CE30() != 0) {
                var_r0_22 = stateAA28 + 0x1BE;
            } else {
                var_r0_22 = stateAA28 + 0x1B2;
            }
            *var_r0_22 = temp_r4;
            sub_0802A590(0, 0xF);
            if (sub_0800CC98() == 0) {
                temp_r0_7 = sub_0801AB24();
                switch (temp_r0_7) {
                case 0:
                    sub_080576A8();
                    break;
                case 1:
                    sub_0801AB50(6);
                    break;
                case 2:
                    sub_0801AB90(6);
                    break;
                }
                while (sub_0801AAE0() == 0) {
                    sub_080003F0();
                }
            }
        } else {
            if (sub_0800CE30() != 0) {
                var_r0_2 = stateAA28 + 0x1C5;
            } else {
                var_r0_2 = stateAA28 + 0x1B9;
            }
            var_r5_3 = *var_r0_2;
            var_r5_3 &= 1;
            asm("" : "+r"(var_r5_3));
            if (var_r5_3) {
                u8 *firstCallbackCursor27;
                var_r8 = sub_080289C0(0x30020, 0x32, 0x5E);
                var_r1 = stateAA28 + 0x7A4;
                var_r2 = 0;
                do {
                    if (*(s32*)var_r1 == var_r8) {
                        var_r2_2 = var_r1;
                        goto found27scan_51;
                    }
                    var_r2 += 1;
                    var_r1 += 0x70;
                } while (var_r2 <= 0xEU);
                sub_080003F0();
                var_r2_2 = ((void *)0);
found27scan_51:
                if (var_r2_2 != ((void *)0)) {
                    (*(u16*)((u8*)(var_r2_2)+(0x18))) = 8;
                    (*(u16*)((u8*)(var_r2_2)+(0x1A))) = 4;
                    (*(u32*)((u8*)(var_r2_2)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_2)+(0x3C))) | 0x10);
                }
                scanCallback27 = (u32)&sub_0802F578;
                firstCallbackCursor27 = stateAA28 + 0x7A4;
                var_r2_3 = 0;
firstCallbackRetry27:
                if (*(s32*)firstCallbackCursor27 != var_r8) {
                    var_r2_3 += 1;
                    firstCallbackCursor27 += 0x70;
                    if (var_r2_3 <= 0xEU) {
                        goto firstCallbackRetry27;
                    }
                    goto block_73;
                }
                var_r0_3 = firstCallbackCursor27;
                goto found27scan_shared;
            }
            var_r8 = sub_080289C0(0x20, 0x5D, 0x52);
            var_r1_3 = stateAA28 + 0x7A4;
            var_r2_4 = 0;
            do {
                if (*(s32*)var_r1_3 == var_r8) {
                    var_r2_5 = var_r1_3;
                    goto found27scan_65;
                }
                var_r2_4 += 1;
                var_r1_3 += 0x70;
            } while (var_r2_4 <= 0xEU);
            sub_080003F0();
            var_r2_5 = ((void *)0);
found27scan_65:
            if (var_r2_5 != ((void *)0)) {
                (*(u16*)((u8*)(var_r2_5)+(0x18))) = 8;
                (*(u16*)((u8*)(var_r2_5)+(0x1A))) = 4;
                (*(u32*)((u8*)(var_r2_5)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_5)+(0x3C))) | 0x10);
            }
            scanCallback27 = (u32)&sub_0802F578;
            var_r1_2 = stateAA28 + 0x7A4;
            var_r2_6 = 0;
            do {
                if (*(s32*)var_r1_2 == var_r8) {
                    var_r0_3 = var_r1_2;
                    goto found27scan_shared;
                }
                var_r2_6 += 1;
                var_r1_2 += 0x70;
            } while (var_r2_6 <= 0xEU);
block_73:
            sub_080003F0();
            var_r0_3 = ((void *)0);
found27scan_shared:
            if (var_r0_3 != ((void *)0)) {
                (*(u32*)((u8*)(var_r0_3)+(0x44))) = scanCallback27;
            }
            sp0 = sub_080289C0(0x1F, 0x93, 0x52);
            var_r1_4 = stateAA28 + 0x7A4;
            var_r2_7 = 0;
            do {
                if (*(s32*)var_r1_4 == sp0) {
                    var_r2_8 = var_r1_4;
                    goto found27scan_77;
                }
                var_r2_7 += 1;
                var_r1_4 += 0x70;
            } while (var_r2_7 <= 0xEU);
            sub_080003F0();
            var_r2_8 = ((void *)0);
found27scan_77:
            if (var_r2_8 != ((void *)0)) {
                (*(u16*)((u8*)(var_r2_8)+(0x18))) = 8;
                (*(u16*)((u8*)(var_r2_8)+(0x1A))) = 4;
                (*(u32*)((u8*)(var_r2_8)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_8)+(0x3C))) | 0x10);
            }
            scanCallback27 = (u32) &sub_0802FA80;
            var_r1_5 = stateAA28 + 0x7A4;
            var_r2_9 = 0;
            do {
                if (*(s32*)var_r1_5 == sp0) {
                    var_r0_4 = var_r1_5;
                    goto found27scan_83;
                }
                var_r2_9 += 1;
                var_r1_5 += 0x70;
            } while (var_r2_9 <= 0xEU);
            sub_080003F0();
            var_r0_4 = ((void *)0);
found27scan_83:
            if (var_r0_4 != ((void *)0)) {
                (*(u32*)((u8*)(var_r0_4)+(0x44))) = scanCallback27;
            }
            if (sub_0800CE30() != 0) {
                var_r5_3 = (*(u32*)((u8*)(stateAA28)+(0x7C)));
            } else {
                var_r5_3 = (*(u32*)((u8*)(stateAA28)+(0x74)));
            }
            {
                register s32 bitMask27 asm("r7") = 1;
                register s32 byteWord27 asm("r0");
                register s32 bitResult27 asm("r1");
            if (sub_0800CE30() != 0) {
                var_r0_5 = stateAA28 + 0x1C4;
            } else {
                var_r0_5 = stateAA28 + 0x1B8;
            }
            temp_r4 = 6;
            temp_r4 = ((s32) *var_r0_5 >> temp_r4) & bitMask27;
                bitMask27 = 1;
                
                if (sub_0800CE30() != 0) {
                    var_r0_6 = stateAA28 + 0x1C4;
                } else {
                    var_r0_6 = stateAA28 + 0x1B8;
                }
                byteWord27 = *var_r0_6;
                
                bitResult27 = (byteWord27 >> 7) & bitMask27;
                asm("" : "+r"(bitResult27));
                bit7Word27 = bitResult27;
            }
            if (bit7Word27 || (!({ var_r5_3 &= 0x20; asm("" : "+r"(var_r5_3)); var_r5_3; }) && (temp_r4 != 0))) {
                var_r7 = sub_080289C0(0x13, 0xB0, 0x60);
                var_r1_6 = stateAA28 + 0x7A4;
                var_r2_10 = 0;
                do {
                    if (*(s32*)var_r1_6 == var_r7) {
                        var_r2_11 = var_r1_6;
                        goto found27scan_103;
                    }
                    var_r2_10 += 1;
                    var_r1_6 += 0x70;
                } while (var_r2_10 <= 0xEU);
                sub_080003F0();
                var_r2_11 = ((void *)0);
found27scan_103:
                if (var_r2_11 != ((void *)0)) {
                    (*(u16*)((u8*)(var_r2_11)+(0x18))) = 8;
                    (*(u16*)((u8*)(var_r2_11)+(0x1A))) = 4;
                    (*(u32*)((u8*)(var_r2_11)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_11)+(0x3C))) | 0x10);
                }
                scanCallback27 = (u32) &sub_0802FEA0;
                var_r1_7 = stateAA28 + 0x7A4;
                var_r2_12 = 0;
                do {
                    if (*(s32*)var_r1_7 == var_r7) {
                        var_r0_7 = var_r1_7;
                        goto found27scan_109;
                    }
                    var_r2_12 += 1;
                    var_r1_7 += 0x70;
                } while (var_r2_12 <= 0xEU);
                sub_080003F0();
                var_r0_7 = ((void *)0);
found27scan_109:
                if (var_r0_7 != ((void *)0)) {
                    (*(u32*)((u8*)(var_r0_7)+(0x44))) = scanCallback27;
                }
                if (sub_0800CE30() != 0) {
                    var_r2_13 = stateAA28 + 0x1C5;
                } else {
                    var_r2_13 = stateAA28 + 0x1B9;
                }
                { u8 m80 = 0x80; *var_r2_13 |= m80; }
            } else {
                var_r7 = sub_080289C0(0x13, 0x270F, 0x270F);
                var_r1_8 = stateAA28 + 0x7A4;
                var_r2_14 = 0;
                do {
                    if (*(s32*)var_r1_8 == var_r7) {
                        var_r2_15 = var_r1_8;
                        goto found27scan_125;
                    }
                    var_r2_14 += 1;
                    var_r1_8 += 0x70;
                } while (var_r2_14 <= 0xEU);
                sub_080003F0();
                var_r2_15 = ((void *)0);
found27scan_125:
                if (var_r2_15 != ((void *)0)) {
                    (*(u16*)((u8*)(var_r2_15)+(0x18))) = 8;
                    (*(u16*)((u8*)(var_r2_15)+(0x1A))) = 4;
                    (*(u32*)((u8*)(var_r2_15)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_15)+(0x3C))) | 0x10);
                }
                scanCallback27 = (u32) &sub_0802FEA0;
                var_r1_9 = stateAA28 + 0x7A4;
                var_r2_16 = 0;
                do {
                    if (*(s32*)var_r1_9 == var_r7) {
                        var_r0_8 = var_r1_9;
                        goto found27scan_131;
                    }
                    var_r2_16 += 1;
                    var_r1_9 += 0x70;
                } while (var_r2_16 <= 0xEU);
                sub_080003F0();
                var_r0_8 = ((void *)0);
found27scan_131:
                if (var_r0_8 != ((void *)0)) {
                    (*(u32*)((u8*)(var_r0_8)+(0x44))) = scanCallback27;
                }
            }
            sp4 = sub_080289C0(0xA, 0x3C, 0x90);
            var_r1_10 = stateAA28 + 0x7A4;
            var_r2_17 = 0;
            do {
                if (*(s32*)var_r1_10 == sp4) {
                    var_r2_18 = var_r1_10;
                    goto found27scan_137;
                }
                var_r2_17 += 1;
                var_r1_10 += 0x70;
            } while (var_r2_17 <= 0xEU);
            sub_080003F0();
            var_r2_18 = ((void *)0);
found27scan_137:
            if (var_r2_18 != ((void *)0)) {
                (*(u16*)((u8*)(var_r2_18)+(0x18))) = 8;
                (*(u16*)((u8*)(var_r2_18)+(0x1A))) = 4;
                (*(u32*)((u8*)(var_r2_18)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_18)+(0x3C))) | 0x10);
            }
            scanCallback27 = (u32) &sub_08030480;
            var_r1_11 = stateAA28 + 0x7A4;
            var_r2_19 = 0;
            do {
                if (*(s32*)var_r1_11 == sp4) {
                    var_r0_9 = var_r1_11;
                    goto found27scan_143;
                }
                var_r2_19 += 1;
                var_r1_11 += 0x70;
            } while (var_r2_19 <= 0xEU);
            sub_080003F0();
            var_r0_9 = ((void *)0);
found27scan_143:
            if (var_r0_9 != ((void *)0)) {
                (*(u32*)((u8*)(var_r0_9)+(0x44))) = scanCallback27;
            }
            temp_sl = sub_080289C0(0x3F, 0xBE, 0xBE);
            var_r1_12 = stateAA28 + 0x7A4;
            var_r2_20 = 0;
            do {
                if (*(s32*)var_r1_12 == temp_sl) {
                    var_r2_21 = var_r1_12;
                    goto found27scan_149;
                }
                var_r2_20 += 1;
                var_r1_12 += 0x70;
            } while (var_r2_20 <= 0xEU);
            sub_080003F0();
            var_r2_21 = ((void *)0);
found27scan_149:
            if (var_r2_21 != ((void *)0)) {
                (*(u16*)((u8*)(var_r2_21)+(0x18))) = 8;
                (*(u16*)((u8*)(var_r2_21)+(0x1A))) = 4;
                (*(u32*)((u8*)(var_r2_21)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_21)+(0x3C))) | 0x10);
            }
            scanCallback27 = (u32)&sub_08030B28;
            var_r1_13 = stateAA28 + 0x7A4;
            var_r2_22 = 0;
            do {
                if (*(s32*)var_r1_13 == temp_sl) {
                    var_r0_10 = var_r1_13;
                    goto found27scan_155;
                }
                var_r2_22 += 1;
                var_r1_13 += 0x70;
            } while (var_r2_22 <= 0xEU);
            sub_080003F0();
            var_r0_10 = ((void *)0);
found27scan_155:
            if (var_r0_10 != ((void *)0)) {
                (*(u32*)((u8*)(var_r0_10)+(0x44))) = scanCallback27;
            }
            if (sub_0800CE30() != 0) {
                var_r0_11 = stateAA28 + 0x1BE;
            } else {
                var_r0_11 = stateAA28 + 0x1B2;
            }
            {
                register s32 switchByte27 asm("r0") = *var_r0_11;
                asm("" : "+r"(switchByte27));
                var_r5_3 = switchByte27;
            }
            switch (var_r5_3) {
            case 0:
                var_r0_12 = 0x1003B;
                break;
            case 1:
                var_r0_12 = 0x3A;
                break;
            case 2:
                var_r0_12 = 0x2003C;
                break;
            case 3:
                var_r0_12 = 0x3003D;
                break;
            case 4:
                var_r0_12 = 0x40040;
                break;
            default:
                goto selected27_spawn_done;
            }
            var_r6 = sub_080289C0(var_r0_12, 0x78, 0x52);
selected27_spawn_done:
            var_r1_14 = stateAA28 + 0x7A4;
            var_r2_23 = 0;
            do {
                if (*(s32*)var_r1_14 == var_r6) {
                    var_r2_24 = var_r1_14;
                    goto found27scan_175;
                }
                var_r2_23 += 1;
                var_r1_14 += 0x70;
            } while (var_r2_23 <= 0xEU);
            sub_080003F0();
            var_r2_24 = ((void *)0);
found27scan_175:
            if (var_r2_24 != ((void *)0)) {
                (*(u16*)((u8*)(var_r2_24)+(0x18))) = 8;
                (*(u16*)((u8*)(var_r2_24)+(0x1A))) = 0x10;
                (*(u32*)((u8*)(var_r2_24)+(0x3C))) = (s32) ((*(u32*)((u8*)(var_r2_24)+(0x3C))) | 0x10);
            }
            scanCallback27 = (u32) &sub_080308B4;
            var_r1_15 = stateAA28 + 0x7A4;
            var_r2_25 = 0;
            do {
                if (*(s32*)var_r1_15 == var_r6) {
                    var_r0_13 = var_r1_15;
                    goto found27scan_181;
                }
                var_r2_25 += 1;
                var_r1_15 += 0x70;
            } while (var_r2_25 <= 0xEU);
            sub_080003F0();
            var_r0_13 = ((void *)0);
found27scan_181:
            if (var_r0_13 != ((void *)0)) {
                (*(u32*)((u8*)(var_r0_13)+(0x44))) = scanCallback27;
            }
            if (sub_0800CE30() != 0) {
                var_r0_14 = stateAA28 + 0x1C5;
            } else {
                var_r0_14 = stateAA28 + 0x1B9;
            }
            var_r5_3 = *var_r0_14;
            var_r5_3 &= 1;
            if (sub_0800CE30() != 0) {
                var_r0_15 = stateAA28 + 0x1C5;
            } else {
                var_r0_15 = stateAA28 + 0x1B9;
            }
            helperByte27 = *var_r0_15;
            temp_r4 = (helperByte27 >> 6) & 1;
            if ((var_r5_3 != 0) && !temp_r4) {
                firstTaskCallback27 = (u32)&sub_08045B68;
                var_r4 = stateAA28 + 0xE34;
                var_r5_2 = 0;
                for (; var_r5_2 <= 0x1DU; var_r5_2++, var_r4 += 0x28) {
                    if (sub_08000470(var_r4) == 0) {
                        while ((temp_r0_3 = ((struct Slot27 *)var_r4)->data
                                = sub_08001494(0x400U)) == ((void *)0)) {
                            sub_080003F0();
                        }
                        (*(u32*)((u8*)(var_r4)+(0x8))) = 0x3C;
                        (*(u32*)((u8*)(var_r4)+(0xC))) = firstTaskCallback27;
                        (*(u32*)((u8*)(var_r4)+(0x10))) = (void *) (temp_r0_3 + 0x3FC);
                        (*(u32*)((u8*)(var_r4)+(0x24))) = 0;
                        sub_08000274(var_r4, var_r7);
                        break;
                    }
                }
            }
            if (sub_0800CE30() != 0) {
                var_r0_16 = stateAA28 + 0x1C3;
            } else {
                var_r0_16 = stateAA28 + 0x1B7;
            }
            var_r5_3 = *var_r0_16;
            var_r5_3 &= 1;
            asm("" : "+r"(var_r5_3));
            if (var_r5_3) {
                sub_080400D4();
                if (sub_0800CE30() != 0) {
                    var_r2_26 = stateAA28 + 0x1C3;
                } else {
                    var_r2_26 = stateAA28 + 0x1B7;
                }
                { s32 m2 = -2; *var_r2_26 &= m2; }
                return;
            }
            if (sub_0800CE30() != 0) {
                var_r5_3 = (*(u32*)((u8*)(stateAA28)+(0x7C)));
            } else {
                var_r5_3 = (*(u32*)((u8*)(stateAA28)+(0x74)));
            }
            temp_r4_2 = (*(u32*)((u8*)(stateAA28)+(0x50)));
            if (var_r5_3 != temp_r4_2) {
                sub_0800CE30();
                temp_r1 = (var_r5_3 ^ temp_r4_2) & 0x3FF;
                switch (temp_r1) {
                case 0x1:
                    sub_080402F4();
                    case1Mask = 2;
                    if (sub_0800CE30() != 0) {
                        (*(u32*)((u8*)(sceneAA28)+(0x80))) = (s32) ((*(u32*)((u8*)(sceneAA28)+(0x80))) | case1Mask);
                    } else {
                        (*(u32*)((u8*)(sceneAA28)+(0x78))) = (s32) ((*(u32*)((u8*)(sceneAA28)+(0x78))) | case1Mask);
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
                case 0x2:
                    sub_08040530();
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 4; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 4; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
case 0x4:
                    sub_0804076C(var_r6);
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 8; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 8; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
case 0x8:
                    var_r1_16 = sceneAA28 + 0x7A4;
                    var_r2_27 = 0;
                    do {
                        if (*(s32*)var_r1_16 == var_r6) {
                            goto found27scan_258;
                        }
                        var_r2_27 += 1;
                        var_r1_16 += 0x70;
                    } while (var_r2_27 <= 0xEU);
                    sub_080003F0();
                    var_r1_16 = ((void *)0);
found27scan_258:
                    if (var_r1_16 != ((void *)0)) {
                        (*(u16*)((u8*)(var_r1_16)+(0x36))) = 4;
                    }
                    sub_08041030(var_r8, var_r7);
                    sub_0800CE30();
                    sub_0805C7B8(1);
                    goto block_357;
                case 0x10:
                    sub_08041B7C(var_r6);
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 0x20; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 0x20; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 0x2000; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 0x2000; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
case 0x20:
                    sub_08041E8C();
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 0x40; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 0x40; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
case 0x40:
                    sub_080420C8();
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 0x80; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 0x80; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
case 0x80:
                    sub_08042390();
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 0x100; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 0x100; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
case 0x100:
                    sub_080425CC(var_r6);
                    if (sub_0800CE30() != 0) {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x80); s32 flagMask27 = 0x200; *flagWord27 |= flagMask27; }
                    } else {
                        { u32 *flagWord27 = (u32 *)(sceneAA28 + 0x78); s32 flagMask27 = 0x200; *flagWord27 |= flagMask27; }
                    }
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    goto block_357;
                case 0x200:
                    sub_08042938(var_r6);
                    if (sub_0800CE30() != 0) {
                        var_r0_18 = sceneAA28 + 0x1C5;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    } else {
                        var_r0_18 = sceneAA28 + 0x1B9;
                        helperByte27 = *var_r0_18;
                        helperArgument27 = (helperByte27 >> 5) & 1;
                    }
                    sub_0805C7B8(helperArgument27);
                    (*(u32*)((u8*)(sceneAA28)+(0x50))) = var_r5_3;
                    sub_0801AA8C(0x1E);
                    while (sub_0801AAE0() == 0) {
                        sub_080003F0();
                    }
                    var_r1_17 = sceneAA28 + 0x7A4;
                    var_r2_28 = 0;
                    do {
                        if (*(s32*)var_r1_17 == var_r8) {
                            goto found27scan_306;
                        }
                        var_r2_28 += 1;
                        var_r1_17 += 0x70;
                    } while (var_r2_28 <= 0xEU);
                    sub_080003F0();
                    var_r1_17 = ((void *)0);
found27scan_306:
                    if (var_r1_17 != ((void *)0)) {
                        (*(u16*)((u8*)(var_r1_17)+(0x36))) = 4;
                    }
                    var_r1_18 = sceneAA28 + 0x7A4;
                    var_r2_29 = 0;
                    do {
                        if (*(s32*)var_r1_18 == sp0) {
                            goto found27scan_312;
                        }
                        var_r2_29 += 1;
                        var_r1_18 += 0x70;
                    } while (var_r2_29 <= 0xEU);
                    sub_080003F0();
                    var_r1_18 = ((void *)0);
found27scan_312:
                    if (var_r1_18 != ((void *)0)) {
                        (*(u16*)((u8*)(var_r1_18)+(0x36))) = 4;
                    }
                    var_r1_19 = sceneAA28 + 0x7A4;
                    var_r2_30 = 0;
                    do {
                        if (*(s32*)var_r1_19 == var_r7) {
                            goto found27scan_318;
                        }
                        var_r2_30 += 1;
                        var_r1_19 += 0x70;
                    } while (var_r2_30 <= 0xEU);
                    sub_080003F0();
                    var_r1_19 = ((void *)0);
found27scan_318:
                    if (var_r1_19 != ((void *)0)) {
                        (*(u16*)((u8*)(var_r1_19)+(0x36))) = 4;
                    }
                    var_r1_20 = sceneAA28 + 0x7A4;
                    var_r2_31 = 0;
                    do {
                        if (*(s32*)var_r1_20 == sp4) {
                            goto found27scan_324;
                        }
                        var_r2_31 += 1;
                        var_r1_20 += 0x70;
                    } while (var_r2_31 <= 0xEU);
                    sub_080003F0();
                    var_r1_20 = ((void *)0);
found27scan_324:
                    if (var_r1_20 != ((void *)0)) {
                        (*(u16*)((u8*)(var_r1_20)+(0x36))) = 4;
                    }
                    var_r1_21 = sceneAA28 + 0x7A4;
                    var_r2_32 = 0;
                    do {
                        if (*(s32*)var_r1_21 == var_r6) {
                            goto found27scan_330;
                        }
                        var_r2_32 += 1;
                        var_r1_21 += 0x70;
                    } while (var_r2_32 <= 0xEU);
                    sub_080003F0();
                    var_r1_21 = ((void *)0);
found27scan_330:
                    if (var_r1_21 != ((void *)0)) {
                        (*(u16*)((u8*)(var_r1_21)+(0x36))) = 4;
                    }
                    var_r1_22 = sceneAA28 + 0x7A4;
                    var_r2_33 = 0;
                    do {
                        if (*(s32*)var_r1_22 == temp_sl) {
                            goto found27scan_336;
                        }
                        var_r2_33 += 1;
                        var_r1_22 += 0x70;
                    } while (var_r2_33 <= 0xEU);
                    sub_080003F0();
                    var_r1_22 = ((void *)0);
found27scan_336:
                    if (var_r1_22 != ((void *)0)) {
                        (*(u16*)((u8*)(var_r1_22)+(0x36))) = 4;
                    }
                    temp_r4 = 1;
                    if (sub_0800CE30() != 0) {
                        var_r0_19 = sceneAA28 + 0x1BF;
                    } else {
                        var_r0_19 = sceneAA28 + 0x1B3;
                    }
                    *var_r0_19 = temp_r4;
                    sub_0802A228(0, 3);
                    return;
                default:
                    if (sub_0800CC98() == 0) {
                        temp_r0_6 = sub_0801AB24();
                        switch (temp_r0_6) {
                        case 0:
                            sub_080576A8();
                            break;
                        case 1:
                            sub_0801AB50(6);
                            break;
                        case 2:
                            sub_0801AB90(6);
                            break;
                        }
                        while (sub_0801AAE0() == 0) {
                            sub_080003F0();
                        }
                    }
block_357:
                    (*(u32*)((u8*)(sceneAA28)+(0x50))) = var_r5_3;
                    goto block_373;
                }
                        } else {
                for (var_r4_2 = 1; var_r4_2 != 0; --var_r4_2) {
                    sub_080003F0();
                    if (sub_080021A8() != 0)
                        break;
                }
                if (sub_0800CC98() == 0) {
                    temp_r0_4 = sub_0801AB24();
                    switch (temp_r0_4) {
                    case 0:
                        sub_080576A8();
                        break;
                    case 1:
                        sub_0801AB50(6);
                        break;
                    case 2:
                        sub_0801AB90(6);
                        break;
                    }
                    while (sub_0801AAE0() == 0) {
                        sub_080003F0();
                    }
                }
                goto block_373;
                        }
block_373:
            taskCallback27 = (u32)&sub_08044EB4;
            var_r4_3 = stateAA28 + 0xE34;
            var_r5_4 = 0;
            goto test27_slot375;
next27_slot375:
            var_r5_4 += 1;
            var_r4_3 += 0x28;
test27_slot375:
            if (var_r5_4 <= 0x1DU) {
                if (sub_08000470(var_r4_3) == 0) {
                    while ((temp_r0_5 = ((struct Slot27 *)var_r4_3)->data
                            = sub_08001494(0x400U)) == ((void *)0)) {
                        sub_080003F0();
                    }
                    (*(u32*)((u8*)(var_r4_3)+(0x8))) = 0x3C;
                    (*(u32*)((u8*)(var_r4_3)+(0xC))) = taskCallback27;
                    (*(u32*)((u8*)(var_r4_3)+(0x10))) = (void *) (temp_r0_5 + 0x3FC);
                    (*(u32*)((u8*)(var_r4_3)+(0x24))) = 0;
                    sub_08000274(var_r4_3, var_r7);
                    return;
                }
                goto next27_slot375;
            }
}
    } else {
        temp_r4 = 5;
        if (sub_0800CE30() != 0) {
            var_r0_23 = stateAA28 + 0x1BF;
        } else {
            var_r0_23 = stateAA28 + 0x1B3;
        }
        *var_r0_23 = temp_r4;
        sub_08042BB0();
    }
}
struct Args028B8A4 { s32 x,y; u16 a,b; void (*callback)(void); u32 zero,pad; };
extern void sub_0802C144(void);
extern void sub_08031FF8(void);
extern void sub_08032598(void);
extern void sub_0803294C(void);
extern void sub_08032DE4(void);
extern void sub_08033198(void);
extern void sub_08033B3C(void);
extern void sub_0803F18C(void);
extern void sub_0804534C(void);
extern void sub_08045660(void);
extern void sub_08056538(void);
extern void sub_08059168(void);
extern void sub_0805990C(void);
/* [InitializeObjectTwentyScene] Creates scene objects with literal kinds0x14,0x15,0x20039,0x1C and
 * conditional0x60017/0x28; configures interaction records and callbacks. Starts30-slot support tasks with
 * allocation retry, conditionally checks inventories for item1:0x29, schedules callback work, and runs
 * optional message0x140482/player-position sequence. Missing object searches yield once and skip writes;
 * argument-block task allocations are unchecked. */
void sub_0802B8A4(void) {
    struct Args028B8A4 args;
    void (*argsCb0)(void), (*argsCb1)(void);
    s32 *var_r0;
    s32 *var_r0_2;
    s32 *var_r0_3;
    s32 *var_r0_4;
    s32 *var_r0_5;
    s32 *var_r0_7;
    s32 *var_r1;
    s32 *var_r1_10;
    s32 *var_r1_11;
    s32 *var_r1_12;
    s32 *var_r1_16;
    s32 *var_r1_2;
    s32 *var_r1_3;
    s32 *var_r1_4;
    s32 *var_r1_5;
    s32 *var_r1_6;
    s32 *var_r1_7;
    s32 *var_r1_8;
    s32 *var_r1_9;
    s32 *var_r2_11;
    s32 *var_r2_14;
    s32 *var_r2_17;
    s32 *var_r2_2;
    s32 *var_r2_5;
    s32 *var_r2_8;
    s32 callback5,callback4,callback3,callback2,callback1,callback0,taskCallback2,taskCallback1,taskCallback0;
    register s32 taskCallback3 asm("r8");
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    register s32 zeroArg028 asm("r0");
    s32 var_r0_8;
    s32 var_r1_15;
    s32 var_r2_19;
    s32 var_r4_4;
    s32 var_r4_5;
    s32 var_r5_6;
    u16 var_r4_7;
    u16 var_r4_8;
    u32 temp_r0_4;
    u32 temp_r0_9;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 var_r2;
    u32 var_r2_10;
    u32 var_r2_12;
    u32 var_r2_13;
    u32 var_r2_15;
    u32 var_r2_16;
    u32 var_r2_18;
    u32 var_r2_20;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_6;
    u32 var_r2_7;
    u32 var_r2_9;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r4;
    u32 var_r4_10;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_6;
    u32 var_r4_9;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r5_5;
    u32 var_r5_7;
    u32 var_r6;
    u8 *var_r0_10;
    u8 *var_r0_6;
    u8 *var_r0_9;
    void *temp_r0;
    void *temp_r0_10;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_5;
    void *temp_r0_8;
    void *temp_r2_2;
    void *var_r1_13;
    void *var_r1_14;

    temp_r6 = sub_080289C0(0x14, 0xC8, 0xB2);
    var_r1 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == temp_r6) goto latefound028b1;
        var_r2++; var_r1 += 0x1C;
    } while (var_r2 <= 14);
    sub_080003F0(); var_r2_2 = NULL;
found028b1:
    if (var_r2_2 != NULL) {
        *(u16 *)((u8 *)var_r2_2 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_2 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_2 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_2 + 0x3C) | 0x10);
    }
    callback0 = (s32)sub_08031FF8;
    
    var_r1_2 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_3 = 0;
    do {
        if (*var_r1_2 == temp_r6) goto latefound028b8;
        var_r2_3++; var_r1_2 += 0x1C;
    } while (var_r2_3 <= 14);
    sub_080003F0(); var_r0 = NULL;
found028b8:
    if (var_r0 != NULL) {
        *(u32 *)((u8 *)var_r0 + 0x44) = callback0;
    }
    taskCallback0=(s32)sub_08032598; 
    var_r4 = gUnk_03005CF4+0xE34; var_r5=0; goto checkTask16;
nextTask16:
    var_r5++; var_r4+=0x28;
checkTask16:
    if(var_r5>29) goto doneTask16;
    if(sub_08000470(var_r4)!=0) goto nextTask16;
    while ((*(u32 *)((u8 *)var_r4 + 0x20) = temp_r0 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4 + 0x8)=60; *(u32 *)((u8 *)var_r4 + 0xC)=taskCallback0; *(u32 *)((u8 *)var_r4 + 0x10)=(u32)temp_r0+0x3FC; *(u32 *)((u8 *)var_r4 + 0x24)=0;
    sub_08000274(var_r4,temp_r6);
doneTask16:;

    temp_r4 = sub_080289C0(0x15, 0x2E, 0x187);
    var_r1_3 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_4 = 0;
    do {
        if (*var_r1_3 == temp_r4) goto latefound028b23;
        var_r2_4++; var_r1_3 += 0x1C;
    } while (var_r2_4 <= 14);
    sub_080003F0(); var_r2_5 = NULL;
found028b23:
    if (var_r2_5 != NULL) {
        *(u16 *)((u8 *)var_r2_5 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_5 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_5 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_5 + 0x3C) | 0x10);
    }
    callback1 = (s32)sub_0803294C;
    
    var_r1_4 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_6 = 0;
    do {
        if (*var_r1_4 == temp_r4) goto latefound028b30;
        var_r2_6++; var_r1_4 += 0x1C;
    } while (var_r2_6 <= 14);
    sub_080003F0(); var_r0_2 = NULL;
found028b30:
    if (var_r0_2 != NULL) {
        *(u32 *)((u8 *)var_r0_2 + 0x44) = callback1;
    }
    temp_r4_2 = sub_080289C0(0x20039, 0x128, 0xA8);
    var_r1_5 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_7 = 0;
    do {
        if (*var_r1_5 == temp_r4_2) goto latefound028b37;
        var_r2_7++; var_r1_5 += 0x1C;
    } while (var_r2_7 <= 14);
    sub_080003F0(); var_r2_8 = NULL;
found028b37:
    if (var_r2_8 != NULL) {
        *(u16 *)((u8 *)var_r2_8 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_8 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_8 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_8 + 0x3C) | 0x10);
    }
    callback2 = (s32)sub_08033B3C;
    
    var_r1_6 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_9 = 0;
    do {
        if (*var_r1_6 == temp_r4_2) goto latefound028b44;
        var_r2_9++; var_r1_6 += 0x1C;
    } while (var_r2_9 <= 14);
    sub_080003F0(); var_r0_3 = NULL;
found028b44:
    if (var_r0_3 != NULL) {
        *(u32 *)((u8 *)var_r0_3 + 0x44) = callback2;
    }
    if ((sub_0800CF48() == 0) && !(((u16) *(u16 *)((u8 *)gUnk_03005CF4 + 0x4) >> 8) & 1)) {
        temp_r4_3 = sub_080289C0(0x60017, 0x114, 0x116);
    var_r1_7 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_10 = 0;
    do {
        if (*var_r1_7 == temp_r4_3) goto latefound028b53;
        var_r2_10++; var_r1_7 += 0x1C;
    } while (var_r2_10 <= 14);
    sub_080003F0(); var_r2_11 = NULL;
found028b53:
        if (var_r2_11 != NULL) {
            *(u16 *)((u8 *)var_r2_11 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_11 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_11 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_11 + 0x3C) | 0x10);
        }
    callback3 = (s32)sub_08059168;
    
    var_r1_8 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_12 = 0;
    do {
        if (*var_r1_8 == temp_r4_3) goto latefound028b59;
        var_r2_12++; var_r1_8 += 0x1C;
    } while (var_r2_12 <= 14);
    sub_080003F0(); var_r0_4 = NULL;
found028b59:
        if (var_r0_4 != NULL) {
            *(u32 *)((u8 *)var_r0_4 + 0x44) = callback3;
        }
    }
    temp_r4_4 = sub_080289C0(0x1C, 0xAE, 0xF9);
    var_r1_9 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_13 = 0;
    do {
        if (*var_r1_9 == temp_r4_4) goto latefound028b65;
        var_r2_13++; var_r1_9 += 0x1C;
    } while (var_r2_13 <= 14);
    sub_080003F0(); var_r2_14 = NULL;
found028b65:
    if (var_r2_14 != NULL) {
        *(u16 *)((u8 *)var_r2_14 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_14 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_14 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_14 + 0x3C) | 0x10);
    }
    callback4 = (s32)sub_08032DE4;
    
    var_r1_10 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_15 = 0;
    do {
        if (*var_r1_10 == temp_r4_4) goto latefound028b71;
        var_r2_15++; var_r1_10 += 0x1C;
    } while (var_r2_15 <= 14);
    sub_080003F0(); var_r0_5 = NULL;
found028b71:
    if (var_r0_5 != NULL) {
        *(u32 *)((u8 *)var_r0_5 + 0x44) = callback4;
    }
    if (sub_0800CE30() != 0) {
        var_r0_6 = (u8 *)(gUnk_03005CF4 + 0x1C3);
        goto selectedFlag028b;
latefound028b71: var_r0_5 = var_r1_10; goto found028b71;
latefound028b65: var_r2_14 = var_r1_9; goto found028b65;
latefound028b59: var_r0_4 = var_r1_8; goto found028b59;
latefound028b53: var_r2_11 = var_r1_7; goto found028b53;
latefound028b44: var_r0_3 = var_r1_6; goto found028b44;
latefound028b37: var_r2_8 = var_r1_5; goto found028b37;
latefound028b30: var_r0_2 = var_r1_4; goto found028b30;
latefound028b23: var_r2_5 = var_r1_3; goto found028b23;
latefound028b8: var_r0 = var_r1_2; goto found028b8;
latefound028b1: var_r2_2 = var_r1; goto found028b1;
latefound028b93: var_r2_17 = var_r1_11; goto found028b93;
latefound028b99: var_r0_7 = var_r1_12; goto found028b99;

    } else {
        var_r0_6 = (u8 *)(gUnk_03005CF4 + 0x1B7);
    }
selectedFlag028b:
    { register s32 value asm("r0"); register s32 bit asm("r2"); value=*var_r0_6; asm("" : "+r"(value)); bit=value>>2; bit &= 1;  if (bit) {
        temp_r4_5 = sub_080289C0(0x28, 0xBF, 0xF9);
    var_r1_11 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_16 = 0;
    do {
        if (*var_r1_11 == temp_r4_5) goto latefound028b93;
        var_r2_16++; var_r1_11 += 0x1C;
    } while (var_r2_16 <= 14);
    sub_080003F0(); var_r2_17 = NULL;
found028b93:
        if (var_r2_17 != NULL) {
            *(u16 *)((u8 *)var_r2_17 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_17 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_17 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_17 + 0x3C) | 0x10);
        }
    callback5 = (s32)sub_08033198;
    
    var_r1_12 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_18 = 0;
    do {
        if (*var_r1_12 == temp_r4_5) goto latefound028b99;
        var_r2_18++; var_r1_12 += 0x1C;
    } while (var_r2_18 <= 14);
    sub_080003F0(); var_r0_7 = NULL;
found028b99:
        if (var_r0_7 != NULL) {
            *(u32 *)((u8 *)var_r0_7 + 0x44) = callback5;
        }
    } else {
    taskCallback1=(s32)sub_08045660; 
    var_r4_2 = gUnk_03005CF4+0xE34; var_r5_2=0; goto checkTask106;
nextTask106:
    var_r5_2++; var_r4_2+=0x28;
checkTask106:
    if(var_r5_2>29) goto doneTask106;
    if(sub_08000470(var_r4_2)!=0) goto nextTask106;
    while ((*(u32 *)((u8 *)var_r4_2 + 0x20) = temp_r0_2 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_2 + 0x8)=60; *(u32 *)((u8 *)var_r4_2 + 0xC)=taskCallback1; *(u32 *)((u8 *)var_r4_2 + 0x10)=(u32)temp_r0_2+0x3FC; *(u32 *)((u8 *)var_r4_2 + 0x24)=0;
    sub_08000274(var_r4_2,0);
doneTask106:;

    }
    }
    taskCallback2=(s32)sub_08056538; 
    var_r4_3 = gUnk_03005CF4+0xE34; var_r5_3=0; goto checkTask114;
nextTask114:
    var_r5_3++; var_r4_3+=0x28;
checkTask114:
    if(var_r5_3>29) goto doneTask114;
    if(sub_08000470(var_r4_3)!=0) goto nextTask114;
    while ((*(u32 *)((u8 *)var_r4_3 + 0x20) = temp_r0_3 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_3 + 0x8)=60; *(u32 *)((u8 *)var_r4_3 + 0xC)=taskCallback2; *(u32 *)((u8 *)var_r4_3 + 0x10)=(u32)temp_r0_3+0x3FC; *(u32 *)((u8 *)var_r4_3 + 0x24)=0;
    sub_08000274(var_r4_3,0);
doneTask114:;

    {
    u32 mask028;
    if (sub_0800CE30() != 0) {
        var_r0_8=(u32)((u8 *)gUnk_03005CF4+0x80);
        
        mask028=16; 
        var_r0_8=*(u32 *)var_r0_8;
        
    } else {
        var_r0_8=(u32)gUnk_03005CF4;
        
        mask028=16; 
        var_r0_8=*(u32 *)(var_r0_8+0x78);
        
    }
    
    var_r0_8 &= mask028;
    if (var_r0_8) goto inventory028;
    }
    goto inventoryDone028;
inventory028:
    {
    s32 bit028=1;
    s32 flag028;
    s32 player028;
    register s32 count028 asm("r4");
    register s32 saved028 asm("r5");
    register u32 index028 asm("r3");
    asm("" : "+r"(bit028));
        if (sub_0800CE30() != 0) {
            var_r0_9 = (u8 *)(gUnk_03005CF4 + 0x1C3);
        } else {
            var_r0_9 = (u8 *)(gUnk_03005CF4 + 0x1B7);
        }
        { s32 byte028=*var_r0_9;
          
          flag028=byte028>>1; flag028 &= bit028;
           }
        player028=sub_080020F4(); 
        count028 = 0;
        index028 = 0;
        var_r1_13 = (u8 *)gUnk_030034E0 + 0x150;
        do {
            if ((*(u16 *)((u8 *)var_r1_13 + 0x0) == 1) && (*(u16 *)((u8 *)var_r1_13 + 0x2) == 0x29)) {
                count028 += 1;
            }
            var_r1_13 += 0x10;
            index028 += 1;
        } while (index028 <= 0x18U);
        saved028=count028; 
        count028 = 0;
        index028 = 0;
        var_r1_14 = (u8 *)gUnk_030034E0 + 0x2E0;
        do {
            if ((*(u16 *)((u8 *)var_r1_14 + 0x0) == 1) && (*(u16 *)((u8 *)var_r1_14 + 0x2) == 0x29)) {
                count028 += 1;
            }
            var_r1_14 += 0x10;
            index028 += 1;
        } while (index028 <= 0x4AU);
        if ((flag028 == 0) && (player028 == 0) && (saved028 == 0) && (count028 == 0)) {
    argsCb0=sub_0804534C; 
    var_r4_6=gUnk_03005CF4+0xE34; var_r5_4=0; goto checkArgs0;
nextArgs0:
    var_r5_4++;var_r4_6+=0x28;
checkArgs0:
    if(var_r5_4>29) goto doneArgs0;
    temp_r0_4=sub_08000470(var_r4_6);if(temp_r0_4!=0) goto nextArgs0;
    args.x=0x9700; args.y=0x16D00;args.a=16;args.b=8;args.callback=argsCb0;
    
    { register u32 z asm("r0")=0;  args.zero=z; }
    *(u32 *)((u8 *)var_r4_6 + 0x8)=60; temp_r0_5=sub_08001494(0x400); *(u32 *)((u8 *)var_r4_6 + 0x20)=temp_r0_5; *(u32 *)((u8 *)var_r4_6 + 0xC)=(u32)sub_0805A874; *(u32 *)((u8 *)var_r4_6 + 0x10)=(u32)temp_r0_5+0x3FC; *(u32 *)((u8 *)var_r4_6 + 0x24)=temp_r0_4;
    sub_08000274(var_r4_6,(u32)&args,1);sub_080003F0();sub_080003F0();
doneArgs0:;

            sub_08068070((u32) &sub_0805990C, 0x14U);
        }
    }
inventoryDone028:;
    if (sub_0800CE30() != 0) {
        var_r0_10 = (u8 *)(gUnk_03005CF4 + 0x1C3);
    } else {
        var_r0_10 = (u8 *)(gUnk_03005CF4 + 0x1B7);
    }
    {
    register u32 selected028 asm("r6")=*var_r0_10;
    u32 one028=1;
    asm("" : "+r"(selected028), "+r"(one028));
    selected028 &= one028;
    if (!selected028) goto normalMode028b;
    }
        {
        u32 playerOffset028;
        u32 stride028;
        u32 playerRet028=sub_080020F4();
        
        stride028=0x14C;
        
        playerOffset028=playerRet028;
        playerOffset028 *= stride028;
        temp_r2_2=(void *)(playerOffset028+(u32)gUnk_03003CE0);
        *(u32 *)((u8 *)temp_r2_2+0x30) |= 1;
        }
        sub_0800D0F4();
        temp_r7 = sub_080289C0(0x31, 0xF0, 0x190);
        temp_r0_7 = sub_080020F4();
        switch (temp_r0_7) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_r2_19 = 0x1B8;
            zeroArg028=0; 
            var_r1_15 = 0xF0;
            goto block_163;
        case 1:                                     /* switch 1 */
            var_r1_15 = 0x104;
            var_r2_19 = 0x1C2;
            zeroArg028=0; 
            goto block_163;
        case 2:                                     /* switch 1 */
            var_r2_19 = 0x1C2;
            zeroArg028=0; 
            var_r1_15 = 0xDC;
block_163:
            sub_08028AAC(zeroArg028, var_r1_15, var_r2_19, 0);
            break;
        case 3:                                     /* switch 1 */
            sub_08028AAC(0, 0xF0, 0x1CC, 0);
            break;
        }
        sub_080290E4(0, 4);
        var_r4_7 = 0x1E;
        goto checkTimer167;
loop_167:
        var_r4_7 -= 1;
        if (var_r4_7 == 0) goto doneTimer167;
checkTimer167:
        sub_080003F0();
        if (sub_080021A8() == 0) goto loop_167;
doneTimer167:;
        sub_0801AA34(0x1E);
        goto checkWait170;
loop_170:
        sub_080003F0();
checkWait170:
        if (sub_0801AAE0() == 0) goto loop_170;
        goto checkWait173;
loop_173:
        sub_080003F0();
checkWait173:
        if (sub_0805F184() != 0) goto loop_173;
        goto checkWait176;
loop_176:
        sub_080003F0();
checkWait176:
        if (sub_0805EF90() != 0) goto loop_176;
        temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140482U);
        goto checkWait179;
loop_179:
        sub_080003F0();
checkWait179:
        if (sub_0805EEFC((void *) temp_r4_6) == 0) goto loop_179;
        var_r4_8 = 0xA;
        goto checkTimer182;
loop_182:
        var_r4_8 -= 1;
        if (var_r4_8 == 0) goto doneTimer182;
checkTimer182:
        sub_080003F0();
        if (sub_080021A8() == 0) goto loop_182;
doneTimer182:;
    taskCallback3=(s32)sub_0803F18C; 
    var_r4_9 = gUnk_03005CF4+0xE34; var_r5_5=0; goto checkTask185;
nextTask185:
    var_r5_5++; var_r4_9+=0x28;
checkTask185:
    if(var_r5_5>29) goto doneTask185;
    if(sub_08000470(var_r4_9)!=0) goto nextTask185;
    while ((*(u32 *)((u8 *)var_r4_9 + 0x20) = temp_r0_8 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_9 + 0x8)=60; *(u32 *)((u8 *)var_r4_9 + 0xC)=taskCallback3; *(u32 *)((u8 *)var_r4_9 + 0x10)=(u32)temp_r0_8+0x3FC; *(u32 *)((u8 *)var_r4_9 + 0x24)=0;
    sub_08000274(var_r4_9,temp_r0_7);
doneTask185:;

        sub_0802939C(temp_r7, 8);
        sub_08028D98(temp_r7, 0, -0x12C, 0x12C);
        { u32 base028=(u32)gUnk_03005CF4; register u32 off028 asm("r2");  off028=0x7A4;
          
          var_r1_16=(s32 *)(base028+off028); }
        var_r2_20 = 0;
loop_192:
        if (*var_r1_16 != temp_r7) {
            var_r2_20 += 1;
            var_r1_16 += 0x1C;
            if (var_r2_20 > 0xEU) {
                sub_080003F0();
                var_r1_16 = NULL;
            } else {
                goto loop_192;
            }
        }
        if (var_r1_16 != NULL) {
            *(u16 *)((u8 *)var_r1_16 + 0x36) = 4;
        }
        sub_0801AA8C(0x1E);
        goto checkWait199;
loop_199:
        sub_080003F0();
checkWait199:
        if (sub_0801AAE0() == 0) goto loop_199;
        { u32 base028=(u32)gUnk_03005CF4; register u32 off028 asm("r7");  off028=0x7A4;
          
          var_r5_6=base028+off028; }
        var_r6 = 0;
        do {
            temp_r4_7 = var_r5_6 + 0x48;
            if (sub_08000470(temp_r4_7) != 0) {
                sub_080003A8((s32) temp_r4_7);
            }
            var_r6 += 1;
            var_r5_6 += 0x70;
        } while (var_r6 <= 0xEU);
        sub_0802A228(0, 2);
    goto modeDone028b;
normalMode028b:
        if (sub_0800CC98() == 0) {
            temp_r0_6 = sub_0801AB24();
            switch (temp_r0_6) {                    /* switch 2; irregular */
            case 0:                                 /* switch 2 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 2 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 2 */
                sub_0801AB90(6);
                break;
            }
        goto checkWait216;
loop_216:
        sub_080003F0();
checkWait216:
        if (sub_0801AAE0() == 0) goto loop_216;
        }
modeDone028b:;
    if ((sub_0800CF48() != 0) || (((u16) *(u16 *)((u8 *)gUnk_03005CF4 + 0x4) >> 8) & 1)) {
    argsCb1=sub_0802C144; 
    { u32 base028=(u32)gUnk_03005CF4; register u32 off028 asm("r1");  off028=0xE34;
      asm("" : "+r"(off028));
      var_r4_10=base028+off028; }
    var_r5_7=0; goto checkArgs1;
nextArgs1:
    var_r5_7++;var_r4_10+=0x28;
checkArgs1:
    if(var_r5_7>29) goto doneArgs1;
    temp_r0_9=sub_08000470(var_r4_10);if(temp_r0_9!=0) goto nextArgs1;
    args.x=0xF000; args.y=0x1C000;args.a=64;args.b=8;args.callback=argsCb1;
    
    { register u32 z asm("r0")=0;  args.zero=z; }
    *(u32 *)((u8 *)var_r4_10 + 0x8)=60; temp_r0_10=sub_08001494(0x400); *(u32 *)((u8 *)var_r4_10 + 0x20)=temp_r0_10; *(u32 *)((u8 *)var_r4_10 + 0xC)=(u32)sub_0805A874; { register u32 off028 asm("r2")=0x3FC;
    asm("" : "+r"(off028));
    *(u32 *)((u8 *)var_r4_10 + 0x10)=(u32)temp_r0_10+off028; } *(u32 *)((u8 *)var_r4_10 + 0x24)=temp_r0_9;
    sub_08000274(var_r4_10,(u32)&args,1);sub_080003F0();sub_080003F0();
doneArgs1:;

    }
}



struct Task028C144 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
struct Args028C144 { s32 x,y; u16 a,b; void (*callback)(void); u32 zero, pad; };
extern u8 *gs028C144 asm("gUnk_03005CF4");
/* [PromptCastleExitToWorldMap] Locks local player flag1 viaD0F4, waits dialogue idle, opens1404E3 and waits
 * completion. Original English resource explicitly warns that entering a location from World Map removes
 * castle floor items, retry gate and angel, then asks Go to the World Map. Nonzero result selects player
 * animation8, faces0 and moves relative(0,+32) over duration parameter20. Zero result faces4/moves(0,-20),
 * re-registers a5A874 rectangle trigger at fixedpoint(F000,1C000), dimensions64x8, with this same callback;
 * searches30eventslots and does not check malloc result before pointer arithmetic. Both tails clearflag1
 * viaD108 and set localplayerstate0. */
void sub_0802C144(void) {
    struct Args028C144 args;
    u32 result;
    struct Task028C144 *task;
    u32 i, free, index;
    void (*callback)(void);
    struct Player *player;
    register u32 offset asm("r2");
    offset = 0x14C * sub_080020F4();
    
    player = (struct Player *)(offset + (u32)gUnk_03003CE0);
    
    player->flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    result = sub_0805DF38(1,15,2,0,-2,0x1404E3);
    while (sub_0805EEFC((void *)result) == 0) sub_080003F0();
    if (sub_0805EF14((u8 *)result) != 0) {
        sub_0802939C(0,8);
        sub_080290E4(0,0);
        sub_08028D98(0,0,32,20);
    } else {
        sub_0802939C(0,8);
        sub_080290E4(0,4);
        sub_08028D98(0,0,-20,20);
        callback = sub_0802C144;
        
        task = (struct Task028C144 *)(gs028C144 + 0xE34);
        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i > 29) goto done;
        free = sub_08000470((u32)task);
        if (free != 0) goto next;
        args.x = 0xF000;
        args.y = 0x1C000;
        args.a = 64;
        args.b = 8;
        args.callback = callback;
        
        { register u32 zero asm("r0") = 0;
          
          args.zero = zero; }
        task->f8 = 60;
        task->f20 = sub_08001494(0x400);
        task->fC = (u32)sub_0805A874;
        task->f10 = task->f20 + 0x3FC;
        task->f24 = free;
        sub_08000274(task, &args, 1);
        sub_080003F0();
        sub_080003F0();
    }
done:
    offset = 0x14C * sub_080020F4();
    
    player = (struct Player *)(offset + (u32)gUnk_03003CE0);
    
    player->flags &= ~1;
    sub_0800D108();
    gUnk_03003CE0[sub_080020F4()].state = 0;
}








extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_0802939C(s32,s32);
extern void sub_080576A8(void);
extern void sub_0803188C(void);
extern void sub_080319F0(void);
extern void sub_08031B54(void);
extern void sub_08031CB8(void);
extern void sub_08031D88(void);
extern void sub_08031E58(void);
/* [InitializeItemCollectionMenuActors] Creates five resource0x20039 interaction actors at literal coordinates
 * and binds menu selectors5/6 plus other interaction callbacks. Progression byte+0x1B9/+0x1C5 bit5 selects
 * alternate resource7/8/6 arrangement and menu1 callback. Every slot lookup scans15 records stride0x70, yields
 * once and skips mutation if absent. Actor allocations are not checked separately; final screen transition
 * restore waits idle. */
void sub_0802C2A0(void) {
 s32 handle, cb, mode; register s32 bits asm("r1"); register s32 value asm("r0"); s32 *p, *res, *res2; u32 i; u8 *flag;
 handle=sub_080289C0(0x20039,0x1A8,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found1; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found1:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_0803188C;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found2; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found2:
 if(res2) res2[17]=cb;
 handle=sub_080289C0(0x20039,0x1E8,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found3; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found3:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_080319F0;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found4; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found4:
 if(res2) res2[17]=cb;
 if(sub_0800CE30()) flag=(u8 *)(gUnk_03005CF4+0x1C5); else flag=(u8 *)(gUnk_03005CF4+0x1B9);
 value=(s32)*flag; asm("" : "+r"(value)); bits=value>>5; bits &= 1;  if(!bits) {
 handle=sub_080289C0(7,0xDA,0xCF); sub_0802939C(handle,1);
 sub_0802939C(sub_080289C0(8,0xF6,0xCF),2);
 handle=sub_080289C0(6,0xE9,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found5; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found5:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031B54;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found8; } i++; p+=0x1C; } while(i<=14);
 goto fail8;
 } else {
 handle=sub_080289C0(7,0xE9,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found7; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found7:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 sub_0802939C(handle,1);
 cb=(s32)sub_08031B54;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found8; } i++; p+=0x1C; } while(i<=14);
fail8:
 sub_080003F0(); res2=0;
found8:
 if(res2) res2[17]=cb;
 }
 handle=sub_080289C0(0x20039,0x228,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found9; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found9:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031CB8;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found10; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found10:
 if(res2) res2[17]=cb;
 handle=sub_080289C0(0x20039,0xA8,0xC8);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found11; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found11:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031D88;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found12; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found12:
 if(res2) res2[17]=cb;
 handle=sub_080289C0(0x20039,0x128,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found13; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found13:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031E58;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found14; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found14:
 if(res2) res2[17]=cb;
 if(sub_0800CC98()==0) { mode=sub_0801AB24(); switch(mode) { case 0:sub_080576A8();break; case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;} while(sub_0801AAE0()==0) sub_080003F0(); }
}


extern void sub_08033C40(void);
extern void sub_08034488(void);
extern void sub_08034900(void);
extern void sub_08034A5C(void);
extern void sub_08034F64(void);
extern void sub_0803540C(void);
extern void sub_08035914(void);
extern void sub_080359E8(void);
extern void sub_08035A88(void);
extern void sub_08035B18(void);
extern void sub_080368F4(void);
extern void sub_080376CC(void);
extern void sub_08044D1C(void);
/* [InitializeActorCProgressionScene] Progression byte+0x1B3/+0x1BF selects actor0xC or0x9000C and associated
 * callbacks; value1 starts boundary monitor, value0 starts intro task. Configures actors0x1E,0x2D,0x1D with
 * independent asynchronous tasks and resource5 with interaction callback; optional resource6 and0xF depend
 * progression bits. Resource0x4002B receives normal/alternate-mode callback. Slot scans15 skip missing
 * handles; task scans30 skip full pool, retry0x400 stack allocation. Entry value1 waits fade and unlocks local
 * player/input; other branches restore screen only. Unsupported progression values can leave primary handle
 * unspecified. */
void sub_0802C674(void) {
    register void (*var_r4_7)(void) asm("r4");
    s32 *var_r0_10;
    s32 *var_r0_11;
    s32 *var_r0_2;
    s32 *var_r0_3;
    s32 *var_r0_5;
    s32 *var_r0_6;
    s32 *var_r0_7;
    s32 *var_r0_8;
    s32 *var_r0_9;
    s32 *var_r1;
    s32 *var_r1_10;
    s32 *var_r1_11;
    s32 *var_r1_12;
    s32 *var_r1_13;
    s32 *var_r1_14;
    s32 *var_r1_15;
    s32 *var_r1_16;
    s32 *var_r1_17;
    s32 *var_r1_18;
    s32 *var_r1_19;
    s32 *var_r1_20;
    s32 *var_r1_2;
    s32 *var_r1_3;
    s32 *var_r1_4;
    s32 *var_r1_5;
    s32 *var_r1_6;
    s32 *var_r1_7;
    s32 *var_r1_8;
    s32 *var_r1_9;
    s32 *var_r2_11;
    s32 *var_r2_15;
    s32 *var_r2_18;
    s32 *var_r2_21;
    s32 *var_r2_24;
    s32 *var_r2_27;
    s32 *var_r2_2;
    s32 *var_r2_31;
    s32 *var_r2_34;
    s32 *var_r2_5;
    s32 *var_r2_8;
    s32 callback0, callback1, callback2, callback3, callback4;
    s32 taskCallback0, taskCallback1, taskCallback2, taskCallback3, taskCallback4, taskCallback5;
    s32 callback, taskCallback;
    s32 bitFlag028c;
    register u32 *root028c asm("r1");
    s32 temp_r0_8;
    s32 temp_r4_2;
    s32 optionalCb028c;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 var_r2_13;
    s32 var_r2_29;
    s32 var_r6; /* Assigned by each defined entry-state case (0..3). */
    u32 var_r2;
    u32 var_r2_10;
    u32 var_r2_12;
    u32 var_r2_14;
    u32 var_r2_16;
    u32 var_r2_17;
    u32 var_r2_19;
    u32 var_r2_20;
    u32 var_r2_22;
    u32 var_r2_23;
    u32 var_r2_25;
    u32 var_r2_26;
    u32 var_r2_28;
    u32 var_r2_30;
    u32 var_r2_32;
    u32 var_r2_33;
    u32 var_r2_35;
    u32 var_r2_36;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_6;
    u32 var_r2_7;
    u32 var_r2_9;
    u32 var_r4;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_4;
    u32 var_r4_5;
    u32 var_r4_6;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r5_5;
    u32 var_r5_6;
    u8 *var_r0;
    u8 *var_r0_4;
    u8 temp_r0;
    u32 temp_r4;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r0_6;
    void *temp_r0_7;
    void *temp_r2;

    if (sub_0800CE30() != 0) {
        var_r0 = (u8 *)(gUnk_03005CF4 + 0x1BF);
    } else {
        var_r0 = (u8 *)(gUnk_03005CF4 + 0x1B3);
    }
    temp_r0 = *var_r0;
    switch (temp_r0) {
    case 0:                                         /* switch 1 */
        var_r6 = sub_080289C0(0xC, 0xDA, 0xE9);
    var_r1_4 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_7 = 0;
    do {
        if (*var_r1_4 == var_r6) { var_r2_8 = var_r1_4; goto found028b14; }
        var_r2_7++; var_r1_4 += 0x1C;
    } while (var_r2_7 <= 14);
    sub_080003F0(); var_r2_8 = NULL;
found028b14:
        if (var_r2_8 != NULL) {
            *(u16 *)((u8 *)var_r2_8 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_8 + 0x1A) = 0x1E;
            *(u32 *)((u8 *)var_r2_8 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_8 + 0x3C) | 0x10);
        }
    callback=(s32)sub_08033C40; 
    var_r1_2=(s32 *)(gUnk_03005CF4+0x7A4); var_r2_3=0;
scanEntry0:
    if(*var_r1_2==var_r6) goto sharedEntryFound028;
    var_r2_3++; var_r1_2+=0x1C;
    if(var_r2_3<=14) goto scanEntry0;
    goto sharedEntryMiss028;
    case 1:                                         /* switch 1 */
        var_r6 = sub_080289C0(0x9000C, 0x110, 0xF8);
    var_r1_5 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_10 = 0;
    do {
        if (*var_r1_5 == var_r6) { var_r2_11 = var_r1_5; goto found028b27; }
        var_r2_10++; var_r1_5 += 0x1C;
    } while (var_r2_10 <= 14);
    sub_080003F0(); var_r2_11 = NULL;
found028b27:
        if (var_r2_11 != NULL) {
            *(u16 *)((u8 *)var_r2_11 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_11 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_11 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_11 + 0x3C) | 0x10);
        }
    callback = (s32)sub_08033C40;
    
    var_r1_6 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_12 = 0;
    do {
        if (*var_r1_6 == var_r6) { var_r0_3 = var_r1_6; goto found028b33; }
        var_r2_12++; var_r1_6 += 0x1C;
    } while (var_r2_12 <= 14);
    sub_080003F0(); var_r0_3 = NULL;
found028b33:
        if (var_r0_3 != NULL) {
            *(u32 *)((u8 *)var_r0_3 + 0x44) = callback;
        }
    taskCallback0=(s32)sub_08034900; 
    var_r4=gUnk_03005CF4+0xE34; var_r5=0; goto checkEntryTask;
nextEntryTask:
    var_r5++; var_r4+=0x28;
checkEntryTask:
    if(var_r5>29) goto entryDone028;
    if(sub_08000470(var_r4)!=0) goto nextEntryTask;
    while ((*(u32 *)((u8 *)var_r4+0x20)=temp_r0_2=sub_08001494(0x400))==0) sub_080003F0();
    *(u32 *)((u8 *)var_r4+8)=60; *(u32 *)((u8 *)var_r4+12)=taskCallback0;
    *(u32 *)((u8 *)var_r4+16)=(u32)temp_r0_2+0x3FC;
    *(u32 *)((u8 *)var_r4+36)=0;
    sub_08000274(var_r4,0);
    goto entryDone028;
    case 2:                                         /* switch 1 */
        var_r6 = sub_080289C0(0x9000C, 0x110, 0xF8);
    var_r1 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == var_r6) { var_r2_2 = var_r1; goto found028b49; }
        var_r2++; var_r1 += 0x1C;
    } while (var_r2 <= 14);
    sub_080003F0(); var_r2_2 = NULL;
found028b49:
        if (var_r2_2 != NULL) {
            *(u16 *)((u8 *)var_r2_2 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_2 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_2 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_2 + 0x3C) | 0x10);
        }
    callback=(s32)sub_08033C40; 
    var_r1_2=(s32 *)(gUnk_03005CF4+0x7A4); var_r2_3=0;
scanEntry2:
    if(*var_r1_2==var_r6) goto sharedEntryFound028;
    var_r2_3++; var_r1_2+=0x1C;
    if(var_r2_3<=14) goto scanEntry2;
    goto sharedEntryMiss028;
islandEntry61:
    var_r2_5=var_r1_3; goto found028b61;
sharedEntryFound028:
    var_r0_2=var_r1_2; goto sharedEntryStore028;
    case 3:                                         /* switch 1 */
        var_r6 = sub_080289C0(0x9000C, 0x110, 0xF8);
    var_r1_3 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_4 = 0;
    do {
        if (*var_r1_3 == var_r6) { goto islandEntry61; }
        var_r2_4++; var_r1_3 += 0x1C;
    } while (var_r2_4 <= 14);
    sub_080003F0(); var_r2_5 = NULL;
found028b61:
        if (var_r2_5 != NULL) {
            *(u16 *)((u8 *)var_r2_5 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_5 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_5 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_5 + 0x3C) | 0x10);
        }
    callback=(s32)sub_08033C40; 
    var_r1_2=(s32 *)(gUnk_03005CF4+0x7A4); var_r2_3=0;
scanEntry3:
    if(*var_r1_2==var_r6) goto sharedEntryFound028;
    var_r2_3++; var_r1_2+=0x1C;
    if(var_r2_3<=14) goto scanEntry3;
sharedEntryMiss028:
    sub_080003F0(); var_r0_2=NULL;
sharedEntryStore028:
    if(var_r0_2!=NULL) *(u32 *)((u8 *)var_r0_2+0x44)=callback;
    break;
    }
entryDone028:;
    if (sub_0800CE30() != 0) {
        var_r0_4 = (u8 *)(gUnk_03005CF4 + 0x1BF);
    } else {
        var_r0_4 = (u8 *)(gUnk_03005CF4 + 0x1B3);
    }
    { register u32 byte028c asm("r0")=*var_r0_4;
      asm("" : "+r"(byte028c)); temp_r4=byte028c; }
    {

    register u32 base028c asm("r0");
    u32 off028c;
    if(sub_0800CE30()!=0) {
        root028c=(u32 *)&gUnk_03005CF4;
        
        base028c=*root028c; off028c=0x1C5;
        
    } else {
        root028c=(u32 *)&gUnk_03005CF4;
        
        base028c=*root028c; off028c=0x1B9;
        
    }
    { s32 byte028c=*(u8 *)(base028c+off028c);
      
      bitFlag028c=byte028c>>5; bitFlag028c &= 1;
       }
    }
    if (temp_r4 != 0) goto optional028c;
    {
    taskCallback1=(s32)sub_08034488; 
    var_r4_2 = *root028c+0xE34; var_r5_2=0; goto checkTask81;
nextTask81:
    var_r5_2++; var_r4_2+=0x28;
checkTask81:
    if(var_r5_2>29) goto doneTask81;
    if(sub_08000470(var_r4_2)!=0) goto nextTask81;
    while ((*(u32 *)((u8 *)var_r4_2 + 0x20) = temp_r0_3 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_2 + 0x8)=60; *(u32 *)((u8 *)var_r4_2 + 0xC)=taskCallback1; *(u32 *)((u8 *)var_r4_2 + 0x10)=(u32)temp_r0_3+0x3FC; *(u32 *)((u8 *)var_r4_2 + 0x24)=0;
    sub_08000274(var_r4_2,var_r6);
doneTask81:;

    }
    goto afterOptional028c;
island028c99:
    var_r2_15=var_r1_7; goto found028b99;
island028c105:
    var_r0_5=var_r1_8; goto found028b105;
island028c112:
    var_r2_18=var_r1_9; goto found028b112;
island028c118:
    var_r0_6=var_r1_10; goto found028b118;
island028c132:
    var_r2_21=var_r1_11; goto found028b132;
island028c139:
    var_r0_7=var_r1_12; goto found028b139;
island028c154:
    var_r2_24=var_r1_13; goto found028b154;
island028c161:
    var_r0_8=var_r1_14; goto found028b161;
island028c176:
    var_r2_27=var_r1_15; goto found028b176;
island028c183:
    var_r0_9=var_r1_16; goto found028b183;
optional028c:
    if (bitFlag028c) {
        temp_r4_2 = sub_080289C0(6, 0x138, 0xFA);
    var_r1_7 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_14 = 0;
    do {
        if (*var_r1_7 == temp_r4_2) { goto island028c99; }
        var_r2_14++; var_r1_7 += 0x1C;
    } while (var_r2_14 <= 14);
    sub_080003F0(); var_r2_15 = NULL;
found028b99:
        if (var_r2_15 != NULL) {
            *(u16 *)((u8 *)var_r2_15 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_15 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_15 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_15 + 0x3C) | 0x10);
        }
    optionalCb028c = (s32)sub_080376CC;
    
    var_r1_8 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_16 = 0;
    do {
        if (*var_r1_8 == temp_r4_2) { goto island028c105; }
        var_r2_16++; var_r1_8 += 0x1C;
    } while (var_r2_16 <= 14);
    sub_080003F0(); var_r0_5 = NULL;
found028b105:
        if (var_r0_5 != NULL) {
            *(u32 *)((u8 *)var_r0_5 + 0x44) = optionalCb028c;
        }
        sub_0802939C(temp_r4_2, 0xB);
    }
afterOptional028c:;
    temp_r6 = sub_080289C0(0x1E, 0x128, 0x131);
    var_r1_9 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_17 = 0;
    do {
        if (*var_r1_9 == temp_r6) { goto island028c112; }
        var_r2_17++; var_r1_9 += 0x1C;
    } while (var_r2_17 <= 14);
    sub_080003F0(); var_r2_18 = NULL;
found028b112:
    if (var_r2_18 != NULL) {
        *(u16 *)((u8 *)var_r2_18 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_18 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_18 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_18 + 0x3C) | 0x10);
    }
    callback0 = (s32)sub_0803540C;
    
    var_r1_10 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_19 = 0;
    do {
        if (*var_r1_10 == temp_r6) { goto island028c118; }
        var_r2_19++; var_r1_10 += 0x1C;
    } while (var_r2_19 <= 14);
    sub_080003F0(); var_r0_6 = NULL;
found028b118:
    if (var_r0_6 != NULL) {
        *(u32 *)((u8 *)var_r0_6 + 0x44) = callback0;
    }
    taskCallback2=(s32)sub_08035914; 
    var_r4_3 = gUnk_03005CF4+0xE34; var_r5_3=0; goto checkTask125;
nextTask125:
    var_r5_3++; var_r4_3+=0x28;
checkTask125:
    if(var_r5_3>29) goto doneTask125;
    if(sub_08000470(var_r4_3)!=0) goto nextTask125;
    while ((*(u32 *)((u8 *)var_r4_3 + 0x20) = temp_r0_4 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_3 + 0x8)=60; *(u32 *)((u8 *)var_r4_3 + 0xC)=taskCallback2; *(u32 *)((u8 *)var_r4_3 + 0x10)=(u32)temp_r0_4+0x3FC; *(u32 *)((u8 *)var_r4_3 + 0x24)=0;
    sub_08000274(var_r4_3,temp_r6);
doneTask125:;

    temp_r6_2 = sub_080289C0(0x2D, 0xEF, 0x13C);
    var_r1_11 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_20 = 0;
    do {
        if (*var_r1_11 == temp_r6_2) { goto island028c132; }
        var_r2_20++; var_r1_11 += 0x1C;
    } while (var_r2_20 <= 14);
    sub_080003F0(); var_r2_21 = NULL;
found028b132:
    if (var_r2_21 != NULL) {
        *(u16 *)((u8 *)var_r2_21 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_21 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_21 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_21 + 0x3C) | 0x10);
    }
    callback1 = (s32)sub_0803540C;
    
    var_r1_12 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_22 = 0;
    do {
        if (*var_r1_12 == temp_r6_2) { goto island028c139; }
        var_r2_22++; var_r1_12 += 0x1C;
    } while (var_r2_22 <= 14);
    sub_080003F0(); var_r0_7 = NULL;
found028b139:
    if (var_r0_7 != NULL) {
        *(u32 *)((u8 *)var_r0_7 + 0x44) = callback1;
    }
    taskCallback3=(s32)sub_080359E8; 
    var_r4_4 = gUnk_03005CF4+0xE34; var_r5_4=0; goto checkTask147;
nextTask147:
    var_r5_4++; var_r4_4+=0x28;
checkTask147:
    if(var_r5_4>29) goto doneTask147;
    if(sub_08000470(var_r4_4)!=0) goto nextTask147;
    while ((*(u32 *)((u8 *)var_r4_4 + 0x20) = temp_r0_5 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_4 + 0x8)=60; *(u32 *)((u8 *)var_r4_4 + 0xC)=taskCallback3; *(u32 *)((u8 *)var_r4_4 + 0x10)=(u32)temp_r0_5+0x3FC; *(u32 *)((u8 *)var_r4_4 + 0x24)=0;
    sub_08000274(var_r4_4,temp_r6_2);
doneTask147:;

    temp_r6_3 = sub_080289C0(0x1D, 0x100, 0x118);
    var_r1_13 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_23 = 0;
    do {
        if (*var_r1_13 == temp_r6_3) { goto island028c154; }
        var_r2_23++; var_r1_13 += 0x1C;
    } while (var_r2_23 <= 14);
    sub_080003F0(); var_r2_24 = NULL;
found028b154:
    if (var_r2_24 != NULL) {
        *(u16 *)((u8 *)var_r2_24 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_24 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_24 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_24 + 0x3C) | 0x10);
    }
    callback2 = (s32)sub_0803540C;
    
    var_r1_14 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_25 = 0;
    do {
        if (*var_r1_14 == temp_r6_3) { goto island028c161; }
        var_r2_25++; var_r1_14 += 0x1C;
    } while (var_r2_25 <= 14);
    sub_080003F0(); var_r0_8 = NULL;
found028b161:
    if (var_r0_8 != NULL) {
        *(u32 *)((u8 *)var_r0_8 + 0x44) = callback2;
    }
    taskCallback4=(s32)sub_08035A88; 
    var_r4_5 = gUnk_03005CF4+0xE34; var_r5_5=0; goto checkTask169;
nextTask169:
    var_r5_5++; var_r4_5+=0x28;
checkTask169:
    if(var_r5_5>29) goto doneTask169;
    if(sub_08000470(var_r4_5)!=0) goto nextTask169;
    while ((*(u32 *)((u8 *)var_r4_5 + 0x20) = temp_r0_6 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_5 + 0x8)=60; *(u32 *)((u8 *)var_r4_5 + 0xC)=taskCallback4; *(u32 *)((u8 *)var_r4_5 + 0x10)=(u32)temp_r0_6+0x3FC; *(u32 *)((u8 *)var_r4_5 + 0x24)=0;
    sub_08000274(var_r4_5,temp_r6_3);
doneTask169:;

    temp_r4_3 = sub_080289C0(5, 0x190, 0x159);
    var_r1_15 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_26 = 0;
    do {
        if (*var_r1_15 == temp_r4_3) { goto island028c176; }
        var_r2_26++; var_r1_15 += 0x1C;
    } while (var_r2_26 <= 14);
    sub_080003F0(); var_r2_27 = NULL;
found028b176:
    if (var_r2_27 != NULL) {
        *(u16 *)((u8 *)var_r2_27 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_27 + 0x1A) = 0xA;
        *(u32 *)((u8 *)var_r2_27 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_27 + 0x3C) | 0x10);
    }
    callback3 = (s32)sub_08034A5C;
    
    var_r1_16 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_28 = 0;
    do {
        if (*var_r1_16 == temp_r4_3) { goto island028c183; }
        var_r2_28++; var_r1_16 += 0x1C;
    } while (var_r2_28 <= 14);
    sub_080003F0(); var_r0_9 = NULL;
found028b183:
    if (var_r0_9 != NULL) {
        *(u32 *)((u8 *)var_r0_9 + 0x44) = callback3;
    }
    sub_0802939C(temp_r4_3, 1);
    {
    register u32 base028c asm("r0");
    u32 off028c;
    register s32 flag028c asm("r4");
    if(sub_0800CE30()!=0) {
        root028c=(u32 *)&gUnk_03005CF4; 
        base028c=*root028c; off028c=0x1C5;
        
    } else {
        root028c=(u32 *)&gUnk_03005CF4; 
        base028c=*root028c; off028c=0x1B9;
        
    }
    { s32 byte028c=*(u8 *)(base028c+off028c);
      asm("" : "+r"(byte028c)); flag028c=byte028c>>2;
      byte028c=1;  flag028c &= byte028c;
       }
    if (!flag028c) goto tailTask211;
    {
        temp_r4_4 = sub_080289C0(0xF, 0x128, 0x18E);
    var_r1_17 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_30 = 0;
    do {
        if (*var_r1_17 == temp_r4_4) { var_r2_31 = var_r1_17; goto found028b196; }
        var_r2_30++; var_r1_17 += 0x1C;
    } while (var_r2_30 <= 14);
    sub_080003F0(); var_r2_31 = NULL;
found028b196:
        if (var_r2_31 != NULL) {
            *(u16 *)((u8 *)var_r2_31 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_31 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_31 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_31 + 0x3C) | 0x10);
        }
    callback4 = (s32)sub_08034F64;
    
    var_r1_18 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_32 = 0;
    do {
        if (*var_r1_18 == temp_r4_4) { var_r0_10 = var_r1_18; goto found028b202; }
        var_r2_32++; var_r1_18 += 0x1C;
    } while (var_r2_32 <= 14);
    sub_080003F0(); var_r0_10 = NULL;
found028b202:
        if (var_r0_10 != NULL) {
            *(u32 *)((u8 *)var_r0_10 + 0x44) = callback4;
        }
        sub_0802939C(temp_r4_4, 0x14);
    }
    goto tailTaskDone;
islandTail218:
    var_r2_34=var_r1_19; goto found028b218;
tailTask211:
    {
    taskCallback5=(s32)sub_08044D1C; 
    var_r4_6 = *root028c+0xE34; var_r5_6=0; goto checkTask211;
nextTask211:
    var_r5_6++; var_r4_6+=0x28;
checkTask211:
    if(var_r5_6>29) goto doneTask211;
    if(sub_08000470(var_r4_6)!=0) goto nextTask211;
    while ((*(u32 *)((u8 *)var_r4_6 + 0x20) = temp_r0_7 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_6 + 0x8)=60; *(u32 *)((u8 *)var_r4_6 + 0xC)=taskCallback5; *(u32 *)((u8 *)var_r4_6 + 0x10)=(u32)temp_r0_7+0x3FC; *(u32 *)((u8 *)var_r4_6 + 0x24)=0;
    sub_08000274(var_r4_6,0);
doneTask211:;

    }
tailTaskDone:;
    }
    temp_r5 = sub_080289C0(0x4002B, 0xB5, 0xFA);
    var_r1_19 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_33 = 0;
    do {
        if (*var_r1_19 == temp_r5) { goto islandTail218; }
        var_r2_33++; var_r1_19 += 0x1C;
    } while (var_r2_33 <= 14);
    sub_080003F0(); var_r2_34 = NULL;
found028b218:
    if (var_r2_34 != NULL) {
        *(u16 *)((u8 *)var_r2_34 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_34 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_34 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_34 + 0x3C) | 0x10);
    }
    { register s32 selected028c asm("r4")=sub_0800CE30();
      asm("" : "+r"(selected028c));
      if(selected028c!=0) goto alternateCb028c;
    }
    {
        var_r4_7 = &sub_08035B18;
        var_r1_20 = (s32 *)(gUnk_03005CF4 + 0x7A4);
        var_r2_35 = 0;
loop_225:
    if(*var_r1_20==temp_r5) goto finalCbFound028c;
    var_r2_35++; var_r1_20+=0x1C;
    if(var_r2_35<=14) goto loop_225;
    goto finalCbMiss028c;
}
finalCbFound028c:
    var_r0_11=var_r1_20; goto finalCbStore028c;
alternateCb028c:
    var_r4_7 = &sub_080368F4;
    var_r1_20 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_36 = 0;
loop_230:
    if (*var_r1_20 != temp_r5) {
        var_r2_36 += 1;
        var_r1_20 += 0x1C;
        if (var_r2_36 > 0xEU) {
block_232:
finalCbMiss028c:
            sub_080003F0();
            var_r0_11 = NULL;
        } else {
            goto loop_230;
        }
    } else { goto finalCbFound028c; }
finalCbStore028c:;
    if (var_r0_11 != NULL) {
        *(u32 *)((u8 *)var_r0_11 + 0x44) = var_r4_7;
    }
    if (temp_r0 == 1) {
        sub_0801AA34(0x1E);
        goto checkWait238;
loop_238:
        sub_080003F0();
checkWait238:
        if(sub_0801AAE0()==0) goto loop_238;
        temp_r2 = (void *)(0x14C * sub_080020F4() + (u32)gUnk_03003CE0);
        *(u32 *)((u8 *)temp_r2 + 0x30) = (s32) (*(u32 *)((u8 *)temp_r2 + 0x30) & ~1);
        sub_0800D108();
        return;
    }
    if (sub_0800CC98() == 0) {
        temp_r0_8 = sub_0801AB24();
        switch (temp_r0_8) {                        /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            sub_080576A8();
            break;
        case 1:                                     /* switch 2 */
            sub_0801AB50(6);
            break;
        case 2:                                     /* switch 2 */
            sub_0801AB90(6);
            break;
        }
        goto checkWait251;
loop_251:
        sub_080003F0();
checkWait251:
        if(sub_0801AAE0()==0) goto loop_251;
    }
}



void sub_08037B04(void);
void sub_08030F54(void);
void sub_080399E4(void);
void sub_080316A4(void);
s32 sub_0801AB24(void);
void sub_080576A8(void);
void sub_0801AB50(s32);
void sub_0801AB90(s32);
/* [CreateRestInteractionSceneActor] Creates kind0x2000D actor at pixel(440,96), sets interaction dimensions8x4
 * and flag0x10 and callback08037B04. That callback faces the player, displays resource1401DF asking whether
 * the named player needs rest, branches on yes and runs a rest animation/restore sequence. No inn location or
 * character name is inferred. Original independently confirms two separate searches of15 actor records
 * (stride0x70, word ID compare). Missing search yields once and skips the corresponding write; first search
 * writes halfword extents+18/+1A and word+3C OR10, second writes callback WORD+44. It does not return an actor
 * handle or success result. */
void sub_0802CF84(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x2000D, 0x1B8, 0x60);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08037B04;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08037DFC(void);
extern void sub_080592FC(void);
extern void sub_080384D4(void);
extern s32 sub_0801AB24(void);
extern void sub_080576A8(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
/* [InitializeObjectFortyEightGroup] Creates kinds0x30,0x20039 and0x5002A at fixed coordinates; found records
 * get dimensions8/4, flag0x10 and respective callbacks. Each lookup scans15 records; missing match yields once
 * and skips writes. If scene gate is clear, selects existing transition route and waits for transition idle. */
void sub_0802D050(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x30, 0x54, 0x90);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08037DFC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x20039, 0x78, 0x5F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080592FC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x5002A, 0xB5, 0x6D);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080384D4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
/* [CreateLesterSceneActor] Creates kind0x31 actor at pixel(382,102), sets interaction extents8x4 and flag0x10,
 * installs dialogue callback08030F54 at actor+44 and restores screen transition state. Callback consumes
 * story-dependent texts163..16E; original163 explicitly introduces Lester, a guard at Klantol Castle.
 * Independent original confirms kind/coordinates, two separate15record word-ID searches, extents STRH+18/+1A,
 * flags WORD+3C OR10 and callback WORD+44. A missing lookup yields once and skips only its write; no
 * creation-success result or capacity guarantee. Transition helper selection waits1AAE0 without timeout. D200
 * Thumb literal30F55 connects Lester self-introduction163, not inferred solely from actor31. */
void sub_0802D200(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x31, 0x17E, 0x66);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08030F54;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_080455F0(void);
extern void sub_0803A460(void);
extern void sub_08059AD0(void);
extern void sub_08059CEC(void);
extern void sub_08059DA0(void);
struct TaskP29D2 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart29D2(void *, u32) asm("sub_08000274");
/* [InitializeFiveSceneActors] Creates resources0x2C/0x15/0x20016/0x47/0x70010 at fixed positions, attempts
 * a0x400-stack callback task for the first actor, and sets extents8/4, flag0x10 and callbacks on matched slots
 * for the other four. Task allocation retries; full pool skips startup and failed slot searches yield then
 * skip writes. Finally restores the screen by transition mode and waits for idle when permitted; no input lock
 * is acquired. */
void sub_0802D2C8(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    struct TaskP29D2 *t;
    u32 i;
    u32 mem;
    s32 cb;
    s32 first;
    s32 first_cb;

    first = sub_080289C0(0x2C, 0x79, 0x186);
    cb = (s32) sub_080455F0;
    t = (struct TaskP29D2 *)(gUnk_03005CF4 + 0xE34);
    for (i = 0; i <= 0x1D; i++, t++) {
        if (sub_08000470((u32)t) != 0) continue;
        while ((t->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        t->f8 = 0x3C;
        t->fC = cb;
        t->f10 = mem + 0x3FC;
        t->f24 = 0;
        taskStart29D2(t, first);
        break;
    }
    iVar2 = sub_080289C0(0x15, 0x138, 0x1A6);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803A460;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x20016, 0xA3, 0x1AF);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059AD0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x47, 0x5A, 0x1A6);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059CEC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x70010, 0x39, 0x1B7);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059DA0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803145C(void);
extern void sub_08031580(void);
extern void sub_08033650(void);
/* [InitializeTwinObjectFortyNine] Creates two kind0x31 objects at fixed positions and installs distinct
 * callbacks. Mode-selected save flag2 enables additional kind0x10034. Found records get dimensions8/4 and
 * flag0x10; missing matches yield once and skip writes. Clear scene gate triggers selected transition and idle
 * wait. */
void sub_0802D568(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    u32 flag;
    u32 bits;

    iVar2 = sub_080289C0(0x31, 0xD0, 0x60);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803145C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x31, 0x110, 0x60);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08031580;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    flag = 2;
    bits = flag & (sub_0800CE30() != 0 ? *(s32 *)(gUnk_03005CF4 + 0x80) : *(s32 *)(gUnk_03005CF4 + 0x78));
    if (bits) {
    iVar2 = sub_080289C0(0x10034, 0x14C, 0x64);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08033650;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
/* [CreateGalicSceneActor] Creates kind0x48 actor at pixel(88,64), sets interaction extents8x4 and flag0x10,
 * installs callback080399E4 and restores screen transition state. The callback selects texts173..17E;
 * original173 self-introduces Galic guarding the entrance and complains about hunger. Independent original
 * confirms kind/coordinates, two separate15record word-ID searches, extents STRH+18/+1A, flags WORD+3C OR10
 * and callback WORD+44. A missing lookup yields once and skips only its write; no creation-success result or
 * capacity guarantee. Transition helper selection waits1AAE0 without timeout. D73C Thumb399E5 connects Galic
 * self-introduction173, not inferred solely from actor48. */
void sub_0802D73C(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x48, 0x58, 0x40);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080399E4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
/* [CreateAzieSceneActor] Creates kind0x23 actor at pixel(64,70), sets interaction extents8x4 and flag0x10,
 * installs callback080316A4 and restores screen transition state. Callback text18B self-introduces Azie as a
 * traveling apprentice for the smith; further18C..18D explain fusing materials and smith payment. Independent
 * original confirms kind/coordinates, two separate15record word-ID searches, extents STRH+18/+1A, flags
 * WORD+3C OR10 and callback WORD+44. A missing lookup yields once and skips only its write; no
 * creation-success result or capacity guarantee. Transition helper selection waits1AAE0 without timeout. D800
 * Thumb316A5 connects Azie self-introduction18B, not inferred solely from actor23. */
void sub_0802D800(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x23, 0x40, 0x46);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080316A4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803B194(void);
extern void sub_0803B69C(void);
extern void sub_0803B720(void);
extern void sub_0803BC3C(void);
struct TaskP29D8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart29D8(void *, u32) asm("sub_08000274");
/* [InitializeObjectFiftyFourGroup] Creates kinds0x36,0x40027,0x35 plus0xB0036/0xC0036. Configures first three
 * found records and callbacks, and starts helper task for first object from30-slot pool with0x400 allocation
 * retry. Full task pool silently skips start; missing lookups skip writes after yield. Clear scene gate
 * selects transition and waits idle. */
void sub_0802D8C4(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    struct TaskP29D8 *t;
    u32 i;
    u32 mem;
    s32 cb;
    s32 first;
    s32 first_cb;

    first = sub_080289C0(0x36, 0x34, 0x50);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    first_cb = (s32) sub_0803B194;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = first_cb;
    }
    cb = (s32) sub_0803B69C;
    t = (struct TaskP29D8 *)(gUnk_03005CF4 + 0xE34);
    for (i = 0; i <= 0x1D; i++, t++) {
        if (sub_08000470((u32)t) != 0) continue;
        while ((t->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        t->f8 = 0x3C;
        t->fC = cb;
        t->f10 = mem + 0x3FC;
        t->f24 = 0;
        taskStart29D8(t, first);
        break;
    }
    iVar2 = sub_080289C0(0x40027, 0x6C, 0x76);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803B720;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x35, 0x18C, 0x4E);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803BC3C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_080289C0(0xB0036, 0x22, 0x42);
    sub_080289C0(0xC0036, 0x32, 0x42);
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08059488(void);
extern void sub_08059534(void);
extern void sub_080595E0(void);
extern void sub_0805968C(void);
extern void sub_08059738(void);
extern void sub_080597E4(void);
/* [InitializeSixVariant19Actors] Creates six fixed-position
 * resources0x50019/0x40019/0x70019/0x19/0x4001B/0x10019 and binds their literal callbacks after separate
 * fifteen-slot searches; matched slots receive extents8/4 and flag0x10. Failed searches yield once and skip
 * writes, actor creation success is unchecked. Restores screen by transition mode and waits idle when
 * permitted. */
void sub_0802DAF0(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x50019, 0x6E, 0x84);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059488;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x40019, 0x67, 0x4B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059534;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x70019, 0xCC, 0x70);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080595E0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x19, 0xFC, 0x4B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0805968C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x4001B, 0x166, 0x46);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059738;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x10019, 0x90, 0x68);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found11;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found11:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080597E4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found12;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found12:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern u8 *state30DE asm("gUnk_03005CF4");
extern void sub_08038D18(void);
extern void sub_0803898C(void);
extern void sub_080392B4(void);
extern void sub_08044E34(void);
extern void sub_08045E38(void);
extern void sub_0802939C(s32, s32);
struct TaskP30DE { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart30DE(void *, u32) asm("sub_08000274");
/* [InitializeObjectThirtySevenGroup] Creates kind0x25 and configures callback; flag-selected branch either
 * loops animation1 or starts helper task. Another flag branch creates/configures0x40029 or starts alternative
 * task. Always creates kind0x33 callback object. Lookup failures skip writes after yield; task starts retry
 * allocation or skip when pool full. Ends with gated transition/idle wait. */
void sub_0802DE0C(void) {
    u8 **base;
    u8 **bs;
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    s32 first, first_cb;
    register s32 mask asm("r4");
    s32 bits, bytebit;
    s32 first_bits;
    s32 mask2;
    s32 raw;
    s32 *word;
    u8 *p;
    register u8 *pf asm("r1");
    register s32 rf asm("r1");
    struct TaskP30DE *t, *t2;
    u32 i, i2, mem, mem2;
    s32 cb, cb2;

    first = sub_080289C0(0x25, 0xB5, 0xEC);
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    first_cb = (s32) sub_08038D18;
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = first_cb;
    }
    mask = 1;
    if (sub_0800CE30() != 0) { base = &state30DE; pf = *base + 0x1C4; }
    else { base = &state30DE; pf = *base + 0x1B8; }
    rf = *pf;
    first_bits = mask & (rf >> 5);
    if (first_bits) sub_0802939C(first, 1);
    else {
    cb = (s32) sub_08044E34;
    t = (struct TaskP30DE *)(*base + 0xE34);
    for (i = 0; i <= 0x1D; i++, t++) {
        if (sub_08000470((u32)t) != 0) continue;
        while ((t->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        t->f8 = 0x3C;
        t->fC = cb;
        t->f10 = mem + 0x3FC;
        t->f24 = 0;
        taskStart30DE(t, first);
        break;
    }
    }
    if (sub_0800CE30() != 0) { word = (s32 *)(state30DE + 0x80); mask2 = 0x80; bits = *word; }
    else { word = (s32 *)(state30DE + 0x78); mask2 = 0x80; bits = *word; }
    bits &= mask2;
    if (sub_0800CE30() != 0) { bs = &state30DE; p = *bs + 0x1C3; }
    else { bs = &state30DE; p = *bs + 0x1B7; }
    raw = *p;
    bytebit = raw >> 5;
    bytebit &= 1;
    base = bs;
    if (!bits || bytebit) {
    iVar2 = sub_080289C0(0x40029, 0xDD, 0x11E);
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803898C;
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    } else {
    cb2 = (s32) sub_08045E38;
    t2 = (struct TaskP30DE *)(*base + 0xE34);
    for (i2 = 0; i2 <= 0x1D; i2++, t2++) {
        if (sub_08000470((u32)t2) != 0) continue;
        while ((t2->f20 = mem2 = sub_08001494(0x400)) == 0) sub_080003F0();
        t2->f8 = 0x3C;
        t2->fC = cb2;
        t2->f10 = mem2 + 0x3FC;
        t2->f24 = 0;
        taskStart30DE(t2, 0);
        break;
    }
    }
    iVar2 = sub_080289C0(0x33, 0x11E, 0xFF);
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080392B4;
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}

extern void sub_08039F00(void);
extern void sub_08059418(void);
extern void sub_0803A8F0(void);
extern void sub_0803AD74(void);
extern void sub_08059374(void);
extern void sub_0803AE6C(void);
extern void sub_0802939C(s32, s32);
/* [InitializeSixMixedSceneActors] Creates six fixed-position resources0x38/0x10022/0x31/0x60019/0x32/0x60018,
 * binds literal callbacks and slot extents/flags after fifteen-slot searches, and sets animations9/3 on the
 * third/sixth actors. Failed searches yield once and skip writes; creation success unchecked. Restores screen
 * by transition mode and waits idle when permitted. */
void sub_0802E110(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x38, 0x6F, 0xDD);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 0x14;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08039F00;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x10022, 0xC6, 0x105);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059418;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x31, 0x110, 0xE0);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803A8F0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_0802939C(iVar2, 9);
    iVar2 = sub_080289C0(0x60019, 0x14C, 0x116);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803AD74;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x32, 0x179, 0xFD);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059374;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x60018, 0x1A0, 0x58);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found11;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found11:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803AE6C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found12;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found12:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_0802939C(iVar2, 3);
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803C698(void);
extern void sub_08045F44(void);
extern void sub_08046F28(void);
extern void sub_08046490(void);
extern void sub_080469DC(void);
/* [InitializeObjectSixtySixGroup] Creates five fixed-position kinds0x42,0x44,0x45,0x46,0x43; attaches distinct
 * callbacks, dimensions and flag0x10 only to found records. First dimensions0x50/4, others8/4. Each missing
 * lookup yields once and skips writes. Clear scene gate selects screen transition route and waits idle. */
void sub_0802E444(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x42, 0x140, 0x80);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 0x50;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803C698;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x44, 0x1E8, 0x6F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08045F44;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x45, 0x1B0, 0x5F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08046F28;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x46, 0x1CE, 0x5F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08046490;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x43, 0x225, 0x83);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080469DC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08033C40(void);
/* [CreateJensenSceneActor] Creates kind0x9000C actor at pixel(292,123), sets its interaction dimensions8x4 and
 * flags0x10, and installs callback08033C40 at actor+44. The callback selects story-dependent dialogue
 * including resource1401B6, whose original English text explicitly introduces the speaker as Jensen and offers
 * banana juice. Original independently confirms two separate searches of15 actor records (stride0x70, word ID
 * compare). Missing search yields once and skips the corresponding write; first search writes halfword
 * extents+18/+1A and word+3C OR10, second writes callback WORD+44. It does not return an actor handle or
 * success result. */
void sub_0802E6E0(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x9000C, 0x124, 0x7B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08033C40;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08058EF8(void);
extern void sub_08059C38(void);
extern void sub_08059B84(void);
extern void sub_08059E54(void);
extern void sub_08059F08(void);
/* [InitializeFiveResourceInteractionActors] Creates resources0x70023,0x1A,0x1004A,0x31,0x32 at fixed
 * coordinates and assigns callbacks sub_08058EF8/08059C38/08059B84/08059E54/08059F08. Each configuration
 * searches15 actor records, sets extents8x4/interaction flag0x10 and callback if found; missing lookup yields
 * once and skips update. Restores screen transition and waits idle. No allocation-failure branch. */
void sub_0802E7AC(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x70023, 0xB8, 0x10B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08058EF8;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x1A, 0xFC, 0xD0);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059C38;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x1004A, 0x130, 0xD6);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059B84;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x31, 0xF8, 0xF5);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059E54;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x32, 0x8B, 0x106);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059F08;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803C008(void);
extern void sub_08031F28(void);
extern void sub_080290E4(s32, s32);
/* [InitializeObjectThirtyThreeGroup] Creates kind0x21 and8 callbacks and loops second animation2; hides
 * selector6 at9999,9999 when savebit/playercount gate holds. Nonzero input positions player. Input1 counts
 * eleven completion bits and shows changed-count messages0x1401EA..1F3, setting0x80000 at eleven; input2
 * shows1F4. Cases1/2 set/clear player flag1 around sequence; message abort gate closes UI. Other inputs only
 * gated transition wait. */
void sub_0802EA50(s32 arg0) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    u32 active;
    s32 flag;
    u8 *p;
    u8 *p0, *pRead, *pWrite;
    register s32 tmp asm("r0");
    s32 raw;
    u8 *fb; u32 fm;
    u32 *flagdest;
    u32 setmask;
    struct Player *player;
    s32 count;
    u32 index;
    s32 boolflag;
    u32 one;
    s32 *stateaddr;
    u32 handle;
    u8 saved;
    s32 tally;
    struct Player *first_player;
    struct Player *second_player;
    struct Player *last_player;


    iVar2 = sub_080289C0(0x21, 0xB6, 0x87);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 0x14;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803C008;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(8, 0x38, 0x87);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 0x14;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08031F28;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_0802939C(iVar2, 2);
    active = sub_08002164();
    if (sub_0800CE30()) p0 = (u8 *)(gUnk_03005CF4 + 0x1C5);
    else p0 = (u8 *)(gUnk_03005CF4 + 0x1B9);
    raw = *p0;
    count = raw >> 3; tmp = 1; count &= tmp;
    if (count || active != 1) sub_08028AAC(6, 0x270F, 0x270F, 0);
    if (arg0 != 0) {
        sub_08028AAC(0, 0xB8, 0xA0, 0);
        sub_080290E4(0, 4);
    }
    switch (arg0) {
    case 1:
    first_player = &gUnk_03003CE0[sub_080020F4()];
    first_player->flags |= arg0;
    sub_0800D0F4();
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    tally = 0;
    index = 0;
    one = 1;
    stateaddr = &gUnk_03005CF4;
    do {
        if (sub_0800CE30() != 0) {
            if (!((one << index) & *(s32 *)(*stateaddr + 0x88))) goto no_bit;
            goto increment;
        }
        if ((one << index) & *(s32 *)(*stateaddr + 0x84)) boolflag = 1;
        else {
no_bit:
            boolflag = 0;
        }
        if (boolflag) {
increment:
            tally++;
        }
        index++;
    } while (index <= 0xA);
    count = tally;
    if (sub_0800CE30()) pRead = (u8 *)(gUnk_03005CF4 + 0x1C0);
    else pRead = (u8 *)(gUnk_03005CF4 + 0x1B4);
    if (count != *pRead) {
        switch (count) {
        case 2:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EA);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 3:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EB);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 4:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EC);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 5:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401ED);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 6:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EE);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 7:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EF);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 8:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F0);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 9:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F1);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 10:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F2);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 11:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F3);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
            if (sub_0800CE30()) {
                flagdest = (u32 *)(gUnk_03005CF4 + 0x80);
                setmask = 0x80000;
                *flagdest = setmask | *flagdest;
            } else {
                fb = (u8 *)gUnk_03005CF4;
                fm = 0x80000;
                *(u32 *)(fb + 0x78) = fm | *(u32 *)(fb + 0x78);
            }
            break;
        }
        saved = count;
        if (sub_0800CE30()) pWrite = (u8 *)(gUnk_03005CF4 + 0x1C0);
        else pWrite = (u8 *)(gUnk_03005CF4 + 0x1B4);
        *pWrite = saved;
    }
        goto cleanup;
    case 2:
        second_player = &gUnk_03003CE0[sub_080020F4()];
        second_player->flags |= 1;
        sub_0800D0F4();
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F4);
        while (sub_0805EEFC((void *)handle) == 0) {
            if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
cleanup:
    last_player = &gUnk_03003CE0[sub_080020F4()];
    last_player->flags &= ~1;
    sub_0800D108();
        break;
    default:
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
        break;
    }
}
extern void sub_0801AA34(s32);
extern void sub_0802939C(s32, s32);
extern void sub_0802F424(s32);
struct TaskP30F2 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart30F2(void *, u32) asm("sub_08000274");
struct Entry30F2 { u8 pad[12]; u16 state; u8 end[0x2E0 - 14]; };
/* [RunObjectThirtyThreeRelease] Clears mode-selected byte mask0x8, sets player flag1 and creates kind0x21;
 * transitions, signals0x09999000, runs timed animation/message0x1401F9 sequence and starts helper task
 * from30-slot pool with allocation retry. Full pool skips helper. Clears player flag1, resets active actor
 * state12 to0 and calls19F04 on normal exit. */
void sub_0802F208(void) {
    s32 *var_r1_2;
    s32 *var_r2_2;
    s32 cb;
    s32 temp_r6;
    s32 var_r1;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r4;
    u32 var_r2;
    u32 var_r3;
    s32 bit;
    s32 *flags;
    u32 one, zero;
    struct TaskP30F2 *var_r4_3;
    u32 var_r5;
    u8 *temp_r2;
    u32 temp_r0;
    struct Player *temp_r2_2;
    struct Player *temp_r2_3;
    struct Entry30F2 *var_r2_3;

    if (sub_0800CE30() != 0)
        temp_r2 = (u8 *)(gUnk_03005CF4 + 0x1C5);
    else
        temp_r2 = (u8 *)(gUnk_03005CF4 + 0x1B9);
    var_r1 = -9;
    *temp_r2 = var_r1 & *temp_r2;
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags | 1);
    sub_0800D0F4();
    temp_r6 = sub_080289C0(0x21, 0x78, 0x186);
    var_r1_2 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1_2 == temp_r6) {
            var_r2_2 = var_r1_2;
            goto found1;
        }
        var_r2 += 1;
        var_r1_2 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    var_r2_2 = NULL;
found1:
    if (var_r2_2 != NULL) {
        *(u16 *) ((u8 *) var_r2_2 + 0x18) = 8;
        *(u16 *) ((u8 *) var_r2_2 + 0x1A) = 4;
        var_r2_2[0xF] |= 0x10;
    }
    sub_0801AA34(0x1E);
    while (sub_0801AAE0() == 0) sub_080003F0();
    sub_08000420(0x09999000);
    var_r4 = 0x64;
    for (; var_r4 != 0; var_r4--) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
    }
    sub_0802939C(temp_r6, 3);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x1401F9U);
    while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
    var_r4_2 = 0x64;
    for (; var_r4_2 != 0; var_r4_2--) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
    }
    cb = (s32) sub_0802F424;
    var_r4_3 = (struct TaskP30F2 *)(gUnk_03005CF4 + 0xE34);
    for (var_r5 = 0; var_r5 <= 0x1D; var_r5++, var_r4_3++) {
        if (sub_08000470((u32)var_r4_3) != 0) continue;
        while ((var_r4_3->f20 = temp_r0 = sub_08001494(0x400)) == 0) sub_080003F0();
        var_r4_3->f8 = 0x3C;
        var_r4_3->fC = cb;
        var_r4_3->f10 = temp_r0 + 0x3FC;
        var_r4_3->f24 = 0;
        taskStart30F2(var_r4_3, temp_r6);
        break;
    }
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x36U);
    }
    temp_r2_3 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_3->flags = (s32) (temp_r2_3->flags & ~1);
    sub_0800D108();
    var_r2_3 = (struct Entry30F2 *)gUnk_030056F4;
    var_r3 = 0;
    flags = &gUnk_030056FC;
    one = 1;
    zero = 0;
tail_body:
    if ((*flags & (bit = one << var_r3)) && var_r2_3->state == 0xC) var_r2_3->state = zero;
    var_r3++;
    var_r2_3++;
    if (var_r3 <= 4) goto tail_body;
    sub_08019F04();
}

/* [MoveSceneActorOutAndDespawn] Selects animation5 and requests relative movement offset(40,100) pixels in
 * single-player or(0,100) multiplayer with duration parameter60, then resolves actor byID and writes
 * state+0x36=4. The movement helper quantizes the interpolation step as1024/60, so neither exactly60
 * iterations nor exact final displacement is asserted. The actor updater stops on state4 and clears actorID,
 * proving despawn. Only found actor gets STRH+36=4 after movement; absent actor yields once and returns.
 * Nonactor selectors can still make animation/movement helper calls but do not establish actor deletion.
 * Original284F4 exits loop on state4 and clears WORD ID, closing deferred despawn; helper itself only requests
 * it. */
void sub_0802F424(s32 arg0) {
    s32 *var_r1;
    u32 var_r2;

    if (sub_08002164() == 1) {
        sub_0802939C(arg0, 5);
        sub_08028D98(arg0, 0x28, 0x64, 0x3C);
        var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
        var_r2 = 0;
        do {
            if (*var_r1 == arg0) {
                goto found;
            }
            var_r2 += 1;
            var_r1 += 0x1C;
        } while (var_r2 <= 0xEU);
    } else {
        sub_0802939C(arg0, 5);
        sub_08028D98(arg0, 0, 0x64, 0x3C);
        var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
        var_r2 = 0;
        do {
            if (*var_r1 == arg0) {
                goto found;
            }
            var_r2 += 1;
            var_r1 += 0x1C;
        } while (var_r2 <= 0xEU);
    }
    sub_080003F0();
    var_r1 = NULL;
found:
    if (var_r1 != NULL) {
        *(u16 *) ((u8 *) var_r1 + 0x36) = 4;
    }
}
extern void sub_0803C3C8(void);
/* [CreateTempleOfLightAttendantSceneActor] Creates kind0x2E actor at pixel(268,135), sets interaction
 * dimensions8x4/flag0x10 and callback0803C3C8. Callback resource140203 describes Temple of Light, four
 * sacrificial items and guidance; yes invokes0803C4C0, whose resource140205 says NAME says a prayer. Exact
 * character personal name and priest title are not inferred. Original independently confirms two separate
 * searches of15 actor records (stride0x70, word ID compare). Missing search yields once and skips the
 * corresponding write; first search writes halfword extents+18/+1A and word+3C OR10, second writes callback
 * WORD+44. It does not return an actor handle or success result. */
void sub_0802F4B0(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x2E, 0x10C, 0x87);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803C3C8;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern u8 *gState2F578 asm("gUnk_03005CF4");
extern void cb2F578(void) asm("sub_0805990C");
/* [ShowObjectThirtyTwoDialogue] Sets local player flag1, chooses message by highest set progress bit256..1 or
 * default. Bit8 branch additionally tests byte mask0x1 and, when byte mask0x80 set, requests
 * callback5990C(0x16), waits up to100 yields and returns without clearing flag1 or calling D108. Other exits
 * clear flag1 and restore input helper; UI abort closes active dialog. */
void sub_0802F578(void)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u16 count;
    register u32 raw asm("r1");
    u32 dialog;
    u32 value;
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    if (sub_0800CE30()) field = *(u32 *)(gState2F578 + 0x7C);
    else field = *(u32 *)(gState2F578 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310905);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310904);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310903);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310902);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310901);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        if (sub_0800CE30()) { base = gState2F578; field = 0x1C5; }
        else { base = gState2F578; field = 0x1B9; }
        raw = base[field]; raw &= 1; if (raw) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310898);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        if (sub_0800CE30()) { base = gState2F578; field = 0x1C5; }
        else { base = gState2F578; field = 0x1B9; }
        if ((base[field] >> 7) != 0) {
            sub_08068070((u32)cb2F578, 0x16);
            count = 100;
            while (count != 0) {
                sub_080003F0();
                if (sub_080021A8()) break;
                count--;
            }
            return;
        }
        } else {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310897);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310896);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310895);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310894);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310893);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}





extern u8 *gState2FA80 asm("gUnk_03005CF4");
/* [RunQueenYvonneDialogue] Full matching body6648..end and complete original2FA80..2FEA0 read. Sets local
 * player flags bit0 and callsD0F4. Chooses scene word+7C whenCE30 is nonzero, else+74; priority bits8 down to0
 * select resource1400C4 down to1400BC, no tested bit selects1400BB. Each branch waits5F184 and5EF90 with
 * yields, starts fixed-layout dialogue5DF38(1,15,2,0,-1,resource), then waits5EEFC. CDF8 during that final
 * wait invokes5EFBC and exits wait. Common cleanup reloads current local-player index, clears bit0 and
 * callsD108. Initial busy waits lack this abort test; no guaranteed progress, successful allocation/display or
 * preservation of prior bit0 state is claimed. */
void sub_0802FA80(void)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    u32 value;
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    if (sub_0800CE30()) field = *(u32 *)(gState2FA80 + 0x7C);
    else field = *(u32 *)(gState2FA80 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310916);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310915);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310914);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310913);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310912);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310911);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310910);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310909);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310908);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else  {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310907);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}
