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
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08092E40);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08092EB4);
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
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080934D4);
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
    struct {s32 x,y;} screen;
    s32 result,active;
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
    indices[1]=*(u16 *)(b.f8+*(u32 *)(b.f8+8)+4)-1;
    sub_0801AB50(6);
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
            indices[1]=*(u16 *)(b.f8+*(u32 *)(b.f8+8)+4)-1;
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
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094F3C);
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
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_0809561C);
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
