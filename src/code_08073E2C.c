#include "global.h"

extern s32 sub_08074398(u16, u16, s32);

struct Task3E2C { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern vu32 gMask3E2C asm("gUnk_030063E0");
extern u8 *gInfo3E2C asm("gUnk_03006380");
extern u8 *gTasks3E2C asm("gUnk_030063B0");
extern void sub_08000274_2(void *, void *) asm("sub_08000274");
extern void sub_08073CF4();
extern void sub_0807A120();
void sub_08073E2C_v(u32 a, u32 b, u32 c, u32 d) asm("sub_08073E2C");
void sub_08073E2C_v(u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    u32 mem;
    u32 off;
    u32 *e;
    struct Task3E2C *t;
    vu32 *m = &gMask3E2C;
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    if (d != 0)
        d = 1;
    {
        u8 **pi = &gInfo3E2C;
        u8 *p = *pi;
        off = i * 0x18;
        e = (u32 *)(off + (u32)p);
    }
    e[0] = 0;
    e[1] = i;
    e[2] = d;
    e[3] = c;
    e[5] = a;
    e[4] = b;
    mem = sub_08001494(0x400);
    {
        u8 *q = gTasks3E2C;
        t = (struct Task3E2C *)(i * 0x28 + (u32)q);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08073CF4;
    t->f8 = 0x34;
    t->f10 = mem + 0x3FC;
    t->f24 = (u32)sub_0807A120;
    sub_08000274_2(t, gInfo3E2C + off);
    gMask3E2C |= 1 << i;
}
struct Pos076EE8 { u16 x; u16 y; };
struct Ply076EE8 { u16 f0; u8 pad2[0x66]; u8 team; u8 pad69[0x23]; s32 x; s32 y; u8 pad94[0xB4]; struct Pos076EE8 *pos; };
struct Ene076EE8 { u8 pad0[2]; u16 f2; u8 pad4[8]; u16 state; u8 padE[6]; s32 x; s32 y; u8 pad1C[0x40]; s16 hp; u8 pad5E[0x17E]; u8 alive; u8 pad1DD[0x103]; };
extern struct Ply076EE8 players076EE8[] asm("gUnk_03003CE0");
extern struct Ene076EE8 *enemies076EE8 asm("gUnk_030056F4");
extern u16 directions076EE8[] asm("gUnk_0849E730");
extern u32 active076EE8 asm("gUnk_030056FC");
static inline u16 dirEE8(struct Pos076EE8 **pos) { return directions076EE8[((u8 *)*pos)[3] >> 4]; }
static inline u16 dir2EE8(struct Ply076EE8 *p)
{
    register u16 *table asm("r2") = directions076EE8;
    /* Keep the table load ahead of the position-pointer decode, as in the ROM. */
    asm("" : "+r"(table));
    return table[((u8 *)p->pos)[3] >> 4];
}
static inline u32 angEE8(s32 dx, s32 dy) { return (u16)ArcTan2(dx, dy) + 0x400; }
static inline s32 diffEE8(u32 a, u16 b) {
 u16 angle = (a >> 12) - b; s32 d;
 { register s32 t asm("r0") = (s16)angle; if (t > 8) angle = t - 16; }
 { register s32 t asm("r0") = (s16)angle; if (t < -8) { t += 16; angle = t; } }
 d = (s16)angle; if (d < 0) d = -d;
 return d; }
static inline s32 diffBEE8(u32 a, u16 b) {
 u16 angle = (a >> 12) - b; s32 d;
 { s32 t = (s16)angle; if (t > 8) angle = t - 16; }
 { s32 t = (s16)angle; if (t < -8) angle = t + 16; }
 d = (s16)angle; if (d < 0) d = -d;
 return d; }
u16 sub_08073EE8(u16 width, s32 range)
{
    struct Ply076EE8 *player, *cand;
    struct Ene076EE8 *e;
    u32 best, nearest, count, i, offset;
    s32 dx, dy, d;
    u16 dist;

    player = &players076EE8[sub_080020F4()];
    best = 0xFFFF;
    nearest = -1;
    if (sub_0800CF80()) {
        count = sub_08002164();
        for (i = 0; i < count; i++) {
            cand = &players076EE8[i];
            if (player->team != cand->team && cand->team != 0) {
                dx = (cand->pos->x >> 4) - (player->x >> 8);
                dy = ((u32)(cand->pos->y << 20) >> 20) - (player->y >> 8);
                d = diffEE8(angEE8(dx, dy), dirEE8(&player->pos));
                {
                    /* The ROM reloads the spilled limits into r2/r3 here. */
                    register u32 w asm("r2") = width;
                    asm("" : "+r"(w));
                    if (d > (s32)w)
                        continue;
                }
                dist = Sqrt(dx * dx + dy * dy);
                {
                    register u32 rg asm("r3") = range;
                    asm("" : "+r"(rg));
                    if (rg <= dist)
                        continue;
                }
                if (best > dist) {
                    best = dist;
                    nearest = i;
                }
            }
        }
        if (nearest != -1) {
            cand = &players076EE8[nearest];
            return cand->f0;
        }
    }
    best = 0xFFFF;
    nearest = -1;
    i = 0;
    offset = 0;
    do {
        if (active076EE8 & (1 << i)) {
            e = (struct Ene076EE8 *)((u8 *)enemies076EE8 + offset);
            if (e->state != 11 && e->hp != 0 && e->alive != 0) {
                dx = (e->x - player->x) >> 8;
                dy = (e->y - player->y) >> 8;
                d = diffBEE8(angEE8(dx, dy), dir2EE8(player));
                if (d <= width) {
                    dist = Sqrt(dx * dx + dy * dy);
                    if ((u32)range > dist && best > dist) {
                        best = dist;
                        nearest = i;
                    }
                }
            }
        }
        offset += sizeof(struct Ene076EE8);
        i++;
    } while (i <= 4);
    if (nearest == -1)
        return 0xFF;
    e = &enemies076EE8[nearest];
    return e->f2;
}
extern struct Ply076EE8 players07614C[] asm("gUnk_03003CE0");
extern struct Ene076EE8 *enemies07614C asm("gUnk_030056F4");
extern u32 active07614C asm("gUnk_030056FC");
extern u16 directions07614C[] asm("gUnk_0849E730");
static inline u16 dir414C(struct Pos076EE8 **pos) { return directions07614C[((u8 *)*pos)[3] >> 4]; }
static inline u32 ang414C(s32 dx, s32 dy) { return (u16)ArcTan2(dx, dy) + 0x400; }
static inline s32 diff414C(u32 a, u16 b) {
 u16 angle = (a >> 12) - b; s32 d;
 { s32 t = (s16)angle; if (t > 8) angle = t - 16; }
 { s32 t = (s16)angle; if (t < -8) angle = t + 16; } 
 d = (s16)angle; if (d < 0) d = -d;
 return d; }
static inline s32 diffB414C(u32 a, u16 b) {
 u16 angle = (a >> 12) - b; s32 d;
 { s32 t = (s16)angle; if (t > 8) angle = t - 16; }
 { register s32 t asm("r0") = (s16)angle; if (t < -8) { t += 16; angle = t; } } 
 d = (s16)angle; if (d < 0) d = -d;
 return d; }
s32 sub_0807414C(struct Ply076EE8 *player, u16 width, u32 range)
{
    struct Ply076EE8 *cand;
    struct Ene076EE8 *e;
    u32 best, nearest, count, i, offset;
    s32 dx, dy, d;
    u16 angle, dist;

    best = 0xFFFF;
    nearest = -1;
    if (sub_0800CF80()) {
        count = sub_08002164();
        for (i = 0; i < count; i++) {
            cand = &players07614C[i];
            if (player->team != cand->team && cand->team != 0) {
                dx = (cand->pos->x >> 4) - (player->pos->x >> 4);
                dy = ((u32)(cand->pos->y << 20) >> 20) - ((u32)(player->pos->y << 20) >> 20);
                d = diffB414C(ang414C(dx, dy), dir414C(&player->pos));
                {
                    /* The ROM reloads the spilled limits into r2/r1/r2 here. */
                    register u32 w asm("r2") = width;
                    asm("" : "+r"(w));
                    if (d > (s32)w)
                        continue;
                }
                dist = Sqrt(dx * dx + dy * dy);
                {
                    register u32 rg asm("r1") = range;
                    if (rg <= dist)
                        continue;
                }
                {
                    register u32 b asm("r2") = best;
                    if (b <= dist)
                        continue;
                }
                best = dist;
                nearest = i;
            }
        }
        if (nearest != -1) {
            cand = &players07614C[nearest];
            return cand->f0;
        }
    }
    best = 0xFFFF;
    nearest = -1;
    i = 0;
    do {
        if (active07614C & (1 << i)) {
            e = &enemies07614C[i];
            if (e->state != 11 && e->hp != 0 && e->alive != 0) {
                dx = (e->x >> 8) - (player->pos->x >> 4);
                dy = (e->y >> 8) - ((u32)(player->pos->y << 20) >> 20);
                d = diff414C(ang414C(dx, dy), dir414C(&player->pos));
                if (d <= width) {
                    dist = Sqrt(dx * dx + dy * dy);
                    if (range > dist && best > dist) {
                        best = dist;
                        nearest = i;
                    }
                }
            }
        }
        i++;
    } while (i <= 4);
    if (nearest == -1)
        return 0xFF;
    e = &enemies07614C[nearest];
    return e->f2;
}
struct Position076398 {u16 x,y;};
struct Player076398 {u16 id;u8 pad2[0x66];u8 team;u8 pad69[0xDF];struct Position076398 *position;};
extern struct Player076398 players076398[] asm("gUnk_03003CE0");
extern u8 *enemies076398 asm("gUnk_030056F4");
#define F_076398(p,t,o) (*(t*)((u8*)(p)+(o)))
extern s32 nearest076398(u32,u32,s32,s32,s32) asm("sub_08074398");
extern u32 active076398 asm("gUnk_030056FC");
/* The local five-argument ABI keeps the original halfword input truncation. */
s32 nearest076398(u32 inputSelf,u32 inputExcluded,s32 x,s32 y,s32 range)
{
    register u32 self asm("r10")=(u16)inputSelf;
    register u32 best asm("r9"),nearest asm("r8"),index asm("r4");
    u32 count;
    register u8 **enemyAddress asm("r6");
    register u8 *team asm("r5");
    u8 *selfTeam,*enemy;
    register struct Position076398 **position asm("r6");
    struct Position076398 *point;
    s32 dx,dy,offset;
    u16 distance;
    {
        register u32 narrowed asm("r1")=(u16)inputExcluded;
        asm("" : "+r"(narrowed));
        inputExcluded=narrowed;
    }
    if(sub_0800CF80()){
        best=0xFFFF;
        nearest=-1;
        count=sub_08002164();
        index=0;
        if(index<count){
            {
                register u32 stride asm("r0")=0x14C;
                register u32 base asm("r1")=(u32)players076398;
                selfTeam=(u8*)(self*stride+base)+0x68;
                position=(struct Position076398**)(base+0x148);
                team=(u8*)(base+0x68);
            }
            do{
                if(self!=index && *selfTeam!=*team && *team!=0){
                    point=*position;
                    dx=(point->x>>4)-(x>>8);
                    {
                        register u32 packedY asm("r0")=(u32)point->y<<20;
                        dy=(packedY>>20)-(y>>8);
                    }
                    distance=Sqrt(dx*dx+dy*dy);
                    if(range>distance && best>distance){
                        best=distance;
                        nearest=index;
                    }
                }
                {
                    register u32 step asm("r2")=0x14C;
                    position=(struct Position076398**)((u8*)position+step);
                    team+=step;
                }
                index++;
            }
            while(index<count);
        }
        if(nearest!=-1U){
            register u32 chosen asm("r3")=nearest;
            register u32 address asm("r0");
            chosen*=0x14C;
            asm("" : "+r"(chosen));
            address=chosen;
            asm("" : "+r"(address));
            address=address+(u32)players076398;
            return *(u16*)address;
        }
    }
    {
        register u32 reset asm("r0")=0xFFFF;
        register u32 none asm("r1");
        asm("" : "+r"(reset));
        best=reset;
        none=-1;
        asm("" : "+r"(none));
        nearest=none;
    }
    index=0;
    enemyAddress=&enemies076398;
    offset=0;
    do{
        if(active076398 & (1<<index)){
            enemy=*enemyAddress+offset;
            if(F_076398(enemy,u16,2)!=inputExcluded && F_076398(enemy,u16,0xC)!=11 && F_076398(enemy,s16,0x5C)!=0 && enemy[0x1DC]!=0){
                dx=(F_076398(enemy,s32,0x14)-x)>>8;
                dy=(F_076398(enemy,s32,0x18)-y)>>8;
                distance=Sqrt(dx*dx+dy*dy);
                if(range>distance && best>distance){
                    best=distance;
                    nearest=index;
                }
            }
        }
        offset+=0x2E0;
        index++;
    }
    while(index<=4);
    {
        register s32 result asm("r0");
        if(nearest!=-1U){
            register u8 **address asm("r1")=&enemies076398;
            register u32 selected asm("r2")=nearest;
            register u32 offset asm("r0");
            register u32 object asm("r1");
            offset=nearest*0x2E0;
            object=(u32)*address+offset;
            result=F_076398(object,u16,2);
            goto finish;
        }
        result=0xFF;
        finish:
        return result;
    }
}
struct EffectSprite77 { u32 base, unused4; void *data; void *paletteResource; u32 resource, style; s32 mode; u8 palette[16]; s16 scale, step, upper, lower; };
struct EffectEntity77 { u16 xRaw,yRaw; };
struct EffectPlayer77 { u8 pad[0x148]; struct EffectEntity77 *entity; };
struct EffectEnemy77 { u8 pad[0x14]; s32 x,y; u8 rest[0x2C4]; };
extern struct EffectPlayer77 effectPlayers77[] asm("gUnk_03003CE0");
extern struct EffectEnemy77 *effectEnemies77 asm("gUnk_030056F4");
extern u32 effectMasks77[] asm("gUnk_030063E0");
extern u32 effectFlags77 asm("gUnk_03002344");
extern void effectInit77(struct EffectSprite77 *,u32,u32,s32,u32) asm("sub_08065158");
extern u32 effectStep77(struct EffectSprite77 *,u16,u16 *,u16 *,u32) asm("sub_08065370");
extern void effectPosition77(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
extern void effectDraw77(s32,s32,u16,u16,u8,void *,void *,u32) asm("sub_08007870");
extern void effectPalette77(u32,void *,u32) asm("sub_08000AF0");
void sub_08074530(u32 who,u32 slot)
{
    struct EffectSprite77 sprite;
    s16 x,y;
    u16 frame,timer;
    struct EffectPlayer77 *player;
    struct EffectEnemy77 *enemy;
    u16 done;
    frame=0;timer=0;
    effectInit77(&sprite,0x5008C,8,-1,0);
    sprite.palette[0]=7;sprite.palette[1]=8;
    done=0;
    if(who<4) player=&effectPlayers77[who];
    else enemy=&effectEnemies77[who-4];
    while(!done) {
        if(who<4) {
            struct EffectEntity77 *entity=player->entity;
            effectPosition77(entity->xRaw>>4,({u32 rawY=entity->yRaw;rawY<<=20;asm("" : "+r"(rawY));rawY>>20;}),&x,&y,0x30,0);
        } else {
            effectPosition77((s32)((u32)enemy->x<<8)>>16,(s32)((u32)enemy->y<<8)>>16,&x,&y,0x30,0);
        }
        done=effectStep77(&sprite,16,&frame,&timer,0);
        if(!sub_0800CC98()&&!sub_0800CD8C()&&!sub_0800CCCC()) {
            if(!(effectFlags77&1)) effectPalette77(0x17,sprite.paletteResource,2);
            effectDraw77(x,y+1,16,frame,1,sprite.palette,sprite.data,sprite.base);
        }
        sub_080003F0();
    }
    effectMasks77[who]&=~(1<<slot);
}
void sub_080746A4(u32 who,u32 slot)
{
    struct EffectSprite77 sprite;
    s16 x,y;
    u16 frame,timer;
    struct EffectPlayer77 *player;
    struct EffectEnemy77 *enemy;
    u16 done;
    frame=0;timer=0;
    effectInit77(&sprite,0x5008C,8,-1,0);
    sprite.palette[0]=7;sprite.palette[1]=8;
    done=0;
    if(who<4) player=&effectPlayers77[who];
    else enemy=&effectEnemies77[who-4];
    while(!done) {
        if(who<4) {
            struct EffectEntity77 *entity=player->entity;
            effectPosition77(entity->xRaw>>4,({u32 rawY=entity->yRaw;rawY<<=20;asm("" : "+r"(rawY));rawY>>20;}),&x,&y,0x30,0);
        } else {
            effectPosition77((s32)((u32)enemy->x<<8)>>16,(s32)((u32)enemy->y<<8)>>16,&x,&y,0x30,0);
        }
        done=effectStep77(&sprite,18,&frame,&timer,0);
        if(!sub_0800CC98()&&!sub_0800CD8C()&&!sub_0800CCCC()) {
            if(!(effectFlags77&1)) effectPalette77(0x17,sprite.paletteResource,2);
            effectDraw77(x,y+1,18,frame,1,sprite.palette,sprite.data,sprite.base);
        }
        sub_080003F0();
    }
    effectMasks77[who]&=~(1<<slot);
}
void sub_08074818(u32 who,u32 slot)
{
    struct EffectSprite77 sprite;
    s16 x,y;
    u16 frame,timer;
    struct EffectPlayer77 *player;
    struct EffectEnemy77 *enemy;
    u16 done;
    frame=0;timer=0;
    effectInit77(&sprite,0x5008C,8,-1,0);
    sprite.palette[0]=7;sprite.palette[1]=8;
    done=0;
    if(who<4) player=&effectPlayers77[who];
    else enemy=&effectEnemies77[who-4];
    while(!done) {
        if(who<4) {
            struct EffectEntity77 *entity=player->entity;
            effectPosition77(entity->xRaw>>4,({u32 rawY=entity->yRaw;rawY<<=20;asm("" : "+r"(rawY));rawY>>20;}),&x,&y,0x30,0);
        } else {
            effectPosition77((s32)((u32)enemy->x<<8)>>16,(s32)((u32)enemy->y<<8)>>16,&x,&y,0x30,0);
        }
        done=effectStep77(&sprite,17,&frame,&timer,0);
        if(!sub_0800CC98()&&!sub_0800CD8C()&&!sub_0800CCCC()) {
            if(!(effectFlags77&1)) effectPalette77(0x17,sprite.paletteResource,2);
            effectDraw77(x,y+1,17,frame,1,sprite.palette,sprite.data,sprite.base);
        }
        sub_080003F0();
    }
    effectMasks77[who]&=~(1<<slot);
}
void sub_0807498C(u32 who,u32 slot)
{
    struct EffectSprite77 sprite;
    s16 x,y;
    u16 frame,timer;
    struct EffectPlayer77 *player;
    struct EffectEnemy77 *enemy;
    u16 done;
    frame=0;timer=0;
    effectInit77(&sprite,0x5008C,8,-1,0);
    sprite.palette[0]=7;sprite.palette[1]=8;
    done=0;
    if(who<4) player=&effectPlayers77[who];
    else enemy=&effectEnemies77[who-4];
    while(!done) {
        if(who<4) {
            struct EffectEntity77 *entity=player->entity;
            effectPosition77(entity->xRaw>>4,({u32 rawY=entity->yRaw;rawY<<=20;asm("" : "+r"(rawY));rawY>>20;}),&x,&y,0x30,0);
        } else {
            effectPosition77((s32)((u32)enemy->x<<8)>>16,(s32)((u32)enemy->y<<8)>>16,&x,&y,0x30,0);
        }
        done=effectStep77(&sprite,19,&frame,&timer,0);
        if(!sub_0800CC98()&&!sub_0800CD8C()&&!sub_0800CCCC()) {
            if(!(effectFlags77&1)) effectPalette77(0x17,sprite.paletteResource,2);
            effectDraw77(x,y+1,19,frame,1,sprite.palette,sprite.data,sprite.base);
        }
        sub_080003F0();
    }
    effectMasks77[who]&=~(1<<slot);
}
void sub_08074B00(u32 who,u32 slot)
{
    struct EffectSprite77 sprite;
    s16 x,y;
    u16 frame,timer;
    struct EffectPlayer77 *player;
    struct EffectEnemy77 *enemy;
    u16 done;
    frame=0;timer=0;
    effectInit77(&sprite,0x5008C,8,-1,0);
    sprite.palette[0]=7;sprite.palette[1]=8;
    done=0;
    if(who<4) player=&effectPlayers77[who];
    else enemy=&effectEnemies77[who-4];
    while(!done) {
        if(who<4) {
            struct EffectEntity77 *entity=player->entity;
            effectPosition77(entity->xRaw>>4,({u32 rawY=entity->yRaw;rawY<<=20;asm("" : "+r"(rawY));rawY>>20;}),&x,&y,0x30,0);
        } else {
            effectPosition77((s32)((u32)enemy->x<<8)>>16,(s32)((u32)enemy->y<<8)>>16,&x,&y,0x30,0);
        }
        done=effectStep77(&sprite,1,&frame,&timer,0);
        if(!sub_0800CC98()&&!sub_0800CD8C()&&!sub_0800CCCC()) {
            if(!(effectFlags77&1)) effectPalette77(0x17,sprite.paletteResource,2);
            effectDraw77(x,y+1,1,frame,1,sprite.palette,sprite.data,sprite.base);
        }
        sub_080003F0();
    }
    effectMasks77[who]&=~(1<<slot);
}
void sub_08074C74(u32 who,u32 slot)
{
    struct EffectSprite77 sprite;
    s16 x,y;
    u16 frame,timer;
    struct EffectPlayer77 *player;
    struct EffectEnemy77 *enemy;
    u16 done;
    frame=0;timer=0;
    effectInit77(&sprite,0x5008D,8,-1,0);
    sprite.palette[0]=7;sprite.palette[1]=8;
    done=0;
    if(who<4) player=&effectPlayers77[who];
    else enemy=&effectEnemies77[who-4];
    while(!done) {
        if(who<4) {
            struct EffectEntity77 *entity=player->entity;
            effectPosition77(entity->xRaw>>4,({u32 rawY=entity->yRaw;rawY<<=20;asm("" : "+r"(rawY));rawY>>20;}),&x,&y,0x30,0);
        } else {
            effectPosition77((s32)((u32)enemy->x<<8)>>16,(s32)((u32)enemy->y<<8)>>16,&x,&y,0x30,0);
        }
        done=effectStep77(&sprite,9,&frame,&timer,0);
        if(!sub_0800CC98()&&!sub_0800CD8C()&&!sub_0800CCCC()) {
            if(!(effectFlags77&1)) effectPalette77(0x17,sprite.paletteResource,2);
            effectDraw77(x,y-24,9,frame,0,sprite.palette,sprite.data,sprite.base);
        }
        sub_080003F0();
    }
    effectMasks77[who]&=~(1<<slot);
}
struct Task4DE8 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern u32 masks4DE8[] asm("gUnk_030063E0");
extern u8 *lists4DE8[] asm("gUnk_030063B0");
extern void spawn4DE8(void *,u32,u32) asm("sub_08000274");
void sub_08074DE8(u32 who, s32 type)
{
    u32 i, mem;
    vu32 *mask;
    struct Task4DE8 *t;

    if (who <= 3) {
        i = 0;
        mask = (vu32 *)masks4DE8;
        while (mask[who] & (1 << i)) {
            i++;
            if (i > 15)
                return;
        }
        if (i > 15)
            return;
        switch (type) {
        case 8:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074530;
            break;
        case 10:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_080746A4;
            break;
        case 9:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074818;
            break;
        case 11:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_0807498C;
            break;
        case 6:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074B00;
            break;
        case 20:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074C74;
            break;
        default:
            return;
        }
    } else {
        i = 0;
        mask = (vu32 *)masks4DE8;
        while (mask[who] & (1 << i)) {
            i++;
            if (i > 15)
                return;
        }
        if (i > 15)
            return;
        switch (type) {
        case 8:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074530;
            break;
        case 10:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_080746A4;
            break;
        case 9:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074818;
            break;
        case 11:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_0807498C;
            break;
        case 6:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074B00;
            break;
        case 20:
            ((struct Task4DE8 *)lists4DE8[who])[i].fC = (u32)sub_08074C74;
            break;
        default:
            return;
        }
    }
    mem = sub_08001494(0x680);
    {
        u8 *list = lists4DE8[who];
        t = (struct Task4DE8 *)(i * 0x28 + (u32)list);
    }
    t->f20 = mem;
    if (mem != 0) {
        t->f8 = 0x34;
        t->f10 = mem + 0x67C;
        t->f24 = 0;
        spawn4DE8(t, who, i);
        masks4DE8[who] |= 1 << i;
    }
}
struct Spr5088 { u32 base, unused4; void *data; void *paletteResource; u32 resource, style; s32 mode; u8 palette[16]; s16 scale, step, upper, lower; };
struct Ent5088 { u16 xRaw, yRaw; };
struct Ply5088 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0xA8]; u32 serial; u8 padE0[0x68]; struct Ent5088 *entity; };
struct Ene5088 { u16 id; u8 pad2[0xA]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x30]; u32 dmg; u32 f50; u32 serial; u16 owner, hitMask; u8 pad5C[0x284]; };
extern struct Ply5088 p5088[] asm("gUnk_03003CE0");
extern struct Ene5088 *e5088Base asm("gUnk_030056F4");
extern u32 e5088Mask asm("gUnk_030056FC");
extern u32 m5088[] asm("gUnk_030063E0");
extern u32 flags5088 asm("gUnk_03002344");
extern u16 dir5088[] asm("gUnk_0847AD0A");
extern s16 sin5088[] asm("gUnk_080B9704");
extern s16 off5088[][2] asm("gUnk_084EBEBC");
extern u8 *party5088 asm("gUnk_030034E0");
extern void init5088(void *, u32, u32, s32, u32) asm("sub_08065158");
extern u16 step5088(void *, u32, u16 *, u16 *, u32) asm("sub_08065370");
extern void pos5088(s32, s32, s16 *, s16 *, u32, u32) asm("sub_0800BC08");
extern void draw5088(s32, s32, u32, u32, u8, void *, void *, u32) asm("sub_08007870");
extern void pal5088(u32, void *, u32) asm("sub_08000AF0");
extern u32 rand5088(void) asm("sub_080008C8");
extern void hit5088(u32, u32, u32, u32, u32, u32) asm("sub_08029E0C");

