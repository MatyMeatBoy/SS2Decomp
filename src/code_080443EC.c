#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080443EC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080444C0);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080445E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08044D1C);
void sub_08044E34(s32 arg0) {
    register s32 arg asm("r8") = arg0;
    s32 *base;
    u32 mask;
    register s32 count asm("r4");
    register s32 oldBit asm("r5");
    s32 value;
    register s32 temp asm("r0");
    mask = 1;
    base = &gUnk_03005CF4;
start:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    oldBit = (value >> 5) & mask;
    count = 1;
    goto wait;
dec:
    temp = count - 1;
    asm volatile("" : "+r" (temp));
    count = (u16)temp;
    if (count == 0) goto compare;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
compare:
    count = 1;
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    if (oldBit == ((value >> 5) & count)) goto start;
    sub_0802939C(arg, 1);
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08044EB4);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804534C);
void sub_080455F0(s32 arg0) {
    register s32 arg asm("r5") = arg0;
    register s32 mask asm("r6");
    s32 *base = &gUnk_03005CF4;
    s32 value;
    s32 oldBit;
    u16 count;
    register s32 call0 asm("r0");
    register s32 call1 asm("r1");
    register s32 call2 asm("r2");
    register s32 call3 asm("r3");
    mask = 1;
loop:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C5);
    else value = *(u8 *)(*(u32 *)base + 0x1B9);
    oldBit = (value >> 4) & mask;
    if (oldBit != 0) {
        call0 = arg; call1 = 0x79; call2 = 0x186; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    } else {
        call2 = 0x270F; call0 = arg; call1 = 0x270F; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    }
    count = 1;
    goto wait;
dec:
    count = count - 1;
    if (count == 0) goto loop;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
    goto loop;
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045660);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045764);
struct Bits5AFC { u8 b0:5; u8 b5:1; u8 b6:1; u8 b7:1; };
extern u8 *gGS5AFC asm("gUnk_03005CF4");
static inline struct Bits5AFC *SelA_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C3);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B7);
}
static inline struct Bits5AFC *SelB_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C5);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B9);
}
void sub_08045AFC(void)
{
    if (*(u8 *)SelA_5AFC() >> 7) {
        { u8 *q = (u8 *)SelB_5AFC(); s32 m = ~0x20; *q = m & *q; }
        sub_0805C7B8(0);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045B68);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045E38);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045F44);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08046490);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080469DC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08046F28);
