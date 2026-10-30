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
#ifdef NONMATCHING
extern u8 players076EE8[] asm("gUnk_03003CE0");
extern u8 *enemies076EE8 asm("gUnk_030056F4");
extern u16 directions076EE8[] asm("gUnk_0849E730");
#define F_076EE8(p,t,o) (*(t*)((u8*)(p)+(o)))
extern u32 active076EE8 asm("gUnk_030056FC");
u16 sub_08073EE8(u16 width,s32 range)
{
 u8 *player,*candidate,*sprite;u32 best,nearest,index,count;u16 distance,angle;s32 dx,dy,difference,offset;
 player=players076EE8+sub_080020F4()*0x14C;best=0xFFFF;nearest=-1;
 if(sub_0800CF80()){
  count=sub_08002164();index=0;
  while(index<count){
   candidate=players076EE8+index*0x14C;
   if(player[0x68]!=candidate[0x68] && candidate[0x68]!=0){
    sprite=F_076EE8(candidate,u8*,0x148);
    dx=(F_076EE8(sprite,u16,0)>>4)-(F_076EE8(player,s32,0x8C)>>8);
    dy=(F_076EE8(sprite,u16,2)&0xFFF)-(F_076EE8(player,s32,0x90)>>8);
angle=((u32)ArcTan2(dx,dy)+0x400)>>12;
    sprite=*(u8**)(player+0x148);angle-=directions076EE8[sprite[3]>>4];
    if((s16)angle>8)angle=(s16)angle-16;
    if((s16)angle<-8)angle=(s16)angle+16;
    difference=(s16)angle;if(difference<0)difference=-difference;
    if(difference<=width){distance=Sqrt(dx*dx+dy*dy);if(distance<(u32)range && distance<best){nearest=index;best=distance;}}
   }
   index++;
  }
  if(nearest!=-1U)return F_076EE8(players076EE8+nearest*0x14C,u16,0);
 }
 best=0xFFFF;nearest=-1;index=0;offset=0;
 do{
  if(active076EE8 & (1<<index)){
   candidate=enemies076EE8+offset;
   if(F_076EE8(candidate,u16,0xC)!=11 && F_076EE8(candidate,s16,0x5C)!=0 && candidate[0x1DC]!=0){
    dx=(F_076EE8(candidate,s32,0x14)-F_076EE8(player,s32,0x8C))>>8;
    dy=(F_076EE8(candidate,s32,0x18)-F_076EE8(player,s32,0x90))>>8;
angle=((u32)ArcTan2(dx,dy)+0x400)>>12;
    sprite=*(u8**)(player+0x148);angle-=directions076EE8[sprite[3]>>4];
    if((s16)angle>8)angle=(s16)angle-16;
    if((s16)angle<-8)angle=(s16)angle+16;
    difference=(s16)angle;if(difference<0)difference=-difference;
    if(difference<=width){distance=Sqrt(dx*dx+dy*dy);if(distance<(u32)range && distance<best){nearest=index;best=distance;}}
   }
  }
  offset+=0x2E0;index++;
 }while(index<=4);
 if(nearest!=-1U)return F_076EE8(enemies076EE8+nearest*0x2E0,u16,2);
 return 0xFF;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08073EE8);