void sub_08075088(u32 who, u32 slot)
{
    struct Spr5088 spr;
    s32 x[3];
    s32 y[3];
    u16 frame[3];
    u16 timer[3];
    u16 done[3];
    u16 cnt[3];
    s16 sx, sy;
    struct Ply5088 *p;
    u16 i;
    u16 serial;
    u32 count;
    u32 dirIdx;
    u16 dmg;
    u16 local;
    u16 a;
    u16 j;
    s32 spd;
    u32 shade;
    s32 zero;
    struct Ene5088 *e;

    spd = 2;
    local = sub_080020F4();
    init5088(&spr, 0x5008C, 8, -1, 0);
    spr.palette[0] = 7;
    spr.palette[1] = 8;
    p = &p5088[who];
    for (i = 0; i < 3; i++) {
        x[i] = (p->entity->xRaw >> 4) << 8;
        y[i] = (u32)(p->entity->yRaw << 20) >> 12;
        frame[i] = 0;
        timer[i] = 0;
        done[i] = 0;
        cnt[i] = i * 8 + 1;
    }
    { u16 *tb = dir5088; u32 t = ((u8 *)p->entity)[3] >> 4; a = tb[t]; dirIdx = t; }
    if (local == who) {
        p->flags |= 1;
        serial = p->serial++;
        dmg = rand5088() % 50;
        dmg = dmg + (u16)sub_0801E0AC((s32)party5088 + 0x30, 5) * 50;
    }
    while (1) {
        count = 0;
        zero = 0;
        for (i = 0; i < 3; i++) {
            if (--cnt[i] != 0)
                continue;
            cnt[i] = 1;
            x[i] += sin5088[(s16)a + 0x40] * spd;
            y[i] += sin5088[(s16)a] * spd;
            pos5088((s32)(x[i] << 8) >> 16, (s32)(y[i] << 8) >> 16, &sx, &sy, 0x30, 0);
            done[i] = step5088(&spr, 0xE, &frame[i], &timer[i], 0);
            if (done[i] == 0 && !sub_0800CC98() && !sub_0800CD8C() && !sub_0800CCCC()) {
                if (!(flags5088 & 1))
                    pal5088(0x17, spr.paletteResource, 2);
                shade = sub_0800BC44(x[i] >> 8, y[i] >> 8, sub_0800CCCC());
                draw5088(sx + off5088[dirIdx][0], sy + off5088[dirIdx][1], 0xE, frame[i],
                         shade, spr.palette, spr.data, spr.base);
            }
            if (local == who && done[i] == 1) {
                if (local == sub_080020F4() && ((u16)(p->state - 11) <= 1 || sub_0800D11C()))
                    break;
                for (j = 0; j <= 4; j++) {
                    if (!(e5088Mask & (1 << j)))
                        continue;
                    e = &e5088Base[j];
                    sx = (e->x - x[i]) >> 8;
                    sy = (e->y - y[i]) >> 8;
                    if ((sx < zero ? -sx : sx) > 0x1B)
                        continue;
                    if ((sy < 0 ? -sy : sy) > 0x1B)
                        continue;
                    if (e->state == 11 || e->serial == serial)
                        continue;
                    e->dmg = dmg;
                    hit5088(e->id, 1, dmg, 1, 0x20, dirIdx);
                    e->owner = who;
                    e->serial = serial;
                    e->hitMask |= 1 << local;
                }
            }
            if (done[i] != 0)
                count++;
        }
        if (count > 2)
            goto out;
        sub_080003F0();
    }
out:
    if (local == who && !sub_0800CC98() && !sub_0800CE68() && !sub_0800CD8C())
        p->flags &= ~1;
    m5088[who] &= ~(1 << slot);
}
struct Task5494 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMasks5494[] asm("gUnk_030063E0");
extern u8 *gLists5494[] asm("gUnk_030063B0");
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern void sub_08075088();
void sub_08075494(u32 who)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task5494 *t;
    {
        vu32 *b = gMasks5494;
        m = &b[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists5494[who];
        t = (struct Task5494 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f8 = 0x34;
    t->fC = (u32)sub_08075088;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who, i);
    gMasks5494[who] |= 1 << i;
}
struct EffectBits77 { u32 kind:4; u32 x:12; u32 y:12; u32 pad:4; u32 low:5; u32 flag:1; };
struct EffectHolder77 { u8 pad[0x148]; struct EffectBits77 *entity; };
void sub_08075520(u32 who,u32 slot)
{
    struct EffectSprite77 sprite;
    s16 x,y;
    u16 frame,timer;
    struct EffectHolder77 *player;
    u16 done,i;
    u8 visible;
    frame=0;timer=0;
    effectInit77(&sprite,0x5008D,8,-1,0);
    sprite.palette[0]=7;sprite.palette[1]=8;
    done=0;
    player=(struct EffectHolder77 *)&gUnk_03003CE0[who];
    while (player->entity->kind==10) sub_080003F0();
    while (!done) {
        effectPosition77(player->entity->x,player->entity->y,&x,&y,0x30,0);
        visible=sub_0800BC44(player->entity->x,player->entity->y,player->entity->flag);
        done=effectStep77(&sprite,8,&frame,&timer,0);
        if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CCCC()) {
            if (!(effectFlags77&1)) effectPalette77(0x17,sprite.paletteResource,2);
            effectDraw77(x,y+1,8,frame,visible,sprite.palette,sprite.data,sprite.base);
        }
        sub_080003F0();
    }
    if (who==sub_080020F4()) ((struct Player *)player)->flags |= 0x40000;
    if (sub_080020F4()!=who) ((struct Player *)player)->flags |= 0x80000;
    i=0;
    do { i++; sub_080003F0(); } while (i<=0x3B);
    if (who==sub_080020F4()) ((struct Player *)player)->flags &= ~0x40000;
    if (sub_080020F4()!=who) ((struct Player *)player)->flags &= ~0x80000;
    effectMasks77[who] &= ~(1<<slot);
}
extern void sub_08075520();
void sub_080756EC(u32 who)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task5494 *t;
    {
        vu32 *b = gMasks5494;
        m = &b[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists5494[who];
        t = (struct Task5494 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f8 = 0x34;
    t->fC = (u32)sub_08075520;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who, i);
    gMasks5494[who] |= 1 << i;
}
#ifdef NONMATCHING
struct Arg5778 { u32 who; u32 slot; u16 target; u16 pad; u32 fC; u32 count; u32 flags; };
struct Spr5778 { u32 f0, f4, f8, fC; u8 pad10[16]; u8 f20; u8 pad21[19]; };
struct Ent5778 { u16 xRaw, yRaw; };
struct Ply5778 { u16 id; u8 pad2[0x1E]; u16 state; u8 pad22[4]; u16 f26; u8 pad28[8]; u32 flags; u8 pad34[6]; s16 power; u8 pad3C[0x2C]; u8 team; u8 pad69[0x23]; s32 x, y; u8 pad94[0x1E]; u16 ready; u8 padB4[0x28]; u32 serial; u8 padE0[0x18]; u32 hist[0x14]; struct Ent5778 *entity; };
struct Ene5778 { u16 id; u16 f2; u8 pad4[8]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x38]; u32 serial; u16 owner, hitMask; u8 pad5C[0x180]; u8 team; u8 pad1DD[0x29]; s16 power; u8 pad208[0x26]; u8 w, h; u8 pad230[0xB0]; };
struct Box5778 { u32 w:16; u32 h:16; };
struct Pos5778 { s32 x, y; };
extern struct Ply5778 p5778[] asm("gUnk_03003CE0");
extern struct Ene5778 *e5778Base asm("gUnk_030056F4");
extern u32 e5778Mask asm("gUnk_030056FC");
extern u32 m5778[] asm("gUnk_030063E0");
extern u32 flags5778 asm("gUnk_03002344");
extern u8 *inv5778 asm("gUnk_030034E0");
extern u16 dir5778[] asm("gUnk_0847AD0A");
extern s16 sin5778[] asm("gUnk_080B9704");
extern s16 offX5778[][2] asm("gUnk_084EBEBC");
extern s16 offY5778[][2] asm("gUnk_084EBEBE");
extern void init5778(void *, u32, u32, s32, u32) asm("sub_08065158");
extern u16 step5778(void *, u32, u16 *, u16 *, u32) asm("sub_08065370");
extern void pos5778(s32, s32, s16 *, s16 *, u32, u32) asm("sub_0800BC08");
extern void draw5778(void *, s32, s32, s32, u32, u32) asm("sub_080659BC");
extern void *tmpl5778(void) asm("sub_0805AD18");
extern s32 roll5778(s32, s32) asm("sub_080223A4");
extern s32 test5778(struct Pos5778 *, void *, struct Box5778 *, struct Box5778 *) asm("sub_08021FE0");
extern s32 wall5778(struct Pos5778 *, struct Box5778 *) asm("sub_0801F99C");
extern void hitE5778(void *, void *, void *, s32) asm("sub_0801F374");
extern void hitP5778(void *, void *, void *, s32) asm("sub_0801F79C");
extern void pre5778(void *) asm("sub_0801FD64");
extern s16 atan5778(s16, s16) asm("ArcTan2");

static inline s32 move5778(s32 v, s32 spd)
{
    return v * spd / 10;
}

static inline s32 wait5778(struct Ply5778 *p, u32 n)
{
    while (p->ready < n) {
        if (p->state == 10)
            return 1;
        sub_080003F0();
    }
    return 0;
}

