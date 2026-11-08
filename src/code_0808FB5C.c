#include "global.h"
extern u32 gTbl08515FCC[] asm("gUnk_08515FCC");
extern u32 gTbl08514FAC[] asm("gUnk_08514FAC");
extern u32 gTbl08512670[] asm("gUnk_08512670");
extern u32 gTbl0850DE28[] asm("gUnk_0850DE28");
extern u32 gTbl0851810C[] asm("gUnk_0851810C");
extern u32 gTbl08511538[] asm("gUnk_08511538");
extern u32 gTbl08510530[] asm("gUnk_08510530");
extern u32 gTbl0850F894[] asm("gUnk_0850F894");
extern void sub_080923B4();
extern struct Task01E8 gTask01E8 asm("gUnk_030001E8");
struct Task01E8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void sub_08090B84(), sub_08090E38(), sub_080910A8(), sub_080912CC(), sub_080914F0(), sub_08091714(), sub_08091938(), sub_08091B5C(), sub_08091CF8();
extern u32 gWord0300016C asm("gUnk_0300016C");
extern u32 gTbl03000198[] asm("gUnk_03000198");
extern struct Task0170 gTask0170 asm("gUnk_03000170");
struct Task0170 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void sub_080904A4();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct Task01C0 gTask01C0 asm("gUnk_030001C0");
struct Task01C0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u16 gUnk_03001324_16 asm("gUnk_03001324");

void sub_080904A4(void);
void sub_0802704C(u32 arg0);

extern void sub_08095A60(void);
extern void sub_08095AD8(void);
extern void sub_08092CB8(void);
extern void sub_080923FC(void);
extern void sub_08092EB4(void);
extern void sub_08092F58(void);
extern void sub_080934D4(void);
extern void sub_08093584(void);
extern void sub_080943F8(void);
extern void sub_08093BAC(void);
extern void sub_08094590(void);
extern void sub_08094638(void);
extern void sub_08094A00(void);
extern void sub_08094AB8(void);
extern void sub_08095518(void);
extern void sub_08094F3C(void);
extern u32 gUnk_03000210;
extern u32 gUnk_03000230;
typedef void (*Handler)(void);

