#include "global.h"

extern u16 gUnk_085186DC[];

void sub_080967D0(s32 value);

struct Motion95 {u32 unk0,unk4; s16 unk8; u8 pad[10]; s32 unk14,unk18;};
extern s16 sine95[] asm("gUnk_080B9704");
extern u16 angles95[] asm("gUnk_085186DC");
extern u16 query95(u8,s32,s32) asm("sub_08095D1C");
s32 sub_08095B04(struct Motion95 *p, s32 speed)
{
    s32 x=p->unk14;
    s32 y=p->unk18;
    u16 old=p->unk8;
    u16 hit;
    if(p->unk8==0 || p->unk8==4)
        y += sine95[angles95[p->unk8]] * speed / 304;
    else
        y += sine95[angles95[p->unk8]] * speed / 256;
    x += sine95[angles95[p->unk8]+64] * speed / 256;
    hit=query95((u8)p->unk8,x,y);
    if(hit) {
        p->unk8=hit-1;
        x=p->unk14;
        y=p->unk18;
        if(p->unk8==0 || p->unk8==4)
            y += sine95[angles95[p->unk8]] * speed / 304;
        else
            y += sine95[angles95[p->unk8]] * speed / 256;
        x += sine95[angles95[p->unk8]+64] * speed / 256;
        hit=query95((u8)p->unk8,x,y);
        if(hit) {
            p->unk8=hit-1;
            if(p->unk8==0 || p->unk8==4)
                p->unk18 += sine95[angles95[p->unk8]] * speed / 304;
            else
                p->unk18 += sine95[angles95[p->unk8]] * speed / 256;
            p->unk14 += sine95[angles95[p->unk8]+64] * speed / 256;
        }
    }
    if(old!=p->unk8) old=1; else old=0;
    return old;
}
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095D1C);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095E70);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095F10);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08095FC8);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096060);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096154);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096274);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096394);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096494);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096594);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096640);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080967D0);
#ifdef NONMATCHING
void sub_0809689C(void)
{
    gUnk_030002A0.w4 = 0;
    gUnk_030002A0.w6 = 0;
    gUnk_030002A0.w8 = 0;
    gUnk_030002A0.wA = 0;
    gUnk_030002A0.b0C = 0;
    gUnk_030002A0.b0D = 0;
    gUnk_030002A0.pad0E = 0;
    gUnk_030002A0.b0F = 0;
    gUnk_030002A0.w4 = 0x100;
    gUnk_030002A0.w6 = 0x100;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_0809689C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080968C0);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080969CC);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096AF4);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096BA8);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096D40);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096E20);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096EFC);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08096FA0);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080970CC);
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_080972B8);
#ifdef NONMATCHING
struct FadeColor100 { u32 r:5; u32 g:5; u32 b:5; u32 unused:1; };
extern void sub_0800BC08(s32,s32,s16 *,s16 *,u32,u32);
extern void sub_08007974(s16,s16,u16,u16,u32,u32,u32,void *,u32,void *);
extern s8 sub_08096E20(u16 *,s32,u16,s32);
s32 sub_08097488(void *entity,void *image,u16 bank,u16 paletteNum)
{
    register void *object asm("r6")=entity;
    register u32 palNum asm("r10")=paletteNum;
    u32 uploadPal;
    register s16 *screenYPtr asm("r10");
    u16 palette[16];
    s16 screenX,screenY;
    s16 i;
    u8 alternate;
    register u16 phase asm("r9");
    register u16 frame asm("r5");
    register s32 state asm("r8");
    M2C_FIELD(image,u8 *,0x1C)=palNum;
    for(i=0;i<16;i++) {
        struct FadeColor100 *src;
        struct FadeColor100 *dst;
        asm volatile("" ::: "memory");
        src=(void *)((u16 *)M2C_FIELD(image,void **,0xC)+bank*16+i);
        dst=(void *)&palette[i];
        dst->r=src->r;
        dst->g=src->g;
        dst->b=src->b;
    }
    alternate=0;
    phase=0;
    frame=0;
    state=2;
    uploadPal=palNum+16;
    screenYPtr=&screenY;
    do {
        u8 oldAlternate;
        phase=(phase+1)&15;
        oldAlternate=alternate++;
        if(oldAlternate&1) sub_08009088(0,0,phase,0);
        else sub_08009088(0,0,0,phase);
        if(state!=1) {
            if(state==2 && frame++>60) { frame=0; state=1; }
        } else {
            frame++;
            if(sub_08096E20(palette,2,frame,60)!=0) { frame=0; state=0; }
        }
        sub_08000AF0(uploadPal,palette,1);
        {
            u8 priority=sub_0800BC44(M2C_FIELD(object,s32 *,0x14)>>8,M2C_FIELD(object,s32 *,0x18)>>8,0);
            sub_0800BC08((M2C_FIELD(object,s32 *,0x14)<<8)>>16,(M2C_FIELD(object,s32 *,0x18)<<8)>>16,&screenX,screenYPtr,0,0);
            sub_08007974(screenX,*screenYPtr,M2C_FIELD(object,u16 *,0x68),M2C_FIELD(object,u16 *,0x6A),priority,1,0,(u8 *)image+0x1C,M2C_FIELD(image,u32 *,8),M2C_FIELD(image,void **,0));
        }
        sub_08000B38();
        sub_080003F0();
    } while(state!=0);
    sub_08009088(0,0,0,0);
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097488);
#endif
#ifdef NONMATCHING
s32 sub_08097658(void *entityA,void *entityB,void *imageA,void *imageB,u16 bank,u16 paletteNum,u8 reverse)
{
    u16 paletteA[16];
    u16 paletteB[16];
    s16 screenX,screenY;
    s16 i;
    u8 alternate;
    u16 phase;
    u16 frame;
    s32 state;
    M2C_FIELD(imageA,u8 *,0x1C)=paletteNum;
    M2C_FIELD(imageB,u8 *,0x1C)=paletteNum;
    for(i=0;i<16;i++) {
        struct FadeColor100 *srcA=(void *)((u16 *)M2C_FIELD(imageA,void **,0xC)+bank*16+i);
        struct FadeColor100 *dstA=(void *)&paletteA[i];
        struct FadeColor100 *srcB=(void *)((u16 *)M2C_FIELD(imageB,void **,0xC)+bank*16+i);
        struct FadeColor100 *dstB=(void *)&paletteB[i];
        dstA->r=srcA->r;
        dstA->g=srcA->g;
        dstA->b=srcA->b;
        dstB->r=srcB->r;
        dstB->g=srcB->g;
        dstB->b=srcB->b;
    }
    alternate=0;
    phase=0;
    frame=0;
    state=2;
    do {
        u8 oldAlternate;
        phase=(phase+1)&15;
        oldAlternate=alternate++;
        if(oldAlternate&1) sub_08009088(0,0,phase,0);
        else sub_08009088(0,0,0,phase);
        if(state!=1) {
            if(state==2 && frame++>60) { frame=0; state=1; }
        } else {
            sub_08096E20(paletteA,2,frame,60);
            frame++;
            if(sub_08096E20(paletteB,2,frame,60)!=0) { frame=0; state=0; }
        }
        sub_08000AF0(paletteNum+16,paletteA,1);
        sub_08065370(imageA,M2C_FIELD(entityA,u16 *,0x68),(s32)((u8 *)entityA+0x6A),(s32)((u8 *)entityA+0x6C),1);
        sub_0800BC08((M2C_FIELD(entityA,s32 *,0x14)<<8)>>16,(M2C_FIELD(entityA,s32 *,0x18)<<8)>>16,&screenX,&screenY,0,0);
        {
            u8 priority=sub_0800BC44(M2C_FIELD(entityA,s32 *,0x14)>>8,M2C_FIELD(entityA,s32 *,0x18)>>8,0);
            if(reverse) screenX-=9; else screenX+=9;
            screenY+=21;
            sub_08007974(screenX,screenY,M2C_FIELD(entityA,u16 *,0x68),M2C_FIELD(entityA,u16 *,0x6A),priority,1,0,(u8 *)imageA+0x1C,M2C_FIELD(imageA,u32 *,8),M2C_FIELD(imageA,void **,0));
        }
        sub_08000AF0(paletteNum+16,paletteB,1);
        sub_08065370(imageB,M2C_FIELD(entityB,u16 *,0x68),(s32)((u8 *)entityB+0x6A),(s32)((u8 *)entityB+0x6C),1);
        sub_0800BC08((M2C_FIELD(entityB,s32 *,0x14)<<8)>>16,(M2C_FIELD(entityB,s32 *,0x18)<<8)>>16,&screenX,&screenY,0,0);
        {
            u8 priority=sub_0800BC44(M2C_FIELD(entityB,s32 *,0x14)>>8,M2C_FIELD(entityB,s32 *,0x18)>>8,0);
            sub_08007974(screenX,screenY,M2C_FIELD(entityB,u16 *,0x68),M2C_FIELD(entityB,u16 *,0x6A),priority,1,0,(u8 *)imageB+0x1C,M2C_FIELD(imageB,u32 *,8),M2C_FIELD(imageB,void **,0));
        }
        sub_08000B38();
        sub_080003F0();
    } while(state!=0);
    sub_08009088(0,0,0,0);
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08095B04", sub_08097658);
#endif
void sub_08097978(s32 x,s32 y,s32 targetX,s32 targetY,s32 *out)
{
    register s32 savedY asm("r5")=y;
    register s32 savedX asm("r4")=x;
    s32 *dest=out;
    register u32 sine asm("r6");
    register s32 dx asm("r1");
    register u32 cosine asm("r1");
    register s32 value asm("r0");
    asm volatile("" : "+r" (savedY), "+r" (savedX), "+r" (dest));
    dx=targetX-(savedX>>8);
    asm volatile("" : "+r" (dx));
    value=targetY-(savedY>>8);
    value <<=16;
    asm volatile("" : "+r" (value));
    sine=(u32)value>>16;
    dx <<=16;
    asm volatile("" : "+r" (dx));
    value=dx>>16;
    asm volatile("" : "+r" (value));
    if(value!=0) {
        u32 angle=((u16 (*)(s32,s16))ArcTan2)(value,(s16)sine)>>8;
        sine=(u16)gUnk_080B9704[angle+0x40];
        cosine=(u16)gUnk_080B9704[angle];
    } else {
        sine=0;
        cosine=0x100;
        if(targetY<savedY) cosine=0xFF00;
    }
    value=(s16)sine;
    asm volatile("" : "+r" (value));
    dest[0]=value;
    value=(s16)cosine;
    dest[1]=value;
}
void sub_080979D8(s32 x,s32 y,s32 targetX,s32 targetY,s32 *out)
{
    register s32 savedY asm("r5")=y;
    register s32 savedX asm("r4")=x;
    s32 *dest=out;
    register u32 sine asm("r6");
    register s32 dx asm("r1");
    register u32 cosine asm("r1");
    register s32 value asm("r0");
    asm volatile("" : "+r" (savedY), "+r" (savedX), "+r" (dest));
    dx=targetX-savedX;
    asm volatile("" : "+r" (dx));
    dx <<=8;
    asm volatile("" : "+r" (dx));
    value=(targetY-savedY)<<8;
    asm volatile("" : "+r" (value));
    sine=(u32)value>>16;
    value=dx>>16;
    asm volatile("" : "+r" (value));
    if(value!=0) {
        u32 angle=((u16 (*)(s32,s16))ArcTan2)(value,(s16)sine)>>8;
        dest[0]=gUnk_080B9704[angle+0x40];
        dest[1]=gUnk_080B9704[angle];
    } else {
        dest[0]=value;
        dest[1]=0x100;
        if(targetY<savedY) dest[1]=-0x100;
    }
}
void sub_08097A38(u8 i)
{
    gUnk_03000290[i]++;
}
void sub_08097A4C(void)
{
    gUnk_03000290[4] = 0;
    gUnk_03000290[3] = 0;
    gUnk_03000290[2] = 0;
    gUnk_03000290[1] = 0;
    gUnk_03000290[0] = 0;
}
void sub_08097A60(u8 i)
{
    gUnk_03000290[i] = 0;
}
s32 sub_08097A74(void *arg0, void *arg1, s32 arg2, s16 arg3) {
    s8 temp_r5;
    void *temp_r0;

    temp_r0 = M2C_FIELD(arg1, void **, 0x148);
    temp_r5 = sub_08096060(arg0, (u16) M2C_FIELD(temp_r0, u16 *, 0) >> 4, (u32) (M2C_FIELD(temp_r0, u16 *, 2) << 0x14) >> 0x14, arg3);
    if (temp_r5 != 0) {
        M2C_FIELD(arg0, u16 *, 8) = sub_08013E90(arg2, arg0 + 0x14, M2C_FIELD(arg0, u16 *, 8), 0, 0);
    }
    return (s32) temp_r5;
}
extern void sub_08097BA4(s32, s32 *, u16);
s32 sub_08097AC0(void *arg0,s32 arg1,s32 arg2,s32 arg3,volatile s32 arg4,volatile u32 arg5)
{
    register void *obj asm("r6")=arg0;
    register s32 y asm("r5")=arg2;
    register s32 x asm("r4")=arg1;
    register s32 speed asm("r8");
    register s32 third asm("r3")=arg3;
    u32 flag;
    register s32 fourth asm("r3");
    register u32 result asm("r4");
    asm volatile("" : "+r" (obj), "+r" (y), "+r" (x), "+r" (third) : : "memory");
    speed=third;
    asm volatile("" : "+r" (speed) : : "memory");
    fourth=arg4;
    asm volatile("" : "+r" (fourth) : : "memory");
    flag=(u8)arg5;
    result=(u8)sub_08096060(obj,x,y,(s16)fourth);
    if((s8)result!=0) {
        if(flag!=0) M2C_FIELD(obj,u16 *,8)=sub_08013E90(speed,obj+0x14,M2C_FIELD(obj,u16 *,8),0,0);
        else ((void(*)(s32,void *,u16))sub_08097BA4)(speed,obj+0x14,M2C_FIELD(obj,u16 *,8));
    }
    return (s8)result;
}
u32 sub_08097B24(const u8 *obj,s32 x,s32 y,s32 radius)
{
    register s32 objectX asm("r4");
    register s32 objectY asm("r0");
    register s32 dx asm("r1");
    register s32 dy asm("r2");
    register s32 rr asm("r4");
    register u32 square asm("r0");
    register u32 distance asm("r0");
    objectX=M2C_FIELD(obj,s32 *,20);
    asm volatile("" : "+r" (objectX));
    objectX <<= 8;
    objectY=M2C_FIELD(obj,s32 *,24)<<8;
    asm volatile("" : "+r" (objectY));
    dx=(s16)x;
    dx -= objectX>>16;
    dy=(s16)y;
    dy -= objectY>>16;
    rr=radius<<16;
    asm volatile("" : "+r" (rr));
    rr >>=16;
    asm volatile("" : "+r" (dx), "+r" (dy), "+r" (rr));
    dx=(s16)dx;
    square=dx*dx;
    asm volatile("" : "+r" (square));
    dy=(s16)dy;
    distance=Sqrt(square+dy*dy);
    asm volatile("" : "+r" (distance));
    return rr>(s32)distance;
}
u32 sub_08097B6C(s32 x0,s32 y0,s32 x1,s32 y1,s32 radius)
{
    register s32 dx asm("r4");
    s32 dy;
    register s32 rr asm("r5");
    register u32 square asm("r0");
    register u32 distance asm("r0");
    dx=x0-x1;
    asm volatile("" : "+r" (dx));
    dx <<= 8;
    dy=(y0-y1)<<8;
    rr=(s16)radius;
    asm volatile("" : "+r" (dx), "+r" (rr));
    dx >>= 16;
    square=dx*dx;
    asm volatile("" : "+r" (square));
    dy >>=16;
    distance=Sqrt(square+dy*dy);
    asm volatile("" : "+r" (distance));
    return rr > (s32)distance;
}
void sub_08097BA4(s32 velocity,s32 *position,u16 direction)
{
    if(direction==0 || direction==4)
        position[1] += velocity*gUnk_080B9704[gUnk_085186DC[direction]]/304;
    else
        position[1] += velocity*gUnk_080B9704[gUnk_085186DC[direction]]/256;
    position[0] += velocity*gUnk_080B9704[gUnk_085186DC[direction]+0x40]/256;
}
void sub_08097C4C(void)
{
  s8 *new_var2;
  void *new_var;
  void *temp_r0;
  gUnk_03000298 = (temp_r0 = sub_08001494(0x28U));
  new_var2 = (s8 *) temp_r0;
  new_var = (void *) 0;
  if (temp_r0 != new_var)
  {
    *((s32 *) (new_var2 + 8)) = 0;
  }
}
void sub_08097C6C(void)
{
    u32 *obj = (u32 *)gUnk_03000298;
    if (obj != 0) {
        if (obj[2] != 0) {
            u32 *dst = (u32 *)gUnk_030034E0;
            *(u16 *)((u8 *)dst + 0x18) = ss2ScaleSave;
            sub_080003A8((u32)obj);
        }
        sub_08001538((u32)gUnk_03000298);
        gUnk_03000298 = 0;
    }
}
void sub_08097CA8(u16 value)
{
    u8 *task;
    u32 mem;

    if (gUnk_03000298 == 0 || *(u32 *)((u8 *)gUnk_03000298 + 8) != 0)
        return;

    mem = sub_08001494(0x200);
    task = (u8 *)gUnk_03000298;
    *(u32 *)(task + 0x20) = mem;
    if (mem == 0)
        return;

    *(u32 *)(task + 0x10) = mem + 0x1FC;
    *(u32 *)(task + 0x0C) = (u32)sub_080967D0;
    *(u32 *)(task + 0x24) = 0;
    *(u32 *)(task + 8) = 0x4C;
    sub_08000274_(task, (u32)(s32)(s16)value, 0);
    ss2ScaleSave = *(u16 *)((u8 *)gUnk_030034E0 + 0x18);
}
void sub_08097D0C(u16 a, u16 b)
{
    gUnk_030002A0.w4 = a;
    gUnk_030002A0.w6 = b;
}
void sub_08097D18(u16 a, u16 b)
{
    gUnk_030002A0.w8 = a;
    gUnk_030002A0.wA = b;
}
void sub_08097D24(u8 v)
{
    gUnk_030002A0.b0D = v;
}
void sub_08097D30(s16 arg0, s16 arg1) {
    M2C_FIELD(&gUnk_030002A0, s16 *, 0) = arg0;
    M2C_FIELD(&gUnk_030002A0, s16 *, 2) = arg1;
}
void sub_08097D3C(u32 index, s32 scale)
{
    s32 value;
    gUnk_030002A0.b0C = index;
    value = (gUnk_080B9704[gUnk_030002A0.b0C] * (s8)scale) >> 8;
    gUnk_030002A0.b0D = value;
    gUnk_030002A0.pad0E = value;
}
void sub_08097D64(void)
{
    gUnk_030002A0.b0F = 0;
}
void sub_08097D70(void)
{
    gUnk_030002A0.b0F = 1;
}
void sub_08097D7C(u8 angle, u8 scale)
{
    u8 *state = (u8 *)&gUnk_030002A0;
    state[0xE] = state[0xD];
    if (state[0xF] == 0) {
        const s16 *table = (const s16 *)gUnk_080B9704;
        state[0xD] = (u8)((table[state[0xC]] * (s8)scale) >> 8);
        state[0xC] += (u8)angle;
    }
}
u32 sub_08097DBC(u32 arg0, s32 y, u16 angle, u32 arg3)
{
    s32 scaled;
    u32 result = 0;
    if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 &&
        sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
        scaled = (gUnk_080B9704[gUnk_030002A0.b0D] * (s32)(s16)angle << 8) >> 16;
        if (0x7000 - scaled > y)
            result = 0xF;
        if (0xA000 - scaled < y)
            result |= 0xF;
    }
    return result;
}