void sub_08075778(struct Arg5778 *arg)
{
    struct Spr5778 spr;
    u8 atk[0xC4];
    s16 dx, dy;
    u16 frame, timer;
    struct Pos5778 pos;
    struct Pos5778 opos;
    struct Box5778 box;
    struct Box5778 box2;
    u16 local;
    u32 target;
    u32 who;
    u32 slot;
    u32 kind;
    u32 n;
    u32 big;
    struct Ply5778 *p;
    struct Ply5778 *q;
    struct Ene5778 *e;
    s32 x, y;
    u32 dirIdx;
    u32 d;
    u32 lo;
    u32 serial;
    s32 power;
    u16 j;
    u32 cnt;
    u16 ang;
    s32 iter;
    s32 t;
    s32 hit;
    s32 ok;
    u8 c;
    u32 shade;
    s32 sx, sy;

    local = sub_080020F4();
    target = arg->target;
    who = arg->who;
    slot = arg->slot;
    kind = (u8)arg->flags;
    n = arg->count;
    timer = 0;
    frame = 0;
    big = (u32)-(arg->flags & 0x8000) >> 31;
    init5778(&spr, 0x5001E, 0, -1, 0);
    spr.f20 = arg->who;
    p = &p5778[who];
    x = (p->entity->xRaw >> 4) << 8;
    y = (u32)(p->entity->yRaw << 20) >> 12;
    dirIdx = ((u8 *)p->entity)[3] >> 4;
    lo = (u32)(((u8 *)p->entity)[0] << 28) >> 28;
    if (who == local) {
        serial = (u16)p->serial;
        memcpy(atk, tmpl5778(), 0xC4);
        if (*(u16 *)(atk + 0xBC) == 0)
            *(u16 *)(atk + 0xBC) = inv5778[*(u16 *)(inv5778 + 0x68) * 16 + 0x77];
        if (kind != 0)
            power = p->power * 3;
        else
            power = p->power;
    }
    if (target > 3) {
        for (j = 0; j <= 4; j++) {
            if (e5778Mask & (1 << j)) {
                e = &e5778Base[j];
                if (e->state != 11)
                    if (e->f2 == target)
                        goto found;
            }
        }
    found:
        if (j > 4)
            target = 0xFFFF;
    } else {
        cnt = sub_08002164();
        for (j = 0; j < cnt && p5778[j].id != target; j++)
            ;
        if (j >= cnt || target == who)
            target = 0xFFFF;
    }
    if (target != 0xFFFF) {
        if (target > 3) {
            dx = (e->x - x) >> 8;
            dy = (e->y - y) >> 8;
            t = (u16)atan5778(dx, dy) >> 8;
            if (t > 0x80)
                t -= 0x100;
            ang = t;
        } else {
            struct Ent5778 *te = p5778[target].entity;
            dx = (te->xRaw >> 4) - (x >> 8);
            dy = ((u32)(te->yRaw << 20) >> 20) - (y >> 8);
            t = (u16)atan5778(dx, dy) >> 8;
            ang = t;
            if (t > 0x80)
                ang = t - 0x100;
        }
        {
            s16 sa = ang;
            if (sa < 0)
                ang = sa + 0x100;
        }
        {
            s16 sa = ang;
            if (sa > 0x100)
                ang = sa - 0x100;
        }
    } else {
        ang = dir5778[((u8 *)p->entity)[3] >> 4];
    }
    if (target == 0xFFFF)
        target = arg->target;
    x += move5778(sin5778[(s16)ang + 0x40] * 2, 45);
    y += move5778(sin5778[(s16)ang] * 2, 45);
    if (wait5778(p, 1))
        goto end;
    if (p->state != 13 && !sub_0800CCCC() && !sub_0800CD34())
        sub_0805865C(0x17);
    if (who == local)
        pre5778(&p5778[who]);
    iter = (s32)(n * 17) / 10 + 9;
    while (iter-- != 0 && !sub_08056E90() && p->state != 11 && p->state != 12 && !sub_0800D11C()) {
        hit = 0;
        pos.x = x;
        pos.y = y;
        box.w = 8;
        box.h = 8;
        if (target <= 3) {
            box2.w = 0x10;
            box2.h = 0x10;
            cnt = sub_08002164();
            for (j = 0; j < cnt; j++) {
                if (who == j)
                    continue;
                if (sub_0800CDF8())
                    break;
                q = &p5778[j];
                if (q->team == p->team || q->team == 0)
                    continue;
                if (sub_0800CD8C())
                    break;
                if ((u32)(((u8 *)q->entity)[0] << 28) >> 28 == 14)
                    continue;
                opos.x = (q->entity->xRaw >> 4) << 8;
                opos.y = (u32)(q->entity->yRaw << 20) >> 12;
                if (!test5778(&pos, &opos, &box, &box2))
                    continue;
                ok = 0;
                if (q->state != 11 && q->hist[who] != serial && !(q->flags & 0x2000))
                    ok = 1;
                if (!ok)
                    continue;
                if (roll5778(power, q->power)) {
                    if (big) {
                        atk[0xA9] += 0x18;
                        sub_08022100(q->id);
                        p->flags |= 0x200000;
                    }
                    if (who == local) {
                        u16 s = p->state;
                        u16 t;
                        p->state = lo;
                        t = p->f26;
                        p->f26 = kind;
                        hitP5778(p, q, atk, 0);
                        p->state = s;
                        p->f26 = t;
                        q->hist[p->id] = serial;
                        sub_0805865C(0x1A);
                    }
                    if (big)
                        p->flags &= ~0x200000;
                } else if (!(sub_0800086C() & 1)) {
                    if (who == local) {
                        u16 s = p->state;
                        u16 t;
                        p->state = lo;
                        t = p->f26;
                        p->f26 = kind;
                        hitP5778(p, q, atk, 1);
                        sub_0805865C(0x1A);
                        p->state = s;
                        p->f26 = t;
                        q->hist[p->id] = serial;
                    }
                } else if (who == sub_080020F4()) {
                    sub_080223F4(q->x, q->y);
                    q->hist[p->id] = serial;
                    if (!sub_0800CCCC() && !sub_0800CD34())
                        sub_0805865C(0x55);
                }
                hit = 1;
            }
        } else {
            for (j = 0; j <= 4 && !hit; j++) {
                if (!(e5778Mask & (1 << j)))
                    continue;
                e = &e5778Base[j];
                if (sub_0800CD8C())
                    break;
                if (sub_0800CDF8())
                    break;
                if (e->team == p->team || e->team == 0)
                    continue;
                box2.w = e->w;
                box2.h = e->h;
                if (!test5778(&pos, &e->x, &box, &box2))
                    continue;
                ok = 0;
                if (e->state != 11)
                    ok = e->serial != serial;
                if (!ok)
                    continue;
                if (roll5778(power, e->power)) {
                    if (big) {
                        atk[0xA9] += 0x18;
                        sub_08022100(e->id + 4);
                        p->flags |= 0x200000;
                    }
                    if (who == sub_080020F4()) {
                        u16 s = p->state;
                        u16 t;
                        p->state = lo;
                        t = p->f26;
                        p->f26 = kind;
                        hitE5778(p, e, atk, 0);
                        sub_0805865C(0x1A);
                        p->state = s;
                        p->f26 = t;
                        e->owner = local;
                        e->hitMask |= 1 << local;
                    }
                    if (big)
                        p->flags &= ~0x200000;
                } else if (!(sub_0800086C() & 1)) {
                    if (who == sub_080020F4()) {
                        u16 s = p->state;
                        u16 t;
                        p->state = lo;
                        t = p->f26;
                        p->f26 = kind;
                        hitE5778(p, e, atk, 1);
                        sub_0805865C(0x1A);
                        p->state = s;
                        p->f26 = t;
                        e->owner = local;
                        e->hitMask |= 1 << local;
                    }
                } else if (who == sub_080020F4()) {
                    sub_080223F4(e->x, e->y);
                    e->serial = serial;
                    if (!sub_0800CCCC() && !sub_0800CD34())
                        sub_0805865C(0x55);
                }
                hit = 1;
                break;
            }
        }
        if (who == local && wall5778(&pos, &box))
            hit = 1;
        if (hit)
            break;
        c = sub_0800AE50(x, y, 0);
        if ((c & 0xF) && !(c & 0x10))
            break;
        x += move5778(sin5778[(s16)ang + 0x40], 45);
        y += move5778(sin5778[(s16)ang], 45);
        if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CCCC()) {
            pos5778((s16)(sx = x >> 8), (s16)(sy = y >> 8), &dx, &dy, 0x30, 0);
            shade = (u8)sub_0800BC44(sx, sy, 0);
            d = dirIdx;
            step5778(&spr, 0x40 | d, &frame, &timer, 1);
            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0())
                shade = 0;
            if (sub_0800CB9C()) {
                if ((flags5778 & 1) == (who & 1))
                    draw5778(&spr, dx + offX5778[(s16)d][0], dy + offY5778[(s16)d][0], (s16)d + 0x40, frame, shade);
            } else {
                draw5778(&spr, dx + offX5778[(s16)d][0], dy + offY5778[(s16)d][0], (s16)d + 0x40, frame, shade);
            }
        }
        sub_080003F0();
    }
end:
    m5778[who] &= ~(1 << slot);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075778);
#endif
struct Task60E8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Info60E8 { u32 who, i, a, pad, c, b; };
extern u32 gMasks60E8[] asm("gUnk_030063E0");
extern u8 *gLists60E8[] asm("gUnk_030063B0");
extern u8 *gInfo60E8[] asm("gUnk_03006380");
extern void sub_08000274_2(void *, void *) asm("sub_08000274");
extern void sub_08075778();
void sub_080760E8(u32 who, u32 a, u32 b, u32 c)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task60E8 *t;
    struct Info60E8 *e;
    {
        vu32 *mb = gMasks60E8;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x3C0);
    {
        u8 *p = gLists60E8[who];
        t = (struct Task60E8 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo60E8[who];
        e = (struct Info60E8 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->c = c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08075778;
    t->f10 = mem + 0x3BC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks60E8[who] |= 1 << i;
}
#ifdef NONMATCHING
struct Arg61A4 { u32 who; u32 slot; u16 target; u16 pad; u32 fC; s32 n; u32 flags; };
struct Spr61A4 { u32 base, unused4; void *data; void *paletteResource; u32 resource, style; s32 mode; u8 palette[16]; s16 scale, step, upper, lower; };
struct Ent61A4 { u16 xRaw, yRaw; };
struct Ply61A4 { u16 id; u8 pad2[0x1E]; u16 state; u8 pad22[4]; u16 f26; u16 f28; u8 pad2A[6]; u32 flags; u8 pad34[6]; s16 power; u8 pad3C[0x2C]; u8 team; u8 pad69[0x23]; s32 x, y; u8 pad94[0x1E]; u16 ready; u8 padB4[0x28]; u32 serial; u8 padE0[0x18]; u32 hist[0xA]; u16 f120; u16 f122; u8 pad124[0x24]; struct Ent61A4 *entity; };
struct Ene61A4 { u16 id; u16 f2; u8 pad4[8]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x2E]; u16 dmg; u8 pad4C[8]; u32 serial; u16 owner, hitMask; s16 hp; u8 pad5E[0x17E]; u8 team; u8 pad1DD[0x29]; s16 power; u8 pad208[0x26]; u8 w, h; u8 pad230[0xB0]; };
struct Box61A4 { u32 w:16; u32 h:16; };
struct Pos61A4 { s32 x, y; };
extern struct Ply61A4 p61A4[] asm("gUnk_03003CE0");
extern struct Ene61A4 *e61A4Base asm("gUnk_030056F4");
extern u32 e61A4Mask asm("gUnk_030056FC");
extern u32 m61A4[] asm("gUnk_030063E0");
extern u8 *inv61A4 asm("gUnk_030034E0");
extern u16 dir61A4[] asm("gUnk_0847AD0A");
extern s16 sin61A4[] asm("gUnk_080B9704");
extern s16 off61A4[][2] asm("gUnk_084EBEBC");
extern void init61A4(void *, u32, u32, u32, u32) asm("sub_08065158");
extern u16 step61A4(void *, u32, u16 *, u16 *, u32) asm("sub_08065370");
extern void pos61A4(s32, s32, s16 *, s16 *, u32, u32) asm("sub_0800BC08");
extern void draw61A4(s32, s32, u16, u16, u8, void *, void *, u32) asm("sub_08007870");
extern void *tmpl61A4(void) asm("sub_0805AD18");
extern s32 roll61A4(s32, s32) asm("sub_080223A4");
extern s32 test61A4(struct Pos61A4 *, void *, struct Box61A4 *, struct Box61A4 *) asm("sub_08021FE0");
extern s32 wall61A4(struct Pos61A4 *, struct Box61A4 *) asm("sub_0801F99C");
extern void hitE61A4(void *, void *, void *, s32) asm("sub_0801F374");
extern void hitP61A4(void *, void *, void *, s32) asm("sub_0801F79C");
extern void pre61A4(void *) asm("sub_0801FD64");
extern s16 atan61A4(s16, s16) asm("ArcTan2");

static inline s32 move61A4(s32 v, s32 spd)
{
    return v * spd;
}

static inline s32 wait61A4(struct Ply61A4 *p, u32 n)
{
    while (p->ready < n) {
        if (p->state == 10)
            return 1;
        sub_080003F0();
    }
    return 0;
}

void sub_080761A4_c(struct Arg61A4 *arg) asm("sub_080761A4");
void sub_080761A4_c(struct Arg61A4 *arg)
{
    struct Spr61A4 spr;
    u8 atk[0xC4];
    s16 dx, dy;
    u16 frame, timer;
    u16 ang;
    struct Pos61A4 pos;
    struct Pos61A4 opos;
    struct Box61A4 box;
    struct Box61A4 box2;
    struct Ene61A4 *e;
    u16 target;
    u32 lo;
    u32 serial;
    u32 kind;
    s32 x, y;
    s32 iter;
    u32 dirIdx;
    u16 local;
    u32 base;
    u32 big;
    s32 power;
    u32 who;
    s32 n;
    struct Ply61A4 *p;
    struct Ply61A4 *q;
    struct Ene61A4 *e2;
    s32 d;
    u16 j;
    u32 cnt;
    s32 t;
    s32 hit;
    s32 ok;
    u8 c;
    u8 shade;
    s32 sx, sy;
    s32 spd;
    u32 delay;

    spd = 4;
    local = sub_080020F4();
    target = arg->target;
    who = arg->who;
    kind = (u8)arg->flags;
    n = arg->n;
    p = &p61A4[who];
    ok = 0;
    timer = 0;
    frame = 0;
    big = (u32)-(arg->flags & 0x8000) >> 31;
    x = (p->entity->xRaw >> 4) << 8;
    y = (u32)(p->entity->yRaw << 20) >> 12;
    lo = (u32)(((u8 *)p->entity)[0] << 28) >> 28;
    if (who == local) {
        serial = (u16)p->serial;
        {
            void *src = tmpl61A4();
            memcpy(atk, src, 0xC4);
        }
        if (*(u16 *)(atk + 0xBC) == 0) {
            u8 *iv = inv61A4;
            iv += *(u16 *)(iv + 0x68) * 16;
            *(u16 *)(atk + 0xBC) = iv[0x77];
        }
        if (kind != 0)
            power = p->power * 3;
        else
            power = p->power;
    }
    if (kind == 0) {
        init61A4(&spr, 0x50021, 0, 0x80000000, 0);
        base = 0x10;
    } else {
        init61A4(&spr, 0x500C9, 0, 0x80000000, 0);
        base = (u16)((kind - 1) * 8);
    }
    spr.palette[0] = who;
    delay = 2;
    if (target > 3) {
        for (j = 0; j <= 4; j++) {
            if (e61A4Mask & (1 << j)) {
                e = &e61A4Base[j];
                if (e->state != 11)
                    if (e->f2 == target)
                        goto found;
            }
        }
    found:
        if (j > 4)
            target = 0xFF;
    }
    if (target != 0xFF) {
        if (target > 3) {
            dx = (e->x - x) >> 8;
            dy = (e->y - y) >> 8;
            /* hit doubles as the angle temporary (ROM keeps it in r4). */
            hit = (u16)atan61A4(dx, dy) >> 8;
            if (hit > 0x80)
                hit = (u16)(hit - 0x100);
            ang = hit;
            {
                s16 sa = ang;
                if (sa < 0)
                    ang = sa + 0x100;
            }
        } else {
            struct Ent61A4 *te = p61A4[target].entity;
            dx = (te->xRaw >> 4) - (x >> 8);
            dy = ((u32)(te->yRaw << 20) >> 20) - (y >> 8);
            hit = (u16)atan61A4(dx, dy) >> 8;
            if (hit > 0x80)
                hit = (u16)(hit - 0x100);
            ang = hit;
            {
                s16 sa = ang;
                if (sa < 0)
                    ang = sa + 0x100;
            }
        }
        {
            s16 sa = ang;
            if (sa > 0x100)
                ang = sa - 0x100;
        }
    } else {
        ang = dir61A4[((u8 *)p->entity)[3] >> 4];
    }
    if (target == 0xFF)
        target = arg->target;
    x += move61A4(sin61A4[(s16)ang + 0x40] * 2, spd);
    y += move61A4(sin61A4[(s16)ang] * 2, spd);
    while (p->ready < delay) {
        if (p->state == 10) {
            m61A4[who] &= ~(1 << arg->slot);
            return;
        }
        sub_080003F0();
    }
    iter = n * 18 / 10 + 10;
    if (p->state != 13 && !sub_0800CCCC() && !sub_0800CD34() && n > 0)
        sub_0805865C(n + 0x100);
    if (who == local)
        pre61A4(&p61A4[who]);
    dirIdx = ((u8 *)p->entity)[3] >> 4;
    while (iter-- != 0 && !sub_08056E90() && p->state != 11 && p->state != 12 && !sub_0800D11C()) {
        hit = 0;
        pos.x = x;
        pos.y = y;
        box.w = 8;
        box.h = 8;
        if (target <= 3) {
            box2.w = 0x10;
            box2.h = 0x10;
            cnt = sub_08002164();
            for (j = 0; j < cnt; j++) {
                if (who == j)
                    continue;
                if (sub_0800CDF8())
                    break;
                q = &p61A4[j];
                if (q->team == p->team || q->team == 0)
                    continue;
                if ((u32)(((u8 *)q->entity)[0] << 28) >> 28 == 14)
                    continue;
                opos.x = (q->entity->xRaw >> 4) << 8;
                opos.y = (u32)(q->entity->yRaw << 20) >> 12;
                if (!test61A4(&pos, &opos, &box, &box2))
                    continue;
                if (q->state != 11 && q->hist[who] != serial && !(q->flags & 0x2000))
                    ok = 1;
                else
                    ok = 0;
                if (!ok)
                    continue;
                if (roll61A4(power, q->power)) {
                    if (big) {
                        atk[0xA9] += 0x18;
                        sub_08022100(q->id);
                        p->flags |= 0x200000;
                    }
                    if (who == sub_080020F4()) {
                        u16 s = p->state;
                        u16 f;
                        p->state = lo;
                        f = p->f26;
                        p->f26 = kind;
                        hitP61A4(p, q, atk, 0);
                        p->state = s;
                        p->f26 = f;
                        q->hist[p->id] = serial;
                        sub_0805865C(0x1A);
                    }
                    if (big)
                        p->flags &= ~0x200000;
                    hit = 1;
                } else if (!(sub_0800086C() & 1)) {
                    if (who == sub_080020F4()) {
                        u16 s = p->state;
                        u16 f;
                        p->state = lo;
                        f = p->f26;
                        p->f26 = kind;
                        hitP61A4(p, q, atk, 1);
                        p->state = s;
                        p->f26 = f;
                        q->hist[p->id] = serial;
                        sub_0805865C(0x1A);
                    }
                    hit = 1;
                } else {
                  if (who == sub_080020F4()) {
                    sub_080223F4(q->x, q->y);
                    q->hist[p->id] = serial;
                    if (!sub_0800CCCC() && !sub_0800CD34())
                        sub_0805865C(0x55);
                  }
                  hit = 1;
                }
            }
        } else {
            for (j = 0; j <= 4 && !sub_0800CDF8(); j++) {
                if (!(e61A4Mask & (1 << j)))
                    continue;
                e2 = &e61A4Base[j];
                if (e2->team == p->team || e2->team == 0)
                    continue;
                box2.w = e2->w;
                box2.h = e2->h;
                if (!test61A4(&pos, &e2->x, &box, &box2))
                    continue;
                if (e2->state != 11 && e2->serial != serial && !((e2->hp - e2->dmg) & 0x8000) && e2->hp != e2->dmg)
                    ok = 1;
                else
                    ok = 0;
                if (!ok)
                    continue;
                if (roll61A4(power, e2->power)) {
                    if (big) {
                        atk[0xA9] += 0x18;
                        sub_08022100(e->id + 4);
                        p->flags |= 0x200000;
                    }
                    if (who == local) {
                        u16 s = p->state;
                        u16 f;
                        p->state = lo;
                        f = p->f26;
                        p->f26 = kind;
                        hitE61A4(p, e2, atk, 0);
                        p->state = s;
                        p->f26 = f;
                        e2->owner = who;
                        e2->hitMask |= 1 << who;
                        sub_0805865C(0x1A);
                    }
                    if (big)
                        p->flags &= ~0x200000;
                } else if (who == local) {
                    if (!(1 & sub_0800086C())) {
                        u16 s = p->state;
                        u16 f;
                        p->state = lo;
                        f = p->f26;
                        p->f26 = kind;
                        hitE61A4(p, e2, atk, 1);
                        p->state = s;
                        p->f26 = f;
                        e2->owner = who;
                        e2->hitMask |= 1 << who;
                        sub_0805865C(0x1A);
                    } else {
                        sub_080223F4(e2->x, e2->y);
                        e2->serial = serial;
                        if (!sub_0800CCCC() && !sub_0800CD34())
                            sub_0805865C(0x55);
                    }
                }
                hit = 1;
            }
        }
        if (who == local && wall61A4(&pos, &box))
            hit = 1;
        if (kind == 0 && hit)
            break;
        c = sub_0800AE50(x, y, 0);
        if ((c & 0xF) && !(c & 0x10))
            break;
        x += move61A4(sin61A4[(s16)ang + 0x40], spd);
        y += move61A4(sin61A4[(s16)ang], spd);
        if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CCCC()) {
            pos61A4((s16)(ok = x >> 8), (s16)(d = y >> 8), &dx, &dy, 0x30, 0);
            shade = sub_0800BC44(ok, d, 0);
            d = dirIdx;
            step61A4(&spr, (u16)(base + d), &frame, &timer, 1);
            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0())
                shade = 0;
            draw61A4(dx + off61A4[(s16)d][0], dy + off61A4[(s16)d][1], base + d, frame, shade, spr.palette, spr.data, spr.base);
        }
        sub_080003F0();
    }
    if (who == local && p->state == 5) {
        p->state = 0;
        p->f122 = 0;
        p->f28 = kind;
    }
    m61A4[who] &= ~(1 << arg->slot);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080761A4);
