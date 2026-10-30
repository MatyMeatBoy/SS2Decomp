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
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809FB6C);
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
    s32 timer,animDone,contact,started;
    u16 elapsed;
    u16 animation,other,frame,phase;
    s16 sx,sy,dx,dy;
    u8 shade;
    s32 i,damage;
    struct Actor105 *actor;
    struct Obj105 *object;
    init105(&spr,0x5000A,variant105,-1,1);
    spr.payload[0]=variant105;
    kind=(u8)kind;
    switch (kind) {
    case 0: animation=0;pos[0]=0x2000;targetX=0x8000;break;
    case 1: animation=1;pos[0]=0x2000;targetX=0x2000;break;
    case 2: animation=2;pos[0]=0xE000;targetX=0xE000;break;
    case 3: animation=3;pos[0]=0xE000;targetX=0x8000;break;
    default: animation=0;pos[0]=0x2000;targetX=0x8000;break;
    }
    other=animation+10;pos[1]=0x7600;
    animDone=0;frame=0;phase=0;elapsed=0;started=0;contact=0;timer=90;
    do {
        move105(pos,0);
        if (!sub_0800CD8C()) animDone=(u16)step105(&spr,animation,&frame,&phase,0);
        if (!sub_0800CCCC() && !sub_0800CD34() && !sub_0800CC98()) {
            sub_08000AF0(variant105+16,spr.palette+(actor105->paletteOffset<<5),1);
            screen105((pos[0]<<8)>>16,(pos[1]<<8)>>16,&sx,&sy,0,0);
            object=draw105(sx,0x9F,animation,frame,2,spr.payload,spr.data,spr.base);object->y=sy;
            if (frame) {
                shade=sub_0800BC44(pos[0]>>8,pos[1]>>8,0);
                object=draw105(sx,0x9F,other,frame-1,shade,spr.payload,spr.data,spr.base);object->y=sy;
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
                damage=damage105(actor,&players105[sub_080020F4()]);
                players105[i].health+=damage;
                i=sub_080020F4();actor=actor105;
                players105[i].seen[actor->index]=actor->serial;actor->serial++;
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
#ifdef NONMATCHING
struct ActorT107A230C { u16 id; u8 p2[6]; s16 facing; u16 pA, state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; s32 serial; };
extern struct ActorT107A230C *gActorT107A230C asm("gUnk_03000348");
struct AnimT107A230C { u32 f0, f4, f8, fC; u8 p10[12]; u8 attr[24]; };
extern void t107CCall08065158(void *, u32, u16, s32, s32) asm("sub_08065158");
extern void t107CCall0800BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 t107CCall08007870(s16, s16, s32, u16, s32, void *, u32, u32) asm("sub_08007870");
extern void t107CCall08029CEC(s32, s32, s32) asm("sub_08029CEC");
/* ABI view: target coordinates use r2/r3; the output pointer follows on stack. */
struct TargetXYT107 { s32 x, y; };
extern void t107VelocityPair(s32,s32,struct TargetXYT107,s32 *) asm("sub_08097978");
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
    u16 *tilePtr;
    s16 screenX, screenY;
    s32 velocity[2];
    u8 *aux;
    struct PlayerT107C *target;
    struct TargetXYT107 targetPoint;
    u32 count;
    s32 active, timer, hit;
    s32 x, y;
    s16 dx, dy;
    u16 i, rawDx, facing;
    s32 radius;
    u8 tick, previous;
    {
        u16 *earlyTile;
        sub_0805865C(0xC2);
        i = 0;
        earlyTile = &tile;
        while ((s32)i < delay * 20) { sub_080003F0(); i++; }
        aux = (u8 *)gActorT107A230C + 0x204;
        t107CCall08065158(&anim, 0x5000C, gUnk_0300034C, -1, 1);
        *((u8 *)gActorT107A230C + 0x1FC) = (*((u8 *)gActorT107A230C + 0x1FC) & 15) | (sub_08096594(0) << 4);
        target = &t107PlayersC[*((u8 *)gActorT107A230C + 0x1FC) >> 4];
        sub_08097A38(0);
        extra = 0; *earlyTile = 0; count = 0; tick = 0; hit = 0;
        x = gActorT107A230C->x; y = gActorT107A230C->y;
        facing = gUnk_085186DC[gActorT107A230C->facing];
        x += gUnk_080B9704[facing + 0x40] << 5;
        y += gUnk_080B9704[facing] << 5;
        timer = 120; active = 1;
        tilePtr = earlyTile;
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
                    t107VelocityPair(x, y, targetPoint, velocity);
                    count = (u8)(count + 1);
                }
            } else {
                previous = tick++;
                if (previous > 180) active = 0;
            }
            x += velocity[0] + (velocity[0] >> 1);
            y += velocity[1] + (velocity[1] >> 1);
            rawDx = (x >> 8) - (t107PlayersC[sub_080020F4()].x >> 8);
            dx = rawDx;
            {u32 playerIndex=sub_080020F4();register s32 screenYPlus asm("r2")=(y>>8)+12;asm("" : "+r"(screenYPlus));dy=screenYPlus-(t107PlayersC[playerIndex].y>>8);}
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
                sub_08065370(&anim, 8, (s32)tilePtr, (s32)&extra, 1);
                sub_08000AF0(gUnk_0300034C + 0x10, anim.fC + (*(u16 *)(aux + 0xD6) << 5), 1);
                anim.attr[0] = gUnk_0300034C;
                t107CCall0800BC08((x << 8) >> 16, (y << 8) >> 16, &screenX, &screenY, zero, zero);
                t107CCall08007870(screenX, screenY, 8, *tilePtr, zero, anim.attr, anim.f8, anim.f0);
            }
        }
        sub_080003F0();
    } while (active != 0);
    sub_0805867C(0xC2);
    *(u32 *)((u8 *)sub_0800048C() + 8) = active;
    sub_080003F0();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A230C);
