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
#ifdef NONMATCHING
extern u8 *stateFE0495 asm("gUnk_03005CF4");
extern u8 playersFE0495[] asm("gUnk_03003CE0");
extern void callbackFE0495(void) asm("sub_0805CB8C");
extern void installFE0495(u32,void (*)(void)) asm("sub_08057328");
extern void startFE0495(s32) asm("sub_0802704C");
extern void modeFE0495(s32) asm("sub_080570DC");
s32 sub_0808FE04(s32 arg)
{
    register s32 incoming asm("r4");
    u8 *p;
    asm("" : "=r"(incoming));
    if (*(u16 *)(stateFE0495+0x10) != 0) {
        if (!sub_08056E90()) return 0;
        sub_08058404(incoming);
        modeFE0495(1);
        sub_08056FB8(0,0);
        p=playersFE0495+0x14C*sub_080020F4();
        p[0x68]=1;
        sub_08056E78();
        *(u16 *)(stateFE0495+0x36)=0;
        p=playersFE0495+0x14C*sub_080020F4();
        *(u32 *)(p+0x30)&=~2;
        p=playersFE0495+0x14C*sub_080020F4();
        *(u16 *)(p+0x20)=0;
        p=playersFE0495+0x14C*sub_080020F4();
        *(u16 *)(p+0x1C)=4;
        *(u16 *)(stateFE0495+0x30)=1;
        *(u16 *)(stateFE0495+0x24)=1;
        return 1;
    }
    startFE0495(arg);
    installFE0495(0,callbackFE0495);
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FE04);
#endif
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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080904A4);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090B84);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08090E38);
#ifdef NONMATCHING
struct Anim095_080910A8 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap095_080910A8 asm("gUnk_0300016C");
extern void init095_080910A8(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette095_080910A8(u32,u32,u32) asm("sub_08000AF0");
extern s32 step095_080910A8(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw095_080910A8(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_080910A8(void) {
    s32 sp10;
    s32 sp14;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r6;
    s32 var_r9;
    u16 temp_r0_3;
    u8 temp_r7;
    struct Anim095_080910A8 *temp_r0;

    temp_r0 = (struct Anim095_080910A8 *)sub_08001494(0x44U);
    heap095_080910A8 = (u32)temp_r0;
    temp_r0_2 = sub_0800086C();
    temp_r1 = temp_r0_2;
    var_r0 = temp_r1 - (((s32) (temp_r1 + ((u32) (temp_r0_2 << 0x10) >> 0x1F)) >> 1) * 2);
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r7 = (u8) var_r0;
    switch (temp_r7) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        init095_080910A8(temp_r0, 0x50022, 0, -1, (s32) temp_r7);
        break;
    case 1:                                         /* switch 1 */
        init095_080910A8(temp_r0, 0x50023, 0, -1, 0);
        break;
    }
    temp_r0->payload[0] = 0;
    temp_r0->frame = 0xAU;
    temp_r0->next = 0;
    temp_r0->tick = 0U;
    temp_r0->x = 0x10000;
    temp_r0->y = 0x5800;
    sp10 = 1;
    sp14 = 0;
    var_r6 = 0;
    if (heap095_080910A8 == 0) {
        return;
    }
loop_9:
    switch (var_r6) {                               /* switch 2; irregular */
    case 0:                                         /* switch 2 */
        temp_r1_2 = temp_r0->x + 0xFFFFFF00;
        temp_r0->x = temp_r1_2;
        if (temp_r1_2 <= 0x8000) {
            switch (temp_r7) {                      /* switch 3; irregular */
            case 0:                                 /* switch 3 */
                init095_080910A8(temp_r0, 0x50024, 0, -1, var_r6);
                break;
            case 1:                                 /* switch 3 */
                init095_080910A8(temp_r0, 0x50025, 0, -1, var_r6);
                break;
            }
            sp10 = 0;
            temp_r0->payload[0] = 0;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 1;
        }
        break;
    case 1:                                         /* switch 2 */
        if (var_r9 != 0) {
            switch (temp_r7) {                      /* switch 4; irregular */
            case 0:                                 /* switch 4 */
                init095_080910A8(temp_r0, 0x50022, 0, -1, (s32) temp_r7);
                break;
            case 1:                                 /* switch 4 */
                init095_080910A8(temp_r0, 0x50023, 0, -1, 0);
                break;
            }
            sp10 = 1;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 2;
        }
        break;
    case 2:                                         /* switch 2 */
        temp_r1_3 = temp_r0->x + 0xFFFFFF00;
        temp_r0->x = temp_r1_3;
        if (temp_r1_3 <= ((s32)0xFFFFF000)) {
            sp14 = 0;
            var_r6 = 6;
        }
        break;
    case 6:                                         /* switch 2 */
        temp_r0_3 = sp14 + 1;
        sp14 = (s32) temp_r0_3;
        if (temp_r0_3 == 0x3D) {
            var_r6 = 0xFF;
        }
        break;
    }
    palette095_080910A8(0x10U, temp_r0->fC, 1U);
    var_r9 = step095_080910A8(temp_r0, temp_r0->frame, &temp_r0->tick, &temp_r0->next, sp10);
    draw095_080910A8((s32) temp_r0->x >> 8, (s32) temp_r0->y >> 8, temp_r0->frame, temp_r0->tick, 0, temp_r0->payload, temp_r0->f8, temp_r0->f0);
    sub_080003F0();
    if ((var_r6 != 0xFF) && (heap095_080910A8 != 0)) {
        goto loop_9;
    }
    if (heap095_080910A8 != 0) {
        sub_08001538((s32) heap095_080910A8);
        heap095_080910A8 = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080910A8);
#endif
#ifdef NONMATCHING
struct Anim095_080912CC {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap095_080912CC asm("gUnk_0300016C");
extern void init095_080912CC(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette095_080912CC(u32,u32,u32) asm("sub_08000AF0");
extern s32 step095_080912CC(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw095_080912CC(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_080912CC(void) {
    s32 sp10;
    s32 sp14;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r6;
    s32 var_r9;
    u16 temp_r0_3;
    u8 temp_r7;
    struct Anim095_080912CC *temp_r0;

    temp_r0 = (struct Anim095_080912CC *)sub_08001494(0x44U);
    heap095_080912CC = (u32)temp_r0;
    temp_r0_2 = sub_0800086C();
    temp_r1 = temp_r0_2;
    var_r0 = temp_r1 - (((s32) (temp_r1 + ((u32) (temp_r0_2 << 0x10) >> 0x1F)) >> 1) * 2);
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r7 = (u8) var_r0;
    switch (temp_r7) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        init095_080912CC(temp_r0, 0x5001D, 0, -1, (s32) temp_r7);
        break;
    case 1:                                         /* switch 1 */
        init095_080912CC(temp_r0, 0x5001F, 0, -1, 0);
        break;
    }
    temp_r0->payload[0] = 0;
    temp_r0->frame = 0xAU;
    temp_r0->next = 0;
    temp_r0->tick = 0U;
    temp_r0->x = 0x10000;
    temp_r0->y = 0x5800;
    sp10 = 1;
    sp14 = 0;
    var_r6 = 0;
    if (heap095_080912CC == 0) {
        return;
    }
loop_9:
    switch (var_r6) {                               /* switch 2; irregular */
    case 0:                                         /* switch 2 */
        temp_r1_2 = temp_r0->x + 0xFFFFFF00;
        temp_r0->x = temp_r1_2;
        if (temp_r1_2 <= 0x8000) {
            switch (temp_r7) {                      /* switch 3; irregular */
            case 0:                                 /* switch 3 */
                init095_080912CC(temp_r0, 0x5001E, 0, -1, var_r6);
                break;
            case 1:                                 /* switch 3 */
                init095_080912CC(temp_r0, 0x50021, 0, -1, var_r6);
                break;
            }
            sp10 = 0;
            temp_r0->payload[0] = 0;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 1;
        }
        break;
    case 1:                                         /* switch 2 */
        if (var_r9 != 0) {
            switch (temp_r7) {                      /* switch 4; irregular */
            case 0:                                 /* switch 4 */
                init095_080912CC(temp_r0, 0x5001D, 0, -1, (s32) temp_r7);
                break;
            case 1:                                 /* switch 4 */
                init095_080912CC(temp_r0, 0x5001F, 0, -1, 0);
                break;
            }
            sp10 = 1;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 2;
        }
        break;
    case 2:                                         /* switch 2 */
        temp_r1_3 = temp_r0->x + 0xFFFFFF00;
        temp_r0->x = temp_r1_3;
        if (temp_r1_3 <= ((s32)0xFFFFF000)) {
            sp14 = 0;
            var_r6 = 6;
        }
        break;
    case 6:                                         /* switch 2 */
        temp_r0_3 = sp14 + 1;
        sp14 = (s32) temp_r0_3;
        if (temp_r0_3 == 0x3D) {
            var_r6 = 0xFF;
        }
        break;
    }
    palette095_080912CC(0x10U, temp_r0->fC, 1U);
    var_r9 = step095_080912CC(temp_r0, temp_r0->frame, &temp_r0->tick, &temp_r0->next, sp10);
    draw095_080912CC((s32) temp_r0->x >> 8, (s32) temp_r0->y >> 8, temp_r0->frame, temp_r0->tick, 0, temp_r0->payload, temp_r0->f8, temp_r0->f0);
    sub_080003F0();
    if ((var_r6 != 0xFF) && (heap095_080912CC != 0)) {
        goto loop_9;
    }
    if (heap095_080912CC != 0) {
        sub_08001538((s32) heap095_080912CC);
        heap095_080912CC = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080912CC);
#endif
#ifdef NONMATCHING
struct Anim096_080914F0 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_080914F0 asm("gUnk_0300016C");
extern void init096_080914F0(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_080914F0(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_080914F0(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_080914F0(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_080914F0(void) {
    s32 sp10;
    s32 sp14;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r6;
    s32 var_r9;
    u16 temp_r0_3;
    u8 temp_r7;
    struct Anim096_080914F0 *temp_r0;

    temp_r0 = (struct Anim096_080914F0 *)sub_08001494(0x44U);
    heap096_080914F0 = (u32)temp_r0;
    temp_r0_2 = sub_0800086C();
    temp_r1 = temp_r0_2;
    var_r0 = temp_r1 - (((s32) (temp_r1 + (((u32)(u16)temp_r0_2 << 0x10) >> 0x1F)) >> 1) * 2);
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r7 = (u8) var_r0;
    switch (temp_r7) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        init096_080914F0(temp_r0, 0x5002B, 0, -1, (s32) temp_r7);
        break;
    case 1:                                         /* switch 1 */
        init096_080914F0(temp_r0, 0x5002A, 0, -1, 0);
        break;
    }
    temp_r0->payload[0] = 0;
    temp_r0->frame = 0xAU;
    temp_r0->next = 0;
    temp_r0->tick = 0U;
    temp_r0->x = 0x10000;
    temp_r0->y = 0x5800;
    sp10 = 1;
    sp14 = 0;
    var_r6 = 0;
    if (heap096_080914F0 == 0) {
        return;
    }
loop_9:
    switch (var_r6) {                               /* switch 2; irregular */
    case 0:                                         /* switch 2 */
        temp_r1_2 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_2;
        if (temp_r1_2 <= 0x8000) {
            switch (temp_r7) {                      /* switch 3; irregular */
            case 0:                                 /* switch 3 */
                init096_080914F0(temp_r0, 0x5002C, 0, -1, var_r6);
                break;
            case 1:                                 /* switch 3 */
                init096_080914F0(temp_r0, 0x5002D, 0, -1, var_r6);
                break;
            }
            sp10 = 0;
            temp_r0->payload[0] = 0;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 1;
        }
        break;
    case 1:                                         /* switch 2 */
        if (var_r9 != 0) {
            switch (temp_r7) {                      /* switch 4; irregular */
            case 0:                                 /* switch 4 */
                init096_080914F0(temp_r0, 0x5002B, 0, -1, (s32) temp_r7);
                break;
            case 1:                                 /* switch 4 */
                init096_080914F0(temp_r0, 0x5002A, 0, -1, 0);
                break;
            }
            sp10 = 1;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 2;
        }
        break;
    case 2:                                         /* switch 2 */
        temp_r1_3 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_3;
        if (temp_r1_3 <= (-0x1000)) {
            sp14 = 0;
            var_r6 = 6;
        }
        break;
    case 6:                                         /* switch 2 */
        temp_r0_3 = sp14 + 1;
        sp14 = (s32) temp_r0_3;
        if (temp_r0_3 == 0x3D) {
            var_r6 = 0xFF;
        }
        break;
    }
    palette096_080914F0(0x10U, temp_r0->fC, 1U);
    var_r9 = step096_080914F0(temp_r0, temp_r0->frame, &temp_r0->tick, &temp_r0->next, sp10);
    draw096_080914F0((s32) temp_r0->x >> 8, (s32) temp_r0->y >> 8, temp_r0->frame, temp_r0->tick, 0, temp_r0->payload, temp_r0->f8, temp_r0->f0);
    sub_080003F0();
    if ((var_r6 != 0xFF) && (heap096_080914F0 != 0)) {
        goto loop_9;
    }
    if (heap096_080914F0 != 0) {
        sub_08001538((s32) heap096_080914F0);
        heap096_080914F0 = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080914F0);
#endif
#ifdef NONMATCHING
struct Anim096_08091714 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091714 asm("gUnk_0300016C");
extern void init096_08091714(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091714(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091714(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091714(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091714(void) {
    s32 sp10;
    s32 sp14;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r6;
    s32 var_r9;
    u16 temp_r0_3;
    u8 temp_r7;
    struct Anim096_08091714 *temp_r0;

    temp_r0 = (struct Anim096_08091714 *)sub_08001494(0x44U);
    heap096_08091714 = (u32)temp_r0;
    temp_r0_2 = sub_0800086C();
    temp_r1 = temp_r0_2;
    var_r0 = temp_r1 - (((s32) (temp_r1 + (((u32)(u16)temp_r0_2 << 0x10) >> 0x1F)) >> 1) * 2);
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r7 = (u8) var_r0;
    switch (temp_r7) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        init096_08091714(temp_r0, 0x50030, 0, -1, (s32) temp_r7);
        break;
    case 1:                                         /* switch 1 */
        init096_08091714(temp_r0, 0x50031, 0, -1, 0);
        break;
    }
    temp_r0->payload[0] = 0;
    temp_r0->frame = 0xAU;
    temp_r0->next = 0;
    temp_r0->tick = 0U;
    temp_r0->x = 0x10000;
    temp_r0->y = 0x5800;
    sp10 = 1;
    sp14 = 0;
    var_r6 = 0;
    if (heap096_08091714 == 0) {
        return;
    }
loop_9:
    switch (var_r6) {                               /* switch 2; irregular */
    case 0:                                         /* switch 2 */
        temp_r1_2 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_2;
        if (temp_r1_2 <= 0x8000) {
            switch (temp_r7) {                      /* switch 3; irregular */
            case 0:                                 /* switch 3 */
                init096_08091714(temp_r0, 0x50033, 0, -1, var_r6);
                break;
            case 1:                                 /* switch 3 */
                init096_08091714(temp_r0, 0x50032, 0, -1, var_r6);
                break;
            }
            sp10 = 0;
            temp_r0->payload[0] = 0;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 1;
        }
        break;
    case 1:                                         /* switch 2 */
        if (var_r9 != 0) {
            switch (temp_r7) {                      /* switch 4; irregular */
            case 0:                                 /* switch 4 */
                init096_08091714(temp_r0, 0x50030, 0, -1, (s32) temp_r7);
                break;
            case 1:                                 /* switch 4 */
                init096_08091714(temp_r0, 0x50031, 0, -1, 0);
                break;
            }
            sp10 = 1;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 2;
        }
        break;
    case 2:                                         /* switch 2 */
        temp_r1_3 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_3;
        if (temp_r1_3 <= (-0x1000)) {
            sp14 = 0;
            var_r6 = 6;
        }
        break;
    case 6:                                         /* switch 2 */
        temp_r0_3 = sp14 + 1;
        sp14 = (s32) temp_r0_3;
        if (temp_r0_3 == 0x3D) {
            var_r6 = 0xFF;
        }
        break;
    }
    palette096_08091714(0x10U, temp_r0->fC, 1U);
    var_r9 = step096_08091714(temp_r0, temp_r0->frame, &temp_r0->tick, &temp_r0->next, sp10);
    draw096_08091714((s32) temp_r0->x >> 8, (s32) temp_r0->y >> 8, temp_r0->frame, temp_r0->tick, 0, temp_r0->payload, temp_r0->f8, temp_r0->f0);
    sub_080003F0();
    if ((var_r6 != 0xFF) && (heap096_08091714 != 0)) {
        goto loop_9;
    }
    if (heap096_08091714 != 0) {
        sub_08001538((s32) heap096_08091714);
        heap096_08091714 = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091714);
#endif
#ifdef NONMATCHING
struct Anim096_08091938 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091938 asm("gUnk_0300016C");
extern void init096_08091938(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091938(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091938(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091938(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091938(void) {
    s32 sp10;
    s32 sp14;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r6;
    s32 var_r9;
    u16 temp_r0_3;
    u8 temp_r7;
    struct Anim096_08091938 *temp_r0;

    temp_r0 = (struct Anim096_08091938 *)sub_08001494(0x44U);
    heap096_08091938 = (u32)temp_r0;
    temp_r0_2 = sub_0800086C();
    temp_r1 = temp_r0_2;
    var_r0 = temp_r1 - (((s32) (temp_r1 + (((u32)(u16)temp_r0_2 << 0x10) >> 0x1F)) >> 1) * 2);
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r7 = (u8) var_r0;
    switch (temp_r7) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        init096_08091938(temp_r0, 0x50035, 0, -1, (s32) temp_r7);
        break;
    case 1:                                         /* switch 1 */
        init096_08091938(temp_r0, 0x50037, 0, -1, 0);
        break;
    }
    temp_r0->payload[0] = 0;
    temp_r0->frame = 0xAU;
    temp_r0->next = 0;
    temp_r0->tick = 0U;
    temp_r0->x = 0x10000;
    temp_r0->y = 0x5800;
    sp10 = 1;
    sp14 = 0;
    var_r6 = 0;
    if (heap096_08091938 == 0) {
        return;
    }
loop_9:
    switch (var_r6) {                               /* switch 2; irregular */
    case 0:                                         /* switch 2 */
        temp_r1_2 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_2;
        if (temp_r1_2 <= 0x8000) {
            switch (temp_r7) {                      /* switch 3; irregular */
            case 0:                                 /* switch 3 */
                init096_08091938(temp_r0, 0x50036, 0, -1, var_r6);
                break;
            case 1:                                 /* switch 3 */
                init096_08091938(temp_r0, 0x50038, 0, -1, var_r6);
                break;
            }
            sp10 = 0;
            temp_r0->payload[0] = 0;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 1;
        }
        break;
    case 1:                                         /* switch 2 */
        if (var_r9 != 0) {
            switch (temp_r7) {                      /* switch 4; irregular */
            case 0:                                 /* switch 4 */
                init096_08091938(temp_r0, 0x50035, 0, -1, (s32) temp_r7);
                break;
            case 1:                                 /* switch 4 */
                init096_08091938(temp_r0, 0x50037, 0, -1, 0);
                break;
            }
            sp10 = 1;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 2;
        }
        break;
    case 2:                                         /* switch 2 */
        temp_r1_3 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_3;
        if (temp_r1_3 <= (-0x1000)) {
            sp14 = 0;
            var_r6 = 6;
        }
        break;
    case 6:                                         /* switch 2 */
        temp_r0_3 = sp14 + 1;
        sp14 = (s32) temp_r0_3;
        if (temp_r0_3 == 0x3D) {
            var_r6 = 0xFF;
        }
        break;
    }
    palette096_08091938(0x10U, temp_r0->fC, 1U);
    var_r9 = step096_08091938(temp_r0, temp_r0->frame, &temp_r0->tick, &temp_r0->next, sp10);
    draw096_08091938((s32) temp_r0->x >> 8, (s32) temp_r0->y >> 8, temp_r0->frame, temp_r0->tick, 0, temp_r0->payload, temp_r0->f8, temp_r0->f0);
    sub_080003F0();
    if ((var_r6 != 0xFF) && (heap096_08091938 != 0)) {
        goto loop_9;
    }
    if (heap096_08091938 != 0) {
        sub_08001538((s32) heap096_08091938);
        heap096_08091938 = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091938);
#endif
#ifdef NONMATCHING
struct Anim096_08091B5C {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091B5C asm("gUnk_0300016C");
extern void init096_08091B5C(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091B5C(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091B5C(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091B5C(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091B5C(void) {
    s32 sp10;
    s32 sp14;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r6;
    s32 var_r9;
    u16 temp_r0_2;
    struct Anim096_08091B5C *temp_r0;

    temp_r0 = (struct Anim096_08091B5C *)sub_08001494(0x44U);
    heap096_08091B5C = (u32)temp_r0;
    sub_0800086C();
    init096_08091B5C(temp_r0, 0x50027, 0, -1, 0);
    temp_r0->payload[0] = 0;
    temp_r0->frame = 0xAU;
    temp_r0->next = 0;
    temp_r0->tick = 0U;
    temp_r0->x = 0x10000;
    temp_r0->y = 0x5800;
    sp10 = 1;
    sp14 = 0;
    var_r6 = 0;
    if (heap096_08091B5C == 0) {
        return;
    }
loop_2:
    switch (var_r6) {                               /* irregular */
    case 0:
        temp_r1 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1;
        if (temp_r1 <= 0x8000) {
            if (0 == 0) {
                init096_08091B5C(temp_r0, 0x50028, 0, -1, var_r6);
            }
            sp10 = 0;
            temp_r0->payload[0] = (s8) var_r6;
            temp_r0->frame = 0xAU;
            temp_r0->next = (s16) var_r6;
            temp_r0->tick = (u16) var_r6;
            var_r6 = 1;
        }
        break;
    case 1:
        if (var_r9 != 0) {
            if (0 == 0) {
                init096_08091B5C(temp_r0, 0x50027, 0, -1, 0);
            }
            sp10 = 1;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 2;
        }
        break;
    case 2:
        temp_r1_2 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_2;
        if (temp_r1_2 <= (-0x1000)) {
            sp14 = 0;
            var_r6 = 6;
        }
        break;
    case 6:
        temp_r0_2 = sp14 + 1;
        sp14 = (s32) temp_r0_2;
        if (temp_r0_2 == 0x3D) {
            var_r6 = 0xFF;
        }
        break;
    }
    palette096_08091B5C(0x10U, temp_r0->fC, 1U);
    var_r9 = step096_08091B5C(temp_r0, temp_r0->frame, &temp_r0->tick, &temp_r0->next, sp10);
    draw096_08091B5C((s32) temp_r0->x >> 8, (s32) temp_r0->y >> 8, temp_r0->frame, temp_r0->tick, 0, temp_r0->payload, temp_r0->f8, temp_r0->f0);
    sub_080003F0();
    if ((var_r6 != 0xFF) && (heap096_08091B5C != 0)) {
        goto loop_2;
    }
    if (heap096_08091B5C != 0) {
        sub_08001538((s32) heap096_08091B5C);
        heap096_08091B5C = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091B5C);
#endif
#ifdef NONMATCHING
struct Anim096_08091CF8 {u32 f0,f4,f8,fC;u8 pad10[12];u8 payload[24];s32 x,y;u16 frame,tick,next,pad42;};
extern u32 heap096_08091CF8 asm("gUnk_0300016C");
extern void init096_08091CF8(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void palette096_08091CF8(u32,u32,u32) asm("sub_08000AF0");
extern s32 step096_08091CF8(void *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern void draw096_08091CF8(s32,s32,u16,u16,s32,void *,u32,u32) asm("sub_08007870");
void sub_08091CF8(void) {
    s32 sp10;
    s32 sp14;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r6;
    s32 var_r9;
    u16 temp_r0_2;
    struct Anim096_08091CF8 *temp_r0;

    temp_r0 = (struct Anim096_08091CF8 *)sub_08001494(0x44U);
    heap096_08091CF8 = (u32)temp_r0;
    sub_0800086C();
    init096_08091CF8(temp_r0, 0x50019, 0, -1, 0);
    temp_r0->payload[0] = 0;
    temp_r0->frame = 0xAU;
    temp_r0->next = 0;
    temp_r0->tick = 0U;
    temp_r0->x = 0x10000;
    temp_r0->y = 0x5800;
    sp10 = 1;
    sp14 = 0;
    var_r6 = 0;
    if (heap096_08091CF8 == 0) {
        return;
    }
loop_2:
    switch (var_r6) {                               /* irregular */
    case 0:
        temp_r1 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1;
        if (temp_r1 <= 0x8000) {
            if (0 == 0) {
                init096_08091CF8(temp_r0, 0x5001A, 0, -1, var_r6);
            }
            sp10 = 0;
            temp_r0->payload[0] = (s8) var_r6;
            temp_r0->frame = 0xAU;
            temp_r0->next = (s16) var_r6;
            temp_r0->tick = (u16) var_r6;
            var_r6 = 1;
        }
        break;
    case 1:
        if (var_r9 != 0) {
            if (0 == 0) {
                init096_08091CF8(temp_r0, 0x50019, 0, -1, 0);
            }
            sp10 = 1;
            temp_r0->frame = 0xAU;
            temp_r0->next = 0;
            temp_r0->tick = 0U;
            var_r6 = 2;
        }
        break;
    case 2:
        temp_r1_2 = temp_r0->x + (-0x100);
        temp_r0->x = temp_r1_2;
        if (temp_r1_2 <= (-0x1000)) {
            sp14 = 0;
            var_r6 = 6;
        }
        break;
    case 6:
        temp_r0_2 = sp14 + 1;
        sp14 = (s32) temp_r0_2;
        if (temp_r0_2 == 0x3D) {
            var_r6 = 0xFF;
        }
        break;
    }
    palette096_08091CF8(0x10U, temp_r0->fC, 1U);
    var_r9 = step096_08091CF8(temp_r0, temp_r0->frame, &temp_r0->tick, &temp_r0->next, sp10);
    draw096_08091CF8((s32) temp_r0->x >> 8, (s32) temp_r0->y >> 8, temp_r0->frame, temp_r0->tick, 0, temp_r0->payload, temp_r0->f8, temp_r0->f0);
    sub_080003F0();
    if ((var_r6 != 0xFF) && (heap096_08091CF8 != 0)) {
        goto loop_2;
    }
    if (heap096_08091CF8 != 0) {
        sub_08001538((s32) heap096_08091CF8);
        heap096_08091CF8 = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091CF8);
#endif
#ifdef NONMATCHING
extern u32 heapState096 asm("gUnk_0300016C");
void sub_08091E94(void)
{
    u8 *memory;
    u8 *volatile parts[4];
    s32 state;
    u16 count;
    memory = (u8 *)sub_08001494(0x110);
    heapState096 = (u32)memory;
    parts[0] = memory;
    parts[1] = (u8 *)((u32)memory + 0x44);
    parts[2] = (u8 *)((u32)memory + 0x88);
    parts[3] = (u8 *)((u32)memory + 0xCC);
    count = 0;
    state = 0;
    if (memory != 0) {
        do {
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
        } while (state != 0xFF && heapState096 != 0);
        if (heapState096 != 0) {
            sub_08001538(heapState096);
            heapState096 = 0;
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091E94);
#endif
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
#ifdef NONMATCHING
s32 sub_08091F9C(u8 *arg0, u8 *arg1) {
    u8 *var_r1;
    u8 *var_r3;
    u8 temp_r0;
    u8 temp_r2;
    u8 var_r0;
    u8 var_r0_2;
    u8 var_r4;

    var_r1 = arg1;
    var_r3 = arg0;
    if ((gUnk_03003470 == 0) || ((u32) gUnk_03003470 > 4U)) {
        var_r4 = 0;
loop_12:
        temp_r0 = *var_r3;
        if (temp_r0 == 0) {
            goto block_13;
        }
        if (temp_r0 == 0x20) {
            var_r0 = 0x51;
            goto block_11;
        }
        if ((u32) (u8) (temp_r0 - 0x41) <= 0x19U) {
            var_r0 = temp_r0 - 0x40;
            goto block_11;
        }
        if ((u32) (u8) (temp_r0 - 0x61) <= 0x19U) {
            var_r0 = temp_r0 - 0x40;
            goto block_11;
        }
        if ((u32) (u8) (temp_r0 - 0x30) <= 9U) {
            var_r0 = temp_r0 + 0x10;
block_11:
            *var_r1 = var_r0;
            var_r3 += 1;
            var_r1 += 1;
            var_r4 += 1;
            if ((u32) var_r4 <= 0xFEU) {
                goto loop_12;
            }
        } else {
block_13:
            var_r0_2 = 0xFD;
            goto block_27;
        }
    } else {
        var_r4 = 0;
loop_25:
        temp_r2 = *var_r3;
        var_r0_2 = temp_r2;
        switch (var_r0_2) {                         /* irregular */
        case 0x0:
            var_r0_2 = 0xFD;
        case 0xFD:
block_27:
            *var_r1 = var_r0_2;
            break;
        case 0x20:
            *var_r1 = 0x51;
block_24:
            var_r3 += 1;
            var_r1 += 1;
            var_r4 += 1;
            if ((u32) var_r4 <= 0xFEU) {
                goto loop_25;
            }
            break;
        default:
            if (((u32) (u8) (temp_r2 - 0x41) <= 0x19U) || ((u32) (u8) (temp_r2 - 0x61) <= 0x19U)) {
                *var_r1 = temp_r2 - 0x40;
            } else if ((u32) (u8) (temp_r2 - 0x30) <= 9U) {
                *var_r1 = temp_r2 + 0xF;
            } else {
                *var_r1 = temp_r2;
            }
            goto block_24;
        }
    }
    return (s32) (u8) (var_r4 - 1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091F9C);
#endif
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
extern u16 v923FC_252 asm("gUnk_03000252");
extern u16 v923FC_254 asm("gUnk_03000254");
extern u16 v923FC_256 asm("gUnk_03000256");
extern void init923FC(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void draw923FC(s32,s32,u16,s32,s32,void *,u32,u32) asm("sub_08007870");
extern void drawSpecial923FC(s32,s32,u16,s32,s32,void *,u32,u32,s32) asm("sub_080087AC");
extern void fade923FC(s32,s32,s32,s32,s32,void *) asm("sub_0800903C");
extern s16 random923FC(void) asm("sub_0800086C");
void sub_080923FC_u8(u8,u8) asm("sub_080923FC");
void sub_080923FC_u8(u8 arg0, u8 arg1) {
    s32 sp0;
    void *sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    struct Anim923FC a;
    s32 xsFC[11], ysFC[11];
    u16 delayFC[12], speedFC[12], accelFC[12];

    s32 sp11C;
    s32 sp120;
    u32 sp124;
    u32 sp128;
    s32 sp12C;
    s32 sp130;
    s32 sp134;
    u32 sp138;
    s32 sp13C;
    u16 *sp140;
    s32 *sp144;
    s32 *sp148;
    s16 temp_r0_7;
    s16 temp_r0_8;
    s16 temp_r1;
    s16 temp_r1_11;
    s16 temp_r1_12;
    s16 temp_r1_6;
    s16 temp_r1_8;
    s16 var_r0_3;
    s16 var_r0_4;
    s16 var_r0_5;
    s16 var_r0_6;
    s16 var_r0_7;
    s32 *temp_r0;
    s32 *temp_r0_2;
    s32 *temp_r0_4;
    s32 *temp_r1_2;
    s32 *temp_r4_2;
    s32 temp_r0_6;
    s32 temp_r1_10;
    s32 temp_r1_14;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_7;
    s32 var_r0;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r2;
    s8 var_r0_2;
    u16 *temp_r1_15;
    u16 *temp_r2_3;
    u16 *temp_r2_4;
    struct Anim923FC b;
    u16 *var_r4;
    u16 temp_r0_5;
    u16 temp_r0_9;
    u16 temp_r1_13;
    u16 temp_r2;
    u16 temp_r2_2;
    u16 temp_r4;
    u16 temp_r7;
    u16 temp_r7_2;
    u16 temp_r7_3;
    u16 temp_r7_4;
    u16 var_r5;
    u16 var_r5_2;
    u16 var_r5_3;
    u16 var_r5_4;
    u16 var_r5_5;
    u16 var_r8;
    u16 var_r8_3;
    u16 var_r8_4;
    u16 var_r8_5;
    u16 var_r9_2;
    u32 temp_r0_3;
    u32 temp_r1_3;
    u32 temp_r1_9;
    u32 var_r8_2;
    u32 var_r9;
    u8 var_r6;

    sp11C = (s32) arg0;
    sp120 = (s32) arg1;
    sp0 = 1;
    init923FC(&a, 0x50022, 7, -1, sp0);
    sp0 = 1;
    init923FC(&b, 0x50026, 8, -1, sp0);
    a.payload[7] = 0;
    b.payload[8] = 1;
    sp128 = 0xD4;
    cache923FC[0] = 8;
    cache923FC[1] = 0U;
    cache923FC[2] = 8U;
    cache923FC[3] = 0U;
    v923FC_254 = 8;
    v923FC_250 = 8;
    v923FC_252 = -0xCU;
    v923FC_256 = 0xC;
    sp130 = 3;
    sub_0801AB50(6);
loop_2:
    if (sub_0801AAE0() == 0) {
        sub_080003F0();
        goto loop_2;
    }
    sub_0805865C(0xF7);
    var_r8 = 0x3C;
    sub_08092E28(6);
    sub_08092E1C(0x3C);
loop_4:
    temp_r7 = (u16) sub_08092E34();
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
        temp_r1 = (s16) temp_r7;
        cache923FC[1] = (u16) (temp_r1 + v923FC_252);
        cache923FC[3] = (u16) (temp_r1 + v923FC_256);
    }
    sub_080003F0();
    if (sub_080021A8() == 1) {

    } else {
        var_r8 -= 1;
        if (var_r8 == 0xFFFF) {
            v923FC_252 = cache923FC[1];
            v923FC_256 = cache923FC[3];
            var_r5 = 0;
            temp_r0 = ysFC;
            sp148 = temp_r0;
            temp_r1_2 = xsFC;
            sp144 = temp_r1_2;
            do {
                if (1 & var_r5) {
                    var_r2 = var_r5 * 4;
                    var_r1 = var_r5 * 0x10;
                    var_r0 = var_r1 + 0x70;
                } else {
                    var_r2 = var_r5 * 4;
                    var_r1 = var_r5 * 0x10;
                    var_r0 = 0x70 - var_r1;
                }
                temp_r0[var_r5] = var_r0 << 8;
                *(s32 *)((u8 *)temp_r1_2 + var_r2) = ((var_r1 - var_r5) * 4) + 0x1E;
                var_r5 += 1;
            } while ((u32) var_r5 <= 3U);
            var_r9 = 0;
            sp124 = 0;
            var_r8_2 = 0xF0;
            sub_08092E28(4);
loop_17:
            temp_r7_2 = (u16) sub_08092E34();
            temp_r1_3 = (sp124 << 0x10) + 0x20000;
            sp124 = temp_r1_3 >> 0x10;
            temp_r1_4 = (s32) temp_r1_3 >> 0x18;
            temp_r2 = v923FC_252 - temp_r1_4;
            v923FC_252 = temp_r2;
            v923FC_256 += temp_r1_4;
            if ((s32) (s16) temp_r2 <= -0x10) {
                v923FC_252 = -0x10U;
            }
            if ((s32) (s16) v923FC_256 > 0x1F) {
                v923FC_256 = 0x20;
            }
            if (var_r8_2 <= 0x77U) {
                if (var_r9 <= 0xFU) {
                    var_r9 = (u32) (u16) (var_r9 + 1);
                    var_r6 = 1;
                } else {
                    var_r9 = 0x10;
                    var_r6 = 0;
                }
                sp0 = 0x10;
                sp4 = NULL;
                fade923FC(0, 0x22, 1, (s32) var_r9, sp0, sp4);
                sub_08000AF0(0x11U, (void *)(b.fC + 0x100), 1U);
                if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                    var_r5_2 = 0;
                    do {
                        temp_r0_2 = &sp148[var_r5_2];
                        temp_r1_5 = *temp_r0_2 + 0xFFFFFF00;
                        *temp_r0_2 = temp_r1_5;
                        sp0 = sp130;
                        sp4 = b.payload;
                        sp8 = b.f8;
                        spC = b.f0;
                        sp10 = (s32) var_r6;
                        drawSpecial923FC(sp144[var_r5_2], temp_r1_5 >> 8, (u16) (var_r5_2 + 7), 0, sp0, sp4, sp8, spC, sp10);
                        var_r5_2 += 1;
                    } while ((u32) var_r5_2 <= 3U);
                }
            }
            if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                temp_r1_6 = (s16) temp_r7_2;
                cache923FC[0] = temp_r1_6 + v923FC_250;
                cache923FC[1] = (u16) v923FC_252;
                cache923FC[2] = (u16) (v923FC_254 - temp_r1_6);
                cache923FC[3] = (u16) v923FC_256;
            }
            sub_080003F0();
            if (sub_080021A8() == 1) {

            } else {
                var_r8_2 = (u32) (u16) (var_r8_2 - 1);
                if (var_r8_2 != 0xFFFF) {
                    goto loop_17;
                }
                var_r8_3 = 0x78;
loop_39:
                temp_r7_3 = (u16) sub_08092E34();
                temp_r0_3 = (sp128 << 0x10) + 0xFFFA0000;
                sp128 = temp_r0_3 >> 0x10;
                if ((s32) ((s32) temp_r0_3 >> 0x10) < -0x38) {
                    sp128 = 0xFFC8;
                }
                if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                    sub_08000AF0(0x10U, (void *)(a.fC + 0xE0), 1U);
                    sp0 = sp130;
                    sp4 = a.payload;
                    sp8 = a.f8;
                    spC = a.f0;
                    draw923FC(0x7C0000 >> 0x10, (s16) sp128, 0U, 0, sp0, sp4, sp8, spC);
                    sub_08000AF0(0x11U, (void *)(b.fC + 0x100), 1U);
                    var_r5_3 = 0;
                    do {
                        temp_r0_4 = &sp148[var_r5_3];
                        temp_r1_7 = *temp_r0_4 + 0xFFFFFF00;
                        *temp_r0_4 = temp_r1_7;
                        sp0 = sp130;
                        sp4 = b.payload;
                        sp8 = b.f8;
                        spC = b.f0;
                        draw923FC(sp144[var_r5_3], (s16) (temp_r1_7 >> 8), (u16) (var_r5_3 + 7), 0, sp0, sp4, sp8, spC);
                        var_r5_3 += 1;
                    } while ((u32) var_r5_3 <= 3U);
                    temp_r1_8 = (s16) temp_r7_3;
                    cache923FC[0] = temp_r1_8 + v923FC_250;
                    cache923FC[2] = (u16) (v923FC_254 - temp_r1_8);
                }
                sub_080003F0();
                if (sub_080021A8() == 1) {

                } else {
                    var_r8_3 -= 1;
                    if (var_r8_3 == 0xFFFF) {
                        sub_0800CBF8(1U);
                        sub_0805865C(0xF8);
                        var_r0_2 = (s8) sp120;
                        switch (var_r0_2) {         /* irregular */
                        case 1:
                            sp12C = 0x86;
                            var_r1_2 = 0x50022;
block_61:
                            sp0 = (s32) var_r0_2;
                            init923FC(&a, var_r1_2, 7, -1, sp0);
                            break;
                        case 2:
                            sp12C = 0x70;
                            var_r1_2 = 0x50023;
block_60:
                            var_r0_2 = 1;
                            goto block_61;
                        case 3:
                            sp12C = 0x6B;
                            var_r1_2 = 0x50024;
                            goto block_60;
                        case 4:
                            sp12C = 0x63;
                            sp0 = 1;
                            init923FC(&a, 0x50025, 7, -1, sp0);
                            break;
                        }
                        a.payload[7] = 0;
                        sp130 = 0;
                        sp128 = 0xFF00;
loop_64:
                        sp128 = (u32) ((sp128 << 0x10) + 0x80000) >> 0x10;
                        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                            sub_08000AF0(0x10U, (void *)(a.fC + 0xE0), 1U);
                            sp0 = sp130;
                            sp4 = a.payload;
                            sp8 = a.f8;
                            spC = a.f0;
                            draw923FC(0x7C0000 >> 0x10, (s16) sp128, 0U, 0, sp0, sp4, sp8, spC);
                        }
                        sub_080003F0();
                        if (sub_080021A8() == 1) {

                        } else if ((s32) (sp12C << 0x10) <= (s32) (sp128 << 0x10)) {
                            sp128 = (u32) (u16) sp12C;
                            sub_0805865C(0xF9);
                            sub_08092E28(8);
                            sp124 = 0;
                            var_r8_4 = 0xB4;
                            sp13C = 0x7C0000;
loop_72:
                            temp_r7_4 = (u16) sub_08092E34();
                            if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                                sub_08000AF0(0x10U, (void *)(a.fC + 0xE0), 1U);
                                sp0 = sp130;
                                sp4 = a.payload;
                                sp8 = a.f8;
                                spC = a.f0;
                                draw923FC(sp13C >> 0x10, (s16) sp128, 0U, 0, sp0, sp4, sp8, spC);
                                temp_r1_9 = (sp124 << 0x10) + 0x40000;
                                sp124 = temp_r1_9 >> 0x10;
                                temp_r1_10 = (s32) temp_r1_9 >> 0x18;
                                temp_r2_2 = v923FC_252 - temp_r1_10;
                                v923FC_252 = temp_r2_2;
                                temp_r0_5 = v923FC_256 + temp_r1_10;
                                v923FC_256 = temp_r0_5;
                                if ((s32) (temp_r2_2 << 0x10) <= (s32)0xFFBE0000U) {
                                    v923FC_252 = (u16) (0xFFBE0000 >> 0x10);
                                }
                                if ((s32) (s16) temp_r0_5 > 0x31) {
                                    v923FC_256 = 0x32;
                                }
                                cache923FC[0] = v923FC_250;
                                temp_r1_11 = (s16) temp_r7_4;
                                cache923FC[1] = (u16) (temp_r1_11 + v923FC_252);
                                cache923FC[2] = (u16) v923FC_254;
                                cache923FC[3] = (u16) (v923FC_256 - temp_r1_11);
                            }
                            if (var_r8_4 == 0x3C) {
                                sub_0805865C(0xF7);
                            }
                            sub_080003F0();
                            if (sub_080021A8() == 1) {

                            } else {
                                var_r8_4 -= 1;
                                if (var_r8_4 == 0xFFFF) {
                                    var_r9_2 = 0x10;
loop_86:
                                    var_r9_2 -= 1;
                                    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
                                        temp_r0_6 = sub_0800CD34();
                                        if (temp_r0_6 == 0) {
                                            sp0 = 0x10;
                                            sp4 = 0;
                                            fade923FC(0, 0x22, 1, (s32) var_r9_2, sp0, sp4);
                                            temp_r0_7 = sub_08092E34();
                                            cache923FC[1] = (u16) (temp_r0_7 + v923FC_252);
                                            cache923FC[3] = (u16) (v923FC_256 - temp_r0_7);
                                            sub_08000AF0(0x10U, (void *)(a.fC + 0xE0), 1U);
                                            sp0 = sp130;
                                            sp4 = a.payload;
                                            sp8 = a.f8;
                                            spC = a.f0;
                                            sp10 = 1;
                                            drawSpecial923FC(0x7C0000 >> 0x10, (s32) (s16) sp128, 0U, 0, sp0, sp4, sp8, spC, sp10);
                                        }
                                    }
                                    sub_080003F0();
                                    if (sub_080021A8() == 1) {

                                    } else if (var_r9_2 == 0) {
                                        sp138 = (u32) ((s32)((u32)sp11C << 0x18) >> 7) >> 0x10;
                                        sub_08092E28(6);
                                        sp134 = 0;
                                        if (sp138 <= 0U) {

                                        } else {
                                            sp140 = speedFC;
loop_96:
                                            var_r5_4 = 0;
                                            do {
                                                var_r0_3 = (s16) (random923FC() % 120);
                                                if ((s32) var_r0_3 < 0) {
                                                    var_r0_3 = 0 - var_r0_3;
                                                }
                                                sp148[var_r5_4] = (var_r0_3 - 0x8C) << 8;
                                                temp_r4 = var_r5_4 + 1;
                                                sp144[var_r5_4] = temp_r4 << 0xC;
                                                sp140[var_r5_4] = 0;
                                                temp_r1_12 = random923FC();
                                                var_r0_4 = temp_r1_12;
                                                if ((s32) temp_r1_12 < 0) {
                                                    var_r0_4 = temp_r1_12 + 3;
                                                }
                                                var_r0_5 = temp_r1_12 - ((var_r0_4 >> 2) * 4);
                                                if ((s32) var_r0_5 < 0) {
                                                    var_r0_5 = 0 - var_r0_5;
                                                }
                                                accelFC[var_r5_4] = (u16) var_r0_5;
                                                if (sp134 == 0) {
                                                    var_r4 = &delayFC[var_r5_4];
                                                    var_r0_6 = random923FC();
                                                    var_r1_3 = 0x78;
                                                } else {
                                                    var_r4 = &delayFC[var_r5_4];
                                                    var_r0_6 = random923FC();
                                                    var_r1_3 = 0x18;
                                                }
                                                var_r0_7 = (s16) (var_r0_6 % var_r1_3);
                                                if ((s32) var_r0_7 < 0) {
                                                    var_r0_7 = 0 - var_r0_7;
                                                }
                                                *var_r4 = (u16) var_r0_7;
                                                var_r5_4 = temp_r4;
                                            } while ((u32) var_r5_4 <= 0xAU);
                                            var_r8_5 = 0xB;
loop_110:
                                            if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                                                sub_08000AF0(0x18U, (void *)(b.fC + 0x100), 1U);
                                                var_r5_5 = 0;
                                                do {
                                                    temp_r2_3 = &delayFC[var_r5_5];
                                                    temp_r1_13 = *temp_r2_3;
                                                    if (temp_r1_13 != 0) {
                                                        *temp_r2_3 = temp_r1_13 - 1;
                                                    } else {
                                                        temp_r4_2 = &sp148[var_r5_5];
                                                        if ((s32) *temp_r4_2 <= 0xC7FF) {
                                                            temp_r2_4 = sp140 + var_r5_5;
                                                            *temp_r2_4 = *temp_r2_4 + 4 + accelFC[var_r5_5];
                                                            temp_r1_14 = *temp_r4_2 + *temp_r2_4;
                                                            *temp_r4_2 = temp_r1_14;
                                                            sp0 = sp130;
                                                            sp4 = b.payload;
                                                            sp8 = b.f8;
                                                            spC = b.f0;
                                                            draw923FC((s32) sp144[var_r5_5] >> 8, (s16) (temp_r1_14 >> 8), var_r5_5, 0, sp0, sp4, sp8, spC);
                                                            if ((s32) *temp_r4_2 > 0xC7FF) {
                                                                var_r8_5 -= 1;
                                                            }
                                                        }
                                                        temp_r1_15 = &accelFC[var_r5_5];
                                                        *temp_r1_15 += 1;
                                                    }
                                                    var_r5_5 += 1;
                                                } while ((u32) var_r5_5 <= 0xAU);
                                            }
                                            temp_r0_8 = sub_08092E34();
                                            cache923FC[1] = (u16) (temp_r0_8 + v923FC_252);
                                            cache923FC[3] = (u16) (v923FC_256 - temp_r0_8);
                                            sub_080003F0();
                                            if (sub_080021A8() != 1) {
                                                if (var_r8_5 == 0) {
                                                    temp_r0_9 = sp134 + 1;
                                                    sp134 = (s32) temp_r0_9;
                                                    if ((u32) temp_r0_9 < sp138) {
                                                        goto loop_96;
                                                    }
                                                } else {
                                                    goto loop_110;
                                                }
                                            }
                                        }
                                    } else {
                                        goto loop_86;
                                    }
                                } else {
                                    goto loop_72;
                                }
                            }
                        } else {
                            goto loop_64;
                        }
                    } else {
                        goto loop_39;
                    }
                }
            }
        } else {
            goto loop_4;
        }
    }
    sub_0801ABE8(6);
loop_127:
    if (sub_0801AAE0() == 0) {
        sub_080003F0();
        goto loop_127;
    }
    sp0 = 0;
    sp4 = NULL;
    fade923FC(0, 0, 0, 0, sp0, sp4);
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