#endif
struct TaskA88 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct InfoA88 { u32 who, i, a, pad, c, b; };
struct PlayerA88 { u8 pad[0x20]; u16 state; u8 pad22[6]; u16 f28; u8 pad2a[0xf8]; u16 f122; u8 pad124[0x28]; };
extern u32 masksA88[] asm("gUnk_030063E0");
extern u8 *listsA88[] asm("gUnk_030063B0");
extern u8 *infoA88[] asm("gUnk_03006380");
extern struct PlayerA88 playersA88[] asm("gUnk_03003CE0");
extern void sub_080761A4(void);
extern void taskA88(void *) asm("sub_08000274");
void sub_08076A88(u32 who, u32 a, u32 b, u32 c) {
    register u32 aa asm("r10") = a;
    register u32 bb asm("r9") = b;
    register u32 cc asm("r3") = c;
    register u32 scratch asm("r3");
    volatile u32 saved_c;
    register u32 result asm("r0");
    u32 i;
    vu32 *m;
    u32 mem;
    struct TaskA88 *t;
    register struct InfoA88 *e asm("r1");
    struct PlayerA88 *p; /* Allocation failure uses incoming r5, as in the original. */
    asm("" : "+r"(aa), "+r"(bb), "+r"(cc));
    saved_c = cc;
    asm("" : : : "memory");
    i = 0;
    { vu32 *mb = masksA88; m = &mb[who]; }
    { register u32 one asm("r1") = 1; asm("" : "+r"(one));
    if (*m & one) do {
        i++;
        if (i > 15) break;
    } while (*m & (1 << i));
    }
    if (i > 15) {
        if (who == sub_080020F4()) {
            p = &playersA88[who];
            if (p->state == 5) {
                p->state = 0;
                p->f122 = 0;
                goto set_b;
            }
        }
    } else {
        mem = sub_08001494(0x800);
        { u8 *base = listsA88[who]; t = (struct TaskA88 *)(i * 0x28 + (u32)base); }
        t->f20 = mem;
        if (mem == 0) {
            if (who == sub_080020F4() && p->state == 5) {
                p->state = 0;
                p->f122 = 0;
set_b:
                scratch = bb;
                asm("" : "+r"(scratch));
                p->f28 = scratch;
            }
        } else {
            { u8 *base = infoA88[who]; e = (struct InfoA88 *)(i * 0x18 + (u32)base); }
            e->who = who;
            e->i = i;
            e->a = aa;
            scratch = bb;
            asm("" : "+r"(scratch));
            e->b = scratch;
            e->c = saved_c;
            t->f8 = 0x34;
            t->fC = (u32)sub_080761A4;
            scratch = 0x7fc;
            asm("" : "+r"(scratch));
            result = mem + scratch;
            asm("" : "+r"(result));
            t->f10 = result;
            t->f24 = 0;
            taskA88(t);
            masksA88[who] |= 1 << i;
        }
    }
}
#ifdef NONMATCHING
struct Arg6BA0 { u32 who; u32 slot; u16 target; u16 pad; u32 fC; u16 f10; u16 spread; u32 flags; };
struct Spr6BA0 { u32 base, unused4; void *data; void *paletteResource; u32 resource, style; s32 mode; u8 palette[16]; s16 scale, step, upper, lower; };
struct Ent6BA0 { u16 xRaw, yRaw; };
struct Ply6BA0 { u16 id; u8 pad2[0x1E]; u16 state; u8 pad22[4]; u16 f26; u8 pad28[8]; u32 flags; u8 pad34[6]; s16 power; u8 pad3C[0x2C]; u8 team; u8 pad69[0x23]; s32 x, y; u8 pad94[0x1E]; u16 ready; u8 padB4[0x28]; u32 serial; u8 padE0[0x18]; u32 hist[0x13]; struct Ent6BA0 *entity2; struct Ent6BA0 *entity; };
struct Ene6BA0 { u16 id; u16 f2; u8 pad4[8]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x2E]; u16 dmg; u8 pad4C[8]; u32 serial; u16 owner, hitMask; s16 hp; u8 pad5E[0x17E]; u8 team; u8 pad1DD[0x29]; s16 power; u8 pad208[0x26]; u8 w, h; u8 pad230[0xB0]; };
struct Box6BA0 { u32 w:16; u32 h:16; };
struct Pos6BA0 { s32 x, y; };
extern struct Ply6BA0 p6BA0[] asm("gUnk_03003CE0");
extern struct Ene6BA0 *e6BA0Base asm("gUnk_030056F4");
extern u32 e6BA0Mask asm("gUnk_030056FC");
extern u32 m6BA0[] asm("gUnk_030063E0");
extern u8 *inv6BA0 asm("gUnk_030034E0");
extern u16 dir6BA0[] asm("gUnk_0847AD0A");
extern s16 sin6BA0[] asm("gUnk_080B9704");
extern s16 off6BA0[][2] asm("gUnk_084EBEBC");
extern void init6BA0(void *, u32, u32, u32, u32) asm("sub_08065158");
extern void pos6BA0(s32, s32, s16 *, s16 *, u32, u32) asm("sub_0800BC08");
extern void draw6BA0(s32, s32, u16, u16, u8, void *, void *, u32) asm("sub_08007870");
extern void *tmpl6BA0(void) asm("sub_0805AD18");
extern s32 roll6BA0(s32, s32) asm("sub_080223A4");
extern s32 test6BA0(struct Pos6BA0 *, void *, struct Box6BA0 *, struct Box6BA0 *) asm("sub_08021FE0");
extern s32 wall6BA0(struct Pos6BA0 *, struct Box6BA0 *) asm("sub_0801F99C");
extern void hitE6BA0(void *, void *, void *, s32) asm("sub_0801F374");
extern void hitP6BA0(void *, void *, void *, s32) asm("sub_0801F79C");
extern void pre6BA0(void *) asm("sub_0801FD64");
extern s16 atan6BA0(s16, s16) asm("ArcTan2");

static inline s32 move6BA0(s32 v, s32 spd)
{
    return v * spd;
}

void sub_08076BA0(struct Arg6BA0 *arg)
{
    struct Spr6BA0 spr;
    u8 atk[0xC4];
    s16 dx, dy;
    struct Pos6BA0 pos;
    struct Pos6BA0 opos;
    struct Box6BA0 box;
    struct Box6BA0 box2;
    struct Ene6BA0 *e;
    u32 target;
    u32 lo;
    u32 serial;
    u32 kind;
    s32 x, y;
    s32 iter;
    u32 dirIdx;
    u16 local;
    u32 slot;
    u32 who;
    s32 power;
    u32 big;
    u32 spread;
    struct Ply6BA0 *p;
    struct Ply6BA0 *q;
    struct Ene6BA0 *e2;
    u32 d;
    u16 j;
    u32 cnt;
    u16 ang;
    s32 t;
    s32 hit;
    s32 ok;
    u8 c;
    u8 shade;
    s32 sx, sy;

    local = sub_080020F4();
    init6BA0(&spr, 0x5002E, 0, 0x80000000, 0);
    target = arg->target;
    who = arg->who;
    slot = arg->slot;
    kind = (u16)arg->flags;
    spread = arg->spread;
    big = (u32)-(arg->flags & 0x8000) >> 31;
    if (spread != 0) {
        spread--;
        target = 0xFF;
    }
    p = &p6BA0[who];
    x = (p->entity->xRaw >> 4) << 8;
    y = (u32)(p->entity->yRaw << 20) >> 12;
    lo = (u32)(((u8 *)p->entity)[0] << 28) >> 28;
    if (who == local) {
        serial = (u16)p->serial;
        memcpy(atk, tmpl6BA0(), 0xC4);
        if (*(u16 *)(atk + 0xBC) == 0)
            *(u16 *)(atk + 0xBC) = inv6BA0[*(u16 *)(inv6BA0 + 0x68) * 16 + 0x77];
        if (kind != 0)
            power = p->power * 3;
        else
            power = p->power;
    }
    if (target > 3) {
        for (j = 0; j <= 4; j++) {
            if (e6BA0Mask & (1 << j)) {
                e = &e6BA0Base[j];
                if (e->state != 11)
                    if (e->f2 == target)
                        goto found;
            }
        }
    found:
        if (j > 4)
            target = 0xFF;
    }
    if (target != 0xFF) {
        if (target > 3) {
            dx = (e->x - x) >> 8;
            dy = (e->y - y) >> 8;
            ang = (u16)atan6BA0(dx, dy) >> 8;
            t = ang;
            if (t > 0x80)
                ang = t - 0x100;
            {
                s16 sa = ang;
                if (sa < 0)
                    ang = sa + 0x100;
            }
            {
                s16 sa = ang;
                if (sa > 0x100)
                    ang = sa - 0x100;
            }
        } else {
            struct Ent6BA0 *te = p6BA0[target].entity;
            dx = (te->xRaw >> 4) - (x >> 8);
            dy = ((u32)(te->yRaw << 20) >> 20) - (y >> 8);
            ang = (u16)atan6BA0(dx, dy) >> 8;
            t = ang;
            if (t > 0x80)
                ang = t - 0x100;
            {
                s16 sa = ang;
                if (sa < 0)
                    ang = sa + 0x100;
            }
            {
                s16 sa = ang;
                if (sa > 0x100)
                    ang = sa - 0x100;
            }
        }
    } else {
        ang = dir6BA0[((u8 *)p->entity)[3] >> 4];
        switch (spread) {
        case 1:
            ang += 8;
            break;
        case 2:
            ang -= 8;
            break;
        }
        {
            s16 sa = ang;
            if (sa > 0x100)
                ang = sa - 0x100;
        }
        {
            s16 sa = ang;
            if (sa < 0)
                ang = sa + 0x100;
        }
    }
    if (target == 0xFF)
        target = arg->target;
    x += move6BA0(sin6BA0[(s16)ang + 0x40] * 2, 5);
    y += move6BA0(sin6BA0[(s16)ang] * 2, 5);
    while (p->ready < 2) {
        if (p->state == 10) {
            m6BA0[who] &= ~(1 << slot);
            return;
        }
        sub_080003F0();
    }
    iter = 10;
    if (p->state != 13 && !sub_0800CCCC() && !sub_0800CD34())
        sub_0805865C(0x1D);
    if (who == local)
        pre6BA0(&p6BA0[who]);
    dirIdx = ((u8 *)p->entity2)[3] >> 4;
    while (iter-- != 0 && !sub_08056E90() && p->state != 11 && p->state != 12 && !sub_0800D11C()) {
        hit = 0;
        pos.x = x;
        pos.y = y;
        box.w = 8;
        box.h = 8;
        if (target <= 3) {
            box2.w = 0x10;
            box2.h = 0x10;
            cnt = sub_08002164();
            for (j = 0; j < cnt && !sub_0800CDF8(); j++) {
                if (who == j)
                    continue;
                q = &p6BA0[j];
                if (q->team == p->team)
                    continue;
                if ((u32)(((u8 *)q->entity)[0] << 28) >> 28 == 14)
                    continue;
                opos.x = (q->entity->xRaw >> 4) << 8;
                opos.y = (u32)(q->entity->yRaw << 20) >> 12;
                if (!test6BA0(&pos, &opos, &box, &box2))
                    continue;
                ok = 0;
                if (q->state != 11 && q->hist[who] != serial && !(q->flags & 0x2000))
                    ok = 1;
                if (!ok)
                    continue;
                if (roll6BA0(power, q->power)) {
                    if (big) {
                        atk[0xA9] += 0x18;
                        sub_08022100(q->id);
                        p->flags |= 0x200000;
                    }
                    if (who == sub_080020F4()) {
                        u16 s = p->state;
                        u16 f;
                        p->state = lo;
                        f = p->f26;
                        p->f26 = kind;
                        hitP6BA0(p, q, atk, 0);
                        p->state = s;
                        p->f26 = f;
                        q->hist[p->id] = serial;
                    }
                    if (big)
                        p->flags &= ~0x200000;
                } else if (!(sub_0800086C() & 1)) {
                    if (who == sub_080020F4()) {
                        u16 s = p->state;
                        u16 f;
                        p->state = lo;
                        f = p->f26;
                        p->f26 = kind;
                        hitP6BA0(p, q, atk, 1);
                        p->state = s;
                        p->f26 = f;
                        q->hist[p->id] = serial;
                    }
                } else if (who == sub_080020F4()) {
                    sub_080223F4(q->entity->xRaw >> 4, (u32)(q->entity->yRaw << 20) >> 20);
                    q->hist[p->id] = serial;
                    if (!sub_0800CCCC() && !sub_0800CD34())
                        sub_0805865C(0x55);
                }
                hit = 1;
            }
        } else {
            for (j = 0; j <= 4 && !hit && !sub_0800CDF8(); j++) {
                if (!(e6BA0Mask & (1 << j)))
                    continue;
                e2 = &e6BA0Base[j];
                if (e2->team == p->team || e2->team == 0)
                    continue;
                box2.w = e2->w;
                box2.h = e2->h;
                if (!test6BA0(&pos, &e2->x, &box, &box2))
                    continue;
                ok = 0;
                if (e2->state != 11 && e2->serial != serial && !((e2->hp - e2->dmg) & 0x8000))
                    ok = e2->hp != e2->dmg;
                if (!ok)
                    continue;
                if (roll6BA0(power, e2->power)) {
                    if (big) {
                        atk[0xA9] += 0x18;
                        sub_08022100(e->id + 4);
                        p->flags |= 0x200000;
                    }
                    if (who == local) {
                        u16 s = p->state;
                        u16 f;
                        p->state = lo;
                        f = p->f26;
                        p->f26 = kind;
                        hitE6BA0(p, e2, atk, 0);
                        p->state = s;
                        p->f26 = f;
                        e2->owner = who;
                        e2->hitMask |= 1 << who;
                    }
                    if (big)
                        p->flags &= ~0x200000;
                } else if (!(sub_0800086C() & 1)) {
                    u16 s = p->state;
                    u16 f;
                    p->state = lo;
                    f = p->f26;
                    p->f26 = kind;
                    hitE6BA0(p, e2, atk, 1);
                    p->state = s;
                    p->f26 = f;
                    e2->owner = local;
                    e2->hitMask |= 1 << local;
                } else {
                    sub_080223F4(e2->x, e2->y);
                    e2->serial = serial;
                    if (!sub_0800CCCC() && !sub_0800CD34())
                        sub_0805865C(0x55);
                }
                hit = 1;
            }
        }
        if (who == local && wall6BA0(&pos, &box))
            hit = 1;
        if (hit)
            break;
        c = sub_0800AE50(x, y, 0);
        if ((c & 0xF) && !(c & 0x10))
            break;
        x += move6BA0(sin6BA0[(s16)ang + 0x40], 5);
        y += move6BA0(sin6BA0[(s16)ang], 5);
        if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CCCC()) {
            pos6BA0((s16)(sx = x >> 8), (s16)(sy = y >> 8), &dx, &dy, 0x30, 0);
            shade = sub_0800BC44(sx, sy, 0);
            d = dirIdx;
            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0())
                shade = 0;
            draw6BA0(dx + off6BA0[(s16)d][0], dy + off6BA0[(s16)d][1], d, 0, shade, spr.palette, spr.data, spr.base);
        }
        sub_080003F0();
    }