#endif
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


#ifdef NONMATCHING
struct T107BActor { u16 f0; u16 f2; u8 p4[8]; u16 fC; u8 pE[6]; s32 f14; s32 f18; u8 p1C[48]; s32 f4C; u8 p50[10]; u16 f5A; s16 f5C; s16 f5E; u8 p60[8]; u16 f68; u16 f6A; u16 f6C; s16 f6E; u8 p70[356]; s16 f1D4; s16 f1D6; u8 p1D8[36]; u8 f1FC; u8 f1FD; u8 f1FE; u8 p1FF[1]; u8 f200; u8 p201[1]; u16 f202; u8 p204[42]; s8 f22E; s8 f22F; u8 p230[168]; u16 f2D8; u16 f2DA; };
extern struct T107BActor *t107B364 asm("gUnk_03000364");
extern struct T107BActor *t107B368 asm("gUnk_03000368");
extern struct T107BActor *t107BSummons[] asm("gUnk_03000370");
extern u8 t107BPatterns[] asm("gUnk_08518768");
extern u8 t107BActive[] asm("gUnk_030003EC");
extern u8 t107BAttr[] asm("gUnk_0300039C");
struct T107BAnim { u32 f0,f4,f8,fC; u8 pad10[12]; u8 attr[24]; };
extern struct T107BAnim t107BAnim[] asm("gUnk_03000380");
extern u8 gUnk_030003EA;
extern u8 gUnk_084A6DB8[];
extern u16 t107BTile asm("gUnk_030003E8");
extern s32 t107BAck(void) asm("sub_08067BF8");
extern s16 t107BCall0800086C(void) asm("sub_0800086C");
/* Keep renderer coordinates wide: y - 1 must not wrap before the call. */
extern void *t107BCall08007870(s32,s32,u32,u32,s32,void *,u32,u32) asm("sub_08007870");
extern void t107BCall0800BC08(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void t107BCall0801623C(void *,void *,s32) asm("sub_0801623C");
extern s32 t107BCall08016E04(u16,u16) asm("sub_08016E04");
extern void t107BCall08019F60(void *) asm("sub_08019F60");
extern void t107BCall0801A120(void *,s32,s16) asm("sub_0801A120");
extern void t107BCall0801C8F0(void *) asm("sub_0801C8F0");
extern void t107BCall0806171C(void *,s32) asm("sub_0806171C");
extern void t107BCall08065158(void *,s32,u16,s32,s32) asm("sub_08065158");
extern void t107BCall080970CC(void *,void *,u16,u16) asm("sub_080970CC");
void sub_080A27B8(void *arg0) {
    s32 sp0;
    void *sp4;                                      /* compiler-managed */
    s32 sp8;
    s32 spC;
    s16 sp10;
    s16 sp12;
    struct T107BActor *sp14;
    void *sp18;
    struct Player *sp1C;
    s32 sp20;
    s32 sp24;
    u32 sp28;
    u32 sp2C;
    u16 *sp30;
    s16 *temp_r0_10;
    s16 *var_r7;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r2_3;
    s16 temp_r4;
    s16 var_r1_2;
    s16 var_r1_3;
    s16 var_r2;
    s16 var_sl;
    s32 *temp_r1_4;
    s32 *temp_r1_5;
    s32 *temp_r1_6;
    s32 *temp_r2_4;
    s32 *temp_r2_5;
    s32 *temp_r2_6;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_3;
    s32 temp_r0_8;
    s32 temp_r0_9;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r4_2;
    s8 *var_r0;
    u16 temp_r0;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r1;
    u32 temp_r0_14;
    u32 temp_r0_15;
    u32 temp_r0_4;
    u32 temp_r5;
    u32 var_r1;
    u32 var_sl_2;
    u32 var_sl_3;
    u8 temp_r0_7;
    u8 temp_r9;
    u8 temp_r9_2;
    u8 temp_r9_3;
    u8 var_r0_2;

    sp14 = arg0;
    t107B364 = arg0;
    sp18 = arg0 + 0x204;
    t107BCall0801623C(arg0, &gUnk_084A6DB8, 0);
    t107BCall08019F60(sp18);
    sub_0801A0B0(t107B364);
    t107B364->f14 = 0xF200;
    t107B364->f18 = 0x8500;
    temp_r1 = (t107BTile = t107BCall08016E04(sp14->f2D8, sp14->f2DA));
    if (temp_r1 == 0xFFFF) {
loop_2:
        t107B364->fC = 0xB;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            gUnk_030056FC &= ~(1 << t107B364->f0);
            return;
        }
        sub_080003F0();
        if (t107BTile != temp_r1) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    sp0 = 1;
    t107BCall08065158((u8 *)t107BAnim, 0x5000D, t107BTile, -1, sp0);
    sp0 = 1;
    t107BCall08065158((u8 *)t107BAnim + 0x34, 0x5000E, t107BTile, -1, sp0);
    temp_r1_2 = M2C_FIELD(sp18, s16 *, 0x6) * 3;
    t107B364->f1D6 = temp_r1_2;
    t107B364->f5C = temp_r1_2;
    temp_r0_2 = M2C_FIELD(sp18, s16 *, 0x4) * 0xA * 2;
    t107B364->f1D4 = temp_r0_2;
    t107B364->f5E = temp_r0_2;
    t107B364->fC = 0;
    sp20 = 0;
    sp24 = 0;
    t107B364->f1FD = 3U;
    t107B364->f1FE = 3U;
    sub_080A49EC();
    sub_080A4A7C();
    sub_080A4AE4();
    sub_080A4B48(0);
    sub_080A4B48(1);
    sub_080A4B48(2);
    sub_080A4BE0();
    sub_080A4C24();
    sub_080A4C74(0U, 0U);
    sub_080A4CA8(0, 7U, 1U, 2U);
    sub_080A4CA8(1, 8U, 4U, 6U);
    sub_080A4CA8(2, 0U, 0U, 0U);
    sub_080A4CDC(0xB, 3);
    sub_08097FE4();
    sub_08097A4C();
    t107B364->f5C = 0x3E7;
    t107B364->f22E = 0x40;
    t107B364->f22F = 0x30;
    t107B364->f1FC = (u8) ((-0x10 & t107B364->f1FC) | (0xF & (u8) t107B364->f0));
    t107B364->f202 = (u16) t107B364->f2;
    t107B364->f200 = 0xFFU;
    sub_08067C18();
    sp30 = sp18 + 0xD6;
loop_8:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_8;
    }
    sub_0806849C(t107BAck());
loop_90:
    if (sub_0800CB78() == 0) {
        temp_r0_3 = sub_08056E90();
        if (temp_r0_3 == 0) {
            if (sp14->fC == 0xA) {
                if (sp20 == 0) {
                    sp20 = 8;
                }
                t107B364->f5C = 0x3E7;
                t107B364->f4C = temp_r0_3;
                sp24 = 0xA;
                var_sl = 0;
            }
            var_r7 = &sp12;
            if (sub_08058DB0() != 0) {

            } else {
                t107BCall0801C8F0(t107B364);
                temp_r0_4 = t107B364->f1FD - 1;
                switch (temp_r0_4) {                /* irregular */
                case 0:
                    t107B364->fC = 0;
                    var_r7 = &sp12;
                    if (sub_08067C08() == 0) {

                    } else {
                        t107B364->f1FD = (u8) t107B364->f1FE;
                        sub_08067BF8();
                    }
                    break;
                case 1:
                    t107B364->fC = 0;
                    t107B364->f200 = sub_08068490();
                    var_r7 = &sp12;
                    if (t107B364->f200 == 0xFF) {

                    } else {
                        t107B364->f1FE = 7U;
                        var_r0 = (u8 *)t107B364 + 0x1FD;
block_56:
                        var_r1 = 1;
block_57:
                        *var_r0 = (s8) var_r1;
                        sub_08067C18();
                    }
                    break;
                case 2:
                    var_r7 = &sp12;
                    if (sub_08056F78() == 0) {

                    } else {
                        t107B364->f1FE = 8U;
                        t107B364->f1FD = 1U;
                        sub_08067C18();
                        sp28 = 0;
                    }
                    break;
                case 4:
                    t107B364->fC = 0;
                    sub_080A4C74(0xFFU, 0U);
                    sub_080A4CA8(0, 0U, 0U, 0U);
                    sub_080A4CA8(1, 0U, 0U, 0U);
                    sub_080A4CA8(2, 0U, 0U, 0U);
                    sub_080A4CDC(0, 0);
                    sub_080A4CF0(1);
                    sub_080A4CFC(1);
                    sp2C = 0;
                    t107B364->f1FC = (u8) ((0xF & t107B364->f1FC) | (sub_08096594(0) * 0x10));
                    sp1C = &gUnk_03003CE0[(u8) t107B364->f1FC >> 4];
                    sub_08097A38(0U);
                    t107B364->f1FE = 4U;
                    t107B364->f1FD = 1U;
                    sub_08067C18();
                    sub_0805865C(0xDF);
block_61:
                    var_r7 = &sp12;
                    break;
                case 3:
                    t107B364->fC = 2;
                    sub_08097A74(t107B364, sp1C, 0x100, 0x20);
                    sub_080A4520();
                    if (sp2C > 0x78U) {
                        sub_0805867C(0xDF);
                        if (sub_08002204() == 1) {
                            var_r2 = (s16) (t107BCall0800086C() % 5);
                            if ((s32) var_r2 < 0) {
                                var_r2 = 0 - var_r2;
                            }
                            t107B364->f200 = (u8) var_r2;
                            var_r1 = sub_08068450(t107B364->f200);
                            var_r7 = &sp12;
                            if (var_r1 != 1) {

                            } else {
                                t107B364->f1FE = 2U;
                                var_r0 = (u8 *)t107B364 + 0x1FD;
                                goto block_57;
                            }
                        } else {
                            t107B364->f200 = 0xFFU;
                            t107B364->f1FE = 2U;
                            t107B364->f1FD = 1U;
                            sub_08067C18();
                            goto block_61;
                        }
                    } else {
                        sp2C = (u32) (u16) (sp2C + 1);
                        goto block_61;
                    }
                    break;
                case 6:
                    t107B364->fC = 0;
                    if (t107B364->f200 == 0xFF) {
                        t107B364->f200 = 2U;
                    }
                    temp_r2 = t107B364->f200 * 0xF;
                    sub_080A4C74(t107BPatterns[temp_r2], t107BPatterns[temp_r2 + 2]);
                    temp_r3 = t107B364->f200 * 0xF;
                    sub_080A4CA8(0, t107BPatterns[temp_r3 + 3], t107BPatterns[temp_r3 + 4], t107BPatterns[temp_r3 + 5]);
                    temp_r3_2 = t107B364->f200 * 0xF;
                    sub_080A4CA8(1, t107BPatterns[temp_r3_2 + 6], t107BPatterns[temp_r3_2 + 7], t107BPatterns[temp_r3_2 + 8]);
                    temp_r3_3 = t107B364->f200 * 0xF;
                    sub_080A4CA8(2, t107BPatterns[temp_r3_3 + 9], t107BPatterns[temp_r3_3 + 0xA], t107BPatterns[temp_r3_3 + 0xB]);
                    temp_r2_2 = t107B364->f200 * 0xF;
                    sub_080A4CDC((s8) t107BPatterns[temp_r2_2 + 0xC], (s8) t107BPatterns[temp_r2_2 + 0xD]);
                    sub_080A4CF0(0);
                    sub_0805865C(0xE1);
                    gUnk_030003EA = 1;
                    var_r1_2 = 0;
                    var_r7 = &sp12;
                    do {
                        temp_r4 = var_r1_2;
                        if (t107BSummons[temp_r4]->f5C != 0) {
                            sub_0805865C(0xE0);
                            t107BActive[temp_r4] = 1;
                        }
                        temp_r0_5 = temp_r4 + 1;
                        var_r1_2 = (s16) temp_r0_5;
                    } while ((s32) (s16) temp_r0_5 <= 2);
                    t107B364->f200 = 0xFFU;
                    t107B364->f1FE = 6U;
                    var_r0 = (u8 *)t107B364 + 0x1FD;
                    goto block_56;
                case 5:
                    t107B364->fC = 0;
                    if (t107B368->f5C == 0) {
                        gUnk_030003EA = 0;
                    }
                    var_r1_3 = 0;
                    var_r7 = &sp12;
                    do {
                        temp_r2_3 = var_r1_3;
                        temp_r1_3 = t107BSummons[temp_r2_3]->f5C;
                        if (temp_r1_3 == 0) {
                            t107BActive[temp_r2_3] = (s8) temp_r1_3;
                        }
                        temp_r0_6 = temp_r2_3 + 1;
                        var_r1_3 = (s16) temp_r0_6;
                    } while ((s32) (s16) temp_r0_6 <= 2);
                    if ((gUnk_030003EA == 0) && (t107BActive[0] == 0) && (t107BActive[1] == 0) && (t107BActive[2] == 0)) {
                        sub_080A4CFC(0);
                        t107B364->f1FE = 8U;
                        var_r0 = (u8 *)t107B364 + 0x1FD;
                        goto block_56;
                    }
                    break;
                case 7:
                    t107B364->fC = 1;
                    if (sp28 > 0xB4U) {
                        sp28 = 0;
                        t107B364->f1FE = 5U;
                        t107B364->f1FD = 1U;
                        sub_08067C18();
                    } else {
                        sp28 = (u32) (u16) (sp28 + 1);
                    }
                    goto block_61;
                }
            }
            t107BAnim[(u8)gUnk_030003EF].attr[0] = (s8) t107BTile;
            sub_08000AF0(t107BTile + 0x10, t107BAnim[(u8)gUnk_030003EF].fC + (*sp30 << 5), 1U);
            if (sub_0800CD8C() == 0) {
                sp0 = 1;
                t107B364->f6E = (s16) sub_08065370((0x34 * (u8) gUnk_030003EF) + (u8 *)t107BAnim, 0U, (s32) ((u8 *)t107B364 + 0x6A), (s32) ((u8 *)t107B364 + 0x6C), sp0);
            }
            if (1 & sub_08098004()) {
                var_r0_2 = sub_08097FF8();
            } else {
                var_r0_2 = (u8) sub_0800BC44((u32) ((s32) t107B364->f14 >> 8), (u32) ((s32) t107B364->f18 >> 8), 0U);
            }
            temp_r0_7 = var_r0_2;
            sp0 = 0;
            sp4 = NULL;
            t107BCall0800BC08((s32) (t107B364->f14 << 8) >> 0x10, (s32) (t107B364->f18 << 8) >> 0x10, &sp10, var_r7, sp0, (s32)sp4);
            if (sp20 != 0) {
                temp_r0_8 = sp20;
                sp20 = (s32) (u16) (temp_r0_8 - 1);
                if ((1 & temp_r0_8) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                    sp0 = (s32) temp_r0_7;
                    sp4 = (0x34 * (u8) gUnk_030003EF) + t107BAttr;
                    sp8 = *(u32 *)((0x34 * (u8) gUnk_030003EF) + (t107BAttr - 0x14));
                    spC = *(u32 *)((0x34 * (u8) gUnk_030003EF) + (t107BAttr - 0x1C));
                    t107BCall08007870(sp10, *var_r7, 0U, t107B364->f6A, sp0, sp4, sp8, spC);
                }
            } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                sp0 = (s32) temp_r0_7;
                sp4 = (0x34 * (u8) gUnk_030003EF) + t107BAttr;
                sp8 = *(u32 *)((0x34 * (u8) gUnk_030003EF) + (t107BAttr - 0x14));
                spC = *(u32 *)((0x34 * (u8) gUnk_030003EF) + (t107BAttr - 0x1C));
                t107BCall08007870(sp10, *var_r7, 0U, t107B364->f6A, sp0, sp4, sp8, spC);
            }
            if (((u8) gUnk_030003EF != 0) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                M2C_FIELD(t107BAnim, u8 *, 0x50) = (s8) t107BTile;
                sub_08000AF0(t107BTile + 0x10, M2C_FIELD(t107BAnim, u32 *, 0x40) + (*sp30 << 5), 1U);
                sp0 = (s32) temp_r0_7;
                sp4 = (u8 *)t107BAnim + 0x50;
                sp8 = M2C_FIELD(t107BAnim, u32 *, 0x3C);
                spC = M2C_FIELD(t107BAnim, u32 *, 0x34);
                M2C_FIELD(t107BCall08007870(sp10, *var_r7 - 1, 0x11U, 0U, sp0, sp4, sp8, spC), s32 *, 0xC) = (s32) *var_r7;
            }
            if (sp24 != 0) {
                if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                    t107BCall0801A120(t107B364, 0x8000, var_sl);
                }
                temp_r0_9 = sp24;
                sp24 = (s32) (u16) (temp_r0_9 - 1);
                if (2 & temp_r0_9) {
                    var_sl = (s16) ((u32) ((var_sl << 0x10) + 0xFFFF0000) >> 0x10);
                }
            }
            sub_080003F0();
            if (t107B368->f5C != 0) {
                goto loop_90;
            }
        }
    }
    gUnk_030056FC = 0;
    sub_0805867C(0xDF);
    temp_r2_4 = (s32 *)((u8 *)gUnk_03003CE0 + (sub_080020F4() * 0x14C) + 0x30);
    *temp_r2_4 |= 1;
    sp0 = 1;
    t107BCall08065158((u8 *)t107BAnim, 0x5000D, t107BTile, -1, sp0);
    M2C_FIELD(t107BAnim, u8 *, 0x1C) = (s8) t107BTile;
    t107B364->f6C = 0;
    temp_r0_10 = ((u8 *)t107B364 + 0x6C) - 2;
    *temp_r0_10 = 0;
    *(s16 *)((u8 *)temp_r0_10 - 2) = 0;
    sub_080A4CF0(0);
    sub_080683CC();
    sub_08068330(-0x21520532);