struct Item47474 { u16 kind,id; u8 data[12]; };
extern u8 *state47474 asm("gUnk_03005CF4");
extern u8 *items47474 asm("gUnk_030034E0");
extern void sub_0805990C(void);
static inline u32 load47474(u16 *p) {register u32 v asm("r0")=*p;return v;}
static inline u32 count47474(u32 n) { return n; }
static inline u8 *find47474(u32 actor) { register u8 *p asm("r1");register u32 i asm("r3");register s32 raw asm("r0")=(s32)state47474;register u32 off asm("r3")=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
void sub_08047474(u32 arg0) {
 struct Item47474 cmd; u8 unused[16];
 register u32 arg asm("r5")=arg0;
 register s32 flag asm("r4"); register s32 offset asm("r1");
 register struct Player *player asm("r1"); u8 *selected; register s32 count asm("r3"); register u32 i asm("r2"); struct Item47474 *item;
 register u8 *data asm("r6"); u32 task; register u8 *entity asm("r1"); register u8 *found asm("r0"); register u32 j asm("r3"); register s32 left asm("r4"); u8 *slot; register u32 actor asm("r2"); u8 **itemsbase; register u32 v1 asm("r1"); register u32 v2 asm("r2"); register u8 *cmdaddr asm("r0"); register u8 *dataptr asm("r1"); register u32 off asm("r3"); register u32 n asm("r4");
 register s32 raw asm("r0"); register u32 zero asm("r5");
 offset=sub_080020F4();offset*=0x14C;player=(struct Player *)((u8 *)gUnk_03003CE0+offset);raw=player->flags;flag=1;player->flags=raw|flag;
 sub_0800D0F4();sub_0802949C(arg,0);
 if(sub_0800CE30()) selected=state47474+0x1C4;else {off=0x1B8;selected=state47474+off;}
 raw=*selected;asm("" : "+r"(raw));raw>>=5;raw &= flag;
 if(!raw) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x14022B);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 count=0;i=0;item=(struct Item47474 *)(items47474+0x150);
 do {if(load47474(&item->kind)==1 && item->id==0x2A)count++;item++;i++;}while(i<=24);
 if(count>0) {
 actor=arg;flag=3;if(actor>0x100000) {
 found=find47474(actor);data=cmd.data;
 if(found) *(u16 *)(found+0x42)=flag;
 } else if(arg) {actor=arg-1;data=cmd.data;if(actor<=4){register u8 **base asm("r1")=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else {raw=sub_080020F4()*0x14C;{register u8 *base asm("r1")=(u8 *)gUnk_03003CE0;raw+=(s32)base;v1=0x11E;raw+=v1;*(u16 *)raw=flag;}data=cmd.data;}
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x14022D);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;itemsbase=&items47474;asm("" : "+r"(itemsbase));zero=0;
 loopRemove:raw=(s32)*itemsbase;asm("" : "+r"(raw));slot=(u8 *)raw+j*16;
 if(*(u16 *)(slot+0x150)!=1 || *(u16 *)(slot+0x152)!=0x2A || (left--,*(u16 *)(slot+0x150)=zero,*(u16 *)(slot+0x152)=zero,left!=0)) {j++;if(j<=24)goto loopRemove;}

 v1=1;v2=0x2B;cmdaddr=(u8 *)&cmd;*(u16 *)cmdaddr=v1;*(u16 *)(cmdaddr+2)=v2;
 n=0;dataptr=data;v2=0;do{dataptr[n]=v2;n++;}while(n<=11);
 n=0;do{sub_0805AB20(&cmd);n++;}while(n<count47474(1));
 sub_08068070((u32)sub_0805990C,13);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x14022E);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 } else {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x140230);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
struct Camera778C { u8 pad[0x80]; s16 x,y; };
struct Task778C { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
extern u8 *state778C asm("gUnk_03005CF4");
extern void camera778C(s32,s32) asm("sub_0800BB80");
extern void sub_08047970(void);
static inline u32 bool778C(u8 *base, u32 *unused) { register u32 bit asm("r4"); register u32 value asm("r0");bit=1;value=*(u32 *)(base+0x38);value &= bit;if(value)value=1;return value; }
void sub_0804778C(void) {
 volatile s32 out[2]; s32 sx,sy; register s32 i asm("r4"); register s32 step asm("sl"); register s32 *py asm("r5");
 union { s32 all; struct { u16 low; s16 high; } half; } tx,ty;
 struct Task778C *t; u32 n; register u32 j asm("r3"); register u8 *p asm("r2"); s32 flag; register s32 mask asm("r4"); register s32 offset asm("r1"); struct Player *player; register u32 cb asm("r6"); register u32 one asm("r6"); register u32 *bits asm("r5"); register u32 zero asm("r4"); register s32 raw asm("r0"); register s32 bit asm("r1");
 mask=1;flag=bool778C(state778C,0);
 if(flag) goto already;
 offset=sub_080020F4();offset*=0x14C;player=(struct Player *)((u8 *)gUnk_03003CE0+offset);player->flags |= mask;
 sub_0800D0F4();
 step=0x400; sx=((struct Camera778C *)&gUnk_03003170)->x; sy=((struct Camera778C *)&gUnk_03003170)->y;
 i=0; py=&out[1]; tx.all=0; ty.all=0xFF880000;
 do {sub_080659F4(&out[0],sx,tx.half.high,i);sub_080659F4(py,sy,ty.half.high,i);camera778C((s16)out[0],(s16)out[1]);sub_080003F0();i+=step;}while(i<=0x400);
 if(sub_0800CC98()==0) {
 switch(sub_0801AB24()) {case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
 while(sub_0801AAE0()==0)sub_080003F0();
 }
 cb=(u32)sub_08047970;t=(struct Task778C *)(state778C+0xE34); n=0; goto check;
 next: n++;t++;
 check: if(n>29)goto done;
 if(sub_08000470((u32)t)!=0)goto next;
 goto alloc;
 retry:sub_080003F0();
 alloc:t->f20=sub_08001494(0x400);if(t->f20==0)goto retry;
 t->f8=0x3C;t->fC=cb;t->f10=t->f20+0x3FC;t->f24=0;sub_08000274((u32)t,0);
 done:p=state778C;bit=1;raw=*(s32 *)(p+0x38);*(s32 *)(p+0x38)=raw|bit;goto end;
 already:
 if(sub_0800CC98()==0) {
 switch(sub_0801AB24()) {case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
 while(sub_0801AAE0()==0)sub_080003F0();
 }
 p=gUnk_030056F4;j=0;bits=(u32 *)&gUnk_030056FC;one=1;zero=0;
 do {bit=one<<j;raw=*bits;raw &= bit;if((raw)&&*(u16 *)(p+0xC)==0xC)*(u16 *)(p+0xC)=zero;j++;raw=0x2E0;p+=raw;}while(j<=4);
 sub_08019F04();
 end:;
}

INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047970);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047B2C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080480E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804819C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08048570);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08048A74);
struct T48Item { s16 id; u16 kind; u8 pad[12]; };
extern u8 *t48State asm("gUnk_03005CF4");
extern u8 *t48Items asm("gUnk_030034E0");
static inline s32 t48id(struct T48Item *p) { register u32 x asm("r0") = (u16)p->id; asm("" : "+r" (x)); return x; }
void sub_08049DC4(void) {
    register s32 value asm("r1"); register s32 loaded asm("r0"); s32 other; register s32 flag asm("r4"); register s32 count2 asm("r5"); register u8 *state asm("r2"); register s32 count asm("r3"); register s32 saved asm("r6"); register s32 bits asm("r2"); register s32 off asm("r4"); register s32 off1 asm("r5"); register s32 flagmask asm("r3"); register s32 mask asm("r5");
    u32 i; register u32 j asm("r3");
    u8 *selected;
    struct T48Item *p,*q;
    state=t48State; asm("" : "+r" (state)); flagmask=0x20; value = *(s32 *)(state+0x38);
    if (!(value & flagmask)) {
        *(s32 *)(state+0x38) = value | flagmask;
        mask=1; if (sub_0800CE30()) selected = t48State+0x1C4;
        else { loaded=(s32)t48State; off=0x1B8; asm("" : "+r" (off)); selected = (u8 *)loaded+off; }
        loaded=*selected; asm("" : "+r" (loaded)); flag = (loaded >> 5) & mask; asm("" : "+r" (flag));
        other = sub_080020F4();
        count=0; i=0; loaded=(s32)t48Items; asm("" : "+r" (loaded)); off1=0x150; asm("" : "+r" (off1)); p=(struct T48Item *)((u8 *)loaded+off1);
        do {
            if (t48id(p)==1 && p->kind==0x2A) count++;
            p++; i++;
        } while(i<=24);
        saved=count; count2=0; asm("" : "+r" (count2)); j=0; bits=flag|other; asm("" : "+r" (bits)); loaded=(s32)t48Items; asm("" : "+r" (loaded)); off=0x2E0; asm("" : "+r" (off)); q=(struct T48Item *)((u8 *)loaded+off);
        do {
            if (t48id(q)==1 && q->kind==0x2A) count2++;
            q++; j++;
        } while(j<=74);
        if ((bits | saved | count2)==0) sub_08068820(sub_0805A040,0,(void *)1);
    }
    if (sub_0800CC98()==0) {
        switch(sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while(sub_0801AAE0()==0) sub_080003F0();
    }
}

struct T48TileE { u8 pad[0x80]; s16 x,y; };
extern struct T48TileE t48tileE asm("gUnk_03003170");
extern u8 *t48stateE asm("gUnk_03005CF4");
extern void t48bbE(s32,s32) asm("sub_0800BB80");
static inline void t48moveE(s16 step,s16 tx,s16 ty) {
 s32 a,b; register s32 delta asm("r9")=step; s32 x=t48tileE.x,y=t48tileE.y; register s32 i asm("r4");
 i=0;do{sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbE((s16)a,(s16)b);sub_080003F0();i+=delta;asm("" : : "r"(i) : "sl");}while(i<=0x400);
}
static inline void t48moveFirstE(s16 step,s16 tx,s16 ty) {
 s32 a,b; register s32 delta asm("sl")=step; s32 x=t48tileE.x,y=t48tileE.y; register s32 i asm("r4");
 i=0;do{sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbE((s16)a,(s16)b);sub_080003F0();i+=delta;asm("" : : "r"(i));}while(i<=0x400);
}
static inline void t48musicE(u32 track) { register u32 v asm("r1")=track; asm("" : "+r"(v)); gUnk_03005CF8=v; { register u32 bits asm("r1"); register u32 flags asm("r0")=gUnk_030027D0; asm("" : "+r"(flags)); bits=32; asm("" : "+r"(bits)); if(!(flags&bits)) sub_08006CB4(track); } }

void sub_08049EBC(void) {
 s32 off; u16 n; s32 v; u32 req; u8 *p; register s32 idx asm("r2"); register s32 mask asm("r1"); register u8 *gp asm("r0"); register u8 *gp2 asm("r2"); register u32 word asm("r0"); register u32 req3 asm("r3"); register u32 hv asm("r1");
 idx=sub_080020F4()*0x14C; asm("" : "+r"(idx)); p=(u8 *)gUnk_03003CE0+idx;
 *(u32 *)(p+0x30)|=1;
 sub_0800D0F4();
 if(sub_08002164()==1) off=0;
 else switch(sub_080020F4()) { case 0: off=-12; break; case 1: off=12; break; case 2: off=-36; break; case 3: off=36; break; }
 sub_08028AAC(0,(u16)(off+240),240,0);
 n=1; goto wait1; dec1: n--; if(n==0) goto end1; wait1: sub_080003F0(); if(sub_080021A8()==0) goto dec1; end1:;
 if(sub_0800CC98()==0) { switch(sub_0801AB24()) { case 0: sub_080576A8(); break; case 1: sub_0801AB50(6); break; case 2: sub_0801AB90(6); break; } while(sub_0801AAE0()==0) sub_080003F0(); }
 t48musicE(217);
 n=20; goto wait2; dec2: n--; if(n==0) goto end2; wait2: sub_080003F0(); if(sub_080021A8()==0) goto dec2; end2:;
 t48moveFirstE(17,-off,-108);
 gp=t48stateE; asm("" : "+r"(gp)); mask=64; if(!(*(u32 *)(gp+0x38)&mask)) { while(sub_0805F184()) sub_080003F0(); while(sub_0805EF90()) sub_080003F0(); req3=sub_0805DF38(1,15,2,0,45,0x140030); }
 else { while(sub_0805F184()) sub_080003F0(); while(sub_0805EF90()) sub_080003F0(); req3=sub_0805DF38(1,15,2,0,45,0x140031); }
 asm("" : "+r"(req3));
 gp2=t48stateE; asm("" : "+r"(gp2)); mask=64; *(u32 *)(gp2+0x38)|=mask; req=req3;
 while(sub_0805EEFC((void *)req)==0) sub_080003F0();
 t48moveE(34,0,0);
 t48musicE(11);
 hv=*(u16 *)(t48stateE+4); asm("" : "+r"(hv)); word=hv|32; asm("" : "+r"(word)); *(u16 *)(t48stateE+4)=word;
 idx=sub_080020F4()*0x14C; asm("" : "+r"(idx)); p=(u8 *)gUnk_03003CE0+idx; *(u32 *)(p+0x30)&=~1;
 sub_0800D108();
}


struct T48TileA {u8 pad[128];s16 x,y;};
struct T48TaskA {u32 f0,f4,f8;void (*fc)(void);u8 *f10;u32 f14,f18,f1c;u8 *f20;u32 f24;};
extern struct T48TileA t48tileA asm("gUnk_03003170");
extern u8 *t48stateA asm("gUnk_03005CF4");
extern u8 *t48objA asm("gUnk_030056F4");
extern void t48bbA(s32,s32) asm("sub_0800BB80");
extern void sub_0804A478(void);
extern void sub_0804A89C(void);
static inline void t48taskA(void (*cb)(void),s32 arg) {
 struct T48TaskA *p=(struct T48TaskA *)(t48stateA+0xE34); u32 i; u8 *mem;
 i=0; goto check;
 next: i++;p++;
 check: if(i>29)return;
 if(sub_08000470((u32)p))goto next;
 while((p->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 p->f8=60;p->fc=cb;p->f10=mem+0x3fc;p->f24=0;sub_08000274((u32)p,arg);
}
static inline void t48moveA(s16 step,s16 tx,s16 ty) {
 s32 a,b; s32 delta=step; s32 x=t48tileA.x,y=t48tileA.y; s32 i;
 for(i=0;i<=0x400;i+=delta){sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbA((s16)a,(s16)b);sub_080003F0();}
}
static inline void t48modeA(void){if(sub_0800CC98()==0){switch(sub_0801AB24()){case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}while(sub_0801AAE0()==0)sub_080003F0();}}
static inline void t48waitA(u16 n){goto check;next:n--;if(n==0)return;check:sub_080003F0();if(sub_080021A8()==0)goto next;}
static inline u32 t48boolA(u8 *p,u32 mask){u32 r=*(u32 *)(p+0x38)&mask;if(r)r=1;return r;}
static inline void t48musicA(u32 track){register u32 v asm("r1")=track;asm("" : "+r"(v));gUnk_03005CF8=v;if(!(gUnk_030027D0&32))sub_08006CB4(track);}
void sub_0804A188(void){
 u32 bit;u8 *player;register u8 *base asm("r0");register u32 one asm("r4");register s32 *flags asm("r5"); register u8 *p asm("r2"); register u32 i asm("r3"); register u32 shifted asm("r1"); register u32 stride asm("r0");
 base=t48stateA;asm("" : "+r"(base));one=1;bit=t48boolA(base,one); asm("" : "+r"(bit));
 if(!bit){
 player=(u8 *)gUnk_03003CE0+0x14c*sub_080020F4();*(u32 *)(player+0x30)|=one;sub_0800D0F4();*(u32 *)(t48stateA+0x38)|=one;
 t48moveA(0x400,0,-60);t48taskA(sub_0804A478,0);t48waitA(2);t48modeA();t48musicA(196);
return;
}

 t48modeA();sub_0802A080(140,130,200,100);t48taskA(sub_0804A89C,5);t48taskA(sub_0804A89C,6);t48waitA(30);
 p=t48objA;i=0;flags=&gUnk_030056FC;asm("" : "+r"(flags));do{shifted=1<<i;asm("" : "+r"(shifted));if((*flags&shifted)&&*(u16 *)(p+12)==12)*(u16 *)(p+12)=0;i++;stride=0x2E0;asm("" : "+r"(stride));p+=stride;}while(i<=4);sub_08019F04();return;

}

struct T48TileK {u8 pad[128];s16 x,y;};
struct T48TaskK {u32 f0,f4,f8;void (*fc)(void);u8 *f10;u32 f14,f18,f1c;u8 *f20;u32 f24;};
extern struct T48TileK t48tileK asm("gUnk_03003170");
extern u8 *t48stateK asm("gUnk_03005CF4");
extern u8 *t48objK asm("gUnk_030056F4");
extern void t48bbK(s32,s32) asm("sub_0800BB80");
extern void sub_0804A478(void);
extern void sub_0804A89C(void);
static inline void t48taskK(void (*cb)(void),s32 arg) {
 struct T48TaskK *p=(struct T48TaskK *)(t48stateK+0xE34); u32 i; u8 *mem;
 i=0; goto check;
 next: i++;p++;
 check: if(i>29)return;
 if(sub_08000470((u32)p))goto next;
 while((p->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 p->f8=60;p->fc=cb;p->f10=mem+0x3fc;p->f24=0;sub_08000274((u32)p,arg);
}
static inline void t48moveK(s16 step,s16 tx,s16 ty) {
 s32 a,b; s32 delta=step; s32 x=t48tileK.x,y=t48tileK.y; register s32 i asm("r4");
 i=0;do{sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbK((s16)a,(s16)b);sub_080003F0();i+=delta;asm("" : : "r"(i));}while(i<=0x400);
}
static inline void t48waitK(u16 n){goto check;next:n--;if(n==0)return;check:sub_080003F0();if(sub_080021A8()==0)goto next;}
extern void t48actorK(s32) asm("sub_0804A89C");
void sub_0804A478(void){
 struct T48TaskK *t1,*t2,*t3,*t4;
 register u8 *p asm("r2");register u32 i asm("r3");register s32 *flags asm("r5");register u32 shifted asm("r1");register u32 stride asm("r0");
 t48actorK(0);t48moveK(34,0,-30);
 {register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;asm("" : "+r"(cb));task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check1;next1:j++;task++;check1:if(j>29)goto end1;
 if(sub_08000470((u32)task))goto next1;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,1);t1=task;
 end1:;}
{register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;asm("" : "+r"(cb));task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check2;next2:j++;task++;check2:if(j>29)goto end2;
 if(sub_08000470((u32)task))goto next2;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,2);t2=task;
 end2:;}
{register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;asm("" : "+r"(cb));task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check3;next3:j++;task++;check3:if(j>29)goto end3;
 if(sub_08000470((u32)task))goto next3;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,3);t3=task;
 end3:;}
{register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;asm("" : "+r"(cb));task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check4;next4:j++;task++;check4:if(j>29)goto end4;
 if(sub_08000470((u32)task))goto next4;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,4);t4=task;
 end4:;}

 sub_0802A080(140,130,200,100);
 if(t1&&sub_08000470((u32)t1))sub_080003A8((u32)t1);
 if(t2&&sub_08000470((u32)t2))sub_080003A8((u32)t2);
 if(t3&&sub_08000470((u32)t3))sub_080003A8((u32)t3);
 if(t4&&sub_08000470((u32)t4))sub_080003A8((u32)t4);
 t48waitK(1);sub_0805EFBC();do{sub_080003F0();}while(sub_0805F184());t48moveK(102,0,0);
 t48taskK(sub_0804A89C,5);t48taskK(sub_0804A89C,6);t48waitK(30);
 if(sub_0800CB9C()==0){if(!(gUnk_030027D0&32)){gUnk_03005CF8=2;sub_08006CB4(2);}}else sub_080586B4(0);
 p=t48objK;i=0;flags=&gUnk_030056FC;asm("" : "+r"(flags));do{shifted=1<<i;asm("" : "+r"(shifted));if((*flags&shifted)&&*(u16 *)(p+12)==12)*(u16 *)(p+12)=0;i++;stride=0x2E0;asm("" : "+r"(stride));p+=stride;}while(i<=4);sub_08019F04();
}

struct T48SlotB {s32 id;u8 pad[0x32];u16 unk36;u8 tail[0x38];};
struct T48ItemB {u16 unk0,unk2;u8 pad[12];};
struct T48ReqB {u16 unk0,unk2;u8 pad[12];};
struct T48PlayerB {u8 pad[0x30];u32 unk30;u8 tail[0x118];};
extern u8 *t48stateB asm("gUnk_03005CF4");
extern u8 *t48itemsB asm("gUnk_030034E0");
extern u8 *t48objB asm("gUnk_030056F4");
extern struct T48PlayerB t48playersB[] asm("gUnk_03003CE0");
static inline void t48waitB(u16 n){goto check;next:n--;if(n==0)return;check:sub_080003F0();if(sub_080021A8()==0)goto next;}
static inline struct T48SlotB *t48findB(s32 id){struct T48SlotB *p=(struct T48SlotB *)(t48stateB+0x7A4);u32 i;for(i=0;i<=14;i++,p++)if(p->id==id)return p;sub_080003F0();return 0;}
static inline struct T48SlotB *t48findLastB(s32 id){struct T48SlotB *p;register u8 *base asm("r0")=t48stateB;register u32 off asm("r4");u32 i;asm("" : "+r"(base));off=0x7A4;asm("" : "+r"(off));p=(struct T48SlotB *)(base+off);for(i=0;i<=14;i++,p++)if(p->id==id)return p;sub_080003F0();return 0;}
static inline u32 t48idB(struct T48ItemB *p){return p->unk0;}
static inline s32 t48countB(u32 offset,u32 max){register s32 count asm("r3");register u32 i asm("r2");register struct T48ItemB *p asm("r1");register u8 *base asm("r0");register u32 off asm("r4");count=0;i=0;{register u8 **slot asm("r0")=&t48itemsB;base=*slot;}off=offset;p=(struct T48ItemB *)(base+off);do{if(t48idB(p)==1&&p->unk2==35)count++;p++;i++;}while(i<=max);return count;}
static inline s32 t48countSecondB(u32 offset,u32 max){register s32 count asm("r3");register u32 i asm("r2");register struct T48ItemB *p asm("r1");register u8 *base asm("r0");register u32 off asm("r4");count=0;i=0;{register u8 **slot asm("r0")=&t48itemsB;base=*slot;}off=offset;p=(struct T48ItemB *)(base+off);do{if(t48idB(p)==1&&p->unk2==35)count++;p++;i++;}while(i<=max);return count;}
static inline s32 t48bitB(s32 value,u32 unused){register s32 bit asm("r1")=value>>2;register s32 mask asm("r0")=1;asm("" : "+r"(mask));bit&=mask;asm("" : "+r"(bit));return bit;}
static inline s32 t48byteB(u8 *p){register s32 v asm("r0")=*p;asm("" : "+r"(v));return v;}
static inline void t48initB(struct T48ReqB *p,u32 id,u32 kind){register u32 a asm("r1")=id;register u32 b asm("r2")=kind;register struct T48ReqB *out asm("r0");asm("" : "+r"(a),"+r"(b));out=p;out->unk0=a;out->unk2=b;}
static inline void t48clearB(u8 *dst){u32 i=0;register u8 *p asm("r2")=dst;do{p[i]=0;i++;}while(i<=11);}
extern void t48implB(u32) asm("sub_0804A89C");
void t48implB(u32 arg0) {
    struct T48ReqB sp8;
    struct T48SlotB *var_r1;
    struct T48SlotB *var_r1_2;
    register s32 temp_r5 asm("r5");
    register s32 temp_r6 asm("r6");
    s32 var_r0_2;
    register u32 one asm("r0"); register struct T48ReqB *out asm("r1"); register u32 off6 asm("r4");

    register u8 *obj asm("r0");
    s32 var_r3;
    s32 var_r3_2;
    u16 var_r4;
    u16 var_r4_2;
    u16 var_r4_3;
    u16 var_r4_4;
    u16 var_r4_5;
    u16 var_r4_6;
    u16 var_r4_7;
    u16 var_r4_8;
    u16 var_r4_9;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 var_r1_5;
    u32 var_r1_6;
    u32 var_r2;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r2_4;
    u8 *var_r0;
    struct T48PlayerB *temp_r2;
    struct T48ItemB *var_r1_3;
    struct T48ItemB *var_r1_4;

    switch (arg0) {                                 /* irregular */
    case 0:
        temp_r5 = sub_080289C0(0x3004B, 0x60, 0x130);asm("" : "+r"(temp_r5));
        temp_r6 = sub_080289C0(0x7004B, 0x38, 0x118);asm("" : "+r"(temp_r6));
        t48waitB(30);
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140035U);
        sub_08028D98(temp_r5, 0, -3, 3);
        sub_08028D98(temp_r5, 0, 3, 3);
        while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140036U);
        sub_08028D98(temp_r6, 0, -3, 3);
        sub_08028D98(temp_r6, 0, 3, 3);
        while (sub_0805EEFC((void *) temp_r4_2) == 0) sub_080003F0();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140037U);
        sub_08028D98(temp_r5, 0, -3, 3);
        sub_08028D98(temp_r5, 0, 3, 3);
        while (sub_0805EEFC((void *) temp_r4_3) == 0) sub_080003F0();
        sub_0802939C(temp_r5, 8);
        sub_080290E4(temp_r5, 4);
        sub_08028AAC(temp_r5, 0x60, 0xCC, 0x28);
        var_r1 = t48findB(temp_r5);
        if (var_r1 != NULL) {
            var_r1->unk36 = 4;
        }
        sub_0802939C(temp_r6, 8);
        sub_080290E4(temp_r6, 5);
        sub_08028AAC(temp_r6, 0x60, 0x104, 0x14);
        sub_080290E4(temp_r6, 4);
        sub_08028AAC(temp_r6, 0x60, 0xD2, 0x14);
        var_r1_2 = t48findLastB(temp_r6);
        if (var_r1_2 == NULL) {
            return;
        }
        var_r1_2->unk36 = 4;
        return;
    case 1:
        temp_r2 = &t48playersB[sub_080020F4()];
        temp_r2->unk30 = (s32) (temp_r2->unk30 & ~1);
        sub_0800D108();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140038U);
        while (sub_0805EEFC((void *) temp_r4_4) == 0) sub_080003F0();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140039U);
        return;
    case 2:
                t48waitB(0x1F4);
        sub_0802939C(1, 8);
        sub_08028D98(1, 0x12, -0xC, 0xB4);
        sub_08029174(1, 0);
                t48waitB(0x28);
        sub_080290E4(1, 2);
        if (sub_080020F4() == 0) { register u8 *pad asm("r6");
            {register s32 count asm("r3");register u32 i asm("r2");register struct T48ItemB *p asm("r1");register u8 **slot asm("r0");register u8 *base asm("r0");register u32 off asm("r4");count=0;i=0;pad=sp8.pad;slot=&t48itemsB;base=*slot;off=0x150;p=(struct T48ItemB *)(base+off);do{if(t48idB(p)==1&&p->unk2==35)count++;p++;i++;}while(i<=24);var_r3=count;}var_r3_2=t48countSecondB(0x2E0,74);
            if (sub_0800CE30() != 0) {
                var_r0 = t48stateB+0x1C5;
            } else {
                var_r0 = t48stateB+0x1B9;
            }
            if ((var_r3 + var_r3_2 + t48bitB(t48byteB(var_r0),1)) == 0) {
                t48initB(&sp8,1,35);
                t48clearB(pad);
                while(sub_08067B9C(0x9300U, 0x8800U, &sp8) == 0)sub_080003F0();
            } else {
                one=1;out=&sp8;out->unk0=one;out->unk2=one;
                t48clearB(pad);
                while(sub_08067B9C(0x9300U, 0x8800U, &sp8) == 0)sub_080003F0();
            }
        }
                t48waitB(0x28);
        sub_080290E4(1, 3);
                t48waitB(0x6E);
        sub_0802939C(1, 8);
        sub_08028D98(1, -0x12, 0xC, 0xB4);
        var_r0_2 = 1;
        goto block_108;
    case 3:
                t48waitB(0x1F4);
        sub_0802939C(2, 8);
        sub_08028D98(2, 0x12, -0xC, 0xB4);
        sub_08029174(2, 0);
                t48waitB(0xBE);
        sub_0802939C(2, 8);
        sub_08028D98(2, -0x12, 0xC, 0xB4);
        var_r0_2 = 2;