end:
    m6BA0[who] &= ~(1 << slot);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08076BA0);
#endif
struct Task7444 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Info7444 { u32 who, i, a, pad, cd, b; };
extern u32 gMasks7444[] asm("gUnk_030063E0");
extern u8 *gLists7444[] asm("gUnk_030063B0");
extern u8 *gInfo7444[] asm("gUnk_03006380");
extern void sub_08076BA0();
void sub_08077444(u32 who, u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task7444 *t;
    struct Info7444 *e;
    {
        vu32 *mb = gMasks7444;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x800);
    {
        u8 *p = gLists7444[who];
        t = (struct Task7444 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo7444[who];
        e = (struct Info7444 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->cd = d << 16 | c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08076BA0;
    t->f10 = mem + 0x7FC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks7444[who] |= 1 << i;
}
struct Spr7508 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[2]; u8 f20; u8 pad21[19]; };
struct Ply7508 { u8 pad0[0xC]; u16 fC; u8 padE[0x12]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[6]; s16 f3A; u8 pad3C[0x2C]; u8 team; u8 pad69[5]; u8 f6E; u8 pad6F[0x19]; u16 f88, f8A; s32 x, y; u8 pad94[0x50]; u32 hist[11]; u32 f110; u8 pad114[0x34]; u16 *pos; };
struct Ene7508 { u16 id; u8 f2; u8 pad3[5]; s16 dir; u8 padA[2]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x2E]; u16 f4A; u32 f4C; u32 f50; u32 f54; u16 f58, f5A; u8 pad5C[6]; u16 f62; u8 pad64[6]; u16 wait; u8 pad6C[0xE]; u16 f7A; u16 f7C, f7E; u8 pad80[0x15C]; u8 active; u8 pad1DD[0x29]; s16 f206; u8 pad208[0x1E]; u8 f226; u8 pad227[4]; u8 threshold; u16 f22C; u8 pad22E[0xAA]; u16 f2D8, f2DA; u8 pad2DC[4]; };
struct Tbl7508 { u8 pad0[0x2C]; u32 anim; u8 pad30[0x28]; };
struct Pkt7508 { u8 kind:8; u8 val:8; u8 b2:8; s8 b3:8; u32 dmg:16; u32 rest:16; };
extern struct Ply7508 p7508[] asm("gUnk_03003CE0");
extern struct Ene7508 *e7508Base asm("gUnk_030056F4");
extern u32 f7508[] asm("gUnk_030063E0");
extern u16 dirA7508[] asm("gUnk_0849E730");
extern u16 dirB7508[] asm("gUnk_0847AD0A");
extern s16 sin7508[] asm("gUnk_080B9704");
extern s16 off7508[][2] asm("gUnk_084EBEBC");
extern struct Tbl7508 tbl7508[] asm("gUnk_08479140");
extern u32 e7508Mask asm("gUnk_030056FC");
extern u16 atan7508(s16, s16) asm("ArcTan2");
extern u8 *cfg7508(s32) asm("sub_08007290");
extern void coords7508(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern u16 dmgE7508(void *, void *) asm("sub_0801EF14");
extern u16 dmgP7508(void *, void *) asm("sub_0801ED8C");
extern void draw7508(s32, s32, u16, u16, u8, void *, u32, u32) asm("sub_08007870");
extern void init7508(void *, u32, s32, s32, s32) asm("sub_08065158");
extern void miss7508(s32, s32) asm("sub_08022504");
extern u32 rand7508(void) asm("sub_080008C8");
extern s32 roll7508(s32, s32) asm("sub_080223A4");
extern void send7508(void *) asm("sub_080660EC");

void sub_08077508(u32 who, u32 arg)
{
    struct Spr7508 spr;
    s16 dx, dy;
    struct Pkt7508 pkt;
    u16 tgt;
    u16 bit;
    u16 pal;
    s32 x;
    s32 y;
    s32 n;
    u16 a;
    s32 hit;
    u16 dir;
    u32 local;
    u8 *cfg;
    struct Ene7508 *e;
    struct Ene7508 *te;
    struct Ply7508 *tp;
    s32 ang;
    s32 t;
    u16 j;
    u8 c;
    s32 sx, sy;
    u32 shade;
    u16 v;
    u32 r;
    s32 spd;

    local = (u16)sub_080020F4();
    e = &e7508Base[who];
    if (e->f226 != 3) {
        init7508(&spr, tbl7508[e->f2D8 + 10].anim, 0, -1, 0);
        spr.f1C = sub_08019D7C(e->f2D8, e->f2DA);
        if (tbl7508[e->f2D8 + 10].anim == 0x500C0)
            pal = 0x10;
        else
            pal = 8;
    } else {
        init7508(&spr, 0x5001E, 0, -1, 0);
        spr.f20 = who;
        pal = 0x40;
    }
    n = 3;
    bit = arg & 0xF;
    arg >>= 16;
    if (arg > 3) {
        te = &e7508Base[arg - 4];
        tgt = arg;
    } else {
        tp = &p7508[arg];
        tgt = arg;
    }
    x = e->x;
    y = e->y;
    if (tgt <= 3) {
        u16 *s = tp->pos;
        dx = (u32)(((s[0] >> 4) << 8) - x) >> 8;
        dy = (u32)(((u32)(s[1] << 20) >> 12) - y) >> 8;
    } else {
        dx = (u32)(te->x - x) >> 8;
        dy = (u32)(te->y - y) >> 8;
    }
    ang = (u16)atan7508(dx, dy) >> 8;
    {
        s16 t2 = ang;
        if (t2 > 0x80)
            ang = (u16)(t2 - 0x100);
    }
    a = ang;
    {
        s16 sa = a;
        if (sa < 0)
            a = sa + 0x100;
    }
    {
        s16 sa = a;
        if (sa > 0x100)
            a = sa - 0x100;
    }
    ang = (u16)(((s16)a >> 4) - dirA7508[e->dir]);
    {
        s16 sd = ang;
        if (sd > 8)
            ang = (u16)(sd - 16);
    }
    t = (s16)ang;
    if (t < 0)
        t = -t;
    if (t > 3)
        a = dirB7508[e->dir];
    cfg = cfg7508(e->f22C | 0xB0000);
    dir = e->dir;
    while (e->wait < e->threshold) {
        if (sub_08056E90() != 0 || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
            f7508[who + 4] &= ~(1 << bit);
            return;
        }
        sub_080003F0();
    }
    n = n * 8 + 10;
    if (sub_0800CD34() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0)
        sub_0805865C(0x17);
    while (n-- != 0) {
        hit = 0;
        spd = 3;
        if (tgt <= 3) {
            for (j = 0; j < sub_08002164(); j++) {
                if (sub_0800CDF8() != 0)
                    break;
                {
                    u16 *s = p7508[j].pos;
                    dx = (u32)(((s[0] >> 4) << 8) - x) >> 8;
                    dy = (u32)(((u32)(s[1] << 20) >> 12) - y) >> 8;
                }
                if ((dx < 0 ? -dx : dx) > 7 || (dy < 0 ? -dy : dy) > 7)
                    continue;
                if (local != j)
                    continue;
                tp = &p7508[j];
                if ((u32)(((u8 *)tp->pos)[0] << 28) >> 28 == 0xE || tp->team == 0)
                    continue;
                if ((tp->flags & 2) || sub_0800CDF8() != 0 || tp->state == 10 || tp->state == 11
                    || e->f50 == tp->hist[e->id] || tp->state == 12 || sub_0800CCCC() != 0 || sub_0800D11C() != 0)
                    continue;
                if (roll7508(e->f206, tp->f3A) != 0) {
                    r = rand7508() % 100;
                    if (tp->f6E == 0 || r >= tp->f6E) {
                        v = dmgP7508(e, tp);
                        if (v & 0x8000) {
                            sub_0805865C(0x27);
                            v &= 0x7FFF;
                        } else {
                            sub_0805865C(0x1A);
                            {
                                u16 k = tp->fC;
                                if (k == 8)
                                    sub_0805865C(0x4B);
                                else
                                    sub_0805865C(k + 0x45);
                            }
                        }
                        tp->f88 += v;
                        tp->hist[e->id] = e->f50;
                        tp->state = 10;
                        tp->f110 = 0;
                        hit = 1;
                    } else {
                        miss7508(tp->x, tp->y);
                        v = dmgP7508(e, tp);
                        if (v & 0x8000)
                            v &= 0x7FFF;
                        tp->f8A += (v >> 2) ? (v >> 2) : 1;
                        tp->hist[e->id] = e->f50;
                        tp->f110 = 0;
                        sub_0805865C(0x164);
                    }
                } else {
                    tp->hist[e->id] = e->f50;
                    if (sub_0800CD34() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0) {
                        sub_0805865C(0x55);
                        hit = 1;
                    }
                }
            }
        } else {
            for (j = 0; j <= 4; j++) {
                if (!(e7508Mask & (1 << j)))
                    continue;
                if (sub_0800CDF8() != 0)
                    break;
                if (j == who)
                    continue;
                te = &e7508Base[j];
                if (!te->active)
                    continue;
                dx = (u32)(te->x - x) >> 8;
                dy = (u32)(te->y - y) >> 8;
                if ((dx < 0 ? -dx : dx) > 7 || (dy < 0 ? -dy : dy) > 7)
                    continue;
                if (sub_0800CDF8() != 0 || te->state == 10 || te->state == 11 || e->f50 == te->f54
                    || sub_0800CCCC() != 0 || sub_0800D11C() != 0)
                    continue;
                if (roll7508(e->f206, te->f206) != 0) {
                    if (sub_08002204() != 0) {
                        te->state = 10;
                        pkt.dmg = dmgE7508(e, te);
                        pkt.val = cfg[0xBC];
                        pkt.b2 = 0;
                        pkt.b3 = 0;
                        te->f54 = e->f50;
                        pkt.kind = te->f2;
                        te->f4A += pkt.dmg;
                        te->f4C = pkt.dmg;
                        te->f62 = pkt.val;
                        te->f7C = pkt.b2;
                        te->f7E = pkt.b3;
                        te->f58 = e->id;
                        te->f5A |= 1 << local;
                        send7508(&pkt);
                    }
                    hit = 1;
                } else {
                    tp->hist[e->id] = e->f50;
                    if (sub_0800CD34() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0)
                        sub_0805865C(0x55);
                    hit = 1;
                }
            }
        }
        if (hit)
            break;
        c = sub_0800AE50(x, y, 0);
        if ((c & 0xF) && !(c & 0x10))
            break;
        x += sin7508[(s16)a + 0x40] * spd;
        y += sin7508[(s16)a] * spd;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            coords7508((s16)(sx = x >> 8), (s16)(sy = y >> 8), &dx, &dy, 0x30, 0);
            shade = sub_0800BC44(sx, sy, 0);
            draw7508(dx + off7508[(s16)dir][0], dy + off7508[(s16)dir][1], pal + dir, 0, shade, &spr.f1C, spr.f8, spr.f0);
        }
        sub_080003F0();
        if (sub_0800CB78() != 0 || sub_0800CD00() != 0)
            break;
    }
    f7508[who + 4] &= ~(1 << bit);
}
struct Task7D04 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMasks7D04[] asm("gUnk_030063E0");
extern u8 *gLists7D04[] asm("gUnk_030063B0");
extern void sub_08077508();
void sub_08077D04(u32 who, u32 b)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task7D04 *t;
    u8 **l;
    who += 4;
    i = 0;
    {
        vu32 *mb = gMasks7D04;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists7D04;
        l = &lb[who];
    }
    ((struct Task7D04 *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task7D04 *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08077508;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who - 4, b << 16 | i);
    gMasks7D04[who] |= 1 << i;
}
struct Spr7DAC { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct Ply7DAC { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[6]; s16 f3A; u8 pad3C[0x2C]; u8 team; u8 pad69[5]; u8 f6E; u8 pad6F[0x19]; u16 f88, f8A; s32 x, y; u8 pad94[0x50]; u32 hist[11]; u32 f110; u8 pad114[0x34]; u8 *sprite; };
struct Ene7DAC { u16 id; u8 f2; u8 pad3[5]; s16 dir; u8 padA[2]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x2E]; u16 f4A; u32 f4C; u32 f50; u32 f54; u16 f58, f5A; u8 pad5C[6]; u16 f62; u8 pad64[6]; u16 wait; u8 pad6C[0xE]; u16 f7A; u16 f7C, f7E; u8 pad80[0x15C]; u8 active; u8 pad1DD[0x29]; s16 f206; u8 pad208[0x23]; u8 threshold; u16 f22C; u8 pad22E[0xAA]; u16 f2D8, f2DA; u8 pad2DC[4]; };
struct Tbl7DAC { u8 pad0[0x2C]; u32 anim; u8 pad30[0x28]; };
struct Pkt7DAC { u8 kind:8; u8 val:8; u8 b2:8; s8 b3:8; u32 dmg:16; u32 rest:16; };
extern struct Ply7DAC p7DAC[] asm("gUnk_03003CE0");
extern struct Ene7DAC *e7DACBase asm("gUnk_030056F4");
extern u32 f7DAC[] asm("gUnk_030063E0");
extern u16 dir7DAC[] asm("gUnk_0847AD0A");
extern s16 sin7DAC[] asm("gUnk_080B9704");
extern s16 off7DAC[][2] asm("gUnk_084EBEBC");
extern struct Tbl7DAC tbl7DAC[] asm("gUnk_08479140");
extern u32 e7DACMask asm("gUnk_030056FC");
extern u16 atan7DAC(s16, s16) asm("ArcTan2");
extern s32 cdf8_7DAC(void) asm("sub_0800CDF8");
extern u8 *cfg7DAC(s32) asm("sub_08007290");
extern void coords7DAC(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 d11c_7DAC(void) asm("sub_0800D11C");
extern u16 dmgE7DAC(void *, void *) asm("sub_0801EF14");
extern u16 dmgP7DAC(void *, void *) asm("sub_0801ED8C");
extern void draw7DAC(s32, s32, u16, u16, u8, void *, u32, u32) asm("sub_08007870");
extern s32 effect7DAC(s32 *, u32 *, s32) asm("sub_0801FB14");
extern void init7DAC(void *, u32, s32, s32, s32) asm("sub_08065158");
extern void miss7DAC(s32, s32) asm("sub_08022504");
extern u32 rand7DAC(void) asm("sub_080008C8");
extern s32 roll7DAC(s32, s32) asm("sub_080223A4");
extern void send7DAC(void *) asm("sub_080660EC");

void sub_08077DAC(u32 who, u32 arg)
{
    struct Spr7DAC spr;
    s16 dx, dy;
    struct Pkt7DAC pkt;
    s32 pos[2];
    u32 size;
    u16 tgt;
    u16 bit;
    u16 pal;
    s32 x;
    s32 n;
    u16 a;
    s32 hit;
    u16 dir;
    u32 local;
    u8 *cfg;
    struct Ene7DAC *e;
    struct Ene7DAC *te;
    struct Ply7DAC *p;
    s32 ang;
    s32 ad;
    s32 y;
    u16 i;
    u8 c;
    s32 sx, sy;
    u32 shade;
    u16 v;
    u32 r;
    s32 spd;

    spd = 20;
    local = (u16)sub_080020F4();
    e = &e7DACBase[who];
    init7DAC(&spr, tbl7DAC[e->f2D8 + 10].anim, 0, -1, 0);
    spr.f1C = sub_08019D7C(e->f2D8, e->f2DA);
    if (tbl7DAC[e->f2D8 + 10].anim == 0x500C0)
        pal = 0x10;
    else
        pal = 8;
    n = 3;
    bit = arg & 0xF;
    arg >>= 16;
    if (arg > 3) {
        te = &e7DACBase[arg - 4];
        tgt = arg;
    } else {
        p = &p7DAC[arg];
        tgt = arg;
    }
    x = e->x;
    y = e->y;
    if (tgt <= 3) {
        u16 *s = (u16 *)p->sprite;
        dx = (u32)(((s[0] >> 4) << 8) - x) >> 8;
        dy = (u32)(((u32)(s[1] << 20) >> 12) - y) >> 8;
    } else {
        dx = (u32)(te->x - x) >> 8;
        dy = (u32)(te->y - y) >> 8;
    }
    ang = (u16)atan7DAC(dx, dy) >> 8;
    {
        s16 t2 = ang;
        if (t2 > 0x80)
            ang = (u16)(t2 - 0x100);
    }
    a = ang;
    {
        s16 sa = a;
        if (sa < 0)
            a = sa + 0x100;
    }
    {
        s16 sa = a;
        if (sa > 0x100)
            a = sa - 0x100;
    }
    ad = (u16)(((s16)a >> 4) - dir7DAC[e->dir]);
    {
        s16 sd = ad;
        if (sd > 8)
            ad = (u16)(sd - 16);
    }
    ad = (s16)ad;
    if (ad < 0)
        ad = -ad;
    if (ad > 3)
        a = dir7DAC[e->dir];
    cfg = cfg7DAC(e->f22C | 0xB0000);
    dir = e->dir;
    while (e->wait < e->threshold) {
        if (((e->f7A & 1) && sub_08056E90() != 0) || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
            f7DAC[who + 4] &= ~(1 << bit);
            return;
        }
        sub_080003F0();
    }
    n = n * 8 + 10;
    if (sub_0800CD34() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0)
        sub_0805865C(0x17);
    while (n-- != 0) {
    hit = 0;
    if (tgt <= 3) {
        p = &p7DAC[local];
        dx = (u32)(p->x - x) >> 8;
        dy = (u32)(p->y - y) >> 8;
        if ((dx < 0 ? -dx : dx) > 7 || (dy < 0 ? -dy : dy) > 7)
            goto check;
        if ((u32)(p->sprite[0] << 28) >> 28 == 0xE || p->team == 0)
            continue;
        if (!(p->flags & 2) && cdf8_7DAC() == 0 && p->state != 10 && p->state != 11
            && e->f50 != p->hist[e->id] && p->state != 12 && sub_0800CCCC() == 0 && d11c_7DAC() == 0) {
            if (roll7DAC(e->f206, p->f3A) != 0) {
                r = rand7DAC() % 100;
                if (p->f6E == 0 || r >= p->f6E) {
                    { u16 dm = dmgP7DAC(e, p) & 0x7FFF; p->f88 += dm; }
                    p->hist[e->id] = e->f50;
                    p->state = 10;
                    p->f110 = hit;
                } else {
                    miss7DAC(p->x, p->y);
                    v = dmgP7DAC(e, p);
                    if (v & 0x8000)
                        v &= 0x7FFF;
                    p->f8A += (v >> 2) ? (v >> 2) : 1;
                    p->hist[e->id] = e->f50;
                    p->f110 = 0;
                    sub_0805865C(0x164);
                }
                hit = 1;
            } else {
                p->hist[e->id] = e->f50;
                if (sub_0800CD34() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0)
                    sub_0805865C(0x55);
            }
        }
    } else {
        for (i = 0; i <= 4; i++) {
            if (!(e7DACMask & (1 << i)))
                continue;
            te = &e7DACBase[i];
            if (!te->active)
                continue;
            dx = (te->x >> 8) - x;
            dy = (te->y >> 8) - y;
            if ((dx < 0 ? -dx : dx) > 7 || (dy < 0 ? -dy : dy) > 7)
                continue;
            if ((u16)(te->state - 10) <= 1 || e->f50 == te->f54 || sub_0800CCCC() != 0 || d11c_7DAC() != 0)
                continue;
            if (roll7DAC(e->f206, te->f206) != 0) {
                te->state = 10;
                pkt.dmg = dmgE7DAC(e, te);
                pkt.val = cfg[0xBC];
                pkt.b2 = 0;
                pkt.b3 = 0;
                te->f54 = e->f50;
                pkt.kind = te->f2;
                te->f4A += pkt.dmg;
                te->f4C = pkt.dmg;
                te->f62 = pkt.val;
                te->f7C = pkt.b2;
                te->f7E = pkt.b3;
                te->f58 = e->id;
                te->f5A |= 1 << local;
                send7DAC(&pkt);
                hit = 1;
            } else {
                p->hist[e->id] = e->f50;
                if (sub_0800CD34() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0)
                    sub_0805865C(0x55);
                hit = 1;
            }
        }
    }
check:
    i = 0;
    if (hit)
        break;
    pos[0] = x;
    pos[1] = y;
    size = 0x80008;
    if (effect7DAC(pos, &size, 0) != 0)
        break;
    c = sub_0800AE50(x, y, 0);
    if ((c & 0xF) && !(c & 0x10))
        break;
    x += sin7DAC[(s16)a + 0x40] * spd / 10;
    y += sin7DAC[(s16)a] * spd / 10;
    if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
        coords7DAC((s16)(sx = x >> 8), (s16)(sy = y >> 8), &dx, &dy, 0x30, 0);
        shade = sub_0800BC44(sx, sy, 0);
        draw7DAC(dx + off7DAC[(s16)dir][0], dy + off7DAC[(s16)dir][1], pal + dir, 0, shade, &spr.f1C, spr.f8, spr.f0);
    }
    sub_080003F0();
    if (sub_0800CB78() != 0 || sub_0800CD00() != 0)
        break;
    if (((e->f7A & 1) && sub_08056E90() != 0) || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11)
        break;
    }
    f7DAC[who + 4] &= ~(1 << bit);
}
extern void sub_08077DAC();
void sub_0807854C(u32 who, u32 b)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task7D04 *t;
    u8 **l;
    who += 4;
    i = 0;
    {
        vu32 *mb = gMasks7D04;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists7D04;
        l = &lb[who];
    }
    ((struct Task7D04 *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task7D04 *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08077DAC;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who - 4, b << 16 | i);
    gMasks7D04[who] |= 1 << i;
}
struct Spr85F4 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct Pos85F4 { u16 h0; u16 h2; };
struct Ply85F4 { u8 pad0[0x30]; u32 flags; u8 pad34[0x34]; u8 team; u8 pad69[0x23]; s32 x, y; u8 pad94[0xB4]; struct Pos85F4 *pos; };
struct Ene85F4 { u16 id; u8 pad2[6]; s16 dir; u8 padA[2]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x4E]; u16 wait; u8 pad6C[0xE]; u16 f7A; u8 pad7C[0x160]; u8 active; u8 pad1DD[0x20]; u8 f1FD; u8 pad1FE[0x2D]; u8 threshold; u16 f22C; u8 pad22E[0xAA]; u16 f2D8, f2DA; u8 pad2DC[4]; };
struct Off85F4 { s16 x, y; };
extern struct Ply85F4 p85F4[] asm("gUnk_03003CE0");
extern struct Ene85F4 *e85F4Base asm("gUnk_030056F4");
extern u32 f85F4[] asm("gUnk_030063E0");
extern u16 dir85F4[] asm("gUnk_0847AD0A");
extern s16 sin85F4[] asm("gUnk_080B9704");
extern s16 off85F4[][2] asm("gUnk_084EBEBC");
extern u32 e85F4Mask asm("gUnk_030056FC");
extern u16 atan85F4(s16, s16) asm("ArcTan2");
extern void coords85F4(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 effect85F4(s32 *, u32 *, s32) asm("sub_0801FB14");
extern void hit85F4(u32, s32, s32, u32, s32) asm("sub_08079888");
extern void init85F4(void *, s32, s32, s32, s32) asm("sub_08065158");
extern void miss85F4(u32, u32, s32, s32, s32) asm("sub_0806818C");

void sub_080785F4(u32 who, u32 arg)
{
    struct Spr85F4 spr;
    s16 dx, dy;
    s32 pos[2];
    u32 size;
    u16 tgt;
    u16 bit;
    u32 pal;
    s32 n;
    u16 a;
    s16 hit;
    u16 dir;
    u32 local;
    u32 kind;
    struct Ene85F4 *e;
    struct Ene85F4 *te;
    struct Ply85F4 *tp;
    s32 t;
    s32 ang;
    s32 x, y;
    u16 i;
    u8 c;
    u8 c2;
    s32 sx, sy;
    s32 spd;

    local = (u16)sub_080020F4();
    e = &e85F4Base[who];
    init85F4(&spr, 0x500AF, 0, 0x80000000, 0);
    spr.f1C = sub_08019D7C(e->f2D8, e->f2DA);
    if (e->f1FD == 0x14) {
        kind = 0;
        pal = 0xE;
    } else {
        kind = 1;
        pal = 0xF;
    }
    n = 3;
    bit = arg & 0xF;
    arg >>= 16;
    if (arg > 3) {
        te = &e85F4Base[arg - 4];
        tgt = arg;
    } else {
        tp = &p85F4[arg];
        tgt = arg;
    }
    x = e->x;
    y = e->y;
    if (tgt <= 3) {
        struct Pos85F4 *s = tp->pos;
        dx = (u32)(((s->h0 >> 4) << 8) - x) >> 8;
        dy = (u32)(((u32)(s->h2 << 20) >> 12) - y) >> 8;
    } else {
        dx = (u32)(te->x - x) >> 8;
        dy = (u32)(te->y - y) >> 8;
    }
    ang = (u16)atan85F4(dx, dy) >> 8;
    {
        s16 t2 = ang;
        if (t2 > 0x80)
            ang = (u16)(t2 - 0x100);
    }
    a = ang;
    {
        s16 sa = a;
        if (sa < 0)
            a = sa + 0x100;
    }
    {
        s16 sa = a;
        if (sa > 0x100)
            a = sa - 0x100;
    }
    t = (u16)(((s16)a >> 4) - dir85F4[e->dir]);
    {
        s16 sd = t;
        if (sd > 8)
            t = (u16)(sd - 16);
    }
    t = (s16)t;
    if (t < 0)
        t = -t;
    if (t > 3)
        a = dir85F4[e->dir];
    sub_08007290(e->f22C | 0xB0000);
    dir = e->dir;
    while (e->wait < e->threshold) {
        if (((e->f7A & 1) && sub_08056E90() != 0) || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
            f85F4[who + 4] &= ~(1 << bit);
            return;
        }
        sub_080003F0();
    }
    n = n * 8 + 10;
    if (sub_0800CD34() == 0 && sub_0800CCCC() == 0 && sub_0800CD8C() == 0)
        sub_0805865C(0x17);
    while (n-- != 0) {
        hit = 0;
        spd = 20;
        if (tgt <= 3) {
            tp = &p85F4[local];
            dx = (u32)(tp->x - x) >> 8;
            dy = (u32)(tp->y - y) >> 8;
            if ((dx < 0 ? -dx : dx) <= 7 && (dy < 0 ? -dy : dy) <= 7) {
                if ((u32)(((u8 *)tp->pos)[0] << 28) >> 28 == 0xE || tp->team == 0)
                    continue;
                if (!(tp->flags & 2)) {
                    hit85F4(e->id + 4, x, y, kind + 4, hit);
                    hit = 1;
                    break;
                }
            }
        } else {
            for (i = 0; i <= 4; i++) {
                if (!(e85F4Mask & (1 << i)))
                    continue;
                te = &e85F4Base[i];
                if (!te->active)
                    continue;
                dx = (te->x >> 8) - x;
                dy = (te->y >> 8) - y;
                if ((dx < 0 ? -dx : dx) <= 7 && (dy < 0 ? -dy : dy) <= 7) {
                    hit85F4(e->id + 4, x, y, kind + 4, 0);
                    hit = 1;
                    break;
                }
            }
        }
        if (hit)
            goto clear;
        pos[0] = x;
        pos[1] = y;
        size = 0x80008;
        if (effect85F4(pos, &size, 0) != 0)
            break;
        c = sub_0800AE50(x, y, 0);
        if ((c & 0xF) && !(c & 0x10))
            break;
        x += sin85F4[(s16)a + 0x40] * spd / 10;
        y += sin85F4[(s16)a] * spd / 10;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            coords85F4((s16)(sx = x >> 8), (s16)(sy = y >> 8), &dx, &dy, 0x30, 0);
            c2 = sub_0800BC44(sx, sy, 0);
            sub_080659BC(&spr, dx + off85F4[(s16)dir][0], dy + off85F4[(s16)dir][1], 0, pal, c2);
        }
        sub_080003F0();
        if (sub_0800CB78() != 0 || sub_0800CD00() != 0)
            break;
        if (((e->f7A & 1) && sub_08056E90() != 0) || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
            hit = 1;
            break;
        }
    }
done:
    if (hit == 0)
        miss85F4(e->id + 4, kind + 2, x, y, hit);
clear:
    f85F4[who + 4] &= ~(1 << bit);
}
extern void sub_080785F4();
void sub_08078B24(u32 who, u32 b)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task7D04 *t;
    u8 **l;
    who += 4;
    i = 0;
    {
        vu32 *mb = gMasks7D04;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists7D04;
        l = &lb[who];
    }
    ((struct Task7D04 *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task7D04 *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_080785F4;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who - 4, b << 16 | i);
    gMasks7D04[who] |= 1 << i;
}
#ifdef NONMATCHING
struct AttrBCC { u16 unk0, unk2, unk4; };
struct PlayerBCC { u16 unk0; u8 pad02[0x1e]; u16 state; u8 pad22[0xe]; u32 unk30; u8 pad34[0x34]; u8 unk68; u8 pad69[0x1f]; u16 unk88; u8 pad8a[2]; s32 unk8C; u8 pad90[0x32]; u16 unkC2,unkC4; u8 padc6[0x32]; s32 unkF8[15]; u16 unk134; u8 pad136[0x12]; struct AttrBCC *unk148; };
struct SpriteBCC { u32 f0,f4,f8,fC; u8 pad10[12]; u8 unk1C,unk1D; u8 pad1e[22]; };
struct EnemyBCC { u16 unk0; u8 unk2; u8 pad03[9]; u16 unkC; u8 pad0e[0x3c]; u16 unk4A; u32 unk4C; u8 pad50[4]; s32 unk54; u16 unk58,unk5A,unk5C; u8 pad5e[0x17e]; u8 unk1DC; u8 pad1dd[0x51]; u8 unk22E,unk22F; };
extern struct PlayerBCC playersBCC[] asm("gUnk_03003CE0");
extern struct EnemyBCC *enemiesBCC asm("gUnk_030056F4");
extern u32 masksBCC[] asm("gUnk_030063E0");
void sub_08078BCC(s32 arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    struct PlayerBCC *sp8[4];
    struct SpriteBCC sp18;
    u16 frames[2], ticks[2];
    s16 xs[2], ys[2];
    s32 sp4C;
    s32 sp50;
    u16 sp5C;
    s16 sp5E;
    s32 posBCC[2];
    s32 sp68;
    s32 sp6C;
    struct { u32 lo, hi; } sp70;
    s32 sp78;
    s32 sp7C;
    struct PlayerBCC *sp80;
    u32 sp84;
    u32 sp88;
    s32 sp8C;
    s32 sp90;
    s32 sp94;
    s32 sp98;
    u32 sp9C;                                       /* compiler-managed */
    u32 spA0;
    s32 spA4;
    u32 spA8;
    u32 spAC;
    s32 spB0;
    s32 spB4;
    s32 spB8;
    s32 spBC;
    u32 spC0;
    s32 spC4;
    void *spC8;
    s32 spCC;
    s32 spD0;
    s16 *spD4;
    s16 *spD8;
    u16 *spDC;
    u16 *spE0;
    s32 *spE4;
    u8 *spE8;
    s16 *spEC;
    s16 *var_r6_3;
    s16 temp_r3_2;
    s16 temp_r3_3;
    s32 *temp_r2_7;
    u16 *var_r0;
    u16 *var_r1;
    s16 *var_r1_2;
    s16 *var_r2;
    u16 *var_r4_3;
    u16 *var_r5;
    s16 *var_r6;
    s16 *var_r6_2;
    s16 *var_r7;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_3;
    s32 var_r4_2;
    s32 var_r9_5;
    s32 var_sl;
    struct PlayerBCC *temp_r3;
    struct PlayerBCC *temp_r4;
    struct PlayerBCC *temp_r6;
    u16 *var_r4_4;
    u16 *var_r5_2;
    u16 temp_r2_5;
    u16 temp_r2_6;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r0_9;
    u32 temp_r1_7;
    u32 temp_r2_4;
    u32 temp_r5;
    u32 var_r4;
    u32 var_r9;
    u32 var_r9_2;
    u32 var_r9_3;
    u32 var_r9_4;
    u32 var_r9_6;
    u32 var_r9_7;
    u8 temp_r0_7;
    u8 temp_r0_8;
    struct PlayerBCC **var_r3;
    struct PlayerBCC **var_r3_2;
    struct AttrBCC *temp_r1;
    struct PlayerBCC *temp_r1_2;
    void *temp_r1_5;
    void *temp_r1_6;
    struct PlayerBCC *temp_r2;
    struct AttrBCC *temp_r2_2;
    struct EnemyBCC *temp_r5_2;

    sp78 = arg0;
    sp7C = arg1;
    spB8 = sub_080020F4();
    sp0 = 0;
    sub_08065158(&sp18, 0x500A9, 8, -1, 0);
    sp18.unk1C = 7;
    sp18.unk1D = 8;
    var_r9 = 0;
    spDC = frames;
    spE0 = ticks;
    spE4 = posBCC;
    var_r1 = spE0;
    var_r0 = spDC;
    do {
        *var_r1 = 0;
        *var_r0 = 0;
        var_r1 += 1;
        var_r0 += 1;
        var_r9 += 1;
    } while (var_r9 <= 1U);
    sp80 = &playersBCC[sp78];
    temp_r5 = sub_08002164();
    spA0 = 0;
    sp84 = 0;
    sp88 = 0;
    posBCC[0] = 0;
    spE4[1] = 0;
    sp94 = 0;
    sp98 = 0;
    sp68 = 0x100010;
    spBC = (s32) (u16) (sp78 * 0x3E8);
    spC0 = 0;
    spB0 = 0;
    spC4 = 1;
    var_r4 = 0;
    var_r9_2 = 0;
    spCC = sp78 * 4;
    if (temp_r5 > 0U) {
        var_r3 = sp8;
        do {
            temp_r2 = &playersBCC[var_r9_2];
            if (sp80->unk68 == temp_r2->unk68) {
                *var_r3 = temp_r2;
                temp_r1 = temp_r2->unk148;
                temp_r0 = (u32) (temp_r1->unk0 << 0x1C) >> 0x1C;
                if (((s32) temp_r0 <= 1) && ((s32) temp_r0 >= 0) && ((s32) (*((u8 *)temp_r1 + 5) << 0x1D) < 0)) {
                    var_r4 += 1;
                    sp84 += ((u16) temp_r1->unk0 >> 4) << 8;
                    sp88 += (u32) (temp_r1->unk2 << 0x14) >> 0xC;
                    spB0 += (u32) (temp_r1->unk4 << 0xD) >> 0x18;
                }
                var_r3 += 1;
                spA0 += 1;
            }
            var_r9_2 += 1;
        } while (var_r9_2 < temp_r5);
    }
    sp84 = sp84 / var_r4;
    sp88 = sp88 / var_r4;
    posBCC[0] = sp84;
    posBCC[1] = sp88;
    spA4 = 0;
    spA8 = 0;
    spB4 = 0;
    sub_0805865C(0x28);
    spE8 = &sp80->unk68;
loop_12:
    sp84 = 0;
    sp88 = 0;
    var_r4_2 = 0;
    var_r9_3 = 0;
    if ((spA0 > 0U) && !(((u32) (sp8[0]->unk148->unk4 << 0x1A) >> 0x1A) & 0x20)) {
        var_r3_2 = sp8;
loop_15:
        temp_r1_2 = *var_r3_2;
        temp_r2_2 = temp_r1_2->unk148;
        temp_r0_2 = (u32) (temp_r2_2->unk0 << 0x1C) >> 0x1C;
        if (((s32) temp_r0_2 >= 0) && ((s32) temp_r0_2 <= 1)) {
            if (!(temp_r1_2->unk30 & 0x2000) && ((s32) (*((u8 *)temp_r2_2 + 5) << 0x1D) < 0)) {
                var_r4_2 += 1;
                sp84 += ((u16) temp_r2_2->unk0 >> 4) << 8;
                sp88 += (u32) (temp_r2_2->unk2 << 0x14) >> 0xC;
            }
        } else {
            var_r4_2 = 0;
        }
        var_r3_2 += 1;
        var_r9_3 += 1;
        if ((var_r9_3 < spA0) && !(((u32) ((*var_r3_2)->unk148->unk4 << 0x1A) >> 0x1A) & 0x20)) {
            goto loop_15;
        }
    }
    if (var_r4_2 != spA0) {

    } else if (sub_0800CCCC() != 0) {

    } else {
        temp_r0_3 = sub_08056E90();
        if (temp_r0_3 != 0) {

        } else {
            sp84 = sp84 / spA0;
            sp88 = sp88 / spA0;
            sp8C = sp84 - posBCC[0];
            sp90 = sp88 - spE4[1];
            sp9C = (u32) (ArcTan2((s16) sp8C, (s16) sp90) << 0x10) >> 0x18;
            spD4 = xs;
            spD8 = ys;
            {
                if ((s32) (Sqrt((sp8C * sp8C) + (sp90 * sp90)) << 0x10) > 0x02FF0000) {
                    spA4 += 0x10;
                } else {
                    temp_r0_4 = spA4 - 0x10;
                    spA4 = temp_r0_4;
                    if (temp_r0_4 < 0) {
                        spA4 = 0;
                    }
                }
                if (spA4 > 0x800) {
                    spA4 = 0x800;
                }
                sp8C = (s32) (spA4 * gUnk_080B9704[sp9C + 0x40]) >> 8;
                sp90 = (s32) (spA4 * gUnk_080B9704[sp9C]) >> 8;
                sp94 += (s32) (sp8C - sp94) / 32;
                sp98 += (s32) (sp90 - sp98) / 32;
                posBCC[0] += sp94;
                spE4[1] = (s32) (spE4[1] + sp98);
                temp_r2_3 = (s32) sp9C >> 4;
                sp9C = temp_r2_3;
                if ((u32) temp_r2_3 <= 1U) {
                    if (spC4 != 0) {
                        sub_0805865C(0x17D);
                        spC4 = 0;
                    }
                } else {
                    spC4 = 1;
                }
                temp_r0_5 = sub_0800CC98();
                spD0 = spC0 + 1;
                if ((temp_r0_5 == 0) && (sub_0800CCCC() == 0) && (sub_0800CD8C() == 0)) {
                    var_r9_4 = 0;
                    spC8 = &sp18;
                    var_r7 = spD8;
                    var_r6 = spD4;
                    var_r5 = spE0;
                    var_r4_3 = spDC;
                    do {
                        sp0 = 1;
                        sub_08065370(spC8, 0U, (s32) var_r4_3, (s32) var_r5, sp0);
                        sp0 = 0x30;
                        sp4 = 0;
                        sub_0800BC08(*var_r6, *var_r7, &sp5C, &sp5E, sp0, sp4);
                        sp0 = (s32) *var_r4_3;
                        sub_08065230(spC8, (s32) (s16) sp5C, (s32) sp5E, 0U, sp0);
                        var_r7 += 1;
                        var_r6 += 1;
                        var_r5 += 1;
                        var_r4_3 += 1;
                        var_r9_4 += 1;
                    } while (var_r9_4 <= 1U);
                    if (!(gUnk_03002344 & 1)) {
                        sub_08000AF0(0x17U, (void *)sp18.fC, 2U);
                    }
                }
                *spD4 = (s16) ((s32) posBCC[0] >> 8);
                *spD8 = (u16) ((s32) spE4[1] >> 8);
                if (spA8 != 0) {
                    var_r9_5 = 1;
                    var_r6_2 = spD8;
                    var_r1_2 = spD4;
                    do {
                        ((u16 *)var_r1_2)[1] = *(u16 *)var_r1_2;
                        ((u16 *)var_r6_2)[1] = *(u16 *)var_r6_2;
                        /* one iteration */
                        /* one iteration */
                        var_r9_5 -= 1;
                    } while (var_r9_5 != 0);
                } else {
                    *spDC = (u16) spA8;
                    var_r9_6 = 1;
                    var_r2 = spD4;
                    var_r6_3 = spDC + 1;
                    var_r5_2 = spD8 + 1;
                    var_r4_4 = var_r2 + 1;
                    do {
                        *var_r4_4 = *var_r2;
                        *var_r5_2 = *spD8;
                        spEC = var_r2;
                        *var_r6_3 = sub_080008C8() & 3;
                        var_r6_3 += 1;
                        var_r5_2 += 1;
                        var_r4_4 += 1;
                        var_r9_6 += 1;
                    } while (var_r9_6 <= 1U);
                    spA8 = 1;
                }
                temp_r3 = &playersBCC[spB8];
                if (temp_r3->unk68 == *spE8) {
                    temp_r2_4 = spAC + 1;
                    spAC = temp_r2_4;
                    if (temp_r2_4 > 0x3CU) {
                        temp_r0_6 = spB4 + 1;
                        spB4 = temp_r0_6;
                        spAC = 0;
                        temp_r3->unkC2 = (u16) (temp_r3->unkC2 - (temp_r0_6 * 0xA));
                        if ((s16) temp_r3->unkC2 & 0x8000) {
                            temp_r3->unkC2 = (u16) spAC;
                            temp_r3->unk134 = (u16) spAC;
                        }
                    }
                }
                if (sp78 != spB8) {
                    temp_r6 = &playersBCC[spB8];
                    sp6C = 0x100010;
                    temp_r0_7 = temp_r6->unk68;
                    if ((temp_r0_7 != *spE8) && (temp_r0_7 != 0) && (sub_08021FE0(spE4, &temp_r6->unk8C, &sp68, &sp6C) != 0)) {
                        spA8 = 0;
                        if ((temp_r6->state != 0xB) && (temp_r6->unkF8[sp80->unk0] != spBC)) {
                            temp_r3_2 = temp_r6->unkC4;
                            temp_r2_5 = temp_r6->unk88;
                            if (!((temp_r3_2 - temp_r2_5) & 0x8000)) {
                                temp_r1_3 = temp_r3_2 ^ temp_r2_5;
                                spA8 = (u32) ((0 - temp_r1_3) | temp_r1_3) >> 0x1F;
                            }
                        }
                        if (spA8 != 0) {
                            temp_r6->unk88 = (u16) (temp_r6->unk88 + ((u32) ((spB4 + (spB0 + 0xA)) * ((sub_080008C8() % 50U) + 0x64)) / 100U));
                            temp_r6->unkF8[sp80->unk0] = spBC;
                            temp_r6->state = 0xA;
                            sub_0805865C(0x17F);
                        }
                    }
                    if (sp78 != spB8) {

                    } else {
                        goto block_75;
                    }
                } else {
block_75:
                    sub_0801FB14(spE4, &sp68, (u32) ((spA0 * 0xA) + spB0) / 5U);
                    var_r9_7 = 0;
                    var_sl = 0;
loop_76:
                    if (!(gUnk_030056FC & (1 << var_r9_7))) {

                    } else {
                        temp_r5_2 = (struct EnemyBCC *)((u8 *)enemiesBCC + var_sl);
                        temp_r0_8 = temp_r5_2->unk1DC;
                        if ((temp_r0_8 != *spE8) && (temp_r0_8 != 0)) {
                            ((u16 *)&sp6C)[0] = (s16) temp_r5_2->unk22E;
                            ((u16 *)&sp6C)[1] = (s16) temp_r5_2->unk22F;
                            if (sub_08021FE0(spE4, (u8 *)temp_r5_2 + 0x14, &sp68, &sp6C) != 0) {
                                spA8 = 0;
                                if ((temp_r5_2->unkC != 0xB) && (temp_r5_2->unk54 != spBC)) {
                                    temp_r3_3 = temp_r5_2->unk5C;
                                    temp_r2_6 = *(u16 *)((u8 *)temp_r5_2 + 0x4A);
                                    if (!((temp_r3_3 - temp_r2_6) & 0x8000)) {
                                        temp_r1_4 = temp_r3_3 ^ temp_r2_6;
                                        spA8 = (u32) ((0 - temp_r1_4) | temp_r1_4) >> 0x1F;
                                    }
                                }
                                if (spA8 != 0) {
                                    temp_r5_2->unkC = 0xAU;
                                    sp70.hi = (s32) ((sp70.hi & 0xFFFF0000) | (u16) ((u32) ((spB4 + (spB0 + 0xA)) * ((sub_080008C8() % 50U) + 0x64)) / 100U));
                                    temp_r0_9 = ((sp70.lo & 0xFFFFFF00) | temp_r5_2->unk2) & 0xFFFF00FF & 0xFF00FFFF & 0xFFFFFF;
                                    sp70.lo = temp_r0_9;
                                    temp_r5_2->unk54 = spBC;
                                    temp_r1_5 = (u8 *)temp_r5_2 + 0x4A;
                                    temp_r5_2->unk4A = (u16) ((u16) sp70.hi + temp_r5_2->unk4A);
                                    temp_r5_2->unk4C = (s32) (u16) sp70.hi;
                                    temp_r1_6 = (u8 *)temp_r1_5 + 0x18;
                                    *(u16 *)((u8 *)temp_r1_5 + 0x18) = (s16) (u8) (temp_r0_9 >> 8);
                                    *(u16 *)((u8 *)temp_r1_6 + 0x1A) = (s16) (u8) (temp_r0_9 >> 0x10);
                                    *(u16 *)((u8 *)temp_r1_6 + 0x1C) = (s16) ((s32) temp_r0_9 >> 0x18);
                                    temp_r5_2->unk58 = (u16) temp_r5_2->unk0;
                                    temp_r5_2->unk5A = (u16) ((1 << sp78) | temp_r5_2->unk5A);
                                    sub_080660EC(&sp70);
                                    sub_0805865C(0x17F);
                                }
                            }
                        }
                    }
                    var_sl += 0x2E0;
                    var_r9_7 += 1;
                    if (var_r9_7 <= 4U) {
                        goto loop_76;
                    }
                }
                temp_r1_7 = spC0;
                spC0 = (u32) (u16) spD0;
                if (temp_r1_7 > 0x3CU) {
                    spC0 = 0;
                    spBC = (s32) (u16) (spBC + 1);
                }
                sub_080003F0();
                if ((sub_0800CB78() == 0) && (sub_0800CD00() == 0) && (sub_0800CD8C() == 0)) {
                    goto loop_12;
                }
            }
        }
    }
    temp_r4 = &playersBCC[spB8];
    if (temp_r4->unk68 == *spE8) {
        sub_0800CFDC();
        temp_r4->unk134 = 0;
    }
    sub_0805867C(0x17F);
    temp_r2_7 = (s32 *)&masksBCC[sp78];
    *temp_r2_7 &= ~(1 << (u8)sp7C);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08078BCC);
