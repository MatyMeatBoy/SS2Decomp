#include "global.h"
extern void sub_08092E40();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTP03000260 asm("gUnk_03000260");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };

void sub_08092E40(void);
void sub_0809342C(void);
u16 sub_08093498(void);

#include "global.h"
M2C_UNK sub_08000990(s32, s32);
M2C_UNK sub_080009F8(s32, s32, s32);
M2C_UNK sub_08000A34(s32, s32, s32, s32, s32);

void sub_08092D60(void)
{
    u32 mem;
    struct TaskP *t;
    if (gTP03000260 == 0)
        return;
    if (sub_08000470((u32)gTP03000260) == 0 && gTP03000260->f8 != 0)
        return;
    t = gTP03000260;
    t->fC = (u32)sub_08092E40;
    t->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP03000260;
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_08092DB8(void) {
    gUnk_03000259 = 0;
}
void sub_08092DC4(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000260 = (s32) sub_08001494(0x28U));
  if (temp_r0 != 0)
  {
    *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
    gUnk_03000258 = 4;
  }
}
void sub_08092DF0(void) {
    if (gUnk_03000260 != 0) {
        if (sub_08000470(gUnk_03000260) != 0) {
            sub_080003A8(gUnk_03000260);
        }
        sub_08001538(gUnk_03000260);
        gUnk_03000260 = 0;
    }
}
void sub_08092E1C(s8 arg0) {
    gUnk_0300025C = arg0;
}
void sub_08092E28(s8 arg0) {
    gUnk_03000258 = arg0;
}
s16 sub_08092E34(void) {
    return gUnk_0300025A;
}
extern u8 gB03000258 asm("gUnk_03000258");
extern u8 gB03000259 asm("gUnk_03000259");
extern u8 gB0300025C asm("gUnk_0300025C");
void sub_08092E40(void)
{
    u8 index = 0;
    u8 active;
    s32 value;
    gB03000259 = 1;
    gB0300025C = 1;
    do {
        gUnk_0300025A = gUnk_080B9704[index] * gB03000258;
        value = gUnk_0300025A;
        if (value < 0)
            value += 63;
        gUnk_0300025A = value >> 6;
        gUnk_0300025A = gUnk_0300025A % gB03000258;
        index += gB0300025C;
        sub_080003F0();
        active = gB03000259;
    } while (active != 0);
    *(u32 *)(sub_0800048C() + 8) = active;
}
extern u16 gH03001250[] asm("gUnk_03001250");
void sub_08092EB4(void)
{
    union { u32 word; u16 half[2]; } config;
    u32 zero = 0;
    sub_08000A34(1, 0, 0, 0, zero);
    sub_080009F8(0xF00, 0, 0);
    sub_08000990(0, 0);
    sub_080009C0(0x1300, 0, 0);
    config.half[0] = 0x1802;
    sub_08000AA8(0, config.half);
    sub_080921E4(0xA, 0x18);
    config.half[0] = 0x1C41;
    sub_08000AA8(1, config.half);
    sub_080921E4(0xB, 0x1C);
    gH03001250[1] = zero;
    gH03001250[0] = zero;
    gH03001250[3] = zero;
    gH03001250[2] = zero;
    sub_0800CBF8(1);
    sub_0800CC48(1);
    sub_08098010(1);
    sub_080933A0();
    sub_08000940();
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08092F58);
extern u8 gB03000267 asm("gUnk_03000267");
extern u8 gB03000266 asm("gUnk_03000266");
extern u8 gB03000268 asm("gUnk_03000268");
extern u16 gH03000264 asm("gUnk_03000264");
extern void sub_0809342C();
void sub_080933A0(void)
{
    gB03000267 = 0;
    gB03000266 = 0x10;
    gB03000268 = 1;
    sub_080012D8((u32)sub_0809342C);
    sub_08000F64(0x800);
    sub_080011E4((void *)sub_08093498);
    {
    u16 *h = &gH03000264;
    vu32 *dma;
    *h = 0;
    dma = (vu32 *)0x040000D4;
    dma[0] = (u32)h;
    dma[1] = 0x04000014;
    dma[2] = 0xE3400001;
    dma[2];
    }
}
void sub_08093404(void) {
    gUnk_03000268 = 0;
    sub_08000FD4(0x800);
    sub_080003F0();
    sub_080012D8(0);
    sub_080011E4(0);
}
#ifdef NONMATCHING
void sub_0809342C(void)
{
    u16 scanline = *(volatile u16 *)0x04000006 & 0xFF;

    if (scanline > 0x9F) {
        *(u16 *)0x03000264 = 0;
    } else {
        u32 index = (scanline + *(u8 *)0x03000267) & 0xFF;
        s32 sample = gUnk_080B9704[index];
        s32 scale = *(u8 *)0x03000266;
        *(u16 *)0x03000264 = (u16)((sample * scale) >> 8);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_0809342C);
#endif
u16 sub_08093498(void)
{
  u16 r;
  vu16 *c;
  gB03000267 += 2;
 do { r = gB03000268; } while (0);
  if (r == 0)
  {
    c = (vu16 *) 0x040000D4;
    c[5] &= 0xC5FF;
    c[5] &= 0x7FFF;
    r = c[5];
  }
  return r;
}
void sub_080934D4(void)
{
    union { u32 word; u16 half[2]; } config;
    u32 zero = 0;
    sub_08000A34(1, 0, 0, 0, zero);
    sub_080009F8(0xF00, 0, 0);
    sub_08000990(0, 0);
    sub_080009C0(0x1300, 0, 0);
    config.half[0] = 0x1800;
    sub_08000AA8(0, config.half);
    sub_080921E4(6, 0x18);
    config.half[0] = 0x1C02;
    sub_08000AA8(1, config.half);
    sub_080921E4(7, 0x1C);
    gH03001250[0] = zero;
    gH03001250[1] = 0x30;
    gH03001250[2] = zero;
    gH03001250[3] = zero;
    sub_0800903C(0, 0, 0, 0, zero, zero);
    sub_0800CBF8(2);
    sub_0800CC48(2);
    sub_08098010(2);
    sub_08000940();
}
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093584);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093BAC);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080941B4);
void sub_080943F8(void)
{
    union { u32 word; u16 half[2]; } config;
    sub_08000A34(1,0,0,0,0);
    sub_080009F8(0xF00,0,0);
    sub_08000990(0,0);
    sub_080009C0(0x1300,0,0);
    config.word = (config.word & 0xFFFF0000) | 0x1C02;
    sub_08000AA8(1,config.half);
    sub_080921E4(4,0x1C);
    config.half[0]=0x1801;
    sub_08000AA8(0,config.half);
    sub_080921E4(3,0x18);
    sub_0800CBF8(0);
    sub_0800CC48(2);
    sub_08098010(2);
    sub_080944B4();
    sub_08094530();
    sub_08000940();
}
void sub_08094490(void) {
    gUnk_03000275 = 1;
}
u8 sub_0809449C(void) {
    return gUnk_03000275;
}
void sub_080944A8(void) {
    gUnk_03000274 = 1;
}
void sub_080944B4(void) {
    gUnk_03000274 = 0;
    gUnk_03000275 = 0;
    do {
        gUnk_03000270 = sub_08001494(0x28);
        sub_080003F0();
    } while (gUnk_03000270 == 0);
    M2C_FIELD(gUnk_03000270, s32 *, 8) = 0;
}
void sub_080944F0(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (gUnk_03000270 != 0) {
        if (sub_08000470(gUnk_03000270) != 0) {
            sub_080003A8(gUnk_03000270);
        }
        sub_08001538(gUnk_03000270);
        gUnk_03000270 = 0;
    }
}
struct Task98c { u32 a0,a4,a8; void (*fC)(void); u8 *p10; u32 pad[3]; void *p20; u32 a24; };
extern struct Task98c *task98c asm("gUnk_03000270");
extern void taskStart98c(struct Task98c *, u32, u32) asm("sub_08000274");
void sub_08094530(void)
{
    if (task98c != 0 && (sub_08000470((u32)task98c) != 0 || task98c->a8 == 0)) {
        do {
            task98c->p20 = sub_08001494(0x400);
            sub_080003F0();
        } while (task98c == 0);
        task98c->p10 = (u8 *)task98c->p20 + 0x3FC;
        task98c->fC = (void (*)(void))sub_080941B4;
        task98c->a24 = 0;
        task98c->a8 = 0x44;
        taskStart98c(task98c, 0, 0);
    }
}
struct Reset98 {u16 x0,y0,x1,y1;};
extern struct Reset98 reset98 asm("gUnk_03001250");
void sub_08094590(void)
{
    union { u32 word; u16 half[2]; } config;
    sub_08000A34(1,0,0,0,0);
    sub_080009F8(0xF00,0,0);
    sub_08000990(0,0);
    sub_080009C0(0x1300,0x8000,0);
    config.word = (config.word & 0xFFFF0000) | 0x1802;
    sub_08000AA8(0,config.half);
    sub_080921E4(0xC,0x18);
    config.half[0]=0x1C03;
    sub_08000AA8(1,config.half);
    sub_080921E4(0xD,0x1C);
    reset98.y0=0; reset98.x0=0; reset98.y1=0; reset98.x1=0;
    sub_0800CBF8(2);
    sub_0800CC48(2);
    sub_08098010(2);
    sub_08094948();
    sub_080949A8();
    sub_08000940();
}
#ifdef NONMATCHING
struct Anim98c { u32 f0,f4,f8,fC,f10,f14,f18; u8 payload[24]; };
struct Sprite98c { u32 f0,f4,f8; s32 y; };
extern void init98c(struct Anim98c *,s32,s32,s32,s32) asm("sub_08065158");
extern s32 step98c(struct Anim98c *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern s32 back98c(struct Anim98c *,u16,u16 *,u16 *,s32) asm("sub_08065394");
extern struct Sprite98c *draw98c(s16,s32,s32,u16,s32,void *,u32,u32) asm("sub_08007870");
extern struct Sprite98c *tall98c(s16,s32,s32,u16,s32,s32,s32,void *,u32,u32) asm("sub_08007974");
extern u16 regs98c[] asm("gUnk_03001250");
void sub_08094638(u32 count,s32 choice)
{
    struct Anim98c a,b;
    u16 indices[3],frames[3];
    struct {s32 x,y;} base;
    struct Sprite98c *sprite;
    u32 completed;
    s32 shifted=(s32)((u32)choice<<24);
    u8 limit=(u8)(count*2);
    s32 selected;
    struct {s32 x:16,y:16;} pos;
    u8 i;
    completed=0;
    selected=(s32)((u32)shifted+0xFF000000)>>24;
    init98c(&a,selected+0x50041,7,-1,1);
    a.payload[7]=((u8 *)&completed)[0];
    init98c(&b,0x50045,8,-1,1);
    b.payload[8]=1;
    base.x=0x7800;base.y=0x5000;
    for(i=0;i<3;i++) {
        u16 *index=&indices[i];
        u16 *frame=&frames[i];
        *frame=0;*index=0;
    }
    {
        register u32 table asm("r1")=b.f8;
        table+=*(u32 *)(table+8);
        indices[1]=*(u16 *)(table+4)-1;
    }
    sub_0801AB50(6);
    { s32 result,active; struct {s32 x,y;} screen;
    screen.x=base.x>>8;screen.y=base.y>>8;
    while(!sub_0801AAE0())sub_080003F0();
    regs98c[0x1D]=0x3233;
    active=1;
    sub_0805865C(0x1A0);
    do {
        sub_08000AF0(0x11,b.fC+0x100,1);
        back98c(&b,0,&indices[1],&frames[1],0);
        pos.x=screen.x;pos.y=screen.y;
        sprite=tall98c(pos.x,0x9E,0,indices[1],1,0,2,b.payload,b.f8,b.f0);
        sprite->y=pos.y;
        sub_08000AF0(0x11,b.fC+0x100,1);
        result=step98c(&b,0,&indices[2],&frames[2],0);
        pos.x=screen.x;pos.y=screen.y;
        sprite=draw98c(pos.x,0x9F,0,indices[2],1,b.payload,b.f8,b.f0);
        sprite->y=pos.y;
        sub_08000AF0(0x10,a.fC+0xE0,1);
        step98c(&a,0,&indices[0],&frames[0],1);
        pos.x=screen.x;pos.y=screen.y;
        sprite=draw98c(pos.x,pos.y,0,indices[0],0,a.payload,a.f8,a.f0);
        if(result) {
            u32 previous;
            frames[2]=0;frames[1]=0;
            indices[2]=0;indices[1]=0;
            {
                register u32 table asm("r1")=b.f8;
                table+=*(u32 *)(table+8);
                indices[1]=*(u16 *)(table+4)-1;
            }
            previous=completed;
            completed=(u8)(previous+1);
            if(limit<previous)active=0;
        }
        sub_080003F0();
        if(sub_080021A8()==1)active=0;
    }while(active);
    sub_0801ABE8(6);
    while(!sub_0801AAE0())sub_080003F0();
    sub_080586D0(3);sub_08094968();sub_0800CC18();sub_0800CC68();sub_08098028();
    regs98c[0x1D]=0;
    sub_080009F8(0xF00,0x8000,0);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094638);
#endif
struct Drift98 { s16 f0,f2,f4,f6; };
extern struct Drift98 drift98 asm("gUnk_03001250");
extern s16 sine98[] asm("gUnk_080B9704");
s32 sub_080948E0(void)
{
    s32 y=0;
    s32 x=0;
    u8 phase=0;
    register s32 sx=0xAA;
    register s32 sy=0x80;
    for (;;) {
        s32 v = ((sine98[phase]*5)>>8)+10;
        x-=sx;
        y+=sy;
        drift98.f2=x>>8;
        drift98.f6=y>>8;
        sub_0800903C(1,0x22,1,(u16)v,0x10,0);
        phase+=3;
        sub_080003F0();
    }
}
void sub_08094948(void)
{
  s32 temp_r0;
  int new_var;
  temp_r0 = (gUnk_03000278 = (s32) sub_08001494(0x28U));
  if (temp_r0 != 0)
  {
    new_var = 8;
    *((s32 *) (((s8 *) temp_r0) + new_var)) = 0;
  }
}
void sub_08094968(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (gUnk_03000278 != 0) {
        if (sub_08000470(gUnk_03000278) != 0) {
            sub_080003A8(gUnk_03000278);
        }
        sub_08001538(gUnk_03000278);
        gUnk_03000278 = 0;
    }
}
struct Task98 { u32 a0,a4,a8; void (*fC)(void); u8 *p10; u32 pad[3]; void *p20; u32 a24; };
extern struct Task98 *task98 asm("gUnk_03000278");
extern void taskStart98(struct Task98 *, u32, u32) asm("sub_08000274");
void sub_080949A8(void)
{
    void *mem;
    if (task98 != 0 && (sub_08000470((u32)task98) != 0 || task98->a8 == 0)) {
        mem = sub_08001494(0x400);
        task98->p20 = mem;
        if (mem != 0) {
            task98->p10 = (u8 *)mem + 0x3FC;
            task98->fC = (void (*)(void))sub_080948E0;
            task98->a24 = 0;
            task98->a8 = 0x44;
            taskStart98(task98, 0, 0);
        }
    }
}
void sub_08094A00(void)
{
    union { u32 word; u16 half[2]; } config;
    sub_08000A34(1,0,0,0,0);
    sub_080009F8(0xF00,0,0);
    sub_08000990(0,0);
    sub_080009C0(0x1300,0,0);
    config.word = (config.word & 0xFFFF0000) | 0x1801;
    sub_08000AA8(0,config.half);
    sub_080921E4(8,0x18);
    config.half[0]=0x1C02;
    sub_08000AA8(1,config.half);
    sub_080921E4(9,0x1C);
    reset98.y0=0; reset98.x0=0; reset98.y1=0; reset98.x1=0;
    sub_0800903C(0,0,1,0,0,0);
    sub_0800CBF8(2);
    sub_0800CC48(2);
    sub_08098010(2);
    sub_08094E84();
    sub_08094EE4();
    sub_08000940();
}
struct Anim98b { u32 f0,f4,f8,fC,f10,f14,f18; u8 payload[24]; };
struct Sprite98b {u32 f0,f4,f8; s32 y;};
extern void init98b(struct Anim98b *,s32,s32,s32,s32) asm("sub_08065158");
extern s32 step98b(struct Anim98b *,u16,u16 *,u16 *,s32) asm("sub_08065370");
extern struct Sprite98b *draw98b(s32,s32,s32,u16,s32,void *,u32,u32) asm("sub_08007870");
extern struct Sprite98b *drawTall98b(s32,s32,s32,u16,s32,s32,s32,void *,u32,u32) asm("sub_08007974");
extern s16 sine98b[] asm("gUnk_080B9704");
extern u32 drawFlag98b asm("gUnk_03002344");
void sub_08094AB8(s8 count, s32 choice)
{
    struct Anim98b a,b,c;
    u16 indices[3],frames[3];
    struct { s32 x,y; } pos;
    s32 orbitX,orbitY,radius;
    u8 angle;
    u16 timer;
    u8 i;
    s32 state;
    struct Sprite98b *sprite;
    s32 shifted=(s32)((u32)choice<<24);
    u8 repetitions=(u8)(count*3);
    s32 selected=(s32)((u32)shifted+0xFF000000)>>24;
    init98b(&a,selected+0x50036,7,-1,1);
    a.payload[7]=0;
    init98b(&b,0x5003A,8,-1,1);
    init98b(&c,0x5003B,8,-1,1);
    b.payload[7]=0;
    c.payload[8]=1;
    switch(selected){
    case 0:pos.x=0x7800;pos.y=0x7000;break;
    case 1:pos.x=0x7800;pos.y=0x7000;break;
    case 2:pos.x=0x7800;pos.y=0x6000;break;
    case 3:pos.x=0x8000;pos.y=0x6800;break;
    }
    angle=0;timer=0;
    for(i=0;i<3;i++){
        u16 *index=&indices[i];
        u16 *frame=&frames[i];
        *frame=0;*index=0;
    }
    state=4;
    sub_0801AB50(6);
    while(!sub_0801AAE0())sub_080003F0();
    sub_0805865C(0x19B);
    do {
        switch(state){
        case 4:if(timer++>120){timer=0;state=3;sub_0805865C(0x19D);}break;
        case 3:if(pos.y<=0x11FFF)pos.y+=0x1A0;else{radius=240;state=2;sub_0805865C(0x19C);}break;
        case 2:
            if(radius!=0){
                orbitX=radius*sine98b[angle+64]+0x7800;
                orbitY=radius*sine98b[angle]+0x5000;
                radius-=4;angle+=2;
            }else{
                repetitions--;radius=240;
                if(repetitions)sub_0805865C(0x19C);
            }
            if(!repetitions)state=1;
            break;
        case 1:if(timer++>120)state=0;break;
        }
        if((u32)state>2){
            sub_08000AF0(0x10,a.fC+0xE0,1);
            step98b(&a,0,&indices[0],&frames[0],1);
            sprite=draw98b(pos.x>>8,0,0,indices[0],0,a.payload,a.f8,a.f0);
            sprite->y=pos.y>>8;
        }
        if(state==2){
            s32 ox,oy;
            sub_08000AF0(0x10,b.fC+0xE0,1);
            step98b(&b,0,&indices[1],&frames[1],1);
            ox=orbitX>>8;oy=orbitY>>8;
            sprite=draw98b(ox,oy,0,indices[1],1,b.payload,b.f8,b.f0);
            if(drawFlag98b&1){
                sub_08000AF0(0x11,c.fC+0x100,1);
                step98b(&c,0,&indices[2],&frames[2],1);
                sprite=drawTall98b(ox,0x9F,0,indices[2],1,0,1,c.payload,c.f8,c.f0);
                sprite->y=oy;
            }
        }
        sub_080003F0();
        if(sub_080021A8()==1)state=0;
    }while(state!=0);
    sub_0801ABE8(6);
    while(!sub_0801AAE0())sub_080003F0();
    sub_080586D0(3);
    sub_08094EA4();sub_0800CC18();sub_0800CC68();sub_08098028();
}
s32 sub_08094DEC(void)
{
    s32 y1=0;
    s32 y0=0;
    u8 a=0; u8 b=0;
    register s32 zero;
    register u32 table asm("r6")=(u32)sine98;
    register u32 drift=(u32)&drift98;
    zero=0;
    for (;;) {
        s32 s=(*(s16 *)(((b) << 1) + table)*5)>>8;
        s32 first=s+8;
        s32 second=8-s;
        y0+=0x100;
        { register s32 x=*(s16 *)(((a+0x40) << 1) + table); *(s16 *)(drift+0)=x>>3; }
        *(s16 *)(drift+2)=y0>>8;
        y1+=0x80;
        { register s32 x=*(s16 *)(((a) << 1) + table); *(s16 *)(drift+4)=x>>3; }
        *(s16 *)(drift+6)=y1>>8;
        sub_0800903C(1,0x32,1,(u16)first,(u16)second,zero);
        b+=3;
        a++;
        sub_080003F0();
    }
}
void sub_08094E84(void)
{
  s32 temp_r0;
  gUnk_0300027C = (temp_r0 = (s32) sub_08001494(0x28U));
  if (temp_r0 != 0)
  {
    *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
  }
}
void sub_08094EA4(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (gUnk_0300027C != 0) {
        if (sub_08000470(gUnk_0300027C) != 0) {
            sub_080003A8(gUnk_0300027C);
        }
        sub_08001538(gUnk_0300027C);
        gUnk_0300027C = 0;
    }
}
extern struct Task98 *task98b asm("gUnk_0300027C");
void sub_08094EE4(void)
{
    void *mem;
    if (task98b != 0 && (sub_08000470((u32)task98b) != 0 || task98b->a8 == 0)) {
        mem = sub_08001494(0x400);
        task98b->p20 = mem;
        if (mem != 0) {
            task98b->p10 = (u8 *)mem + 0x3FC;
            task98b->fC = (void (*)(void))sub_08094DEC;
            task98b->a24 = 0;
            task98b->a8 = 0x44;
            taskStart98(task98b, 0, 0);
        }
    }
}
#ifdef NONMATCHING
struct Anim94 {u32 f0,f4,f8,fC,f10,f14,f18; u8 payload[24];};
struct Ent94 {s32 x,y; u8 state,visible,index,delay; u16 timer,anim,frame,tick,result,pad;};
struct Pos94 {s32 x,y;};
struct Ent94 *f94_08001494(s32) asm("sub_08001494"); void f94_08001538(void *) asm("sub_08001538"); void f94_080003F0(void) asm("sub_080003F0");
 void f94_08065158(struct Anim94 *,s32,s32,s32,s32) asm("sub_08065158");
s32 f94_08065370(struct Anim94 *,u16,u16 *,u16 *,s32) asm("sub_08065370");
void f94_080087AC(s32,s32,u16,u16,s32,void *,u32,u32,s32) asm("sub_080087AC");
s32 f94_08097B6C(s32,s32,s32,s32,s32) asm("sub_08097B6C"); void f94_080979D8(s32,s32,s32,s32,struct Pos94 *) asm("sub_080979D8");
void f94_08000AF0(u32,u32,u32) asm("sub_08000AF0"); void f94_0801AB50(s32) asm("sub_0801AB50"); s32 f94_0801AAE0(void) asm("sub_0801AAE0"); void f94_0801ABE8(s32) asm("sub_0801ABE8"); s32 f94_080021A8(void) asm("sub_080021A8"); void f94_0805865C(s32) asm("sub_0805865C"); void f94_0805867C(s32) asm("sub_0805867C");
extern struct Pos94 v94_0851863C[] asm("gUnk_0851863C");

void f94_08007870(s16,s32,s32,u16,s32,void *,u32,u32) asm("sub_08007870"); void f94_08007974(s32,s32,s32,u16,s32,s32,s32,void *,u32,u32) asm("sub_08007974");
void f94_0800903C(s32,s32,s32,s32,s32,void *) asm("sub_0800903C"); void f94_080009F8(s32,s32,s32) asm("sub_080009F8"); s16 f94_0800086C(void) asm("sub_0800086C"); void f94_080953F8(void) asm("sub_080953F8"); void f94_08095610(u8) asm("sub_08095610"); void f94_080586D0(s32) asm("sub_080586D0"); void f94_0800CC18(void) asm("sub_0800CC18"); void f94_0800CC68(void) asm("sub_0800CC68"); void f94_08098028(void) asm("sub_08098028");
extern s16 v94_080B9704[] asm("gUnk_080B9704"); extern u32 v94_03002344 asm("gUnk_03002344");
struct Global94 {u8 pad[0x3a];u16 field;}; extern struct Global94 v94_03001250 asm("gUnk_03001250");
void sub_08094F3C(s8 arg0, s32 arg1) {
    u32 sp0;
    u8 *sp4;
    u32 sp8;
    u8 *spC;
    struct Anim94 sp18;
    struct Anim94 sp4C;
    u16 sp80, sp82;
    u16 sp84[1];
    u16 sp86[1];
    struct Pos94 base;
    u32 sp90;
    s32 sp94;
    u32 sp98;
    s32 sp9C;
    s32 spA0;
    s32 spA4;
    s32 spA8;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    struct {s32 x:16,y:16;} particle;
    s16 randomValue;
    s32 tableValue;
    s32 temp_r6;
    register s32 var_r8 asm("r8");
    u32 temp_r0_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u8 temp_r0;
    u8 temp_r0_3;
    s32 shifted=(s32)((u32)arg1<<24);

    sp9C = (s32) (u8) (arg0 * 3);
    /* Keep the original initialization lifetimes; the empty constraint emits no code. */
    {
    register s32 negativeOne asm("r6");
    register s32 one asm("r4");
    register s32 zero asm("r5");
    register s32 animationId asm("r1");
    animationId=((s32) ((u32)shifted + 0xFF000000) >> 0x18) + 0x5002C;
    negativeOne=-1;
    one=1;
    sp0 = one;
    f94_08065158(&sp18, animationId, 7, negativeOne, sp0);
    {
        register u8 *zeroDestination asm("r0")=&sp18.payload[7];
        asm("" : : "r"(zeroDestination));
        zero=0; asm("" : "+r"(zero));
        *zeroDestination = zero;
    }
    sp0 = one;
    f94_08065158(&sp4C, 0x50030, 8, negativeOne, sp0);
    sp4C.payload[8] = one;
    base.x = 0x7800;
    base.y = 0x5000;
    sp86[0] = zero;
    sp84[0] = zero;
    sp82 = zero;
    sp80 = zero;
    }
    spA0 = 0;
    sp90 = 0;
    sp94 = 0x10;
    sp98 = 0;
    f94_0801AB50(6);
    while (f94_0801AAE0() == 0) f94_080003F0();
    v94_03001250.field = 0x3400;
    spA4 = 4;
    spA8 = 0x30;
    var_r8 = 7;
    f94_0805865C(0x198);
loop_4:
    sp0 = sp98;
    {
        register u32 zero asm("r0") = 0;
        asm("" : "+r"(zero));
        sp4 = (u8 *)zero;
    }
    f94_0800903C(spA4, spA8, 1, sp94, sp0, sp4);
    temp_r0 = spA0 + 2;
    spA0 = (s32) temp_r0;
    f94_08095610(temp_r0);
    f94_080953F8();
    f94_08000AF0(0x10U, sp18.fC + 0xE0, 1U);
    {
        register u32 one asm("r0") = 1;
        asm("" : "+r"(one));
        sp0 = one;
    }
    f94_08065370(&sp18, 0U, &sp80, &sp82, sp0);
    temp_r0_2 = var_r8 - 1;
    switch (temp_r0_2) {                            /* irregular */
    case 6:
        temp_r1 = sp90;
        sp90 = (u32) (u16) (temp_r1 + 1);
        if (temp_r1 > 0x78U) {
            sp90 = 0;
            var_r8 = 6;
        }
        f94_08007974(base.x >> 8, base.y >> 8, 0, sp80, 2, NULL, 2, sp18.payload, sp18.f8, sp18.f0);
        break;
    case 5:
        if (4 & sp90) {
            sp90 = 0;
            if (sp94 != 0) {
                sp94 = (s32) (u8) (sp94 - 1);
            } else {
                v94_03001250.field = sp90;
                f94_080009F8(0, 0x8000, 1);
                spA4 = 0;
                spA8 = 0x24;
                sp94 = 0;
                sp98 = 0;
                var_r8 = 5;
            }
        } else {
            sp90 = (u32) (u16) (sp90 + 1);
        }
        f94_08007974(base.x >> 8, base.y >> 8, 0, sp80, 2, NULL, 2, sp18.payload, sp18.f8, sp18.f0);
        break;
    case 4:
        if ((u32) sp94 <= 9U) {
            sp94 = (s32) (u8) (sp94 + 1);
        }
        if (!(4 & sp90)) {
            goto block_37;
        } else {
            sp90 = 0;
            if (sp98 <= 0xFU) {
                sp98 = (u32) (u8) (sp98 + 1);
            } else {
                f94_0805865C(0x199);
                var_r8 = 4;
            }
        }
        f94_08007974(base.x >> 8, base.y >> 8, 0, sp80, 0, NULL, 1, sp18.payload, sp18.f8, sp18.f0);
        break;
    case 3:
        {
            register s32 value asm("r4") = sp94;
            asm("" : "+r"(value));
            if ((u32)value <= 0xFU) {
                sp94 = (s32)(u8)(value + 1);
            }
        }
        if (sp90 > 0x78U) {
            sp90 = 0;
            sp94 = 0x10;
            sp98 = 0x10;
            var_r8 = 3;
        } else {
            sp90 = (u32) (u16) (sp90 + 1);
        }
        f94_08007974(base.x >> 8, base.y >> 8, 0, sp80, 0, NULL, 0, sp18.payload, sp18.f8, sp18.f0);
        break;
    case 2:
        if (4 & sp90) {
            sp90 = 0;
            if (sp94 != 0) {
                sp94 = (s32) (u8) (sp94 - 1);
            } else {
                randomValue=f94_0800086C(); tableValue=v94_080B9704[spA0 + 0x40];
                var_r0_2 = (s16) (randomValue % 48);
                if ((s32) var_r0_2 < 0) {
                    var_r0_2 = 0 - var_r0_2;
                }
                particle.x = ((s32)(tableValue * var_r0_2) >> 8) + 0x78;
                randomValue=f94_0800086C(); tableValue=v94_080B9704[spA0];
                var_r0_3 = (s16) (randomValue % 48);
                if ((s32) var_r0_3 < 0) {
                    var_r0_3 = 0 - var_r0_3;
                }
                particle.y = ((s32)(tableValue * var_r0_3) >> 8) + 0x50;
                sp94 = 0x10;
                var_r8 = 2;
                f94_0805865C(0x19A);
            }
        } else {
block_37:
            sp90 = (u32) (u16) (sp90 + 1);
        }
        f94_08007974(base.x >> 8, base.y >> 8, 0, sp80, 0, NULL, 1, sp18.payload, sp18.f8, sp18.f0);
        break;
    case 1:
        sp0 = 0;
        temp_r6 = f94_08065370(&sp4C, 0U, &sp84[0], &sp86[0], sp0);
        if (v94_03002344 & 1) {
            f94_08000AF0(0x11U, sp4C.fC + 0x100, 1U);
            sp0 = 0;
            sp4 = &sp4C.payload[0];
            sp8 = sp4C.f8;
            spC = (u8 *) sp4C.f0;
            f94_08007870(particle.x, particle.y, 0, sp84[0], sp0, sp4, sp8, spC);
        }
        if (temp_r6 != 0) {
            sp86[0] = 0;
            sp84[0] = 0;
            randomValue=f94_0800086C(); tableValue=v94_080B9704[spA0 + 0x40];
                var_r0_4 = (s16) (randomValue % 48);
            if ((s32) var_r0_4 < 0) {
                var_r0_4 = 0 - var_r0_4;
            }
            particle.x = ((s32)(tableValue * var_r0_4) >> 8) + 0x78;
            randomValue=f94_0800086C(); tableValue=v94_080B9704[spA0];
                var_r0_5 = (s16) (randomValue % 48);
            if ((s32) var_r0_5 < 0) {
                var_r0_5 = 0 - var_r0_5;
            }
            particle.y = ((s32)(tableValue * var_r0_5) >> 8) + 0x50;
            temp_r0_3 = sp9C - 1;
            sp9C = (s32) temp_r0_3;
            if (temp_r0_3 != 0) {
                f94_0805865C(0x19A);
                goto block_50;
            }
            goto block_51;
        }
block_50:
        if (sp9C == 0) {
block_51:
            var_r8 = 1;
        }
        break;
    case 0:
        temp_r1_2 = sp90;
        sp90 = (u32) (u16) (temp_r1_2 + 1);
        if (temp_r1_2 > 0x78U) {
            var_r8 = 0;
        }
        break;
    }
    f94_080003F0();
    if (f94_080021A8() == 1) {
        var_r8 = 0;
    }
    if (var_r8 != 0) {
        goto loop_4;
    }
    f94_0801ABE8(6);
    while (f94_0801AAE0() == 0) f94_080003F0();
    f94_080586D0(3);
    f94_0800CC18();
    f94_0800CC68();
    f94_08098028();
    v94_03001250.field = 0;
    sp0 = 0;
    sp4 = NULL;
    f94_0800903C(0, 0, 0, 0, sp0, sp4);
    f94_080009F8(0xF00, 0x8000, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094F3C);
#endif
struct AffineControl98 {u16 scaleX,scaleY,x,y,dx,dy;u8 angle;};
extern struct AffineControl98 affine98 asm("gUnk_03000280");
extern u16 affineRegs98[] asm("gUnk_03001250");
void sub_080953F8(void)
{
    register s16 v1,v2,v4;
    s32 v3,ox,oy;
    u16 result;
    s16 sumX,sumY;
    u16 pa,pb,pc,pd;
    v1=sine98[affine98.angle+0x40];
    pa=sub_08090434(v1,sub_08090494(affine98.scaleX));
    v2=sine98[affine98.angle];
    pb=sub_08090434(v2,sub_08090494(affine98.scaleX));
    v3=-sine98[affine98.angle];
    pc=sub_08090434(v3,sub_08090494(affine98.scaleY));
    v4=sine98[affine98.angle+0x40];
    result=sub_08090434(v4,sub_08090494(affine98.scaleY));
    sumX=affine98.x+affine98.dx;
    sumY=affine98.y+affine98.dy;
    ox=((0x78-sumX)<<8)-(s16)pa*0x78-(s16)pb*0x50;
    pd=result;
    oy=((0x78-sumY)<<8)-(s16)pc*0x78-(s16)pd*0x50;
    if (!sub_0800CCCC() && !sub_0800CC98() && !sub_0800CD34()) {
        affineRegs98[8]=pa;
        affineRegs98[9]=pb;
        affineRegs98[10]=pc;
        affineRegs98[11]=pd;
        affineRegs98[12]=ox;
        affineRegs98[14]=oy;
        affineRegs98[13]=ox>>16;
        affineRegs98[15]=oy>>16;
    }
}
void sub_08095518(s32 unused, u32 arg1)
{
    union { u32 word; u16 half[2]; } config;
    u8 palette = arg1;
    palette--;
    sub_08000A34(1,0,0,0,0);
    sub_080009F8(0xF00,0,0);
    sub_08000990(2,0);
    if (palette == 0) sub_080009C0(0x1400,0x8000,0);
    else sub_080009C0(0x1400,0,0);
    config.word = (config.word & 0xFFFF0000) | 0x7C82;
    sub_08000AA8(2,config.half);
    sub_080921E4(5,0x1C);
    sub_080955CC();
    sub_080955EC(0,0);
    sub_080955F8(0xF8,0xF8);
    sub_08095604(0x200,0x200);
    sub_0800CBF8(1);
    sub_0800CC48(1);
    sub_08098010(1);
    sub_08000940();
}
struct Ctrl98 { u16 v0,v1,w4,w6,w8,wA; u8 b0C; };
extern struct Ctrl98 ctrl98 asm("gUnk_03000280");
void sub_080955CC(void) {
    ctrl98.w6 = 0;
    ctrl98.w4 = 0;
    ctrl98.wA = 0;
    ctrl98.w8 = 0;
    ctrl98.b0C = 0;
    ctrl98.v1 = 0x100;
    ctrl98.v0 = 0x100;
}

void sub_080955EC(u16 a, u16 b)
{
    gUnk_03000280.w4 = a;
    gUnk_03000280.w6 = b;
}
void sub_080955F8(u16 a, u16 b)
{
    gUnk_03000280.w8 = a;
    gUnk_03000280.wA = b;
}
void sub_08095604(s16 arg0, s16 arg1) {
    M2C_FIELD(&gUnk_03000280, s16 *, 0) = arg0;
    M2C_FIELD(&gUnk_03000280, s16 *, 2) = arg1;
}
void sub_08095610(u8 v)
{
    gUnk_03000280.b0C = v;
}
#ifdef NONMATCHING
struct Anim956 {u32 f0,f4,f8,fC,f10,f14,f18; u8 payload[24];};
struct Ent956 {s32 x,y; u8 state,visible,index,delay; u16 timer,anim,frame,tick,result,pad;};
struct Pos956 {s32 x,y;};
struct Ent956 *f956_08001494(s32) asm("sub_08001494"); void f956_08001538(void *) asm("sub_08001538"); void f956_080003F0(void) asm("sub_080003F0");
 void f956_08065158(struct Anim956 *,s32,s32,s32,s32) asm("sub_08065158");
s32 f956_08065370(struct Anim956 *,u16,u16 *,u16 *,s32) asm("sub_08065370");
void f956_080087AC(s32,s32,u16,u16,s32,void *,u32,u32,s32) asm("sub_080087AC");
s32 f956_08097B6C(s32,s32,s32,s32,s32) asm("sub_08097B6C"); void f956_080979D8(s32,s32,s32,s32,struct Pos956 *) asm("sub_080979D8");
void f956_08000AF0(u32,u32,u32) asm("sub_08000AF0"); void f956_0801AB50(s32) asm("sub_0801AB50"); s32 f956_0801AAE0(void) asm("sub_0801AAE0"); void f956_0801ABE8(s32) asm("sub_0801ABE8"); s32 f956_080021A8(void) asm("sub_080021A8"); void f956_0805865C(s32) asm("sub_0805865C"); void f956_0805867C(s32) asm("sub_0805867C");
extern struct Pos956 positions956[] asm("gUnk_0851863C");
void sub_0809561C(u8 arg0) {
    struct Anim956 sp14, second;
    struct {s32 clear; u16 frame,tick;} state956;
    struct Pos956 sp84;
    register s32 *clearPtr asm("r5");
    register u8 *flagPtr asm("r10");
    struct {s32 animation,seen;} flags956;
    struct Anim956 *sp94;
    u8 *sp98;
    u16 *sp9C;
    u16 *spA0;
    register s32 temp_r1 asm("r9");
    register s32 allocationCount asm("r4");
    s32 var_r0_3;
    s32 var_sl;
    s8 temp_r0_2;
    s8 temp_r1_3;
    s8 temp_r1_7;
    s8 temp_r2;
    s8 temp_r2_2;
    s8 temp_r4_2;
    s8 temp_r5;
    s8 var_r5;
    s8 var_r5_2;
    struct Ent956 *temp_r0_3;
    struct Ent956 *temp_r0_6;
    struct Ent956 *temp_r1_4;
    struct Ent956 *temp_r1_6;
    struct Ent956 *temp_r1_8;
    struct Ent956 *temp_r2_3;
    struct Ent956 *temp_r3;
    struct Ent956 *temp_r4_3;
    struct Ent956 *temp_r4_4;
    struct Ent956 *temp_r6;
    struct Ent956 *temp_r7;
    struct Ent956 *var_r1_2;
    struct Pos956 *temp_r4;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r2_4;
    u16 var_r0;
    u32 temp_r0_5;
    u32 var_r5_3;
    u8 temp_r0_10;
    u8 temp_r0_11;
    u8 temp_r0_4;
    u8 temp_r1_2;
    u8 temp_r1_5;
    u8 var_r0_2;
    u8 var_r1;

    var_r1 = arg0;
    if ((s32) (s8) arg0 > 0x14) {
        var_r1 = 0x14;
    }
    temp_r1 = var_r1 << 0x18;
    clearPtr = &state956.clear;
    sp94 = &second;
    flagPtr = &sp14.payload[7];
    spA0 = &state956.tick;
    sp9C = &state956.frame;
    sp98 = second.payload;
    {register s32 count asm("r1"); count=(s8)(temp_r1 >> 24); allocationCount=count*3;}
    do {
        temp_r7 = f956_08001494(allocationCount << 3);
        f956_080003F0();
    } while (temp_r7 == NULL);
    state956.clear = 0;
    temp_r0_2 = (s8) (temp_r1 >> 24);
    CpuSet(clearPtr, temp_r7, ((temp_r0_2 * 6) & 0x1FFFFF) | 0x05000000);
    f956_08065158(&sp14, 0x50046, 7, -1, 1);
    f956_08065158(sp94, 0x50047, 0, -1, 1);
    *flagPtr = 0;
    sp94->payload[0] = 1;
    f956_08000AF0(0x10U, sp14.fC + 0xE0, 1U);
    f956_08000AF0(0x11U, sp94->fC, 1U);
    var_r5 = 0;
    if ((s32) temp_r0_2 > 0) {
        do {
            temp_r1_3 = var_r5;
            temp_r0_3 = &temp_r7[temp_r1_3];
            temp_r0_3->x = -0x2000;
            temp_r0_3->y = 0xA000;
            temp_r0_3->visible = 1;
            temp_r1_2 = temp_r1_3 + 1;
            var_r5 = (s8) temp_r1_2;
        } while ((s32) (s8) temp_r1_2 < (s32) temp_r0_2);
    }
    flags956.animation = 0;
    *spA0 = 0;
    *sp9C = flags956.animation;
    temp_r7->state = 1;
    temp_r7->delay = 0x1E;
    f956_0801AB50(6);
loop_9:
    if (f956_0801AAE0() == 0) {
        f956_080003F0();
        goto loop_9;
    }
loop_10:
    flags956.seen = 0;
    var_r5_2 = 0;
    var_sl = 0;
    if (temp_r1 <= 0) {

    } else {
loop_12:
        temp_r2 = var_r5_2;
        temp_r3 = &temp_r7[temp_r2];
        temp_r0_4 = temp_r3->delay;
        if (temp_r0_4 != 0) {
            temp_r3->delay = temp_r0_4 - 1;
        } else if (((s32) ((s8) ((u32)temp_r1 >> 24) - 1) > (s32) temp_r2) && (temp_r3->state != 0)) {
            temp_r1_4 = temp_r3 + 1;
            if (temp_r1_4->state == 0) {
                temp_r1_4->state = 1;
                temp_r1_4->delay = 0x1E;
            }
        }
        temp_r0_5 = temp_r7[var_r5_2].state - 1;
        switch (temp_r0_5) {                        /* irregular */
        case 0:
            temp_r2_2 = var_r5_2;
            temp_r6 = &temp_r7[temp_r2_2];
            temp_r4 = &positions956[temp_r2_2];
            if (f956_08097B6C(temp_r6->x, temp_r6->y, temp_r4->x, temp_r4->y, 2) != 0) {
                temp_r6->anim = 2;
                temp_r6->tick = 0;
                temp_r6->frame = 0;
                temp_r6->state = 2;
            } else {
                f956_080979D8(temp_r6->x, temp_r6->y, temp_r4->x, temp_r4->y, &sp84);
                temp_r6->x += sp84.x;
                temp_r6->y += sp84.y;
            }
            break;
        case 1:
            temp_r4_2 = var_r5_2;
            if (temp_r4_2 == 0) {
                temp_r1_5 = temp_r7->index;
                if ((u32) temp_r1_5 <= 3U) {
                    if (1 & temp_r1_5) {
                        var_r0 = 3;
                    } else {
                        var_r0 = 2;
                    }
                    temp_r7->anim = var_r0;
                    temp_r1_6 = &temp_r7[var_r5_2];
                    temp_r1_6->index += 1;
                } else {
                    flags956.animation = 1;
                    f956_0805865C(0x18A);
                    temp_r7->timer = (u16) temp_r4_2;
                    temp_r7->anim = flags956.animation;
                    temp_r7->tick = (u16) temp_r4_2;
                    temp_r7->frame = (u16) temp_r4_2;
                    temp_r7->state = 3;
                }
            } else {
                temp_r0_6 = &temp_r7[temp_r4_2];
                temp_r0_6->timer = 0;
                temp_r0_6->anim = 1;
                temp_r0_6->tick = 0;
                temp_r0_6->frame = 0;
                temp_r0_6->state = 3;
            }
            break;
        case 3:
            temp_r2_3 = &temp_r7[var_r5_2];
            temp_r0_7 = temp_r2_3->timer;
            if ((u32) temp_r0_7 <= 0x77U) {
                temp_r2_3->timer = temp_r0_7 + 1;
            } else {
                temp_r2_3->timer = 0;
                temp_r2_3->anim = 2;
                temp_r2_3->tick = 0;
                temp_r2_3->frame = 0;
                temp_r2_3->state = 5;
            }
            break;
        case 4:
            temp_r4_3 = &temp_r7[var_r5_2];
            temp_r0_8 = temp_r4_3->timer;
            if ((u32) temp_r0_8 <= 0x1DU) {
                temp_r4_3->timer = temp_r0_8 + 1;
            } else {
                f956_0805865C(0x18B);
                temp_r4_3->visible = 0;
                temp_r4_3->result = 0;
                temp_r4_3->anim = 7;
                temp_r4_3->tick = 0;
                temp_r4_3->frame = 0;
                temp_r4_3->state = 6;
            }
            break;
        case 5:
            var_r1_2 = &temp_r7[var_r5_2];
            temp_r2_4 = var_r1_2->result;
            if (temp_r2_4 == 1) {
                var_r1_2->timer = 0;
                var_r1_2->visible = (u8) temp_r2_4;
                var_r1_2->anim = temp_r2_4;
                var_r1_2->tick = 0;
                var_r1_2->frame = 0;
                var_r0_2 = 7;
block_43:
                var_r1_2->state = var_r0_2;
            }
            break;
        case 6:
            var_r1_2 = &temp_r7[var_r5_2];
            temp_r0_9 = var_r1_2->timer;
            if ((u32) temp_r0_9 <= 0x59U) {
                var_r1_2->timer = temp_r0_9 + 1;
            } else {
                var_r0_2 = 8;
                goto block_43;
            }
            break;
        case 7:
            break;
        }
        temp_r0_10 = temp_r7[var_r5_2].state;
        if ((u32)temp_r0_10 <= 3U) {
            asm("" : "+r"(temp_r0_10));
            if(temp_r0_10 != 3)flags956.seen=1;
        }
        temp_r1_7 = var_r5_2;
        if (temp_r7[temp_r1_7].state != 8) {
            var_sl = 1;
        }
        temp_r0_11 = temp_r1_7 + 1;
        var_r5_2 = (s8) temp_r0_11;
        if ((s32) (temp_r0_11 << 0x18) < temp_r1) {
            goto loop_12;
        }
    }
    var_r5_3 = (u32) (temp_r1 + 0xFF000000) >> 0x18;
    var_r0_3 = var_r5_3 << 0x18;
    if (var_r0_3 >= 0) {
        do {
            temp_r1_8 = &temp_r7[var_r0_3 >> 0x18];
            if (((u32) temp_r1_8->state <= 3U) && (flags956.seen == 0)) {
                temp_r1_8->state = 4;
            }
            temp_r5 = (s8) var_r5_3;
            temp_r4_4 = &temp_r7[temp_r5];
            temp_r4_4->result = (u16) f956_08065370(&sp14, temp_r4_4->anim, &temp_r4_4->frame, &temp_r4_4->tick,  temp_r4_4->visible);
            f956_080087AC((s32) temp_r4_4->x >> 8, (s32) temp_r4_4->y >> 8, temp_r4_4->anim, temp_r4_4->frame, 0, &sp14.payload[0], sp14.f8, sp14.f0, 0);
            var_r5_3 = (u32) (u8) (temp_r5 - 1);
            var_r0_3 = var_r5_3 << 0x18;
        } while (var_r0_3 >= 0);
    }
    f956_08065370(sp94, (u16) flags956.animation, sp9C, spA0, 1);
    f956_080087AC(0x20, 0x28, (u16) flags956.animation, *sp9C, 0, sp98, sp94->f8, second.f0, 0);
    f956_080003F0();
    if (f956_080021A8() == 1) {
        var_sl = 0;
    }
    if (var_sl != 0) {
        goto loop_10;
    }
    f956_0801ABE8(6);
loop_63:
    if (f956_0801AAE0() == 0) {
        f956_080003F0();
        goto loop_63;
    }
    f956_0805867C(0x18A);
    f956_08001538(temp_r7);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_0809561C);
#endif
void sub_08095A60(void) {
    sub_08000A34(1, 0, 0, 0, 0);
    sub_080009F8(0xF00, 0, 0);
    sub_08000990(0, 0);
    sub_080009C0(0x1000, 0, 0);
    sub_0800CBF8(1U);
    sub_0800CC48(1U);
    sub_08098010(1U);
    M2C_FIELD(gUnk_03001250, u16 *, 0) = 0;
    M2C_FIELD(gUnk_03001250, s16 *, 2) = 0;
    M2C_FIELD(gUnk_03001250, s16 *, 4) = 0;
    M2C_FIELD(gUnk_03001250, s16 *, 6) = 0;
    sub_0800903C(0, 0, 0, 0, 0, 0);
    *(s16 *)&gUnk_03001F40 = 0;
    sub_08000940();
}
void sub_08095AD8(s8 value)
{
    sub_080586D0(3);
    sub_0809561C(value);
    sub_0800CC18();
    sub_0800CC68();
    sub_08098028();
}