loop_100:
    if (sub_080682B8(-0x21520532) == 0) {
        temp_r1_4 = (s32 *)((u8 *)gUnk_03003CE0 + (sub_080020F4() * 0x14C) + 0x30);
        *temp_r1_4 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_11 = sub_0800CD34();
            if (temp_r0_11 == 0) {
                sub_08000AF0(t107BTile + 0x10, M2C_FIELD(t107BAnim, u32 *, 0xC) + (*sp30 << 5), 1U);
                temp_r9 = (u8) sub_0800BC44((u32) ((s32) t107B364->f14 >> 8), (u32) ((s32) t107B364->f18 >> 8), 0U);
                sp0 = 1;
                t107B364->f6E = (s16) sub_08065370((u8 *)t107BAnim, t107B364->f68, (s32) ((u8 *)t107B364 + 0x6A), (s32) ((u8 *)t107B364 + 0x6C), sp0);
                sp0 = temp_r0_11;
                sp4 = temp_r0_11;
                t107BCall0800BC08((s32) (t107B364->f14 << 8) >> 0x10, (s32) (t107B364->f18 << 8) >> 0x10, &sp10, &sp12, sp0, (s32)sp4);
                sp0 = (s32) temp_r9;
                sp4 = (u8 *)t107BAnim + 0x1C;
                sp8 = M2C_FIELD(t107BAnim, u32 *, 0x8);
                spC = M2C_FIELD(t107BAnim, u32 *, 0x0);
                t107BCall08007870(sp10, sp12, t107B364->f68, t107B364->f6A, sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_100;
    }
    sub_08065E38(-0x21520532);
loop_108:
    if (sub_08058DB0() != 0) {
        temp_r1_5 = (s32 *)((u8 *)gUnk_03003CE0 + (sub_080020F4() * 0x14C) + 0x30);
        *temp_r1_5 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_12 = sub_0800CD34();
            if (temp_r0_12 == 0) {
                sub_08000AF0(t107BTile + 0x10, M2C_FIELD(t107BAnim, u32 *, 0xC) + (*sp30 << 5), 1U);
                temp_r9_2 = (u8) sub_0800BC44((u32) ((s32) t107B364->f14 >> 8), (u32) ((s32) t107B364->f18 >> 8), 0U);
                sp0 = 1;
                t107B364->f6E = (s16) sub_08065370((u8 *)t107BAnim, t107B364->f68, (s32) ((u8 *)t107B364 + 0x6A), (s32) ((u8 *)t107B364 + 0x6C), sp0);
                sp0 = temp_r0_12;
                sp4 = temp_r0_12;
                t107BCall0800BC08((s32) (t107B364->f14 << 8) >> 0x10, (s32) (t107B364->f18 << 8) >> 0x10, &sp10, &sp12, sp0, (s32)sp4);
                sp0 = (s32) temp_r9_2;
                sp4 = (u8 *)t107BAnim + 0x1C;
                sp8 = M2C_FIELD(t107BAnim, u32 *, 0x8);
                spC = M2C_FIELD(t107BAnim, u32 *, 0x0);
                t107BCall08007870(sp10, sp12, t107B364->f68, t107B364->f6A, sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_108;
    }
    sub_080586B4(0);
    temp_r2_5 = (s32 *)((u8 *)gUnk_03003CE0 + (sub_080020F4() * 0x14C) + 0x30);
    *temp_r2_5 |= 1;
    sp0 = 0x3C;
    sp4 = (void *)0x140065;
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x720) = sub_0805DF38(1U, 0xEU, 0x19U, 2U, sp0, (u32)sp4);
loop_116:
    if (sub_0805EEFC((void *) M2C_FIELD(gUnk_03005CF4, s32 *, 0x720)) == 0) {
        temp_r1_6 = (s32 *)((u8 *)gUnk_03003CE0 + (sub_080020F4() * 0x14C) + 0x30);
        *temp_r1_6 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_13 = sub_0800CD34();
            if (temp_r0_13 == 0) {
                sub_08000AF0(t107BTile + 0x10, M2C_FIELD(t107BAnim, u32 *, 0xC) + (*sp30 << 5), 1U);
                temp_r9_3 = (u8) sub_0800BC44((u32) ((s32) t107B364->f14 >> 8), (u32) ((s32) t107B364->f18 >> 8), 0U);
                sp0 = 1;
                t107B364->f6E = (s16) sub_08065370((u8 *)t107BAnim, t107B364->f68, (s32) ((u8 *)t107B364 + 0x6A), (s32) ((u8 *)t107B364 + 0x6C), sp0);
                sp0 = temp_r0_13;
                sp4 = temp_r0_13;
                t107BCall0800BC08((s32) (t107B364->f14 << 8) >> 0x10, (s32) (t107B364->f18 << 8) >> 0x10, &sp10, &sp12, sp0, (s32)sp4);
                sp0 = (s32) temp_r9_3;
                sp4 = (u8 *)t107BAnim + 0x1C;
                sp8 = M2C_FIELD(t107BAnim, u32 *, 0x8);
                spC = M2C_FIELD(t107BAnim, u32 *, 0x0);
                t107BCall08007870(sp10, sp12, t107B364->f68, t107B364->f6A, sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_116;
    }
    temp_r2_6 = (s32 *)((u8 *)gUnk_03003CE0 + (0x14C * sub_080020F4()) + 0x30);
    *temp_r2_6 &= ~1;
    sub_080A4BFC();
    sub_080A4B10();
    sub_080A4A54();
    sub_08058688(0xD);
    t107BCall080970CC(t107B364, (u8 *)t107BAnim, *sp30, t107BTile);
    if (!(*((s32 *)((u8 *)gUnk_03003CE0 + (0x14C * sub_080020F4()) + 0x30)) & 0x2000) && (t107B368->f5A != 0)) {
        temp_r4_2 = sub_0801E46C((void *) gUnk_030034E0, sp18);
        var_sl_2 = 0x1D;
        do {
            t107B364->f18 = (s32) (t107B364->f18 - 0x20);
            t107BCall0806171C(t107B364, temp_r4_2);
            sub_080003F0();
            temp_r0_14 = (var_sl_2 << 0x10) + 0xFFFF0000;
            var_sl_2 = temp_r0_14 >> 0x10;
        } while (((s32) temp_r0_14 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4_2);
    }
    var_sl_3 = 0x6F;
    do {
        sub_080003F0();
        temp_r5 = var_sl_3;
        temp_r0_15 = (temp_r5 << 0x10) + 0xFFFF0000;
        var_sl_3 = temp_r0_15 >> 0x10;
    } while (((s32) temp_r0_15 >> 0x10) != -1);
    sub_08067C18();
loop_126:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_126;
    }
    sub_08067BF8();
    sub_08056E24();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A27B8);
#endif
#ifdef NONMATCHING
struct T107DActor { u16 f0; u16 f2; u8 p4[8]; u16 fC; u8 pE[6]; s32 f14; s32 f18; u8 p1C[44]; u16 f48; u8 p4A[2]; s32 f4C; s32 f50; u8 p54[8]; s16 f5C; s16 f5E; u8 p60[10]; u16 f6A; u16 f6C; u16 f6E; u8 p70[356]; s16 f1D4; s16 f1D6; u8 p1D8[36]; u8 f1FC; u8 f1FD; u8 f1FE; u8 p1FF[1]; u8 f200; u8 p201[1]; u16 f202; u8 p204[42]; s8 f22E; s8 f22F; };
extern struct T107DActor *t107D364 asm("gUnk_03000364");
extern struct T107DActor *t107D368 asm("gUnk_03000368");
struct T107DAux { u8 p0[4]; s16 f4,f6; u8 p8[0xCE]; u16 fD6; };
extern s16 t107Offsets[] asm("gUnk_08518754");
extern u8 t107Raw380[] asm("gUnk_03000380");
extern u8 t107Raw388[] asm("gUnk_03000388");
extern u8 t107Raw39C[] asm("gUnk_0300039C");
struct T107AnimD {u32 f0,f4,f8,fC;u8 pad10[12];u8 attr[24];};
extern struct T107AnimD t107Anims[] asm("gUnk_03000380");
extern u8 gUnk_084A6DB8[];
extern u8 gUnk_030003EA;
extern u16 t107TileD asm("gUnk_030003E8");
extern void *t107DCall08007870(s16,s32,u32,u16,s32,void *,u32,u32) asm("sub_08007870");
extern void t107DCall0800BC08(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void t107DCall0801623C(void *,void *,s32) asm("sub_0801623C");
extern u16 t107DCall08019CE8(void *) asm("sub_08019CE8");
extern void t107DCall08019F60(void *) asm("sub_08019F60");
extern void t107DCall0801A120(void *,s32,s16) asm("sub_0801A120");
extern void t107DCall0801C8F0(void *) asm("sub_0801C8F0");
extern void t107DCall08067CA8(u16) asm("sub_08067CA8");
void t107MainD(void) asm("sub_080A35D0");
void t107MainD(void) {
    struct T107DActor *init;
    s32 sp0;
    s32 sp4;                                        /* compiler-managed */
    s32 sp8;
    s32 spC;
    s16 sp10;
    s16 sp12;
    struct T107DAux *sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    u32 sp24;
    u32 *sp28;
    u16 *sp2C;
    s16 *temp_r7;
    s32 temp_r0_2;
    s32 temp_r1;
    s16 var_r0_4;
    s32 temp_r0_10;
    s32 temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r0_9;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r3;
    s32 temp_r3_2;
    s8 *var_r0_2;
    s8 var_r1;
    u16 temp_r4_2;
    u8 temp_r0_4;
    u8 temp_r0_5;
    u8 temp_r4;
    u8 temp_sl;
    u8 var_r0;
    u8 var_r0_3;
    u8 var_r0_5;
    void *temp_r0;
    void *temp_r2;
    void *temp_r4_3;
    void *var_r4;

    gUnk_030056FC |= 2;
    temp_r0 = gUnk_030056F4 + 0x2E0;
    t107D368 = temp_r0;
    sub_0801A0A4(temp_r0);
    t107DCall0801623C(t107D368, &gUnk_084A6DB8, 1);
    temp_r2 = (u8 *)t107D368 + 0x204;
    sp14 = temp_r2;
    t107DCall08019F60(temp_r2);
    init = t107D368;
    temp_r1 = sp14->f6 * 3;
    init->f1D6 = temp_r1;
    init->f5C = temp_r1;
    temp_r0_2 = ((sp14->f4 << 1) + (sp14->f4 << 3)) << 1;
    init->f1D4 = temp_r0_2;
    init->f5E = temp_r0_2;
    init->f48 = (u16) gUnk_03003170.f90;
    init->f50 = (s32) t107D364->f50;
    init->fC = 0U;
    init->f0 = 1U;
    init->f2 = 5U;
    init->f1FC = (u8) ((-0x10 & init->f1FC) | 1);
    t107D368->f202 = (u16) t107D368->f2;
    t107D368->f200 = 0xFF;
    t107D368->f1FD = 3U;
    t107D368->f1FE = 3U;
    t107D368->fC = 0U;
    sp1C = 0;
    sp20 = 0;
    sp28 = (u32 *)t107Raw388;
    goto loop_49;
loop_body:
    if (gUnk_030003F1 != 0xFF) {
        if ((u8) gUnk_030003F0 == 1) {
            var_r0 = (gUnk_030003F1 * 2) + 1;
        } else {
            var_r0 = gUnk_030003F1 + 1;
        }
        temp_r0_5 = var_r0;
        temp_r1_2 = t107D364->f14;
        t107D368->f14 = temp_r1_2;
        temp_r3 = t107D364->f18;
        t107D368->f18 = temp_r3;
        t107D368->f14 = (s32) (temp_r1_2 + t107Offsets[gUnk_030003F1 * 2]);
        t107D368->f18 = (s32) (temp_r3 + t107Offsets[gUnk_030003F1 * 2 + 1]);
        if (gUnk_030003F1 == 0) {
            t107D368->f22E = 0x20;
            var_r0_2 = (u8 *)t107D368 + 0x22F;
            var_r1 = 0x28;
        } else {
            t107D368->f22E = 0x20;
            var_r0_2 = (u8 *)t107D368 + 0x22F;
            var_r1 = 0x10;
        }
        *var_r0_2 = var_r1;
        if (gUnk_030056FC & 0x1C) {
            sub_0801A0B0(t107D368);
        } else {
            sub_0801A0A4(t107D368);
        }
        t107Anims[(u8)gUnk_030003F0].attr[0] = (s8) t107TileD;
        sub_08000AF0(t107TileD + 0x10, (t107Anims[(u8)gUnk_030003F0].fC) + (sp14->fD6 << 5), 1U);
        temp_r1_3 = sub_0800CD8C();
        sp2C = &sp14->fD6;
        if (temp_r1_3 == 0) {
            sp0 = temp_r1_3;
            t107D368->f6E = (u16) sub_08065370((0x34 * (u8) gUnk_030003F0) + t107Raw380, (u16) temp_r0_5, (s32) ((u8 *)t107D368 + 0x6A), (s32) ((u8 *)t107D368 + 0x6C), 0);
        }
        if (1 & sub_08098004()) {
            var_r0_3 = sub_08097FF8();
        } else {
            var_r0_3 = (u8) sub_0800BC44((u32) ((s32) t107D368->f14 >> 8), (u32) ((s32) t107D368->f18 >> 8), 0U);
        }
        temp_r4 = var_r0_3;
        if (sp1C != 0) {
            temp_r0_6 = sp1C;
            sp1C = (s32) (u16) (temp_r0_6 - 1);
            if (!(1 & temp_r0_6)) {

            } else if (sub_0800CCCC() != 0) {

            } else if (sub_0800CC98() != 0) {

            } else {
                temp_r0_7 = sub_0800CD34();
                if (temp_r0_7 != 0) {

                } else {
                    sp0 = temp_r0_7;
                    sp4 = temp_r0_7;
                    t107DCall0800BC08((s32) (t107D364->f14 << 8) >> 0x10, (s32) (t107D364->f18 << 8) >> 0x10, &sp10, &sp12, sp0, sp4);
                    var_r4 = t107DCall08007870(sp10, sp12 + 1, temp_r0_5, t107D368->f6A, temp_r4, (0x34 * (u8) gUnk_030003F0) + t107Raw39C, *(u32 *)((u8 *)sp28 + (0x34 * (u8) gUnk_030003F0)), *(u32 *)((0x34 * (u8) gUnk_030003F0) + (t107Raw39C - 0x1C)));
                    sp0 = temp_r0_7;
                    sp4 = temp_r0_7;
                    t107DCall0800BC08((s32) (t107D368->f14 << 8) >> 0x10, (s32) (t107D368->f18 << 8) >> 0x10, &sp10, &sp12, sp0, sp4);
                    M2C_FIELD(var_r4, s32 *, 0x8) = (s32) sp10;
                    var_r0_4 = sp12;
                    goto block_30;
                }
            }
        } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
            sp0 = sp1C;
            sp4 = sp1C;
            t107DCall0800BC08((s32) (t107D364->f14 << 8) >> 0x10, (s32) (t107D364->f18 << 8) >> 0x10, &sp10, &sp12, sp0, sp4);
            var_r4 = t107DCall08007870(sp10, sp12 + 1, temp_r0_5, t107D368->f6A, temp_r4, (0x34 * (u8) gUnk_030003F0) + t107Raw39C, *(u32 *)((0x34 * (u8) gUnk_030003F0) + t107Raw388), *(u32 *)((0x34 * (u8) gUnk_030003F0) + (t107Raw39C - 0x1C)));
            sp0 = sp1C;
            sp4 = sp1C;
            t107DCall0800BC08((s32) (t107D368->f14 << 8) >> 0x10, (s32) (t107D368->f18 << 8) >> 0x10, &sp10, &sp12, sp0, sp4);
            M2C_FIELD(var_r4, s32 *, 0x8) = (s32) sp10;
            var_r0_4 = sp12;
block_30:
            M2C_FIELD(var_r4, s32 *, 0xC) = (s32) var_r0_4;
        }
        temp_r0_8 = t107D368->f4C;
        if ((temp_r0_8 != 0) && (sp18 != temp_r0_8)) {
            sp18 = temp_r0_8;
            sp20 = 0xA;
            sp24 = 0;
        }
        if (sp20 != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                t107DCall0801A120(t107D368, sp18, (s16) sp24);
            }
            if (2 & sp20) {
                sp24 = (u32) ((sp24 << 0x10) + 0xFFFF0000) >> 0x10;
            }
            sp20 = (s32) (u16) (sp20 - 1);
        } else {
            sp18 = 0;
            t107D368->f4C = 0;
        }
        if ((gUnk_030003EA == 1) && (t107D368->f6E != 0)) {
            gUnk_030003EA = 0;
        }
        if ((t107DCall08019CE8(t107D368) << 0x10) != 0) {
            sub_080003F0();
        } else {
            sub_080003F0();
            goto loop_49;
        }
    } else {
        temp_r4_2 = t107DCall08019CE8(t107D368);
        if (temp_r4_2 == 0) {
            sub_0801A0B0(t107D368);
            t107D368->f22E = (s8) temp_r4_2;
            t107D368->f22F = (s8) temp_r4_2;
            sub_080003F0();
            goto loop_49;
        }
        gUnk_030003F1 = gUnk_030003F2;
        sp2C = &sp14->fD6;
    }
    goto cleanup;
loop_49:
    if ((t107D368->fC == 0xA) && (sp1C == 0)) {
        sp1C = 8;
    }
    temp_r0_3 = sub_08058DB0();
    if (temp_r0_3 == 0) {
        t107DCall0801C8F0(t107D368);
        temp_r0_4 = t107D368->f1FD;
        switch (temp_r0_4) {                        /* irregular */
        case 1:
            t107D368->fC = (u16) temp_r0_3;
            if (sub_080682B8((s32) t107D368->f0) != 0) {
                t107D368->f1FD = (u8) t107D368->f1FE;
                sub_08065E38((s32) t107D368->f0);
            }
            break;
        case 3:
            if (sub_08056F78() != 0) {
                t107D368->f1FE = 8U;
                t107D368->f1FD = 1U;
                sub_08068330((s32) t107D368->f0);
            }
            break;
        case 8:
            t107D368->fC = (u16) temp_r0_3;
            break;
        }
    }
    goto loop_body;
cleanup:
    t107DCall08067CA8(t107D368->f2);
    gUnk_030003EA = 0;
    temp_sl = gUnk_030003F1 + 1;
    t107D368->f6C = 0;
    t107D368->f6A = 0;
    gUnk_030003F0 = 0;
    temp_r1_4 = t107D364->f14;
    t107D368->f14 = temp_r1_4;
    temp_r3_2 = t107D364->f18;
    t107D368->f18 = temp_r3_2;
    t107D368->f14 = (s32) (temp_r1_4 + t107Offsets[gUnk_030003F1 * 2]);
    t107D368->f18 = (s32) (temp_r3_2 + t107Offsets[gUnk_030003F1 * 2 + 1]);
    temp_r7 = &sp12;
loop_70:
    t107Anims[(u8)gUnk_030003F0].attr[0] = (s8) t107TileD;
    sub_08000AF0(t107TileD + 0x10, (t107Anims[(u8)gUnk_030003F0].fC) + (*sp2C << 5), 1U);
    temp_r0_9 = sub_0800CD8C();
    if (temp_r0_9 == 0) {
        sp0 = temp_r0_9;
        t107D368->f6E = (u16) sub_08065370((0x34 * (u8) gUnk_030003F0) + t107Raw380, (u16) temp_sl, (s32) ((u8 *)t107D368 + 0x6A), (s32) ((u8 *)t107D368 + 0x6C), 0);
    }
    if (1 & sub_08098004()) {
        var_r0_5 = sub_08097FF8();
    } else {
        var_r0_5 = (u8) sub_0800BC44((u32) ((s32) t107D368->f14 >> 8), (u32) ((s32) t107D368->f18 >> 8), 0U);
    }
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_10 = sub_0800CD34();
        if (temp_r0_10 == 0) {
            sp0 = temp_r0_10;
            sp4 = temp_r0_10;
            t107DCall0800BC08((s32) (t107D364->f14 << 8) >> 0x10, (s32) (t107D364->f18 << 8) >> 0x10, &sp10, temp_r7, sp0, sp4);
            temp_r4_3 = t107DCall08007870(sp10, sp12 + 1, temp_sl, t107D368->f6A, var_r0_5, (0x34 * (u8) gUnk_030003F0) + t107Raw39C, *(u32 *)((0x34 * (u8) gUnk_030003F0) + (t107Raw39C - 0x14)), *(u32 *)((0x34 * (u8) gUnk_030003F0) + t107Raw380));
            sp0 = temp_r0_10;
            sp4 = temp_r0_10;
            t107DCall0800BC08((s32) (t107D368->f14 << 8) >> 0x10, (s32) (t107D368->f18 << 8) >> 0x10, &sp10, temp_r7, sp0, sp4);
            M2C_FIELD(temp_r4_3, s32 *, 0x8) = (s32) sp10;
            M2C_FIELD(temp_r4_3, s32 *, 0xC) = (s32) sp12;
        }
    }
    sub_080003F0();
    goto loop_70;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A35D0);
#endif