#endif
struct Task93BC { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMasks93BC[] asm("gUnk_030063E0");
extern u8 *gLists93BC[] asm("gUnk_030063B0");
extern void sub_08078BCC();
void sub_080793BC(u32 who)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task93BC *t;
    u8 **l;

    i = 0;
    {
        vu32 *mb = gMasks93BC;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists93BC;
        l = &lb[who];
    }
    ((struct Task93BC *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task93BC *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08078BCC;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who, i);
    gMasks93BC[who] |= 1 << i;
}
struct Info458 { u32 who, i, a, c, d, b; };
extern u32 gMasks458[] asm("gUnk_030063E0");
struct Spr458 { u32 f0, f4, f8, fC; u8 p10[12]; u8 f1C, f1D; u8 p1E[22]; };
struct Box458 { u16 w, h; };
struct Pl458 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 active; u8 p69[5]; u8 b6E; u8 p6F[0x1D]; s32 pos[2]; u8 p94[0x74]; u32 lastHit; u8 p10C[0x40]; };
struct En458 { u8 p0[0x14]; s32 pos[2]; u8 p1C[0x38]; u32 lastHit; u8 p58[0x184]; u8 active; u8 p1DD[0x51]; u8 bw, bh; u8 p230[0xB0]; };
extern struct Pl458 gPl458[] asm("gUnk_03003CE0");
extern struct En458 *gEn458 asm("gUnk_030056F4");
extern void sub_08065158_458(void *, u32, u32, u32, u32) asm("sub_08065158");
extern void sub_08065370_458(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void sub_0800BC08_458(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void sub_08007870_458(s32, s32, u32, u32, u8, void *, u32, u32) asm("sub_08007870");
extern void sub_0801FB14_458(s32 *, s32 *, u32) asm("sub_0801FB14");
extern s32 sub_08021FE0_458(s32 *, s32 *, s32 *, struct Box458 *) asm("sub_08021FE0");
extern void sub_0801F1C4_458(s32 *, void *, u32) asm("sub_0801F1C4");
extern void sub_08029CEC_458(s32, s32, s32) asm("sub_08029CEC");
extern void sub_0801FC34_458(s32 *, s32 *, u32) asm("sub_0801FC34");
extern void sub_08022028_458(s32 *, void *, u32) asm("sub_08022028");
extern void sub_08029A7C_458(s32, u32, s32) asm("sub_08029A7C");
extern u8 *sub_08007290_458(u32) asm("sub_08007290");
void sub_08079458(struct Info458 *info)
{
    struct Spr458 spr;
    s16 dx, dy;
    u16 frame, phase;
    struct { s32 x, y; } pos;
    s32 size;
    struct Box458 box;
    u16 dmg;
    u32 k, who, i, big, local;
    u8 *obj;
    s32 timer;

    u32 shade;
    u16 j;
    u32 r;
    struct En458 *e;
    struct Pl458 *p;
    u8 *pp;

    local = sub_080020F4();
    pos.x = info->a;
    { s32 v = info->b; pp = (u8 *)&pos; *(s32 *)(pp + 4) = v; }
    who = info->who;
    i = info->i;
    phase = 0;
    frame = 0;
    sub_08065158_458(&spr, 0x500AF, 0, 0x80000000, 0);
    switch (info->c) {
    case 0:
        timer = 0xB4;
        size = 0x00200030;
        obj = sub_08007290_458(0x0010000D);
        dmg = sub_080008C8() % 20;
        dmg += 50;
        big = 0;
        break;
    case 2:
        timer = 0x78;
        size = 0x00200030;
        obj = sub_08007290_458(0x0010000D);
        dmg = sub_080008C8() % 20;
        dmg += 50;
        big = 0;
        break;
    case 4:
        timer = 0;
        size = 0x00200030;
        obj = sub_08007290_458(0x0010000D);
        dmg = sub_080008C8() % 20;
        dmg += 50;
        big = 0;
        break;
    case 1:
        timer = 0xB4;
        size = 0x00300040;
        obj = sub_08007290_458(0x0010000E);
        dmg = sub_080008C8() % 40;
        dmg += 100;
        big = 1;
        break;
    case 3:
        timer = 0x78;
        size = 0x00300040;
        obj = sub_08007290_458(0x0010000E);
        dmg = sub_080008C8() % 40;
        dmg += 100;
        big = 1;
        break;
    case 5:
        timer = 0;
        size = 0x00300040;
        obj = sub_08007290_458(0x0010000E);
        dmg = sub_080008C8() % 40;
        dmg += 100;
        big = 1;
        break;
    }
    k = obj[0xA8];
    asm(""::"r"(pp));
    asm(""::"r"(pp));
    asm(""::"r"(pp));
    asm(""::"r"(pp));
    asm(""::"r"(pp));
    asm(""::"r"(obj));
    if (timer != 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x17C);
    while (timer-- != 0) {
        sub_0800BC08_458((pos.x << 8) >> 16, (pos.y << 8) >> 16, &dx, &dy, 0x30, 0);
        shade = (u8)sub_0800BC44(pos.x >> 8, pos.y >> 8, 0);
        asm(""::"r"(shade));
        asm(""::"r"(shade));
        asm(""::"r"(&dy));
        sub_08065370_458(&spr, k, &frame, &phase, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            u32 q = (u32)timer / 60;
            sub_0805FAC0(dx, dy - 8, q + 1, q ? 2 : 1);
            sub_08007870_458(dx, dy, 0, k, shade, &spr.f1C, spr.f8, spr.f0);
        }
        sub_080003F0();
    }
    sub_08022078(pos.x, pos.y);
    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0) {
        if (big == 0)
            sub_0805865C(0x2F);
        else
            sub_0805865C(0x30);
    }
    if (local == who || (sub_08002204() != 0 && who > 3)) {
        sub_0801FC34_458((s32 *)&pos, &size, dmg);
        for (j = 0; j <= 4; j++) {
            if (*(u32 *)&gUnk_030056FC & (1 << j)) {
                e = &gEn458[j];
                if (e->active != 0) {
                    box.w = e->bw;
                    box.h = e->bh;
                    if (sub_08021FE0_458((s32 *)&pos, e->pos, &size, &box))
                        sub_0801F1C4_458((s32 *)&pos, e, dmg);
                }
            }
        }
    }
    p = &gPl458[sub_080020F4()];
    if (p->state != 14 && p->active != 0 && p->state != 11 && !(p->flags & 0x2000)) {
        if (sub_0800CDF8() == 0 && sub_0800D1B0() == 0 && sub_0800CCCC() == 0) {
            box.h = 0x10;
            box.w = 0x10;
            if (sub_08021FE0_458((s32 *)&pos, p->pos, &size, &box)) {
                r = sub_080008C8() % 100;
                if (p->b6E == 0 || r >= p->b6E) {
                    sub_08029A7C_458(0, dmg, 1);
                } else {
                    sub_08022504(p->pos[0], p->pos[1]);
                    dmg = dmg / 4 ? dmg / 4 : 1;
                    sub_08029A7C_458(0, dmg, 1);
                    sub_0805865C(0x164);
                }
            }
        } else if (sub_0800CDC0() != 0 && gUnk_030056FC != 0) {
            box.h = 0x10;
            box.w = 0x10;
            if (sub_08021FE0_458((s32 *)&pos, p->pos, &size, &box))
                sub_08022028_458((s32 *)&pos, p, dmg);
        }
    }
    gMasks458[who] &= ~(1 << i);
}
struct Task9888 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Info9888 { u32 who, i, a, c, d, b; };
extern u32 gMasks9888[] asm("gUnk_030063E0");
extern u8 *gLists9888[] asm("gUnk_030063B0");
extern u8 *gInfo9888[] asm("gUnk_03006380");
extern void sub_08000274_2(void *, void *) asm("sub_08000274");
extern void sub_08079458();
void sub_08079888(u32 who, u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task9888 *t;
    struct Info9888 *e;
    {
        vu32 *mb = gMasks9888;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists9888[who];
        t = (struct Task9888 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo9888[who];
        e = (struct Info9888 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->d = d;
    e->c = c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08079458;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks9888[who] |= 1 << i;
}
struct Spr948 { u32 f0, f4, f8, fC; u8 p10[12]; u8 f1C, f1D; u8 p1E[22]; };
struct Box948 { u16 w, h; };
struct Pl948 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 active; u8 p69[0x23]; s32 pos[2]; u8 p94[0x74]; u32 lastHit; u8 p10C[0x40]; };
struct En948 { u8 p0[0x14]; s32 pos[2]; u8 p1C[0x38]; u32 lastHit; u8 p58[0x184]; u8 active; u8 p1DD[0x51]; u8 bw, bh; u8 p230[0xB0]; };
extern struct Pl948 gPl948[] asm("gUnk_03003CE0");
extern struct En948 *gEn948 asm("gUnk_030056F4");
extern void sub_08065158_948(void *, u32, u32, u32, u32) asm("sub_08065158");
extern void sub_08065370_948(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void sub_0800BC08_948(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void sub_08007870_948(s32, s32, u32, u16, u8, void *, u32, u32) asm("sub_08007870");
extern void sub_0801FB14_948(s32 *, s32 *, u32) asm("sub_0801FB14");
extern s32 sub_08021FE0_948(s32 *, s32 *, s32 *, struct Box948 *) asm("sub_08021FE0");
extern void sub_0801F1C4_948(s32 *, void *, u32) asm("sub_0801F1C4");
extern void sub_08029CEC_948(s32, s32, s32) asm("sub_08029CEC");
void sub_08079948(struct Info9888 *info)
{
    struct Spr948 spr;
    s16 dx, dy;
    u16 frame, phase;
    s32 pos[2];
    s32 size;
    struct Box948 box;
    u32 who, i, counter, local;
    s32 timer;
    u32 shade;
    u16 j;
    struct En948 *e;
    struct Pl948 *p;
    local = sub_080020F4();
    pos[0] = info->a;
    pos[1] = info->b;
    who = info->who;
    i = info->i;
    phase = 0;
    frame = 0;
    size = 0x00180020;
    counter = 0x88800000;
    sub_08065158_948(&spr, 0x500AF, 0, 0x80000000, 0);
    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x35);
    timer = 4;
    do {
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0)
            sub_08007870_948(dx, dy, 8, frame, shade, &spr.f1C, spr.f8, spr.f0);
        sub_080003F0();
    } while (timer-- != 0);
    sub_08065158_948(&spr, 0x5008C, 0, 0x80000000, 0);
    sub_08000AF0(0x17, (void *)spr.fC, 2);
    spr.f1C = 7;
    spr.f1D = 8;
    timer = 0xB4;
    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x17A);
    while (timer-- != 0) {
        if (local == who || (sub_08002204() != 0 && who > 3)) {
            sub_0801FB14_948(pos, &size, 10);
            for (j = 0; j <= 4; j++) {
                if (*(u32 *)&gUnk_030056FC & (1 << j)) {
                    e = &gEn948[j];
                    if (e->active != 0 && e->lastHit != counter) {
                        box.w = e->bw;
                        box.h = e->bh;
                        if (sub_08021FE0_948(pos, e->pos, &size, &box)) {
                            sub_0801F1C4_948(pos, e, 10);
                            e->lastHit = counter;
                        }
                    }
                }
            }
        }
        p = &gPl948[sub_080020F4()];
        if (p->state != 14 && p->active != 0 && p->lastHit != counter && p->state != 11 && !(p->flags & 0x2000)) {
            if (sub_0800CCCC() == 0 && sub_0800CDF8() == 0 && sub_0800D1B0() == 0) {
                box.h = 0x10;
                box.w = 0x10;
                if (sub_08021FE0_948(pos, p->pos, &size, &box)) {
                    sub_08029CEC_948(1, 10, 1);
                    p->lastHit = counter;
                }
            } else if (sub_0800CDC0() != 0 && gUnk_030056FC != 0) {
                box.h = 0x10;
                box.w = 0x10;
                if (sub_08021FE0_948(pos, p->pos, &size, &box)) {
                    sub_08029CEC_948(1, 10, 1);
                    p->lastHit = counter;
                }
            }
        }
        if (!(gUnk_03002344 & 0x1F))
            counter++;
        sub_0800BC08_948((pos[0] << 8) >> 16, (pos[1] << 8) >> 16, &dx, &dy, 0x30, 0);
        shade = (u8)sub_0800BC44(pos[0] >> 8, pos[1] >> 8, 0);
        sub_08065370_948(&spr, 8, &frame, &phase, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0)
            sub_08007870_948(dx, dy, 8, frame, shade, &spr.f1C, spr.f8, spr.f0);
        sub_080003F0();
    }
    gMasks9888[who] &= ~(1 << i);
}
extern void sub_08079948();
void sub_08079CC4(u32 who, u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task9888 *t;
    struct Info9888 *e;
    {
        vu32 *mb = gMasks9888;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists9888[who];
        t = (struct Task9888 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo9888[who];
        e = (struct Info9888 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->d = d;
    e->c = c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08079948;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks9888[who] |= 1 << i;
}
struct SprD84 { s32 f0, f4, f8, fC, f10, f14, f18; u8 b1C[0x18]; };
extern void sub_0800BC08_6(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern u32 sub_08065370_5r(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void sub_08065158_5(void *, u32, u32, s32, s32) asm("sub_08065158");
extern void sub_08068A00(s32, s32, void *);
void sub_08079D84(struct Info9888 *info, u32 packed)
{
    struct SprD84 s;
    u16 a3C;
    u16 a3E;
    s16 x40;
    s16 y42;
    s32 pos[2];
    u16 done;
    s32 r;
    s32 x;
    s32 y;
    u8 k;
    sub_080020F4();
    sub_08065158_5(&s, 0x5008C, 1, -1, 0);
    sub_08000AF0(0x17, (void *)s.fC, 2);
    s.b1C[0] = 7;
    s.b1C[1] = 8;
    pos[0] = (packed & 0xFFFF) << 8;
    pos[1] = (packed >> 16) << 8;
    a3C = 0;
    a3E = 0;
    done = 0;
    sub_08068A00(pos[0], pos[1], info);
    while (sub_0800CB78() == 0 && done == 0) {
        done = sub_08065370_5r(&s, 0x15, &a3C, &a3E, done);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (r = sub_0800CCCC()) == 0) {
            sub_0800BC08_6((s16)(x = pos[0] >> 8), (s16)(y = pos[1] >> 8), &x40, &y42, 16, r);
            k = sub_0800BC44(x, y, 0);
            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0() != 0)
                k = 0;
            if (gUnk_03002344 & 1)
                sub_080659BC(&s, x40, y42 + 1, 0x15, a3C, k);
        }
        sub_080003F0();
    }
    gMasks9888[info->who] &= ~(1 << info->i);
}
extern void sub_08000274_9ed0(void *, void *, u32) asm("sub_08000274");
void sub_08079ED0(struct Info9888 *src, u32 x, u32 y)
{
    u32 i = 0;
    u32 mem;
    u32 w;
    u8 **lists;
    struct Task9888 *t;
    while (gMasks9888[*(vu32 *)&src->who] & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = (u32)sub_08001494(0x400);
    lists = gLists9888;
    w = src->who;
    ((struct Task9888 *)(lists[w] + i * 0x28))->f20 = mem;
    if (mem == 0)
        return;
    *(struct Info9888 *)(gInfo9888[w] + i * 0x18) = *src;
    ((struct Info9888 *)(gInfo9888[src->who] + i * 0x18))->i = i;
    ((struct Task9888 *)(gLists9888[src->who] + i * 0x28))->f8 = 0x34;
    w = src->who * 4;
    t = (struct Task9888 *)(*(u8 **)((u8 *)gLists9888 + w) + i * 0x28);
    t->fC = (u32)sub_08079D84;
    t->f10 = t->f20 + 0x3FC;
    t->f24 = 0;
    sub_08000274_9ed0(t, *(u8 **)((u8 *)gInfo9888 + w) + i * 0x18, (x >> 8) | ((y >> 8) << 16));
    gMasks9888[src->who] |= 1 << i;
}
s32 sub_08079FD0(s32 arg0) {
    s16 temp_r1;
    s32 var_r4;
    u32 var_r5;
    void *temp_r6;

    temp_r6 = (&((struct Sz332 *)&gUnk_03003CE0)[sub_080020F4()]);
    var_r4 = 7;
    var_r5 = 0x80000;
loop_1:
    temp_r1 = sub_0806898C(arg0, var_r4) - 1;
    if (((s32) temp_r1 >= 0) && ((s32) M2C_FIELD(temp_r6, s16 *, 0xC2) >= (s32) temp_r1)) {
        return (s32) (var_r5 >> 0x10);
    }
    var_r5 += 0xFFFF0000;
    var_r4 -= 1;
    if (var_r4 <= 0) {
        return 0;
    }
    goto loop_1;
}
u16 sub_0807A028(u16 arg0) {
    return sub_08073EE8(arg0, 0x7FFFFFFF);
}
extern s32 sub_08074398_5(u16, u16, s32, s32, s32) asm("sub_08074398");
u16 sub_0807A040(u16 a, u16 b, s32 c, s32 d)
{
    return sub_08074398_5(a, b, c, d, 0x7FFFFFFF);
}
extern u8 gA7A064_6410[] asm("gUnk_03006410");
extern u8 gA7A064_6430[] asm("gUnk_03006430");
extern u32 gA7A064_63E0[] asm("gUnk_030063E0");
extern u32 gW7A064_641C asm("gUnk_0300641C");
extern u32 gA7A064_63B0[] asm("gUnk_030063B0");
extern u32 gA7A064_6380[] asm("gUnk_03006380");
extern u32 gW7A064_6370 asm("gUnk_03006370");
extern u32 gW7A064_6420 asm("gUnk_03006420");
void sub_0807A064(u32 k)
{

    u32 sz;
    gA7A064_6410[k] = 0;
    gA7A064_6430[k] = 0;
    gA7A064_63E0[k] = 0;
    gW7A064_641C = 0;
    gA7A064_63B0[k] = sub_08001494(0x280);
    sz = 0x180;
    gA7A064_6380[k] = sub_08001494(sz);
    if (k == 0) {
        gW7A064_6370 = sub_08001494(0x500);
        gW7A064_6420 = sub_08001494(sz);
    }
}
void sub_0807A0E0(void *arg0)
{
    u8 *p = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    u16 d = sub_0806898C(M2C_FIELD(arg0, s32 *, 0xC), M2C_FIELD(arg0, s32 *, 0x14)) - 1;
    u16 *f = (u16 *)(p + 0xC2);
    u32 n = *f - d;
    *f = n;
    if ((s16)n < 0)
        *f = 0;
}
void sub_0807A120(void) {

}
static inline u8 Sum_A124(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
u32 sub_0807A124(void)
{
    u32 sz = 0x1000;
    u8 *p = sub_08001494(sz);
    u8 *q = sub_08001494(sz);
    u32 r;
    memcpy(p, (void *)gUnk_030034E0, 0xCA4);
    memcpy(q, gUnk_03004210, 0x51C);
    p[0xCA4] = Sum_A124(p, 0xCA4);
    q[0x51C] = Sum_A124(q, 0x51C);
    sub_08001B14(*(u16 *)(gUnk_030034E0 + 0xE), p);
    r = (u16)sub_08001B14(*(u16 *)(gUnk_030034E0 + 0xE) + 8, q);
    if (r == 0) {
        r = sub_08001B54(*(u16 *)(gUnk_030034E0 + 0xE), p);
        r |= sub_08001B54(*(u16 *)(gUnk_030034E0 + 0xE) + 8, q);
        if (r == 0) {
            sub_08001538((s32)p);
            sub_08001538((s32)q);
            return 0;
        }
    }
    sub_08001538((s32)p);
    sub_08001538((s32)q);
    return r;
}
extern void sub_08001B04_4(u32, u32, void *, u32) asm("sub_08001B04");
static inline u8 Sum_A20C(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
s32 sub_0807A20C(u8 a)
{
    u32 sz = 0x1000;
    u8 *p = sub_08001494(sz);
    u8 *q = sub_08001494(sz);
    sub_08001B04_4(a, 0, p, sz);
    sub_08001B04_4(a + 8, 0, q, sz);
    if (p[0xCA4] == Sum_A20C(p, 0xCA4) && q[0x51C] == Sum_A20C(q, 0x51C)) {
        memcpy((void *)gUnk_030034E0, p, 0xCA4);
        memcpy(gUnk_03004210, q, 0x51C);
        sub_08001538((s32)p);
        sub_08001538((s32)q);
        return 1;
    }
    sub_08001538((s32)p);
    sub_08001538((s32)q);
    return 0;
}
s32 sub_0807A2E0(u8 a)
{
    u8 *p = sub_08001494(0xCA8);
    u8 *q = sub_08001494(0x520);
    u8 *t;
    u32 i;
    for (t = p, i = 0; i <= 0xCA7; i++)
        *t++ = 0;
    p[0xCA4] = 0;
    while ((u16)sub_08001B14(a, p))
        ;
    for (t = q, i = 0; i <= 0x51F; i++)
        *t++ = 0;
    q[0x51C] = 0;
    while ((u16)sub_08001B14(a + 8, q))
        ;
    sub_08001538((s32)p);
    sub_08001538((s32)q);
    return 1;
}
struct Save378 { u32 w0; u8 p4[6]; u16 hA, hC; u8 pE[0xE]; u32 w1C, w20; u8 p24[8]; u32 w2C; };
struct Sum378 { u8 valid, b1, b2, b3, b4, b5, b6, b7; u32 w8; u16 hC, hE; u8 name[12]; u32 a1C[8]; u32 a3C[12]; };
struct Blk20_378 { u32 w[8]; };
struct Blk30_378 { u32 w[12]; };
extern struct Save378 *gSave378 asm("gUnk_030034E0");
struct Opt378 { u32 w0, w4; u8 p8[0x14]; u16 h1C, h1E; u8 p20[0xC]; u32 w2C; };
extern struct Opt378 *gSave4210_378 asm("gUnk_03004210");
struct Pl378 { u8 p0[0x58]; struct Blk30_378 b58; u8 p88[0xC4]; };
extern struct Pl378 gPl378[] asm("gUnk_03003CE0");
extern s32 sub_0807A20C(u8);
extern void sub_08013850();
extern void CpuSet_378(void *, void *, u32) asm("CpuSet");
u32 sub_0807A378(struct Sum378 *e)
{
    u32 ret;
    u32 i, j;
    u32 zero;
    u32 t;
    sub_08013850();
    ret = 0;
    i = 0;
    zero = 0;
    do {
        if (sub_0807A20C(i) == 0) {
            vu16 z = 0;
            CpuSet_378((void *)&z, e, 0x01000036);
            i++;
        } else {
            struct Save378 *s;
            struct Opt378 *o;
            e->valid = 1;
            s = gSave378;
            e->b1 = s->hA;
            e->b2 = s->hC;
            e->b3 = s->w20;
            e->w8 = s->w1C;
            o = gSave4210_378;
            t = (o->w4 >> 12) & 1;
            e->b5 = t;
            e->b6 = zero;
            e->b7 = zero;
            if (t)
                ret = 1;
            switch (o->w0) {
            case 3:
            case 4:
                e->hE = o->h1C;
                e->hC = o->h1E;
                if (o->w2C & 0x200)
                    e->b7 = 1;
                break;
            default:
                e->hE = zero;
                e->hC = 0xFFFF;
                break;
            }
            sub_0801E024(&gPl378[sub_080020F4()]);
            sub_0801DD9C();
            *(struct Blk20_378 *)e->a1C = *(struct Blk20_378 *)((u8 *)gSave378 + 0x10);
            *(struct Blk30_378 *)e->a3C = gPl378[sub_080020F4()].b58;
            j = 0;
            i++;
            do {
                e->name[j] = ((u8 *)gSave378)[j];
                j++;
            } while (j <= 9);
        }
        e++;
    } while (i <= 7);
    return ret;
}
struct Row4B4 { u8 p[6]; u16 h; u8 q[24]; };
struct Opt4B4 { u8 pad[0x1E0]; struct Row4B4 rows[16]; };
extern struct Opt4B4 *gOpt4B4 asm("gUnk_03004210");
u32 sub_0807A4B4(struct Sum378 *entries, u8 index)
{
    struct Save378 *save;
    u8 *flag;
    u32 i;
    sub_08013850(entries);
    sub_0800CB30();
    if (sub_0807A20C(index) == 0) {
        save = gSave378;
        flag = &entries->b4;
        save->hA = entries[index].b1;
        save->hC = entries[index].b2;
        *(u16 *)((u8 *)save + 0xE) = index;
        *flag = 0;
        for (i = 0; i <= 9; i++)
            ((u8 *)gSave378)[i] = entries[index].name[i];
        sub_0801ACB8();
    } else {
        if (entries[index].b7 != 0)
            sub_0800CE08();
        if (entries[index].b6 != 0) {
            for (i = 0; i <= 15; i++)
                gOpt4B4->rows[i].h = 0;
        }
    }
    return 1;
}
u8 sub_0807A544(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
static inline u8 Sum_A56C(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
u32 sub_0807A56C(u8 sector)
{
    u32 sz = 0xCA8;
    u8 *data = (u8 *)sub_08001494(sz);
    sub_08001B04_4(sector, 0, data, sz);
    if (data[0xCA4] != Sum_A56C(data, 0xCA4)) {
        sub_08001538(data);
        return 0;
    }
    sub_08001538(data);
    return 1;
}