#endif
#ifdef NONMATCHING
extern u8 players07614C[] asm("gUnk_03003CE0");
extern u8 *enemies07614C asm("gUnk_030056F4");
extern u32 active07614C asm("gUnk_030056FC");
extern u16 directions07614C[] asm("gUnk_0849E730");
#define F_07614C(p,t,o) (*(t*)((u8*)(p)+(o)))
s32 sub_0807414C(u8 *player,u16 width,u32 range)
{
 u8 *candidate,*sprite,*ownSprite;u32 best,nearest,index,count;u16 distance,angle;s32 dx,dy,difference,offset;
 best=0xFFFF;nearest=-1;
 if(sub_0800CF80()){
  count=sub_08002164();index=0;
  while(index<count){
   candidate=players07614C+index*0x14C;
   if(player[0x68]!=candidate[0x68] && candidate[0x68]!=0){
    sprite=F_07614C(candidate,u8*,0x148);ownSprite=F_07614C(player,u8*,0x148);
    dx=(F_07614C(sprite,u16,0)>>4)-(F_07614C(ownSprite,u16,0)>>4);
    dy=(F_07614C(sprite,u16,2)&0xFFF)-(F_07614C(ownSprite,u16,2)&0xFFF);
angle=((u32)ArcTan2(dx,dy)+0x400)>>12;
    sprite=*(u8**)(player+0x148);angle-=directions07614C[sprite[3]>>4];
    if((s16)angle>8)angle=(s16)angle-16;
    if((s16)angle<-8)angle=(s16)angle+16;
    difference=(s16)angle;if(difference<0)difference=-difference;
    if(difference<=width){distance=Sqrt(dx*dx+dy*dy);if(distance<range && distance<best){nearest=index;best=distance;}}
   }
   index++;
  }
  if(nearest!=-1U)return F_07614C(players07614C+nearest*0x14C,u16,0);
 }
 best=0xFFFF;nearest=-1;index=0;offset=0;
 do{
  if(active07614C & (1<<index)){
   candidate=enemies07614C+offset;
   if(F_07614C(candidate,u16,0xC)!=11 && F_07614C(candidate,s16,0x5C)!=0 && candidate[0x1DC]!=0){
    ownSprite=F_07614C(player,u8*,0x148);dx=(F_07614C(candidate,s32,0x14)>>8)-(F_07614C(ownSprite,u16,0)>>4);
    dy=(F_07614C(candidate,s32,0x18)>>8)-(F_07614C(ownSprite,u16,2)&0xFFF);
angle=((u32)ArcTan2(dx,dy)+0x400)>>12;
    sprite=*(u8**)(player+0x148);angle-=directions07614C[sprite[3]>>4];
    if((s16)angle>8)angle=(s16)angle-16;
    if((s16)angle<-8)angle=(s16)angle+16;
    difference=(s16)angle;if(difference<0)difference=-difference;
    if(difference<=width){distance=Sqrt(dx*dx+dy*dy);if(distance<range && distance<best){nearest=index;best=distance;}}
   }
  }
  offset+=0x2E0;index++;
 }while(index<=4);
 if(nearest!=-1U)return F_07614C(enemies07614C+nearest*0x2E0,u16,2);
 return 0xFF;
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807414C);
#endif
#ifdef NONMATCHING
struct Position076398 {u16 x,y;};
struct Player076398 {u16 id;u8 pad2[0x66];u8 team;u8 pad69[0xDF];struct Position076398 *position;};
extern struct Player076398 players076398[] asm("gUnk_03003CE0");
extern u8 *enemies076398 asm("gUnk_030056F4");
#define F_076398(p,t,o) (*(t*)((u8*)(p)+(o)))
extern s32 nearest076398(u16,u16,s32,s32,s32) asm("sub_08074398");
extern u32 active076398 asm("gUnk_030056FC");
s32 nearest076398(u16 self,u16 excluded,s32 x,s32 y,s32 range)
{
 u32 best,index,nearest,count;u8 *team,*selfTeam,*enemy;struct Position076398 **position,*point;s32 dx,dy,offset;u16 distance;
 if(sub_0800CF80()){
  best=0xFFFF;nearest=-1;count=sub_08002164();index=0;
  if(index<count){
   selfTeam=(u8*)(self*0x14C+(u32)players076398)+0x68;
   position=(struct Position076398**)((u8*)players076398+0x148);team=(u8*)players076398+0x68;
   do{
    if(self!=index && *selfTeam!=*team && *team!=0){
     point=*position;dx=(point->x>>4)-(x>>8);dy=(point->y&0xFFF)-(y>>8);
     distance=Sqrt(dx*dx+dy*dy);
     if(range>distance && best>distance){best=distance;nearest=index;}
    }
    position=(struct Position076398**)((u8*)position+0x14C);team+=0x14C;index++;
   }while(index<count);
  }
  if(nearest!=-1U)return players076398[nearest].id;
 }
 best=0xFFFF;nearest=-1;index=0;offset=0;
 do{
  if(active076398 & (1<<index)){
   enemy=enemies076398+offset;
   if(F_076398(enemy,u16,2)!=excluded && F_076398(enemy,u16,0xC)!=11 && F_076398(enemy,s16,0x5C)!=0 && enemy[0x1DC]!=0){
    dx=(F_076398(enemy,s32,0x14)-x)>>8;dy=(F_076398(enemy,s32,0x18)-y)>>8;
    distance=Sqrt(dx*dx+dy*dy);
    if(range>distance && best>distance){best=distance;nearest=index;}
   }
  }
  offset+=0x2E0;index++;
 }while(index<=4);
 if(nearest!=-1U)return F_076398(enemies076398+nearest*0x2E0,u16,2);
 return 0xFF;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074398);
#endif
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074DE8);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075088);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075520);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075778);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080761A4);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08076BA0);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077508);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077DAC);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080785F4);
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
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08078BCC);
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
#ifdef NONMATCHING
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
    
    local = sub_080020F4();
    pos.x = info->a;
    pos.y = info->b;
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
    if (timer != 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x17C);
    while (timer-- != 0) {
        sub_0800BC08_458((pos.x << 8) >> 16, (pos.y << 8) >> 16, &dx, &dy, 0x30, 0);
        shade = (u8)sub_0800BC44(pos.x >> 8, pos.y >> 8, 0);
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
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079458);
#endif
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
#ifdef NONMATCHING
u32 sub_0807A4B4(struct Sum378 *entries, u8 index)
{
    struct Sum378 *entry;
    struct Save378 *save;
    u32 i;
    sub_08013850(entries);
    sub_0800CB30();
    if (sub_0807A20C(index) == 0) {
        save = gSave378;
        entry = &entries[index];
        save->hA = entry->b1;
        save->hC = entry->b2;
        *(u16 *)((u8 *)save + 0xE) = index;
        *(u8 *)((u8 *)entries + 4) = 0;
        for (i = 0; i <= 9; i++)
            ((u8 *)gSave378)[i] = entry->name[i];
        sub_0801ACB8();
    } else {
        entry = &entries[index];
        if (entry->b7 != 0)
            sub_0800CE08();
        if (entry->b6 != 0) {
            for (i = 0; i <= 15; i++)
                *(u16 *)((u8 *)gUnk_03004210 + i * 32 + 0x1E6) = 0;
        }
    }
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A4B4);
#endif
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
