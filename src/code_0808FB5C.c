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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_0808FE04);
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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080910A8);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080912CC);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080914F0);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091714);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091938);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091B5C);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091CF8);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091E94);
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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08091F9C);
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
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080921E4);
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
#ifdef NONMATCHING
void sub_080923B4(u32 index, u32 packed)
{
    s32 a;
    s32 b;
    u32 slot;
    typedef void (*Callback)(s32, s32);
    a = (s8)(packed >> 8);
    b = (s8)packed;
    slot = index * 4;
    ((Callback *)((u8 *)gUnk_03000210 + slot))[0](a, b);
    ((Callback *)((u8 *)gUnk_03000230 + slot))[0](a, b);
    sub_08000420(0x12001111);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923B4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_080923FC);
INCLUDE_ASM("asm/nonmatchings/code_0808FB5C", sub_08092CB8);