extern u32 tableFB5C[] asm("gUnk_0850DE28");
u32 sub_0808FB5C(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0802704C(arg);
        gUnk_03003170.pad72=30;
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableFB5C;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    *(u16 *)(base+0x36)=6;
    return 1;
fail:
    return 0;
}
u32 sub_0808FBDC(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl0850DE28[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    *(u16 *)(gs + 0x36) = 6;
    return 1;
    }
    return 0;
}
struct State8FC5095 {u8 p0[0x10];u16 mode;u8 p12[0x12];u16 w24;u8 p26[0xA];u16 w30;u8 p32[4];u16 w36;};
struct Player8FC5095 {u8 p0[0x20];u16 state;u8 p22[0xE];u32 flags;u8 rest[0x118];};
struct Display8FC5095 {u8 pad[0x8C];u16 x;};
extern struct State8FC5095 *state8FC5095 asm("gUnk_03005CF4");
extern struct Player8FC5095 players8FC5095[] asm("gUnk_03003CE0");
extern struct Display8FC5095 display8FC5095 asm("gUnk_03003170");
extern void callbackA8FC5095(void) asm("sub_080B4C34");
extern void callbackB8FC5095(void) asm("sub_080B6324");
extern void callbacks8FC5095(void (*)(void),void (*)(void)) asm("sub_0801674C");
u32 sub_0808FC50(u32 arg)
{
    struct State8FC5095 **holder=&state8FC5095;
    struct State8FC5095 *state;
    u32 zero,i;
    if((*holder)->mode==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        callbacks8FC5095(callbackA8FC5095,callbackB8FC5095);
        sub_0800CD9C();
    } else if(sub_08056E90()) {
        sub_080B6360();
        sub_08056FB8(0,2);
        sub_080586B4(0x172);
        sub_08056E78();
        state=*holder;zero=0;
        state->w36=3;
        sub_0800CDAC();
        sub_08057BD0(display8FC5095.x);
        sub_08057B2C(3,10);
        players8FC5095[sub_080020F4()].flags&=~2;
        players8FC5095[sub_080020F4()].state=zero;
        {struct State8FC5095 *finalState=*holder;finalState->mode=zero;finalState->w30=1;finalState->w24=1;}
    }
    if(sub_08056E50()) {
        sub_0805795C();
        sub_080169C8();
        while(!(u8)sub_080B6068()) sub_080003F0();
        sub_08058790();
        sub_08058688(0x172);
        for(i=0;i<=0x16;i++) {
            sub_080889D4(i+0x483,0x1A4);
            if(sub_080021A8()) break;
            sub_08057624(0x1A7);
        }
        if(sub_08002204()) sub_08067DC8();
        while(!sub_08056E90()&&!sub_080021A8()) sub_08057624(1);
        sub_08056E38();
    }
    return 0;
}
void sub_0808FD88(void) {
    u32 i;
    sub_0805795C();
    sub_080169C8();
    while ((sub_080B6068() << 24) == 0) sub_080003F0();
    sub_08058790();
    sub_08058688(0x172);
    for (i = 0; i <= 0x16; i++) {
        sub_080889D4(i + 0x483, 0x1A4);
        if (sub_080021A8() != 0) break;
        sub_08057624(0x1A7);
    }
    if (sub_08002204() != 0) sub_08067DC8();
    while (sub_08056E90() == 0 && sub_080021A8() == 0) sub_08057624(1);
}
struct StateFE0495 {u8 pad[0x10];u16 gate;u8 pad12[0x12];u16 f24;u8 pad26[10];u16 f30;u8 pad32[4];u16 f36;};
extern struct StateFE0495 *stateFE0495 asm("gUnk_03005CF4");
extern u8 playersFE0495[] asm("gUnk_03003CE0");
extern void callbackFE0495(void) asm("sub_0805CB8C");
extern void installFE0495(u32,void (*)(void)) asm("sub_08057328");
extern void startFE0495(s32) asm("sub_0802704C");
extern void modeFE0495(s32) asm("sub_080570DC");
s32 sub_0808FE04(s32 arg)
{
    register s32 stride asm("r4");
    register u8 *base asm("r5");
    register u32 one asm("r6");
    register u32 zero asm("r8");
    struct StateFE0495 **pp;
    register u8 *p asm("r0");
    register u32 *flags asm("r2");
    register u32 index asm("r2");
    register struct StateFE0495 *state asm("r0");
    asm("" : "=r"(stride));
    pp=&stateFE0495;
    asm("" : "+r"(pp));
    if ((*pp)->gate != 0) {
        if (!sub_08056E90()) return 0;
        sub_08058404(stride);
        modeFE0495(1);
        sub_08056FB8(0,0);
        p=(u8 *)sub_080020F4();
        base=playersFE0495;
        stride=0x14C;
        p=(u8 *)((u32)p*stride+(u32)base);
        p+=0x68;
        zero=0;
        one=1;
        *p=one;
        sub_08056E78();
        state=*pp;
        state->f36=zero;
        index=sub_080020F4();
        index*=stride;
        p=base+0x30;
        flags=(u32 *)(index+(u32)p);
        *flags&=~2;
        p=(u8 *)((u32)sub_080020F4()*stride+(u32)base);
        *(u16 *)(p+0x20)=zero;
        p=(u8 *)((u32)sub_080020F4()*stride+(u32)base);
        *(u16 *)(p+0x1C)=4;
        state=*pp;
        state->f30=one;
        state->f24=one;
        return 1;
    }
    startFE0495(arg);
    installFE0495(0,callbackFE0495);
    return 0;
}
u32 sub_0808FEB8(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl0850F894[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    return 1;
    }
    return 0;
}
u32 sub_0808FF28(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl08510530[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    return 1;
    }
    return 0;
}
u32 sub_0808FF98(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl08511538[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    return 1;
    }
    return 0;
}
u32 sub_08090008(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl08512670[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    {
    u32 one = 1;
    *(u16 *)(gs + 0x30) = one;
    *(u16 *)(gs + 0x24) = one;
    return one;
    }
    }
    return 0;
}
struct State9007C95 { u8 p0[0xC];u16 wC;u8 pE[2];u16 mode;u8 p12[0x12];u16 w24;u8 p26[0xA];u16 w30;u8 p32[0xE];u32 index;u8 p44[0x6D8];u32 resource; };
struct Display9007C95 {u8 p0[0x8C];u16 x,p8E,y;};
extern struct State9007C95 *state9007C95 asm("gUnk_03005CF4");
extern struct Display9007C95 display9007C95 asm("gUnk_03003170");
extern u32 table9007C95[] asm("gUnk_08513680");
u32 sub_0809007C(u32 arg)
{
    struct State9007C95 **holder=&state9007C95;
    struct State9007C95 *state;
    u16 mode=(*holder)->mode;
    u32 i;
    if(mode==0) {
        sub_0802704C(arg);
        if(sub_0800CDC0()) {
            (*holder)->wC=mode;
            sub_08023F98(display9007C95.x,display9007C95.y);
            for(i=0;i<=0x77;i++) sub_080003F0();
        }
    } else if(sub_08056E90()) {
        sub_0801ABE8(3);
        sub_0800BB40();
        while(!sub_0801AAE0()) sub_080003F0();
        sub_0800BB40();
        state=state9007C95;
        state->resource=table9007C95[state->index];
        state->mode=0;
        state->w30=1;
        state->w24=1;
        return 1;
    }
    return 0;
}
struct State9011C95 { u8 p0[0x10];u16 mode;u8 p12[0x12];u16 w24;u8 p26[0xA];u16 w30;u8 p32[4];u16 w36;u8 p38[0x3C];u32 flags; };
struct Player9011C95 {u8 p0[0x20];u16 state;u8 p22[0xE];u32 flags;u8 rest[0x118];};
extern struct State9011C95 *state9011C95 asm("gUnk_03005CF4");
extern struct Player9011C95 players9011C95[] asm("gUnk_03003CE0");
u32 sub_0809011C(u32 arg)
{
    struct State9011C95 **holder=&state9011C95;
    u32 zero,one;
    struct State9011C95 *state;
    if((*holder)->mode==0) sub_0802704C(arg);
    else if(sub_08056E90()) {
        sub_08056FB8(0,2);
        sub_08056E78();
        sub_0800CDAC();
        state=*holder;
        zero=0;one=1;
        state->w36=one;
        state->flags|=0x40000;
        players9011C95[sub_080020F4()].flags&=~2;
        players9011C95[sub_080020F4()].state=zero;
        { struct State9011C95 *finalState=*holder; finalState->w30=one; finalState->w24=one; }
    }
    return 0;
}
u32 sub_080901A8(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl08514FAC[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    {
    u32 one = 1;
    *(u16 *)(gs + 0x30) = one;
    *(u16 *)(gs + 0x24) = one;
    return one;
    }
    }
    return 0;
}
u32 sub_0809021C(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl08515FCC[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    {
    u32 one = 1;
    *(u16 *)(gs + 0x30) = one;
    *(u16 *)(gs + 0x24) = one;
    return one;
    }
    }
    return 0;
}
struct State9029095 { u8 p0[0x10];u16 mode;u8 p12[0x12];u16 w24;u8 p26[0xA];u16 w30;u8 p32[4];u16 w36; };
struct Player9029095 {u8 p0[0x1C];u16 action;u8 p1E[2];u16 state;u8 p22[0xE];u32 flags;u8 p34[0x34];u8 active;u8 rest[0xE3];};
extern struct State9029095 *state9029095 asm("gUnk_03005CF4");
extern struct Player9029095 players9029095[] asm("gUnk_03003CE0");
u32 sub_08090290(u32 arg)
{
    struct State9029095 **holder=&state9029095;
    u32 zero,one,firstIndex;
    register struct Player9029095 *base asm("r5");
    if((*holder)->mode==0) sub_0802704C(arg);
    else if(sub_08056E90()) {
        sub_080570DC(1);
        sub_08056FB8(0,0);
        firstIndex=sub_080020F4(); base=players9029095; asm volatile("" : : "r"(base));
        { struct Player9029095 *player=(struct Player9029095 *)(firstIndex*0x14C+(u32)base);
          u8 *active=&player->active; asm("" : "+r"(active)); zero=0;one=1;*active=one; }
        sub_08056E78();
        (*holder)->w36=zero;
        { register u32 offset asm("r2"); u8 *flagsBase; offset=sub_080020F4()*0x14C; asm("" : "+r"(offset)); flagsBase=(u8 *)base+0x30; asm("" : "+r"(flagsBase) : "r"(offset)); offset+=(u32)flagsBase; *(u32 *)offset&=~2; }
        base[sub_080020F4()].state=zero;
        base[sub_080020F4()].action=4;
        { struct State9029095 *finalState=*holder; finalState->w30=one; finalState->w24=one; }
    }
    return 0;
}
struct State9033095 { u8 p0[0x10];u16 mode;u8 p12[0x12];u16 w24;u8 p26[0xA];u16 w30;u8 p32[0xE];u32 index;u8 p44[0x6D8];u32 resource; };
struct Display9033095 {u8 p0[0x72];u16 delay;u8 p74[0x1C];u16 status;};
extern struct State9033095 *state9033095 asm("gUnk_03005CF4");
extern struct Display9033095 display9033095 asm("gUnk_03003170");
extern u32 table9033095[] asm("gUnk_08517220");
extern void callback9033095(void) asm("sub_0808E130");
extern void setCallback9033095(u32,void (*)(void)) asm("sub_08057328");
u32 sub_08090330(u32 arg)
{
    struct State9033095 *state;
    if(state9033095->mode==0) {
        sub_0802704C(arg);
        setCallback9033095(0,callback9033095);
        if(display9033095.status==0) display9033095.delay=20;
    } else if(sub_08056E90()) {
        sub_0801ABE8(3);
        sub_0800BB40();
        while(!sub_0801AAE0()) sub_080003F0();
        sub_0800BB40();
        state=state9033095;
        state->resource=table9033095[state->index];
        state->mode=0;
        state->w30=1;
        state->w24=1;
        return 1;
    }
    return 0;
}
u32 sub_080903C4(u32 arg0)
{
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg0);
    } else if (sub_08056E90() != 0) {
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    gs = (u8 *)gUnk_03005CF4;
    *(u32 *)(gs + 0x71C) = gTbl0851810C[*(u32 *)(gs + 0x40)];
    *(u16 *)(gs + 0x10) = 0;
    return 1;
    }
    return 0;
}
s32 sub_08090434(s32 arg0, s32 arg1) {
    return (s32) (arg1 * arg0) >> 8;
}
s32 sub_0809043C(s32 a,s32 b)
{
    register s32 value asm("r2")=a;
    asm("" : "+r"(value));
    return (s32)((u32)value<<8)/b;
}
s32 sub_0809044C(s32 arg0, s32 arg1)
{
  unsigned long long new_var;
  new_var = ((s64) arg0) * arg1;
  return (s32) (new_var >> 16);
}
s32 sub_08090470(s32 arg0, s32 arg1)
{
    s64 a = arg0; s64 b = arg1; return (s32)((a << 16) / b);
}
s32 sub_08090494(s32 arg0) {
    return 0x10000 / arg0;
}
struct Sprite90495 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];};
extern u16 songs90495[] asm("gUnk_085181C0");
extern u16 sounds90495[] asm("gUnk_0851820A");
extern u8 *texts90495[][2] asm("gUnk_08518198");
extern u8 empty90495[] asm("gUnk_080BB7E4");
extern void sub_08000A34_90495(s32,s32,s32,s32,s32) asm("sub_08000A34");
extern void sub_08065158_90495(void *,s32,s32,s32,s32) asm("sub_08065158");
extern s32 sub_08065370_90495(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void sub_08007870_90495(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
extern void sub_08091F9C_90495(u8 *,u8 *) asm("sub_08091F9C");
extern void sub_08091F20_90495(u16,u8 *) asm("sub_08091F20");
extern void sub_080921E4_90495(s32,s32) asm("sub_080921E4");
extern void sub_0801A764_90495(u8 *,u16,u16) asm("sub_0801A764");
extern s32 sub_0801AAE0_90495(void) asm("sub_0801AAE0");
extern u32 heap90495 asm("gUnk_0300016C");
extern u16 held90495 asm("gUnk_03001308");
extern u16 repeat90495 asm("gUnk_0300130C");
extern u16 pressed90495 asm("gUnk_03001324");
extern s32 lang90495 asm("gUnk_03003470");
extern void palette90495(u32,u32,u32) asm("sub_08000AF0");
void sub_080904A4(void) {
    struct Sprite90495 sprite;
    u16 frames[6],ticks[6],next[6],flags[6],results[6];
    u8 text[12];
    struct { u32 value:16, unused:16; } control;
    struct { u16 x, y; } pos;
    u16 soundCur;
    u16 soundSel;
    u16 songCur;
    u16 songSel;
    s32 mode;
    s32 toggle;
    s32 running;
    u8 counter;
    u16 playing;
    u8 i;
    s32 done;
    u8 *msg;

    sub_0801A6D4(1);
    sub_08000A34_90495(1, 0, 0, 0, 0);
    sub_080009F8(0xF00, 0, 0);
    sub_08000990(0, 0);
    sub_080009C0(0x1100, 0, 0);
    control.value = 0x1801;
    sub_08000AA8(0, &control);
    sub_080921E4_90495(0, 0x18);
    sub_08065158_90495(&sprite, 0x50021, 8, -1, 1);
    sprite.payload[0] = 8;
    frames[3] = 1;
    flags[3] = 1;
    ticks[3] = next[3] = results[3] = 0;
    frames[0] = 2;
    flags[0] = 0;
    ticks[0] = next[0] = results[0] = 0;
    frames[2] = 6;
    flags[2] = 0;
    ticks[2] = next[2] = results[2] = 0;
    frames[1] = 7;
    flags[1] = 0;
    ticks[1] = next[1] = results[1] = 0;
    frames[4] = 8;
    flags[4] = 0;
    ticks[4] = next[4] = results[4] = 0;
    i = 0;
    do {
        text[i] = 0;
        i++;
    } while (i <= 11);
    sub_08092124();
    sub_08000940();
    sub_0801AB50(6);
    soundSel = 0;
    soundCur = 0;
    counter = 0;
    songSel = 0;
    songCur = 0;
    playing = 0;
    toggle = 0;
    mode = 0;
    running = 1;
    do {
        if (repeat90495 & 1) {
            palette90495(0x18, sprite.fC, 1);
            results[1] = sub_08065370_90495(&sprite, frames[1], &ticks[1], &next[1], flags[1]);
            sub_08007870_90495(0xD3, 0x83, frames[1], ticks[1], 0, sprite.payload, sprite.f8, sprite.f0);
        }
        if (repeat90495 & 2) {
            palette90495(0x18, sprite.fC, 1);
            results[2] = sub_08065370_90495(&sprite, frames[2], &ticks[2], &next[2], flags[2]);
            sub_08007870_90495(0xC1, 0x83, frames[2], ticks[2], 0, sprite.payload, sprite.f8, sprite.f0);
        }
        if (repeat90495 & 0xF0) {
            if (repeat90495 & 0x40)
                frames[0] = 2;
            else if (repeat90495 & 0x80)
                frames[0] = 3;
            else if (repeat90495 & 0x10)
                frames[0] = 4;
            else
                frames[0] = 5;
            palette90495(0x18, sprite.fC, 1);
            results[0] = sub_08065370_90495(&sprite, frames[0], &ticks[0], &next[0], flags[0]);
            sub_08007870_90495(0x30, 0x7D, frames[0], ticks[0], 0, sprite.payload, sprite.f8, sprite.f0);
        }
        if (mode == 0) {
            palette90495(0x18, sprite.fC, 1);
            results[3] = sub_08065370_90495(&sprite, frames[3], &ticks[3], &next[3], flags[3]);
            sub_08007870_90495(0x7B, 0x7E, frames[3], ticks[3], mode, sprite.payload, sprite.f8, sprite.f0);
        }
        palette90495(0x18, sprite.fC, 1);
        results[4] = sub_08065370_90495(&sprite, frames[4], &ticks[4], &next[4], flags[4]);
        sub_08007870_90495(0xC7, 0x74, frames[4], ticks[4], 0, sprite.payload, sprite.f8, sprite.f0);
        if (results[4] != 0 && frames[4] == 9) {
            frames[4] = 11;
            flags[4] = 1;
            results[4] = 0;
            next[4] = 0;
            ticks[4] = 0;
        }
        if (playing == 1 && heap90495 == 0)
            sub_08092190();
        if (pressed90495 & 8) {
            if (playing != 0) {
            } else if (mode != 0) {
                mode = 0;
                counter = 0;
                frames[4] = 8;
                flags[4] = counter;
                results[4] = counter;
                next[4] = counter;
                ticks[4] = counter;
                frames[3] = 1;
                flags[3] = 1;
                results[3] = counter;
                next[3] = counter;
                ticks[3] = counter;
            } else {
                mode = 1;
                counter = 60;
                frames[4] = 9;
                flags[4] = playing;
                results[4] = playing;
                next[4] = playing;
                ticks[4] = playing;
            }
        } else if ((held90495 & 0x30) && mode != 0) {
            toggle ^= 1;
            counter = 60;
        } else if ((held90495 & 0x40) && mode != 0 && counter == 0) {
            if (toggle == 0)
                songSel = songSel != 0 ? songSel - 1 : 36;
            else
                soundSel = soundSel != 0 ? soundSel - 1 : 289;
        } else if ((held90495 & 0x80) && mode != 0 && counter == 0) {
            if (toggle == 0)
                songSel = songSel != 36 ? songSel + 1 : 0;
            else
                soundSel = soundSel != 289 ? soundSel + 1 : 0;
        } else if ((pressed90495 & 1) && mode != 0 && counter == 0) {
            if (toggle == 0) {
                if (playing == 1) {
                    m4aSongNumStop(songs90495[songCur]);
                } else {
                    frames[4] = 10;
                    flags[4] = 1;
                    results[4] = toggle;
                    next[4] = toggle;
                    ticks[4] = toggle;
                }
                playing = 1;
                songCur = songSel;
                m4aSongNumStart(songs90495[songSel]);
            } else {
                m4aSongNumStop(sounds90495[soundCur]);
                soundCur = soundSel;
                m4aSongNumStart(sounds90495[soundSel]);
            }
        } else if (pressed90495 & 2) {
            counter = 0;
            if (mode != 0) {
                if (playing == 1) {
                    m4aSongNumStop(songs90495[songCur]);
                    playing = 0;
                    frames[4] = 11;
                    flags[4] = 1;
                    results[4] = counter;
                    next[4] = counter;
                    ticks[4] = counter;
                }
                m4aSongNumStop(sounds90495[soundCur]);
            } else if (playing == 0) {
                running = 0;
            }
        }
        /* Macro-style block: its loop note raises the weight of pos so it keeps r7. */
        do {
            pos.x = 0x4C;
            pos.y = 0x74;
        } while (0);
        if (mode != 0) {
            if (counter != 0) {
                u8 old = counter;
                counter--;
                if (old & 3)
                    msg = texts90495[lang90495][toggle];
                else
                    msg = empty90495;
                sub_08091F9C_90495(msg, text);
                sub_0801A764_90495(text, pos.x, pos.y);
            } else {
                sub_08091F9C_90495(texts90495[lang90495][toggle], text);
                if (toggle == 0)
                    sub_08091F20_90495(songSel + 1, text);
                else
                    sub_08091F20_90495(soundSel + 1, text);
            }
            sub_0801A764_90495(text, pos.x, pos.y);
        }
        i = 0;
        do {
            text[i] = 0;
            i++;
        } while (i <= 11);
        sub_080003F0();
    } while (running != 0);
    sub_0801AA8C(0x3C);
    while ((done = sub_0801AAE0_90495()) == 0) {
        palette90495(0x18, sprite.fC, 1);
        sub_08065370_90495(&sprite, frames[3], &ticks[3], &next[3], flags[3]);
        sub_08007870_90495(0x7B, 0x7E, frames[3], ticks[3], done, sprite.payload, sprite.f8, sprite.f0);
        palette90495(0x18, sprite.fC, 1);
        sub_08065370_90495(&sprite, frames[4], &ticks[4], &next[4], flags[4]);
        sub_08007870_90495(0xC7, 0x74, frames[4], ticks[4], done, sprite.payload, sprite.f8, sprite.f0);
        sub_080003F0();
    }
    if (heap90495 != 0) {
        sub_08001538(heap90495);
        heap90495 = 0;
    }
    sub_0801A6D4(0);
    sub_08000968();
    sub_08000420(0x14);
}

struct Anim095_08090B84 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap095_08090B84 asm("gUnk_0300016C");
extern void init095_08090B84(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette095_08090B84(u32,u32,u32) asm("sub_08000AF0");
extern s32 step095_08090B84(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw095_08090B84(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08090B84(void) {
    struct Anim095_08090B84 *p[2];
    struct Anim095_08090B84 *a;
    struct Anim095_08090B84 *b;
    u16 timer;
    s32 state;

    heap095_08090B84 = (u32)sub_08001494(0x88);
    a = (struct Anim095_08090B84 *)heap095_08090B84;
    p[0] = a;
    b = a + 1;
    p[1] = b;
    init095_08090B84(a, 0x5008A, 0, -1, 0);
    a->payload[0] = 0;
    a->frame = 10;
    a->next = 0;
    a->tick = 0;
    a->x = 0x10000;
    a->y = 0x5800;
    init095_08090B84(b, 0x500BE, 1, -1, 0);
    b->payload[0] = 1;
    b->frame = 14;
    a[1].next = 0;
    b->tick = 0;
    b->x = -0x1000;
    b->y = 0x5800;
    timer = 0;
    state = 0;
    while (heap095_08090B84 != 0) {
        switch (state) {
        case 0:
            p[0]->x -= 0xC0;
            if (p[0]->x <= 0x8000) {
                timer = 0;
                state = 1;
            }
            break;
        case 1:
            p[0]->x -= 0xC0;
            p[1]->x += 0x100;
            if (++timer == 31) {
                p[0]->frame = 18;
                p[0]->next = 0;
                p[0]->tick = 0;
                timer = 0;
                state = 2;
            }
            break;
        case 2:
            p[1]->x += 0x100;
            if (++timer == 13) {
                p[0]->frame = 2;
                p[0]->next = 0;
                p[0]->tick = 0;
                p[1]->frame = 6;
                p[1]->next = 0;
                p[1]->tick = 0;
                timer = 0;
                state = 3;
            }
            break;
        case 3:
            if (++timer == 0x61) {
                p[0]->frame = 2;
                p[0]->next = 0;
                p[0]->tick = 0;
                p[1]->frame = 14;
                p[1]->next = 0;
                p[1]->tick = 0;
                timer = 0;
                state = 4;
            }
            break;
        case 4:
            p[0]->x += 0xA0;
            p[1]->x += 0xA0;
            if (++timer == 25) {
                p[0]->frame = 14;
                p[0]->next = 0;
                p[0]->tick = 0;
                p[1]->frame = 14;
                p[1]->next = 0;
                p[1]->tick = 0;
                timer = 0;
                state = 5;
            }
            break;
        case 5:
            p[0]->x += 0x100;
            p[1]->x += 0x140;
            if (p[1]->x > 0x11FFF) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette095_08090B84(0x10, p[0]->fC, 1);
        step095_08090B84(p[0], p[0]->frame, &p[0]->tick, &p[0]->next, 1);
        draw095_08090B84(p[0]->x >> 8, p[0]->y >> 8, p[0]->frame, p[0]->tick, 0, p[0]->payload, p[0]->f8, p[0]->f0);
        palette095_08090B84(0x11, p[1]->fC + 0x20, 1);
        step095_08090B84(p[1], p[1]->frame, &p[1]->tick, &p[1]->next, 1);
        draw095_08090B84(p[1]->x >> 8, p[1]->y >> 8, p[1]->frame, p[1]->tick, 0, p[1]->payload, p[1]->f8, p[1]->f0);
        sub_080003F0();
        if (state == 0xFF)
            break;
    }
    if (heap095_08090B84 != 0) {
        sub_08001538(heap095_08090B84);
        heap095_08090B84 = 0;
    }
}
extern s16 random095_08090E38(void) asm("sub_0800086C");
struct Anim095_08090E38 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap095_08090E38 asm("gUnk_0300016C");
extern void init095_08090E38(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette095_08090E38(u32,u32,u32) asm("sub_08000AF0");
extern s32 step095_08090E38(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw095_08090E38(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08090E38(void) {
    struct Anim095_08090E38 *a;
    s32 flag;
    u16 timer;
    s32 state;
    s32 done;
    u8 variant;
    s16 r;
    u32 h;
    u16 *next;

    a = (struct Anim095_08090E38 *)(heap095_08090E38 = (u32)sub_08001494(0x44));
    r = random095_08090E38() % 3;
    variant = r < 0 ? -r : r;
    switch (variant) {
    case 0:
        init095_08090E38(a, 0x50012, 0, -1, 0);
        break;
    case 1:
        init095_08090E38(a, 0x50013, 0, -1, 0);
        break;
    case 2:
        init095_08090E38(a, 0x50014, 0, -1, 0);
        break;
    }
    a->payload[0] = 0;
    a->frame = 10;
    a->next = 0;
    a->tick = 0;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap095_08090E38;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                switch (variant) {
                case 0:
                    init095_08090E38(a, 0x50015, 0, -1, 0);
                    break;
                case 1:
                    init095_08090E38(a, 0x50016, 0, -1, 0);
                    break;
                case 2:
                    init095_08090E38(a, 0x50017, 0, -1, 0);
                    break;
                }
                done = 0;
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                switch (variant) {
                case 0:
                    init095_08090E38(a, 0x50012, 0, -1, 0);
                    break;
                case 1:
                    init095_08090E38(a, 0x50013, 0, -1, 0);
                    break;
                case 2:
                    init095_08090E38(a, 0x50014, 0, -1, 0);
                    break;
                }
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette095_08090E38(0x10, a->fC, 1);
        done = step095_08090E38(a, a->frame, &a->tick, next, flag);
        draw095_08090E38(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap095_08090E38 == 0)
            break;
    }
    if (heap095_08090E38 != 0) {
        sub_08001538(heap095_08090E38);
        heap095_08090E38 = 0;
    }
}
extern s16 random095_080910A8(void) asm("sub_0800086C");
struct Anim095_080910A8 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap095_080910A8 asm("gUnk_0300016C");
extern void init095_080910A8(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette095_080910A8(u32,u32,u32) asm("sub_08000AF0");
extern s32 step095_080910A8(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw095_080910A8(s32,s32,u32,u32,s32,void *,u32,u32) asm("sub_08007870");
void sub_080910A8(void) {
    struct Anim095_080910A8 *a;
    s32 flag;
    u16 timer;
    s32 state;
    s32 done;
    u8 variant;
    s16 r;
    u32 h;
    u16 *next;

    a = (struct Anim095_080910A8 *)(heap095_080910A8 = (u32)sub_08001494(0x44));
    r = random095_080910A8() % 2;
    variant = r < 0 ? -r : r;
    switch (variant) {
    case 0:
        init095_080910A8(a, 0x50022, 0, -1, 0);
        break;
    case 1:
        init095_080910A8(a, 0x50023, 0, -1, 0);
        break;
    }
    a->payload[0] = 0;
    a->frame = 10;
    a->next = 0;
    a->tick = 0;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap095_080910A8;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                switch (variant) {
                case 0:
                    init095_080910A8(a, 0x50024, 0, -1, 0);
                    break;
                case 1:
                    init095_080910A8(a, 0x50025, 0, -1, 0);
                    break;
                }
                done = 0;
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                switch (variant) {
                case 0:
                    init095_080910A8(a, 0x50022, 0, -1, 0);
                    break;
                case 1:
                    init095_080910A8(a, 0x50023, 0, -1, 0);
                    break;
                }
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette095_080910A8(0x10, a->fC, 1);
        done = step095_080910A8(a, a->frame, &a->tick, next, flag);
        draw095_080910A8(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap095_080910A8 == 0)
            break;
    }
    if (heap095_080910A8 != 0) {
        sub_08001538(heap095_080910A8);
        heap095_080910A8 = 0;
    }
}
extern s16 random095_080912CC(void) asm("sub_0800086C");
struct Anim095_080912CC {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap095_080912CC asm("gUnk_0300016C");
extern void init095_080912CC(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette095_080912CC(u32,u32,u32) asm("sub_08000AF0");
extern s32 step095_080912CC(void *,u32,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw095_080912CC(s32,s32,u32,u32,s32,void *,u32,u32) asm("sub_08007870");
void sub_080912CC(void) {
    struct Anim095_080912CC *a;
    s32 flag;
    u16 timer;
    s32 state;
    s32 done;
    u8 variant;
    s16 r;
    u32 h;
    u16 *next;

    a = (struct Anim095_080912CC *)(heap095_080912CC = (u32)sub_08001494(0x44));
    r = random095_080912CC() % 2;
    variant = r < 0 ? -r : r;
    switch (variant) {
    case 0:
        init095_080912CC(a, 0x5001D, 0, -1, 0);
        break;
    case 1:
        init095_080912CC(a, 0x5001F, 0, -1, 0);
        break;
    }
    a->payload[0] = 0;
    a->frame = 10;
    a->next = 0;
    a->tick = 0;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap095_080912CC;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                switch (variant) {
                case 0:
                    init095_080912CC(a, 0x5001E, 0, -1, 0);
                    break;
                case 1:
                    init095_080912CC(a, 0x50021, 0, -1, 0);
                    break;
                }
                done = 0;
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                switch (variant) {
                case 0:
                    init095_080912CC(a, 0x5001D, 0, -1, 0);
                    break;
                case 1:
                    init095_080912CC(a, 0x5001F, 0, -1, 0);
                    break;
                }
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette095_080912CC(0x10, a->fC, 1);
        done = step095_080912CC(a, a->frame, &a->tick, next, flag);
        draw095_080912CC(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap095_080912CC == 0)
            break;
    }
    if (heap095_080912CC != 0) {
        sub_08001538(heap095_080912CC);
        heap095_080912CC = 0;
    }
}
extern s16 random096(void) asm("sub_0800086C");
struct Anim096_080914F0 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_080914F0 asm("gUnk_0300016C");
extern void init096_080914F0(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_080914F0(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_080914F0(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_080914F0(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_080914F0(void) {
    struct Anim096_080914F0 *a;
    s32 flag;
    u16 timer;
    s32 state;
    s32 done;
    u8 variant;
    s16 r;
    u32 h;
    u16 *next;

    a = (struct Anim096_080914F0 *)(heap096_080914F0 = (u32)sub_08001494(0x44));
    r = random096() % 2;
    variant = r < 0 ? -r : r;
    switch (variant) {
    case 0:
        init096_080914F0(a, 0x5002B, 0, -1, 0);
        break;
    case 1:
        init096_080914F0(a, 0x5002A, 0, -1, 0);
        break;
    }
    a->payload[0] = 0;
    a->frame = 10;
    a->next = 0;
    a->tick = 0;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap096_080914F0;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                switch (variant) {
                case 0:
                    init096_080914F0(a, 0x5002C, 0, -1, 0);
                    break;
                case 1:
                    init096_080914F0(a, 0x5002D, 0, -1, 0);
                    break;
                }
                done = 0;
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                switch (variant) {
                case 0:
                    init096_080914F0(a, 0x5002B, 0, -1, 0);
                    break;
                case 1:
                    init096_080914F0(a, 0x5002A, 0, -1, 0);
                    break;
                }
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette096_080914F0(0x10, a->fC, 1);
        done = step096_080914F0(a, a->frame, &a->tick, next, flag);
        draw096_080914F0(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap096_080914F0 == 0)
            break;
    }
    if (heap096_080914F0 != 0) {
        sub_08001538(heap096_080914F0);
        heap096_080914F0 = 0;
    }
}
struct Anim096_08091714 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091714 asm("gUnk_0300016C");
extern void init096_08091714(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091714(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091714(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091714(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091714(void) {
    struct Anim096_08091714 *a;
    s32 flag;
    u16 timer;
    s32 state;
    s32 done;
    u8 variant;
    s16 r;
    u32 h;
    u16 *next;

    a = (struct Anim096_08091714 *)(heap096_08091714 = (u32)sub_08001494(0x44));
    r = random096() % 2;
    variant = r < 0 ? -r : r;
    switch (variant) {
    case 0:
        init096_08091714(a, 0x50030, 0, -1, 0);
        break;
    case 1:
        init096_08091714(a, 0x50031, 0, -1, 0);
        break;
    }
    a->payload[0] = 0;
    a->frame = 10;
    a->next = 0;
    a->tick = 0;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap096_08091714;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                switch (variant) {
                case 0:
                    init096_08091714(a, 0x50033, 0, -1, 0);
                    break;
                case 1:
                    init096_08091714(a, 0x50032, 0, -1, 0);
                    break;
                }
                done = 0;
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                switch (variant) {
                case 0:
                    init096_08091714(a, 0x50030, 0, -1, 0);
                    break;
                case 1:
                    init096_08091714(a, 0x50031, 0, -1, 0);
                    break;
                }
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette096_08091714(0x10, a->fC, 1);
        done = step096_08091714(a, a->frame, &a->tick, next, flag);
        draw096_08091714(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap096_08091714 == 0)
            break;
    }
    if (heap096_08091714 != 0) {
        sub_08001538(heap096_08091714);
        heap096_08091714 = 0;
    }
}
struct Anim096_08091938 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091938 asm("gUnk_0300016C");
extern void init096_08091938(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091938(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091938(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091938(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091938(void) {
    struct Anim096_08091938 *a;
    s32 flag;
    u16 timer;
    s32 state;
    s32 done;
    u8 variant;
    s16 r;
    u32 h;
    u16 *next;

    a = (struct Anim096_08091938 *)(heap096_08091938 = (u32)sub_08001494(0x44));
    r = random096() % 2;
    variant = r < 0 ? -r : r;
    switch (variant) {
    case 0:
        init096_08091938(a, 0x50035, 0, -1, 0);
        break;
    case 1:
        init096_08091938(a, 0x50037, 0, -1, 0);
        break;
    }
    a->payload[0] = 0;
    a->frame = 10;
    a->next = 0;
    a->tick = 0;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap096_08091938;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                switch (variant) {
                case 0:
                    init096_08091938(a, 0x50036, 0, -1, 0);
                    break;
                case 1:
                    init096_08091938(a, 0x50038, 0, -1, 0);
                    break;
                }
                done = 0;
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                switch (variant) {
                case 0:
                    init096_08091938(a, 0x50035, 0, -1, 0);
                    break;
                case 1:
                    init096_08091938(a, 0x50037, 0, -1, 0);
                    break;
                }
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette096_08091938(0x10, a->fC, 1);
        done = step096_08091938(a, a->frame, &a->tick, next, flag);
        draw096_08091938(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap096_08091938 == 0)
            break;
    }
    if (heap096_08091938 != 0) {
        sub_08001538(heap096_08091938);
        heap096_08091938 = 0;
    }
}
struct Anim096_08091B5C {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091B5C asm("gUnk_0300016C");
extern void init096_08091B5C(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091B5C(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091B5C(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091B5C(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091B5C(void) {
    struct Anim096_08091B5C *a;
    s32 flag;
    u16 timer;
    s32 state;
    register s32 done asm("r9");
    s32 variant;
    u32 h;
    u16 *next;

    a = (struct Anim096_08091B5C *)(heap096_08091B5C = (u32)sub_08001494(0x44));
    random096();
    variant = 0;
    init096_08091B5C(a, 0x50027, 0, -1, variant);
    a->payload[0] = variant;
    a->frame = 10;
    a->next = variant;
    a->tick = variant;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap096_08091B5C;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                if (variant == 0)
                    init096_08091B5C(a, 0x50028, 0, -1, 0);
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                if (variant == 0)
                    init096_08091B5C(a, 0x50027, 0, -1, 0);
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette096_08091B5C(0x10, a->fC, 1);
        done = step096_08091B5C(a, a->frame, &a->tick, next, flag);
        draw096_08091B5C(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap096_08091B5C == 0)
            break;
    }
    if (heap096_08091B5C != 0) {
        sub_08001538(heap096_08091B5C);
        heap096_08091B5C = 0;
    }
}
struct Anim096_08091CF8 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091CF8 asm("gUnk_0300016C");
extern void init096_08091CF8(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091CF8(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091CF8(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091CF8(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091CF8(void) {
    struct Anim096_08091CF8 *a;
    s32 flag;
    u16 timer;
    s32 state;
    register s32 done asm("r9");
    s32 variant;
    u32 h;
    u16 *next;

    a = (struct Anim096_08091CF8 *)(heap096_08091CF8 = (u32)sub_08001494(0x44));
    random096();
    variant = 0;
    init096_08091CF8(a, 0x50019, 0, -1, variant);
    a->payload[0] = variant;
    a->frame = 10;
    a->next = variant;
    a->tick = variant;
    a->x = 0x10000;
    a->y = 0x5800;
    flag = 1;
    timer = 0;
    state = 0;
    h = heap096_08091CF8;
    next = &a->next;
    if (h == 0)
        return;
    for (;;) {
        switch (state) {
        case 0:
            a->x -= 0x100;
            if (a->x <= 0x8000) {
                if (variant == 0)
                    init096_08091CF8(a, 0x5001A, 0, -1, 0);
                flag = 0;
                a->payload[0] = 0;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 1;
            }
            break;
        case 1:
            if (done != 0) {
                if (variant == 0)
                    init096_08091CF8(a, 0x50019, 0, -1, 0);
                flag = 1;
                a->frame = 10;
                *next = 0;
                a->tick = 0;
                state = 2;
            }
            break;
        case 2:
            a->x -= 0x100;
            if (a->x <= -0x1000) {
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (++timer == 61)
                state = 0xFF;
            break;
        }
        palette096_08091CF8(0x10, a->fC, 1);
        done = step096_08091CF8(a, a->frame, &a->tick, next, flag);
        draw096_08091CF8(a->x >> 8, a->y >> 8, a->frame, a->tick, 0, a->payload, a->f8, a->f0);
        sub_080003F0();
        if (state == 0xFF || heap096_08091CF8 == 0)
            break;
    }
    if (heap096_08091CF8 != 0) {
        sub_08001538(heap096_08091CF8);
        heap096_08091CF8 = 0;
    }
}
extern u32 heapState096 asm("gUnk_0300016C");
void sub_08091E94(void)
{
    u8 *memory;
    u32 *heapAddress;
    u8 *volatile parts[4];
    s32 state;
    u16 count;
    heapAddress=&heapState096;
    asm("" : "+r"(heapAddress));
    memory = (u8 *)sub_08001494(0x110);
    *heapAddress = (u32)memory;
    parts[0] = memory;
    parts[1] = (u8 *)((u32)memory + 0x44);
    parts[2] = (u8 *)((u32)memory + 0x88);
    parts[3] = (u8 *)((u32)memory + 0xCC);
    count = 0;
    state = 0;
    if (memory != 0) {
loop:
            switch (state) {
            case 0: state = 1; break;
            case 1: state = 2; break;
            case 2: state = 6; break;
            case 6:
                count++;
                if (count == 0x3D) state = 0xFF;
                break;
            }
            sub_080003F0();
        if (state != 0xFF && heapState096 != 0) goto loop;
        if (heapState096 != 0) {
            sub_08001538(heapState096);
            heapState096 = 0;
        }
    }
}


void sub_08091F20(u16 number, u8 *text)
{
    u8 count;
    u8 hundreds;
    u16 remainder;
    u8 tens;
    u32 ones;
    count = 0;
    goto check;
next:
    text++;
    count++;
    if (count > 0xFEU)
        goto append;
check:
    if (*text != 0 && *text != 0xFD)
        goto next;
append:
    *text = 0x51;
    text++;
    hundreds = number / 100U;
    remainder = number % 100U;
    tens = remainder / 10U;
    ones = (remainder % 10U) << 24;
    *text++ = hundreds + 0x41;
    *text++ = tens + 0x41;
    *text = (ones + 0x41000000U) >> 24;
    text[1] = 0xFD;
}
extern u32 language096F asm("gUnk_03003470");
s32 sub_08091F9C(u8 *source,u8 *output)
{
    u32 mode;
    u8 count;
    register u8 *cursor asm("r3");
    register u32 a asm("r2");
    u8 c;
    register u32 test asm("r0");
    cursor=source;
    asm("" : "+r"(cursor));
    mode=language096F;
    if(mode==0) goto ascii;
    asm("" : "+r"(mode));
    if(mode<=4) goto extended;
ascii:
    count=0;
    goto read_ascii;
ascii_body:
    if((u8)a==0x20) { test=0x51; goto ascii_store; }
    if((u8)(a-0x41)<=0x19) { test=a-0x40; asm("" : "+r"(test)); goto ascii_store; }
    if((u8)(a-0x61)<=0x19) { test=a-0x40; goto ascii_store; }
    if((u8)(a-0x30)>9) goto finish_ascii;
    test=a+0x10;
ascii_store:
    *output=test;
    cursor++;output++;count++;
    if(count>0xFE) goto done;
read_ascii:
    test=*cursor;
    a=test;
    asm("" : "+r"(a) : "r"(test));
    if(a!=0) goto ascii_body;
finish_ascii:
    *output=0xFD;
    goto done;
finish_extended:
    test=0xFD;
    goto store_extended;
extended:
    count=0;
    goto read_extended;
extended_body:
    if(test==0x20) *output=0x51;
    else if((u8)(c-0x41)<=0x19 || (u8)(c-0x61)<=0x19) *output=c-0x40;
    else if((u8)(c-0x30)<=9) *output=c+0xF;
    else *output=c;
    cursor++;output++;count++;
    if(count>0xFE) goto done;
read_extended:
    c=*cursor;
    test=c;
    asm("" : "+r"(test) : "r"(c));
    if(test==0) goto finish_extended;
    if(test!=0xFD) goto extended_body;
store_extended:
    *output=test;
done:

    return (u8)(count-1);
}



u32 sub_08092080(void)
{
    if (gUnk_03000168 == 0xD)
        return 1;
    return 0;
}
void sub_08092094(void) {
    gUnk_03000168 = 0;
}
void sub_080920A0(void)
{
    if (gUnk_03000168 == 0xD)
        return;
    if (gUnk_0851844E[gUnk_03000168] == gUnk_03001324_16)
        gUnk_03000168 = gUnk_03000168 + 1;
    else if (gUnk_03001324_16 != 0)
        gUnk_03000168 = 0;
    if (gUnk_03000168 == 0xD)
        sub_0805865C(0x33);
}
void sub_080920E4(void)
{
    u32 zero;
    gTask01C0.fC = (u32)sub_080904A4;
    zero = 0;
    gTask01C0.f24 = zero;
    gTask01C0.f20 = sub_08001494(0x800);
    gTask01C0.f10 = gTask01C0.f20 + 0x7FC;
    gTask01C0.f8 = 0x40;
    gTask01C0.f0 = zero;
    gTask01C0.f18 = zero;
    sub_08000274_3((u32)&gTask01C0, 0, 0);
}
void sub_08092124(void)
{
    u32 zero;
    gWord0300016C = zero = 0;
    gTbl03000198[0] = (u32)sub_08090B84;
    gTbl03000198[1] = (u32)sub_08090E38;
    gTbl03000198[2] = (u32)sub_080910A8;
    gTbl03000198[3] = (u32)sub_080912CC;
    gTbl03000198[4] = (u32)sub_080914F0;
    gTbl03000198[5] = (u32)sub_08091714;
    gTbl03000198[6] = (u32)sub_08091938;
    gTbl03000198[7] = (u32)sub_08091B5C;
    gTbl03000198[8] = (u32)sub_08091CF8;
    gTask0170.f24 = zero;
    gTask0170.f8 = 0x3C;
    gTask0170.f0 = zero;
    gTask0170.f18 = zero;
}
void sub_08092190(void)
{
    s32 i = (s16)((s16)sub_0800086C() % 9);
    if (i < 0)
        i = -i;
    {
    u8 k = i;
    gTask0170.fC = gTbl03000198[k];
    }
    gTask0170.f20 = sub_08001494(0x400);
    gTask0170.f10 = gTask0170.f20 + 0x3FC;
    sub_08000274_3((u32)&gTask0170, 0, 0);
}
extern s16 vramFlag096 asm("gUnk_03001F40");
s32 sub_080921E4(u32 id, s32 block)
{
    void *buffer;
    u32 *resource;
    u8 *tiles;
    s32 palette;
    u8 i;
    u32 offset;
    resource = (u32 *)sub_08007280(id);
    tiles = (u8 *)sub_08007280(*resource);
    palette = sub_08007280((u16)*resource | 0x70000);
    i = 0;
    do {
        offset = i << 11;
        sub_08001348(tiles + offset, (void *)(offset + 0x06000000), 0x800);
        sub_080003F0();
        i++;
    } while (i <= 15U);
    if (id & 0x40000000) {
        buffer = resource + 1;
        sub_08001348(buffer, (void *)((block << 11) + 0x06000000), 0x800);
        sub_080003F0();
    } else {
        buffer = 0;
        buffer = sub_08000BC8(resource + 1, &buffer);
        sub_08001348(buffer, (void *)((block << 11) + 0x06000000), 0x800);
        i = 0;
        do {
            sub_080003F0();
            i++;
        } while (i <= 7U);
        if (buffer != 0) sub_08001538((s32)buffer);
    }
    sub_08000AF0(0, (void *)palette, 0x10);
    vramFlag096 = 0;
    return palette;
}
void sub_080922B4(void)
{
    volatile Handler *a = (volatile Handler *)&gUnk_03000210;
    volatile Handler *b;
    a[6] = sub_08095A60;
    b = (volatile Handler *)&gUnk_03000230;
    b[6] = sub_08095AD8;
    a[7] = sub_08092CB8;
    b[7] = sub_080923FC;
    a[0] = sub_08092EB4;
    b[0] = sub_08092F58;
    a[1] = sub_080934D4;
    b[1] = sub_08093584;
    a[2] = sub_080943F8;
    b[2] = sub_08093BAC;
    a[4] = sub_08094590;
    b[4] = sub_08094638;
    a[5] = sub_08094A00;
    b[5] = sub_08094AB8;
    a[3] = sub_08095518;
    b[3] = sub_08094F3C;
}
void sub_08092344(void) {

}
void sub_08092348(u8 a, u8 b, u8 c)
{
    gTask01E8.fC = (u32)sub_080923B4;
    gTask01E8.f20 = 0;
    do {
        gTask01E8.f20 = sub_08001494(0x800);
        sub_080003F0();
    } while (gTask01E8.f20 == 0);
    gTask01E8.f10 = gTask01E8.f20 + 0x7FC;
    gTask01E8.f8 = 0x40;
    gTask01E8.f0 = 0;
    gTask01E8.f18 = 0;
    gTask01E8.f24 = 0;
    sub_08000274_3((u32)&gTask01E8, (s8)a, ((s8)b << 8) | (s8)c);
}
s32 sub_080923B0(void) {
    return 3;
}
typedef void (*Callback096)(s32, s32);
extern Callback096 callbacks096A[] asm("gUnk_03000210");
extern Callback096 callbacks096B[] asm("gUnk_03000230");
void sub_080923B4(s32 indexInput, u32 packedInput)
{
    register s32 slot asm("r5") = indexInput;
    register s32 bits asm("r4") = packedInput;
    register Callback096 *table asm("r0");
    register s32 high asm("r6");
    asm("" : : "r"(bits));
    bits <<= 16;
    table = callbacks096A;
    slot = (slot << 24) >> 22;
    table = (Callback096 *)(slot + (u32)table);
    high = bits >> 24;
    bits = (bits << 8) >> 24;
    (*table)(high, bits);
    (*(Callback096 *)((u8 *)callbacks096B + slot))(high, bits);
    sub_08000420(0x12001111);
}
#ifdef NONMATCHING
struct Anim923FC {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];};
extern u16 cache923FC[] asm("gUnk_03001250");
extern u16 v923FC_250 asm("gUnk_03000250");
extern s16 v923FC_252 asm("gUnk_03000252");
extern u16 v923FC_254 asm("gUnk_03000254");
extern s16 v923FC_256 asm("gUnk_03000256");
extern void init923FC(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void draw923FC(s32,s32,u16,s32,s32,void *,u32,u32) asm("sub_08007870");
extern void drawSpecial923FC(s32,s32,u16,s32,s32,void *,u32,u32,u8) asm("sub_080087AC");
extern void fade923FC(s32,s32,s32,s32,s32,void *) asm("sub_0800903C");
extern s16 random923FC(void) asm("sub_0800086C");
int abs(int);
static inline s32 plus923FC(s16 s, u16 v) { return s + v; }
static inline s32 minus923FC(u16 v, s16 s) { return v - s; }
#define BUSY923FC() (sub_0800CCCC() != 0 || sub_0800CC98() != 0 || sub_0800CD34() != 0)
void sub_080923FC_u8(u32,u32) asm("sub_080923FC");
void sub_080923FC_u8(u32 arg0, u32 arg1) {
    struct Anim923FC a, b;
    u32 *descriptorMember096;
    struct OffsetCache923FC { u16 x0, y0, x1, y1; };
    extern struct OffsetCache923FC offsetFields923FC asm("gUnk_03001250");
    s32 xs[11], ys[11];
    u16 delay[11], speed[11], accel[11];
    u8 count0 = arg0;
    u8 kind = arg1;
    s16 accum;
    s16 y;
    s16 target;
    s32 param;
    u16 round;
    u16 count;
    s16 x;
    u16 timer;
    u16 fade;
    u16 shake;
    u16 i;
    s32 flag;
    s32 lowerLimit;
    s16 *offsetLo, *offsetHi;

    init923FC(&a, 0x50022, 7, -1, 1);
    init923FC(&b, 0x50026, 8, -1, 1);
    a.payload[7] = 0;
    b.payload[8] = 1;
    y = 0xD4;
    offsetFields923FC.x0 = 8;
    offsetFields923FC.y0 = 0;
    offsetFields923FC.x1 = 8;
    offsetFields923FC.y1 = 0;
    v923FC_250 = v923FC_254 = 8;
    v923FC_252 = -12;
    v923FC_256 = 12;
    param = 3;
    x = 0x7C;
    sub_0801AB50(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0805865C(0xF7);
    timer = 60;
    sub_08092E28(6);
    sub_08092E1C(60);
    do {
        shake = sub_08092E34();
        if (!BUSY923FC()) {
            offsetFields923FC.y0 = plus923FC(shake, v923FC_252);
            offsetFields923FC.y1 = plus923FC(shake, v923FC_256);
        }
        sub_080003F0();
        if (sub_080021A8() == 1)
            goto end;
    } while (--timer != 0xFFFF);
    v923FC_252 = offsetFields923FC.y0;
    v923FC_256 = offsetFields923FC.y1;
    i = 0;
    do {
        if (i & 1)
            ys[i] = (i * 16 + 0x70) << 8;
        else
            ys[i] = (0x70 - i * 16) << 8;
        xs[i] = i * 60 + 30;
        i++;
    } while (i <= 3);
    {
        u16 *phase2Offsets = cache923FC;
        fade = 0;
        accum = 0;
        timer = 0xF0;
        sub_08092E28(4);
        do {
            s32 d;
            shake = sub_08092E34();
            accum += 2;
            d = (s16)accum >> 8;
            v923FC_252 -= d;
            v923FC_256 += d;
            if ((s16)v923FC_252 <= -16)
                v923FC_252 = -16;
            if ((s16)v923FC_256 > 31)
                v923FC_256 = 32;
            if (timer <= 0x77) {
                if (fade <= 15) {
                    fade++;
                    flag = 1;
                } else {
                    fade = 16;
                    flag = 0;
                }
                fade923FC(0, 0x22, 1, fade, 16, 0);
                sub_08000AF0(0x11, b.fC + 0x100, 1);
                if (!BUSY923FC()) {
                    i = 0;
                    do {
                        ys[i] -= 0x100;
                        drawSpecial923FC(xs[i], ys[i] >> 8, i + 7, 0, param, b.payload, b.f8, b.f0, flag);
                        i++;
                    } while (i <= 3);
                }
            }
            if (!BUSY923FC()) {
                phase2Offsets[0] = plus923FC(shake, v923FC_250);
                phase2Offsets[1] = v923FC_252;
                phase2Offsets[2] = minus923FC(v923FC_254, shake);
                phase2Offsets[3] = v923FC_256;
            }
            sub_080003F0();
            if (sub_080021A8() == 1)
                goto end;
        } while (--timer != 0xFFFF);
    }
    {
        u16 *phase3Offsets;
        timer = 120;
        phase3Offsets = cache923FC;
        do {
            shake = sub_08092E34();
            y -= 6;
            if ((s16)y < -56)
                y = -56;
            if (!BUSY923FC()) {
                sub_08000AF0(0x10, a.fC + 0xE0, 1);
                draw923FC((s16)x, (s16)y, 0, 0, param, a.payload, a.f8, a.f0);
                sub_08000AF0(0x11, (*(descriptorMember096 = &b.fC)) + 0x100, 1);
                i = 0;
                do {
                    ys[i] -= 0x100;
                    draw923FC(xs[i], ys[i] >> 8, i + 7, 0, param, b.payload, b.f8, b.f0);
                    i++;
                } while (i <= 3);
                phase3Offsets[0] = plus923FC(shake, v923FC_250);
                phase3Offsets[2] = minus923FC(v923FC_254, shake);
            }
            sub_080003F0();
            if (sub_080021A8() == 1)
                goto end;
        } while (--timer != 0xFFFF);
    }
    sub_0800CBF8(1);
    sub_0805865C(0xF8);
    switch ((s8)kind) {
    case 1:
        target = 0x86;
        init923FC(&a, 0x50022, 7, -1, 1);
        break;
    case 2:
        target = 0x70;
        init923FC(&a, 0x50023, 7, -1, 1);
        break;
    case 3:
        target = 0x6B;
        init923FC(&a, 0x50024, 7, -1, 1);
        break;
    case 4:
        target = 0x63;
        init923FC(&a, 0x50025, 7, -1, 1);
        break;
    }
    a.payload[7] = 0;
    param = 0;
    y = 0xFF00;
    do {
        y += 8;
        if (!BUSY923FC()) {
            sub_08000AF0(0x10, a.fC + 0xE0, 1);
            draw923FC((s16)x, (s16)y, 0, 0, param, a.payload, a.f8, a.f0);
        }
        sub_080003F0();
        if (sub_080021A8() == 1)
            goto end;
    } while ((s32)((u32)target << 16) > (s32)((u32)y << 16));
    y = target;
    sub_0805865C(0xF9);
    sub_08092E28(8);
    accum = 0;
    /* Compare the wrapped halfword in its shifted signed representation. */
    timer = 180;
    lowerLimit = -66 * 0x10000;

    do {
        shake = sub_08092E34();
        if (!BUSY923FC()) {
            s32 lower;
            s32 d;
            /* Dead truncations share the draw's x/y shifts so loop.c hoists them before the
               cache address; the empty asms only add luids (no code). */
            { u32 t = (u16)x; u32 u = (u16)y; }
            asm("");
            asm("");
            asm("");
            sub_08000AF0(0x10, a.fC + 0xE0, 1);
            draw923FC((s16)x, (s16)y, 0, 0, param, a.payload, a.f8, a.f0);
            {
                s32 upper;
                register s32 clamp asm("r3");
                accum += 4;
                offsetLo = &v923FC_252;
                d = (s16)accum >> 8;
                lower = (u16)(*offsetLo) - d;
                (*offsetLo) = lower;
                offsetHi = &v923FC_256;
                upper = (u16)(*offsetHi) + d;
                (*offsetHi) = upper;
                lower = (s32)((u32)lower << 16);
                clamp = lowerLimit >> 16;
                asm("" : "+r"(clamp));
                if (lower <= lowerLimit)
                    (*offsetLo) = clamp;
                if ((s16)upper > 49)
                    (*offsetHi) = 50;
                offsetFields923FC.x0 = v923FC_250;
                offsetFields923FC.y0 = plus923FC(shake, (*offsetLo));
                offsetFields923FC.x1 = v923FC_254;
                offsetFields923FC.y1 = minus923FC((*offsetHi), shake);
            }
        }
        if (timer == 60)
            sub_0805865C(0xF7);
        sub_080003F0();
        if (sub_080021A8() == 1)
            goto end;
    } while (--timer != 0xFFFF);
    fade = 16;
    do {
        fade--;
        if (!BUSY923FC()) {
            s16 s;
            fade923FC(0, 0x22, 1, fade, 16, 0);
            s = sub_08092E34();
            offsetFields923FC.y0 = plus923FC(s, v923FC_252);
            offsetFields923FC.y1 = minus923FC(v923FC_256, s);
            sub_08000AF0(0x10, a.fC + 0xE0, 1);
            drawSpecial923FC((s16)x, (s16)y, 0, 0, param, a.payload, a.f8, a.f0, 1);
        }
        sub_080003F0();
        if (sub_080021A8() == 1)
            goto end;
    } while (fade != 0);
    count = (s8)count0 * 2;
    sub_08092E28(6);
    {
    struct OffsetCache923FC *roundCache = &offsetFields923FC;
    for (round = 0; round < count; round++) {
        i = 0;
        do {
            ys[i] = (abs((s16)(random923FC() % 120)) - 140) * 0x100;
            xs[i] = (i + 1) << 12;
            speed[i] = 0;
            accel[i] = abs((s16)(random923FC() % 4));
            if (round == 0)
                delay[i] = abs((s16)(random923FC() % 120));
            else
                delay[i] = abs((s16)(random923FC() % 24));
            i++;
        } while (i <= 10);
        timer = 11;
        do {
            if (!BUSY923FC()) {
                sub_08000AF0(0x18, b.fC + 0x100, 1);
                i = 0;
                do {
                    if (delay[i] != 0) {
                        delay[i]--;
                    } else {
                        if (ys[i] <= 0xC7FF) {
                            speed[i] += 4 + accel[i];
                            ys[i] += speed[i];
                            draw923FC(xs[i] >> 8, ys[i] >> 8, i, 0, param, b.payload, b.f8, b.f0);
                            if (ys[i] > 0xC7FF)
                                timer--;
                        }
                        accel[i]++;
                    }
                    i++;
                } while (i <= 10);
            }
            {
                s16 s = sub_08092E34();
                roundCache->y0 = plus923FC(s, v923FC_252);
                roundCache->y1 = minus923FC(v923FC_256, s);
            }
            sub_080003F0();
            if (sub_080021A8() == 1)
                goto end;
        } while (timer != 0);
    }
    }
end:
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    fade923FC(0, 0, 0, 0, 0, 0);
    sub_08092DB8();
    sub_0805867C(0xF7);
    sub_080586D0(3);
    sub_08092DF0();
    sub_0800CC18();
    sub_0800CC68();
    sub_08098028();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923FC);
#endif
void sub_08092CB8(void)
{
    union { u32 word; u16 half[2]; } config;
    u32 zero = 0;
    sub_08000A34(1, 0, 0, 0, zero);
    sub_080009F8(0xF00, 0, 0);
    sub_08000990(0, 0);
    sub_080009C0(0x1300, 0, 0);
    config.half[0] = 0x1803;
    sub_08000AA8(1, config.half);
    sub_080921E4(1, 0x18);
    config.half[0] = 0x1C02;
    sub_08000AA8(0, config.half);
    sub_080921E4(2, 0x1C);
    sub_0800903C(0, 0, 0, 0, zero, zero);
    sub_0800CBF8(1);
    sub_0800CC48(1);
    sub_08098010(1);
    sub_08092DC4();
    sub_08092D60();
    sub_08000940();
}