block_108:
        sub_08029174(var_r0_2,0);return;
    case 4:
                t48waitB(0x1F4);
        sub_08028D98(6, 0x12, -0xC, 0xB4);
                t48waitB(0xBE);
        sub_08028D98(6, -0x12, 0xC, 0xB4);
        sub_08028AAC(6, 0x90, 0x88, 0);
        sub_0805D37C(0x9300, 0x8800, 4);
        sub_080687A8();
        return;
    case 5:
        sub_08019EB8(*(u16 *)(t48objB+2), 3);
        sub_0802949C(1, 0);
        return;
    case 6:
        obj=t48objB;asm("" : "+r"(obj));off6=0x2E0;asm("" : "+r"(off6));sub_08019EB8(*(u16 *)(obj+off6+2), 3);
        sub_0802949C(2, 0);
        return;
    }
}

struct T49TaskAE48 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
extern u8 *t49_gsAE48 asm("gUnk_03005CF4");
extern void t49_cbAE48(void) asm("sub_080567D4");
static inline void t49_startAE48(void *callback, u32 arg)
{
    struct T49TaskAE48 *task = (struct T49TaskAE48 *)(t49_gsAE48 + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
void sub_0804AE48(void)
{
    s32 zero;
    t49_startAE48(t49_cbAE48, 0);
    t49_startAE48(t49_cbAE48, 1);
    zero = sub_0800CE30();
    if (zero != 0) t49_gsAE48[0x1C1] = 0;
    else t49_gsAE48[0x1B5] = zero;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
struct T49TaskAF80 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };

struct T49ReqAF80 { u32 a, b, c; void *callback; u32 arg, unused; };
extern u8 *t49_gsAF80 asm("gUnk_03005CF4");
extern void sub_0804B054(s32);

static inline u32 t49_hasAF80(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline void t49_startAF80(void *cb, u32 value, u32 mode)
{
    struct T49ReqAF80 req;
    struct T49TaskAF80 *task;
    u32 i;
    register u32 zero asm("r5");

        task = (struct T49TaskAF80 *)(t49_gsAF80 + 0xE34);

        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i > 29) return;
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            req.callback = cb;
            req.arg = value;
            task->flags = 60;
            task->memory = sub_08001494(0x400);
            task->callback = (u32)sub_0802A104;
            task->stack = task->memory + 0x3FC;
            task->arg = zero;
            sub_08000274(task, &req, mode);
            sub_080003F0();
            sub_080003F0();
}
void sub_0804AF80(void)
{
    if (t49_hasAF80(t49_gsAF80, 8) == 0) {
        t49_startAF80(sub_0804B054, 0, 7);
    } else {
        sub_08028AAC(8, 0x198, 0x158, 0);
    }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
extern u8 *t49_gsB054 asm("gUnk_03005CF4");
extern void t49_spawnB054(void *, s32, s32) asm("sub_08068820");
static inline void t49_flagB054(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
static inline void t49_effectB054(s32 x, s32 y)
{ sub_08073E2C(x, y, 41, 1); }
void sub_0804B054(s32 arg0)
{
    u16 timer;
    switch (arg0) {
    case 0:
        t49_spawnB054(sub_0804B054, 1, 0);
        break;
    case 1:
        t49_flagB054(t49_gsB054, 8);
        t49_effectB054(0x19800, 0x15900);
        timer = 4;
        goto wait;
next:
        if (--timer == 0) goto done;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto next;
done:
        t49_effectB054(0x19000, 0x15900);
        t49_effectB054(0x1A000, 0x15900);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(0x17B);
        sub_08028AAC(8, 0x198, 0x158, 0);
        break;
    }
}
struct T49EntityB100 { u8 pad[12]; u16 state; u8 padE[0x22]; u32 x, y; void *callback; u32 arg; u8 tail[0x2A0]; };
extern struct T49EntityB100 *t49_entitiesB100 asm("gUnk_030056F4");
extern u8 *t49_gsB100 asm("gUnk_03005CF4");
extern void t49_cbB100(void) asm("sub_0804B32C");
static inline u32 t49_testB100(s32 *ptr, u32 mask)
{ return *ptr & mask; }
static inline void t49_waitMaskB100(s16 mask)
{
    if ((gUnk_030056FC & mask) == 0) {
        do { sub_080003F0(); } while ((gUnk_030056FC & mask) == 0);
    }
}
static inline void t49_bindB100(void *callback, u32 arg, s16 index)
{
    struct T49EntityB100 *p;
    u32 i;
    register s32 slot asm("r6") = index;
    u32 offset;
    register struct T49EntityB100 **table asm("r1");
    struct T49EntityB100 *entity;
    register s32 *bits asm("r6");
    register u32 one asm("r7");
    t49_waitMaskB100(arg);
    table = &t49_entitiesB100;
    offset = slot * 0x2E0;
    p = *table;
    entity = (struct T49EntityB100 *)((u8 *)p + offset);
    entity->callback = callback;
    entity->arg = arg;
    entity->x = 0;
    entity->y = 0;
    i = 0;
    bits = &gUnk_030056FC;
    one = 1;
    do {
        if (t49_testB100(bits, one << i) != 0 && p->state == 12) p->state = 0;
        i++;
        p++;
    } while (i <= 4);
    sub_08019F04();
}
static inline void t49_transitionB100(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
static inline void t49_setFlagB100(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
static inline u8 *t49_offsetB100(u8 *ptr, u32 offset)
{ return ptr + offset; }
static inline u8 *t49_selectB100(void)
{
    if (sub_0800CE30() != 0) return t49_offsetB100(t49_gsB100, 0x1C5);
    return t49_offsetB100(t49_gsB100, 0x1B9);
}

static inline u32 t49_hasB100(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline s8 t49_extractB100(u16 value)
{ return ((s16)value / 4) & 1; }

static inline void t49_lockB100(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockB100(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
void sub_0804B100(void)
{
    u8 *selected;
    register s32 bit asm("r5");
    register s32 raw asm("r0");
    s32 alternate;
    u32 dialog;
    selected = t49_selectB100();
    raw = *selected;
    bit = t49_extractB100(raw);
    if (bit == 0) t49_bindB100(t49_cbB100, 2, 1);
    else {
        sub_08028AAC(1, 9999, 9999, 0);
        sub_08028AAC(2, 9999, 9999, 0);
    }
    alternate = sub_0800CCCC();
    if (t49_hasB100(t49_gsB100, 16) == 0 && bit == 0 && alternate == 0) {
        t49_lockB100();
        sub_0800D0F4();
        t49_transitionB100();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003E);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        t49_setFlagB100(t49_gsB100, 16);
        t49_unlockB100();
        sub_0800D108();
    } else t49_transitionB100();
}
struct T49TaskB32C { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49EntryB32C { u32 id, kind; u8 pad[0x2E]; u16 duration; u8 tail[0x38]; };
extern u8 *t49_gsB32C asm("gUnk_03005CF4");
extern void t49_cbB32C(void) asm("sub_0805A054");
static inline u32 t49_claimB32C(u8 *base, u32 mask)
{
    u32 old = *(u32 *)(base + 0x38);
    if (old & mask) return 1;
    *(u32 *)(base + 0x38) = old | mask;
    return 0;
}
static inline void t49_startB32C(void *callback, u32 arg)
{
    struct T49TaskB32C *task = (struct T49TaskB32C *)(t49_gsB32C + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next: i++; task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
static inline void t49_waitB32C(u16 timer)
{
    goto wait;
next:
    if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}
static inline void t49_effectB32C(s32 x, s32 y)
{ sub_08073E2C(x, y, 41, 1); }
static inline void t49_lockB32C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockB32C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline struct T49EntryB32C *t49_findB32C(u32 id)
{
    struct T49EntryB32C *p = (struct T49EntryB32C *)(t49_gsB32C + 0x7A4);
    u32 i;
    for (i = 0; i <= 14; i++, p++) {
        if (p->id == id) return p;
    }
    sub_080003F0();
    return 0;
}
static inline u8 *t49_selectB32C(void)
{
    if (sub_0800CE30() != 0) return t49_gsB32C + 0x1C5;
    return t49_gsB32C + 0x1B9;
}
void sub_0804B32C(void)
{
    u32 actor, dialog;
    struct T49EntryB32C *entry;
    u8 *selected;
    if (sub_0800CCCC() != 0) goto finish;
    if (t49_claimB32C(t49_gsB32C, 32) != 0) goto finish;
    t49_lockB32C();
    sub_0800D0F4();
    sub_0801A388(2);
    sub_0801A388(1);
    sub_08028AAC(2, 120, 80, 10);
    sub_08028AAC(2, 9999, 9999, 0);
    t49_startB32C(t49_cbB32C, 2);
    t49_waitB32C(30);
    t49_effectB32C(0x7800, 0x5000);
    t49_waitB32C(2);
    t49_effectB32C(0x7000, 0x5000);
    t49_effectB32C(0x7C00, 0x4800);
    t49_waitB32C(2);
    t49_effectB32C(0x8000, 0x5000);
    t49_effectB32C(0x7400, 0x4800);
    t49_waitB32C(8);
    sub_08028AAC(1, 9999, 9999, 0);
    t49_startB32C(t49_cbB32C, 1);
    actor = sub_080289C0(15, 120, 80);
    sub_080290E4(actor, 0);
    sub_0802939C(actor, 20);
    sub_08028AAC(actor, 120, 80, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003F);
    while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
    sub_0802939C(actor, 16);
    sub_08028D98(actor, 0, 120, 100);
    entry = t49_findB32C(actor);
    if (entry != 0) entry->duration = 4;
    t49_unlockB32C();
    sub_0800D108();
finish:
    selected = t49_selectB32C();
    {
        register u32 value asm("r1") = *selected;
        register u32 mask asm("r0") = 4;
        *selected = mask | value;
    }
}
extern u8 *t49_gsB61C asm("gUnk_03005CF4");
extern void t49_BB80B61C(s32, s32) asm("sub_0800BB80");
static inline void t49_lockB61C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockB61C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_moveFirstB61C(s16 step, s16 tx, s16 ty)
{
    volatile s32 a;
    s32 b;
    register s32 delta asm("sl") = step;
    register s32 x asm("r8") = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 i;
    register s32 *outB asm("r6");
    i = 0;
    outB = &b;
    for (; i <= 0x400; i += delta) {
        sub_080659F4(&a, x, tx, i);
        sub_080659F4(outB, y, ty, i);
        t49_BB80B61C((s16)a, (s16)b);
        sub_080003F0();
    }
}
static inline void t49_moveSecondB61C(s16 step, s16 tx, s16 ty)
{
    s32 a, b;
    register s32 delta asm("r9") = step;
    register s32 x asm("r6") = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 i;
    for (i = 0; i <= 0x400; i += delta) {
        sub_080659F4(&a, x, tx, i);
        sub_080659F4(&b, y, ty, i);
        t49_BB80B61C((s16)a, (s16)b);
        sub_080003F0();
    }
}
static inline void t49_waitB61C(u16 timer)
{
    goto wait;
next: if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}
static inline void t49_transitionB61C(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
static inline void t49_musicB61C(u32 track)
{
    gUnk_03005CF8 = track;
    if ((gUnk_030027D0 & 32) == 0) sub_08006CB4(track);
}
static inline u32 t49_hasB61C(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline void t49_flagB61C(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
void sub_0804B61C(void)
{
    register s32 offset asm("r4");
    register s32 tx asm("r2");
    register u32 dialog asm("r4");
    register u32 newDialog asm("r3");
    t49_lockB61C();
    sub_0800D0F4();
    if (sub_08002164() == 1) offset = 0;
    else {
        switch (sub_080020F4()) {
        case 0: offset = -12; break;
        case 1: offset = 12; break;
        case 2: offset = -36; break;
        case 3: offset = 36; break;
        }
    }
    sub_08028AAC(0, (u16)(offset + 120), 400, 0);
    tx = -offset;
    t49_moveFirstB61C(512, tx, -300);
    t49_waitB61C(30);
    t49_transitionB61C();
    t49_musicB61C(217);
    t49_waitB61C(20);
    if (t49_hasB61C(t49_gsB61C, 64) == 0) {
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        newDialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003B);
    } else {
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        newDialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003D);
    }
    t49_flagB61C(t49_gsB61C, 64);
    dialog = newDialog;
    while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
    t49_moveSecondB61C(17, 0, 0);
    t49_musicB61C(11);
    {
        u16 *ptr = (u16 *)(t49_gsB61C + 4);
        register u32 value asm("r1") = *ptr;
        register u32 mask asm("r0") = 32;
        *ptr = mask | value;
    }
    t49_unlockB61C();
    sub_0800D108();
}
extern void t49_BB80B8EC(s32, s32) asm("sub_0800BB80");
static inline void t49_moveB8EC(s16 step, s16 tx, s16 ty)
{
    volatile s32 a;
    s32 b;

    register s32 delta asm("sl") = step;
    register s32 x asm("r8") = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 *outB = (s32 *)&b;
    s32 i;
    for (i = 0; i <= 0x400; i += delta) {
        sub_080659F4((s32 *)&a, x, tx, i);
        sub_080659F4(outB, y, ty, i);
        t49_BB80B8EC((s16)a, (s16)b);
        sub_080003F0();
    }
}
void sub_0804B8EC(s32 arg0)
{
    register s32 target asm("r6") = arg0;
    u16 timer = 100;
    goto wait;
next:
    if (--timer == 0) goto done;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
done:
    t49_moveB8EC(2, target, -300);
}





struct T49TaskB984 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49ReqB984 { s32 x, y; u16 w, h; void *callback; u32 arg, unused; };
extern u8 *t49_gsB984 asm("gUnk_03005CF4");
extern void t49_taskB984(void) asm("sub_0805A874");
void sub_0804BEF8(u32 arg0);
extern void t49_cbB984(void) asm("sub_0805A088");
struct T49PacketB984 { u16 type, id; u8 args[12]; };
static inline u32 t49_extractB984(s32 value,u32 mask) { return (value>>6)&mask; }
static inline void t49_startB984(void *callback, u32 arg)
{
    struct T49TaskB984 *task = (struct T49TaskB984 *)(t49_gsB984 + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
extern void t49_BB80B984(s32,s32) asm("sub_0800BB80");
static inline void t49_moveB984(s16 tx,s16 ty)
{
    s32 a;
    s32 b;
    register s32 x asm("r8")=(s16)gUnk_03003170.f80;
    s32 y=(s16)gUnk_03003170.f82;
    s32 i;
    s32 *outA;
    s32 *outB;
    i=0;
    outA=(s32 *)&a;outB=&b;
    for(;i<=0x400;i+=0x400) {
        sub_080659F4(outA,x,tx,i);
        sub_080659F4(outB,y,ty,i);
        t49_BB80B984((s16)a,(s16)b);
        sub_080003F0();
    }
}
void sub_0804B984(void)
{
    union { struct T49PacketB984 packet; struct T49ReqB984 req; } data;
    u32 oldFlag;
    register u32 flag2 asm("r3");
    register u32 bit1 asm("r0");
    register u8 *selected asm("r1");
    register u32 bit asm("r4")=1;
    register u8 **base asm("r0");
    register u32 selectedBit asm("r1");
    register u32 state asm("r2");
    register u8 **savedBase asm("r4");
    u32 actor;
    u32 j;
    if (sub_0800CE30()) { register u32 offset asm("r2")=0x1C4; base=&t49_gsB984; selected=*base+offset; }
    else { register u32 offset asm("r3")=0x1B8; base=&t49_gsB984; selected=*base+offset; }
    selectedBit=t49_extractB984(*selected,bit);
    savedBase=base;
    { register u8 *game asm("r0")=*savedBase;
    flag2=2;
    state=*(u32 *)(game+0x38); }
    flag2 &= state;
    if(flag2!=0)flag2=1;
    bit1=1;
    bit1 &= state;
    if(bit1!=0)bit1=1;
    oldFlag=bit1;
    if (selectedBit) { register u32 pos asm("r2")=9999; sub_08028AAC(6,pos,pos,0); }
    else if (flag2) {
        actor=sub_080289C0(19,184,187);
        sub_08028AAC(6,184,202,0);
        {
    register void *callback asm("r8")=sub_0804BEF8;
    struct T49TaskB984 *task = (struct T49TaskB984 *)(*savedBase + 0xE34);
    u32 i = 0, zero;
    goto check;
next: i++; task++;
check:
    if (i > 29) goto footer;
    zero = sub_08000470((u32)task);
    if (zero != 0) goto next;
    data.req.x = 0xB700;
    data.req.y = 0xD200;
    data.req.w = 20;
    data.req.h = 5;
    data.req.callback = callback;
    data.req.arg = actor;
    task->flags = 60;
    task->memory = sub_08001494(0x400);
    task->callback = (u32)t49_taskB984;
    task->stack = task->memory + 0x3FC;
    task->arg = zero;
    sub_08000274(task, &data.req, 1);
    sub_080003F0();
    sub_080003F0();
        }
    } else {
        t49_moveB984(0,-40);
        actor=sub_080289C0(19,160,133);
        sub_08028AAC(6,184,202,0);
        { register u32 old asm("r1")=oldFlag;
        if (!old) {
            u32 alternate=sub_0800CE30();
            if(alternate) {
                register u32 id asm("r2");
                struct T49PacketB984 *packet;
                alternate=3;
                id=0x23;
                packet=&data.packet;
                packet->type=alternate;packet->id=id;
                for(j=0;j<=11;j++)data.packet.args[j]=0;
                while(!sub_08067B9C(0x2100,0x6F00,&data.packet))sub_080003F0();
            } else {
                register u32 id asm("r2");
                struct T49PacketB984 *packet;
                alternate=3;
                id=0x91;
                packet=&data.packet;
                packet->type=alternate;packet->id=id;
                for(j=0;j<=11;j++)data.packet.args[j]=0;
                while(!sub_08067B9C(0x2100,0x6F00,&data.packet))sub_080003F0();
            }
            { register u8 *game asm("r2")=t49_gsB984; register u32 mask asm("r1")=1; *(u32 *)(game+0x38)|=mask; }
        }
        }
        t49_startB984(t49_cbB984,actor);
    }
footer:
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}

struct T49TaskBC38 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49ReqBC38 { s32 x, y; u16 w, h; void *callback; u32 arg, unused; };
extern u8 *t49_gsBC38 asm("gUnk_03005CF4");
extern void t49_taskBC38(void) asm("sub_0805A874");
void sub_0804BEF8(u32 arg0);
struct T49EntryBC38 { u32 id, kind; u8 pad[0x3A]; u16 state; u8 tail[0x2C]; };
struct T49EntityBC38 { u16 f0,id; u8 pad[0x2DC]; };
extern struct T49EntityBC38 *t49_entitiesBC38 asm("gUnk_030056F4");
static inline void t49_lockBC38(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockBC38(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_waitBC38(u16 timer)
{
    goto wait;
next: if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}

static inline void t49_spawnBC38(void *callback, u32 arg, s32 x, s32 y, u16 w, u16 h)
{
    register u32 savedArg asm("r9")=arg;
    void *savedCallback=callback;
    struct T49ReqBC38 req;
    struct T49TaskBC38 *task = (struct T49TaskBC38 *)(t49_gsBC38 + 0xE34);
    u32 i = 0, zero;
    goto check;
next: i++; task++;
check:
    if (i > 29) return;
    zero = sub_08000470((u32)task);
    if (zero != 0) goto next;
    req.x = x;
    req.y = y;
    req.w = w;
    req.h = h;
    req.callback = savedCallback;
    req.arg = savedArg;
    task->flags = 60;
    task->memory = sub_08001494(0x400);
    task->callback = (u32)t49_taskBC38;
    task->stack = task->memory + 0x3FC;
    task->arg = zero;
    sub_08000274(task, &req, 1);
    sub_080003F0();
    sub_080003F0();
}
static inline struct T49EntryBC38 *t49_findBC38(u32 actor)
{
    struct T49EntryBC38 *p=(struct T49EntryBC38 *)(t49_gsBC38+0x7A4);
    u32 i=0;
    do {
        if(p->id==actor)return p;
        i++;p++;
    }while(i<=14);
    sub_080003F0();return 0;
}
static inline void t49_stateBC38(u32 actor)
{
    register u32 current asm("r5")=actor;
    register u32 savedActor asm("r2")=current;
    register u16 state asm("r4");
    struct T49EntryBC38 *p;
    state=3;
    if(current>0x100000) {
        p=t49_findBC38(savedActor);
        if(p)p->state=state;
    } else if(current) {
        u32 index=current-1;
        if(index<=4) {
            register struct T49EntityBC38 **table asm("r1")=&t49_entitiesBC38;
            register u32 offset asm("r0")=index*0x2E0;
            register struct T49EntityBC38 *entity asm("r1")=*table;
            entity=(struct T49EntityBC38 *)((u8 *)entity+offset);
            sub_08019EB8(entity->id,3);
        }
    } else {
        register u32 index asm("r0")=sub_080020F4();
        register u32 stride asm("r1")=0x14C;
        register u8 *player asm("r0");
        register u8 *players asm("r1");
        register u32 offset asm("r1");
        index*=stride;
        players=(u8 *)gUnk_03003CE0;
        index+=(u32)players;
        player=(u8 *)index;
        offset=0x11E;
        player+=offset;
        *(u16 *)player=state;
    }
}
void t49_sceneBC38(u32 arg0) asm("sub_0804BC38");
void t49_sceneBC38(u32 arg0)
{
    register u32 savedArg asm("r9")=arg0;
    register u8 **address asm("r5")=&t49_gsBC38;
    register u8 **savedAddress asm("r8");
    register u8 *game asm("r2")=*address;
    register u32 mask asm("r3")=2;
    u32 flags;
    s32 gate;
    u16 level;
    register s32 attempts asm("r4");
    register s32 nextAttempt asm("r6");
    register u32 actor asm("r5");
    register u32 active asm("r3");
    register u32 one asm("r7");
    register struct T49EntryBC38 *p asm("r1");
    register u32 i asm("r2");
    u32 dialog;
    flags=*(u32 *)(game+0x38);
    if(flags&mask)return;
    *(u32 *)(game+0x38)=flags|mask;
    gate=sub_0800CCCC();
    level=gUnk_03003170.f90;
    if(gate!=0)return;
    if(level!=4)return;
    t49_lockBC38();
    sub_0800D0F4();
    savedAddress=address;
    one=1;
    do {
        register u8 **tableAddress asm("r1")=savedAddress;
        u8 *snapshot=*tableAddress;
        p=(struct T49EntryBC38 *)(snapshot+0x7A4);
        i=0;
        nextAttempt=attempts+1;
        active=*(u32 *)(snapshot+0x54);
        do {
            if(((one<<i)&active) && p->kind==19) { actor=p->id;goto found; }
            i++;p++;
        }while(i<=14);
        actor=0;
found:
        t49_waitBC38(1);
        attempts=nextAttempt;
    }while(actor==0 && nextAttempt<=599);
    { register u32 song asm("r1")=196; gUnk_03005CF8=song; }
    if(!(gUnk_030027D0&32))sub_08006CB4(196);
    t49_stateBC38(actor);
    t49_waitBC38(30);
    sub_0802939C(actor,8);
    sub_08028AAC(actor,184,187,40);
    sub_0802939C(actor,0);
    while(sub_0805F184()!=0)sub_080003F0();
    while(sub_0805EF90()!=0)sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,45,0x140043);
    while(sub_0805EEFC((void *)dialog)==0)sub_080003F0();
    t49_unlockBC38();
    sub_0800D108();
    if(sub_0800CB9C()==0) {
        if(!(gUnk_030027D0&32)) { gUnk_03005CF8=3;sub_08006CB4(3); }
    } else sub_080586B4(0);
    t49_spawnBC38(sub_0804BEF8,savedArg,0xB700,0xC800,20,14);
}

struct T49TaskBEF8 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49ReqBEF8 { s32 x, y; u16 w, h; void *callback; u32 arg, unused; };
extern u8 *t49_gsBEF8 asm("gUnk_03005CF4");
extern u8 *t49_itemsBEF8 asm("gUnk_030034E0");
extern void t49_taskBEF8(void) asm("sub_0805A874");
extern void t49_confirmBEF8(void) asm("sub_0804C150");
extern void t49_scheduleBEF8(void *, u32) asm("sub_08068070");
void sub_0804BEF8(u32 arg0);
static inline u32 t49_flagBEF8(u16 mask)
{
    register u32 bit asm("r4") = mask;
    register u8 *base asm("r0");
    register u32 offset asm("r1");
    s32 value;
    if (sub_0800CE30() != 0) { base = t49_gsBEF8; offset = 0x1C4; }
    else { base = t49_gsBEF8; offset = 0x1B8; }
    base += offset;
    value = *base;
    return (value >> 6) & bit;
}
static inline void t49_lockBEF8(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockBEF8(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_spawnBEF8(void *callback, u32 arg, s32 x, s32 y, u16 w, u16 h)
{
    struct T49ReqBEF8 req;
    struct T49TaskBEF8 *task = (struct T49TaskBEF8 *)(t49_gsBEF8 + 0xE34);
    u32 i = 0, zero;
    goto check;
next: i++; task++;
check:
    if (i > 29) return;
    zero = sub_08000470((u32)task);
    if (zero != 0) goto next;
    req.x = x;
    req.y = y;
    req.w = w;
    req.h = h;
    req.callback = callback;
    req.arg = arg;
    task->flags = 60;
    task->memory = sub_08001494(0x400);
    task->callback = (u32)t49_taskBEF8;
    task->stack = task->memory + 0x3FC;
    task->arg = zero;
    sub_08000274(task, &req, 1);
    sub_080003F0();
    sub_080003F0();
}
static inline void t49_confirmScheduleBEF8(u32 player)
{ t49_scheduleBEF8(t49_confirmBEF8, player); }
void sub_0804BEF8(u32 arg0)
{
    u32 count;
    u32 i;
    u16 *p;
    u32 dialog;
    if (t49_flagBEF8(1) != 0) return;
    t49_lockBEF8();
    sub_0800D0F4();
    count = 0;
    i = 0;
    p = (u16 *)(t49_itemsBEF8 + 0x150);
    do {
        if (p[0] == 1 && p[1] == 0x22) count++;
        p += 8;
        i++;
    } while (i <= 24);
    if (count != 0) {
        while (sub_0805F184() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -2, 0x140045);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        if (sub_0805EF14((u8 *)dialog) == 1) {
            t49_confirmScheduleBEF8(sub_080020F4());
        } else {
            t49_spawnBEF8(sub_0804BEF8, arg0, 0xB700, 0xC800, 20, 14);
        }
    } else {
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x140044);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        t49_spawnBEF8(sub_0804BEF8, arg0, 0xB700, 0xC800, 20, 14);
    }
    t49_unlockBEF8();
    sub_0800D108();
}
struct T49EntryC150 { u32 id, kind; u8 pad[0x2E]; u16 duration; u8 tail[0x38]; };
extern u8 *t49_gsC150 asm("gUnk_03005CF4");
extern void t49_cbC150(void) asm("sub_0805A0EC");
extern void t49_scheduleC150(void *, u32) asm("sub_08068070");
extern void t49_BB80C150(s32, s32) asm("sub_0800BB80");


static inline u8 t49_boolC150(u16 mask, u8 *base)
{
    u32 value = *(u32 *)(base + 0x38) & mask;
    if (value != 0) value = 1;
    return value;
}
static inline void t49_lockC150(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockC150(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_waitC150(u16 timer)
{
    goto wait;
next: if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}

static inline struct T49EntryC150 *t49_findC150(u32 id)
{
    struct T49EntryC150 *p = (struct T49EntryC150 *)(t49_gsC150 + 0x7A4);
    u32 i;
    for (i = 0; i <= 14; i++, p++) if (p->id == id) return p;
    sub_080003F0();
    return 0;
}
static inline void t49_moveC150(s16 step, s16 tx, s16 ty)
{
    s32 a, b;
    register s32 delta asm("sl") = step;
    register s32 x asm("r6") = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 i;
    for (i = 0; i <= 0x400; i += delta) {
        sub_080659F4(&a, x, tx, i);
        sub_080659F4(&b, y, ty, i);
        t49_BB80C150((s16)a, (s16)b);
        sub_080003F0();
    }
}
static inline void t49_flagC150(u32 mask, u8 *ptr)
{
    register u8 *base asm("r0") = ptr;
    register u32 value asm("r1") = *(u32 *)(base + 0x38);
    value |= mask;
    *(u32 *)(base + 0x38) = value;
}
static inline void t49_schedulePlayerC150(u32 player)
{ register u32 id asm("r1") = player; t49_scheduleC150(t49_cbC150, id); }
static inline u32 t49_gateC150(s32 alternate, u16 level)
{
    register s32 savedAlternate asm("r2") = alternate;
    register u32 savedLevel asm("r1") = level;
    register u32 first asm("r0") = 0;
    register u32 second asm("r2");
    if (savedAlternate == 0) first = 1;
    second = 0;
    if (savedLevel == 4) second = 1;
    return first & second;
}
void sub_0804C150(u32 arg0)
{
    register u8 *selected asm("r1");
    register u8 **gsAddress asm("r3");
    u8 **savedAddress;
    register u32 savedArg asm("r6") = arg0;
    u16 mask;
    register s32 alternate asm("r2");
    register u32 level asm("r1");
    u8 *game;
    u32 dialog, actor;
    u32 actorIndex, actorMask;
    register u32 actorOne asm("r4");
    struct T49EntryC150 *p;
    if (sub_0800CE30() != 0) {
        register u32 offset asm("r0") = 0x1C4;
        gsAddress = &t49_gsC150;
        selected = *gsAddress;
        selected += offset;
        goto selectionDone;
actorFound:
        actor = p->id;
        goto actorReady;
    } else {
        register u32 offset asm("r2") = 0x1B8;
        gsAddress = &t49_gsC150;
        selected = *gsAddress;
        selected += offset;
    }
selectionDone:
    {
        register u32 value asm("r2") = *selected;
        register u32 byteMask asm("r0") = 64;
        *selected = byteMask | value;
    }
    savedAddress = gsAddress;
    game = *savedAddress;
    if (t49_boolC150(mask = 4, game) != 0) return;
    if (sub_080020F4() == 0) t49_schedulePlayerC150(savedArg);
    t49_flagC150(mask, *savedAddress);
    alternate = sub_0800CCCC();
    level = gUnk_03003170.f90;
    if (t49_gateC150(alternate, level)) {
        t49_lockC150();
        sub_0800D0F4();
        sub_08028AAC(6, 9999, 9999, 0);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(35);
        t49_waitC150(30);
        sub_0805EFBC();
        do { sub_080003F0(); } while (sub_0805F184() != 0);
        t49_waitC150(4);
        t49_lockC150();
        sub_0800D0F4();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x140046);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        p = (struct T49EntryC150 *)(t49_gsC150 + 0x7A4);
        actorIndex = 0;
        actorOne = 1;
        actorMask = *(u32 *)(t49_gsC150 + 0x54);
        for (; actorIndex <= 14; actorIndex++, p++) {
            if ((actorMask & (actorOne << actorIndex)) != 0 && p->kind == 19) goto actorFound;
        }
        actor = 0;
actorReady:
        sub_0802939C(actor, 8);
        sub_08028AAC(actor, 184, 224, 20);
        sub_080290E4(actor, 2);
        sub_08028AAC(actor, 151, 224, 20);
        sub_080290E4(actor, 0);
        sub_08028AAC(actor, 151, 299, 40);
        p = t49_findC150(actor);
        if (p != 0) p->duration = 4;
        t49_moveC150(34, 0, 0);
        t49_unlockC150();
        sub_0800D108();
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0805A138(s32);
extern void sub_0804C4E8(s32);
struct Task50C4 {u32 f0,f4,f8,fC;u8 *f10;u32 f14,f18,f1C;u8 *f20;u32 f24;};
struct Args50C4 {u32 a,b,c;void (*callback)(s32);void *data;u32 f;};
void sub_0804C408(void){
    struct Args50C4 args;
    struct Task50C4 *task;
    u32 i,callback; register u32 mask asm("r4"); register u32 offset asm("r2"); s32 raw,flags;
    register u32 zero asm("r5");register u32 data asm("r0");
    s32 r; register u8 *mem asm("r0"); register u32 stackOffset asm("r2");
    register u8 *state asm("r1"); u8 *ptr; register u8 **addr asm("r0");
    mask=1;
    if(sub_0800CE30()){addr=(u8 **)&gUnk_03005CF4; state=*addr;offset=0x1C4;}
    else{addr=(u8 **)&gUnk_03005CF4; state=*addr;offset=0x1B8;}
    ptr=state+offset;
    raw=*ptr; flags=raw >>2;flags &=mask;
    if(!flags){
    callback=(u32)sub_0804C4E8;
    task=(struct Task50C4 *)(*addr+0xE34);
    i=0; goto check;
next:
    i++;task++;
check:
    if(i<=29){
        zero=sub_08000470((u32)task);
        if(zero)goto next;
        args.callback=(void (*)(s32))callback;
        data=0;args.data=(void *)data;
        task->f8=0x3C;
        mem=sub_08001494(0x400);task->f20=mem;
        task->fC=(u32)sub_0802A104;
        if(i)stackOffset=0x3FC;else stackOffset=0x3FC;
        task->f10=mem+stackOffset;
        task->f24=zero;
        sub_08000274(task,&args,6);
        sub_080003F0();sub_080003F0();
    }
    }
    if(sub_0800CC98()==0){
        r=sub_0801AB24();
        switch(r){case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
        while(!sub_0801AAE0())sub_080003F0();
    }
}
void sub_0804C4E8(s32 arg0) {
    register s32 var_r0 asm("r0");
    s32 x;register s32 y asm("r1"); register u32 raw asm("r2");register u32 byteMask asm("r0");
    u16 var_r4;
    register u8 *temp_r1 asm("r1");register u8 *state asm("r1");

    switch (arg0) {                                 /* irregular */
    case 0:
        sub_08068820(sub_0804C4E8, (void *)1, NULL);
        return;
    case 1:
        x=0x18800;y=0xA000;sub_08073E2C(x,y,0x29,1);
        for(var_r4=4;var_r4;var_r4--){sub_080003F0();if(sub_080021A8())break;}
        x=0x18000;y=0xA000;sub_08073E2C(x,y,0x29,1);
        x=0x19000;y=0xA000;sub_08073E2C(x,y,0x29,1);
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x17BU);
        }
        sub_08028AAC(7, 0x188, 0xA0, 0);
        if (sub_0800CE30() != 0) {
            state=gUnk_03005CF4; var_r0 = 0x1C4;
        } else {
            state=gUnk_03005CF4; var_r0 = 0x1B8;
        }
        temp_r1 = state + var_r0;
        raw=*temp_r1;byteMask=4;*temp_r1=byteMask|raw;
        return;
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0805A138(s32);
extern void sub_0804C4E8(s32);
struct Task50C5 {u32 f0,f4,f8,fC;u8 *f10;u32 f14,f18,f1C;u8 *f20;u32 f24;};
struct Args50C5 {u32 a,b,c;void (*callback)(s32);void *data;u32 f;};
void sub_0804C5A8(void){
    struct Args50C5 args;
    struct Task50C5 *task;
    u32 i,callback,mask,flags,offset;
    register u32 zero asm("r5");register u32 data asm("r0");
    s32 r;
    u8 *state,*ptr;
    state=gUnk_03005CF4;mask=8;flags=*(u32 *)(state+0x38);
    if(!(flags&mask)){
    callback=(u32)sub_0805A138;
    task=(struct Task50C5 *)(state+0xE34);
    i=0; goto check;
next:
    i++;task++;
check:
    if(i<=29){
        zero=sub_08000470((u32)task);
        if(zero)goto next;
        args.callback=(void (*)(s32))callback;
        data=0;args.data=(void *)data;
        task->f8=0x3C;
        task->f20=sub_08001494(0x400);
        task->fC=(u32)sub_0802A104;
        task->f10=task->f20+0x3FC;
        task->f24=zero;
        sub_08000274(task,&args,6);
        sub_080003F0();sub_080003F0();
    }
    } else sub_08028AAC(7,0x270F,0x270F,0);
    if(sub_0800CC98()==0){
        r=sub_0801AB24();
        switch(r){case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
        while(!sub_0801AAE0())sub_080003F0();
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void cameraMove50C6(s16,s16) asm("sub_0800BB80");
union Fixed50C6 { s32 whole; struct { u16 lo; s16 hi; } part; };
struct Flag50C6 { u32 pad; u16 flags; };
void sub_0804C67C(void) {
    s32 out[4];
    s32 *px2, *py2;
    s32 startX,startY,startX2,startY2;
    s32 t,step,step2; s32 offset;
    union Fixed50C6 targetX,targetY,targetX2,targetY2;
    u16 timer;
    u32 handle;
    s32 message, status, status2;
    s32 *statusptr, *statusptr2;
    struct Player *player,*player2;
    u32 *word,mask;
    u32 *word2,mask2;
    s32 r;
    player = &gUnk_03003CE0[sub_080020F4()];
    player->flags |= 1;
    sub_0800D0F4();
    if(sub_08002164()==1)offset=0;
    else {
        switch(sub_080020F4()){
        case 0:offset=-12;break;case 1:offset=12;break;
        case 2:offset=-36;break;case 3:offset=36;break;
        }
    }
    sub_08028AAC(0,(u16)(offset+0xF0),0xF0,0);
    timer = 1;
    for(;timer;timer--) { sub_080003F0(); if(sub_080021A8())break; }
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
    status = 0xD9;
    statusptr = &gUnk_03005CF8;
    *statusptr = status;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(0xD9);
    offset=-offset;
    for(timer=20;timer;timer--) { sub_080003F0(); if(sub_080021A8())break; }
    step = 0x11;
    startX = (s16)gUnk_03003170.f80;
    startY = (s16)gUnk_03003170.f82;
    targetY.whole = 0xFF8C0000;
    for(t=0;t<=0x400;t+=step) {
        sub_080659F4(&out[0],startX,(s16)offset,t);
        sub_080659F4(&out[1],startY,targetY.part.hi,t);
        cameraMove50C6((s16)out[0],(s16)out[1]);
        sub_080003F0();
    }
    word = (u32 *)(gUnk_03005CF4 + 0x38);
    mask = 0x10;
    if (!(*word & mask)) {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x140040);
    } else {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x140041);
    }
    word2 = (u32 *)(gUnk_03005CF4 + 0x38);
    mask2 = 0x10;
    *word2 = mask2 | *word2;
    t = handle;
    while(!sub_0805EEFC((void *)t))sub_080003F0();
    step2 = 0x22;
    startX2 = (s16)gUnk_03003170.f80;
    startY2 = (s16)gUnk_03003170.f82;
    targetX2.whole = 0;
    targetY2.whole = 0;
    for(t=0;t<=0x400;t+=step2) {
        sub_080659F4(&out[2],startX2,targetX2.part.hi,t);
        sub_080659F4(&out[3],startY2,targetY2.part.hi,t);
        cameraMove50C6((s16)out[2],(s16)out[3]);
        sub_080003F0();
    }
    status2 = 0xB;
    statusptr2 = &gUnk_03005CF8;
    *statusptr2 = status2;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(0xB);
    ((struct Flag50C6 *)gUnk_03005CF4)->flags |= 32;
    player2 = &gUnk_03003CE0[sub_080020F4()];
    player2->flags &= ~1;
    sub_0800D108();
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0805664C(s32);
struct Task50C9 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart50C9(void *,u32) asm("sub_08000274");
void sub_0804C948(void) {
    struct Task50C9 *task;
    u32 i,mem;
    s32 callback;
    s32 r;
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
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,0);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,1);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,2);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,3);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,4);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,5);
        break;
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0802A080(s32,s32,s32,s32);
extern void sub_0804D020(void);
extern void sub_0804D330(s32);
extern void cameraMove50CB(s16,s16) asm("sub_0800BB80");
struct Task50CB {u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24;};
extern void taskStart50CB(void *,u32) asm("sub_08000274");
union Fixed50CB {s32 whole;struct{u16 lo;s16 hi;}part;};
static inline u8 test50CB(u32 value,u32 mask){u32 result=value&mask;if(result)result=1;return result;}
void sub_0804CBBC(void){
    s32 outY,outX;
    u8 *state,*entry;
    u32 flags,bit1,one,zero,idx;register u32 bit4 asm("r3");
    s32 r,bitTemp,*entryFlags;
    struct Player *player;
    struct Task50CB *task;
    s32 callback,status,*statusptr;
    u32 i,mem;
    s32 startX,startY,t,step;
    union Fixed50CB targetX,targetY;
    state=gUnk_03005CF4;bit4=4;flags=*(u32 *)(state+0x38);
    bit4 &=flags;if(bit4)bit4=1;
    one=1;bit1=test50CB(flags,one);
    if(!bit1){
        *(u32 *)(state+0x38)=flags|one;
        player=&gUnk_03003CE0[sub_080020F4()];player->flags |=one;
        sub_0800D0F4();
        step=0x400;
        startX=(s16)gUnk_03003170.f80;startY=(s16)gUnk_03003170.f82;
        targetX.whole=0;targetY.whole=0xFF600000;
        for(t=0;t<=0x400;t+=step){
            sub_080659F4(&outX,startX,targetX.part.hi,t);
            sub_080659F4(&outY,startY,targetY.part.hi,t);
            cameraMove50CB((s16)outX,(s16)outY);sub_080003F0();
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
    callback = (s32)sub_0804D020;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,0);
        break;
    }
        status=0xC4;statusptr=&gUnk_03005CF8;*statusptr=status;
        if(!(gUnk_030027D0&0x20))sub_08006CB4(0xC4);
    }else if(!bit4){
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
    sub_0802A080(0xE8,0x8C,0x96,0x6E);
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,1);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,2);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,3);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,4);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,5);
        break;
    }
    entry=gUnk_030056F4;idx=0;entryFlags=&gUnk_030056FC;callback=1;zero=0;
clearFirst:
    if((*entryFlags & (bitTemp=callback<<idx)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=zero;
    idx++;entry+=0x2E0;
    if(idx<=4)goto clearFirst;
    sub_08019F04();
    }else{
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
    entry=gUnk_030056F4;idx=0;entryFlags=&gUnk_030056FC;callback=1;zero=0;
clearLast:
    if((*entryFlags & (bitTemp=callback<<idx)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=zero;
    idx++;entry+=0x2E0;
    if(idx<=4)goto clearLast;
    sub_08019F04();
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0804D330(s32);
struct Task50D0 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart50D0(void *,u32) asm("sub_08000274");
extern void sub_0802A080(s32,s32,s32,s32);
extern void sub_080586B4(s32);
void sub_0804D020(void) {
    struct Task50D0 *task;
    u32 i,mem;
    s32 callback,callback2;
    s32 r;
    u32 held,mask;
    u8 *state,*entry;
    u32 *word;
    u16 timer;
    u32 idx,one,zero;
    s32 bitTemp,*entryFlags;
    callback = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    i=0; goto checkFirst;
nextFirst: i++;task++;
checkFirst: if(i<=29){
        if (sub_08000470((u32)task)) goto nextFirst;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,0);
        held=(u32)task;
    }
    sub_0802A080(0xE8,0x8C,0x96,0x6E);
    state=gUnk_03005CF4;mask=4;*(u32 *)(state+0x38)=mask | *(u32 *)(state+0x38);
    if(held && sub_08000470(held))sub_080003A8(held);
    if(!sub_0800CB9C()){
        if(!(gUnk_030027D0&0x20)){gUnk_03005CF8=4;sub_08006CB4(4);}
    }else sub_080586B4(0);
    for(timer=1;timer;timer--){sub_080003F0();if(sub_080021A8())break;}
    sub_0805EFBC();
    do{sub_080003F0();}while(sub_0805F184());
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,1);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,2);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,3);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,4);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,5);
        break;
    }
    for(timer=30;timer;timer--){sub_080003F0();if(sub_080021A8())break;}
    entry=gUnk_030056F4;idx=0;entryFlags=&gUnk_030056FC;held=1;zero=0;
entryLoop:
    if((*entryFlags & (bitTemp=held<<idx)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=zero;
    idx++;entry+=0x2E0;
    if(idx<=4)goto entryLoop;
    sub_08019F04();
}
