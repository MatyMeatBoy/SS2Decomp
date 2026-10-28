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
#ifdef NONMATCHING
void sub_080933A0(void)
{
    *(u8 *)0x03000267 = 0;
    *(u8 *)0x03000266 = 0x10;
    *(u8 *)0x03000268 = 1;
    sub_080012D8((u32)sub_0809342C);
    sub_08000F64(0x800);
    sub_080011E4((void *)sub_08093498);
    *(u16 *)0x03000264 = 0;
    *(u32 *)0x040000D4 = 0x03000264;
    *(u32 *)0x040000D8 = 0x04000014;
    *(u32 *)0x040000DC = 0xE3400001;
    (void)*(volatile u32 *)0x040000DC;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080933A0);
#endif
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
#ifdef NONMATCHING
u16 sub_08093498(void)
{
    gUnk_03000267 += 2;
    if (gUnk_03000268 == 0) {
        vu16 *control = (vu16 *)0x040000DE;
        *control &= 0xC5FF;
        *control &= 0x7FFF;
        return *control;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093498);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080934D4);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093584);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08093BAC);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080941B4);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080943F8);
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
#ifdef NONMATCHING
void sub_08094530(void)
{
    u8 *obj = *(u8 **)0x03000270;
    u32 mem;
    if (obj == 0 || (sub_08000470((u32)obj) == 0 && *(u32 *)(obj + 8) != 0))
        return;
    do {
        mem = sub_08001494(0x400);
        *(u32 *)(obj + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0 && *(u8 **)0x03000270 != 0);
    if (mem == 0)
        return;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 0x0C) = (u32)sub_080941B4;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 8) = 0x44;
    sub_08000274(obj, 0, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094530);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094590);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094638);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080948E0);
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
#ifdef NONMATCHING
void sub_080949A8(void)
{
    u32 mem;
    u8 *obj=*(u8 **)0x03000278; if(!obj)return;
    if(!sub_08000470((u32)obj)&&*(u32 *)(obj+8)==0)return;
    mem = sub_08001494(0x400); *(u32 *)(obj+0x20)=mem; if(!mem)return;
    *(u32 *)(obj+0x10)=mem+0x3FC; *(u32 *)(obj+0xC)=(u32)sub_080948E0;
    *(u32 *)(obj+0x24)=0; *(u32 *)(obj+8)=0x44; sub_08000274(obj,0,0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080949A8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094A00);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094AB8);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094DEC);
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
#ifdef NONMATCHING
void sub_08094EE4(void)
{
    u8 *obj = *(u8 **)0x0300027C;
    u32 mem;
    if (obj == 0)
        return;
    if (sub_08000470((u32)obj) == 0 && *(u32 *)(obj + 8) == 0)
        return;
    mem = sub_08001494(0x400);
    *(u32 *)(obj + 0x20) = mem;
    if (mem == 0)
        return;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 0x0C) = (u32)sub_08094DEC;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 8) = 0x44;
    sub_08000274(obj, 0, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094EE4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08094F3C);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080953F8);
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_08095518);
#ifdef NONMATCHING
void sub_080955CC(void)
{
    gUnk_03000280.w4 = 0;
    gUnk_03000280.w6 = 0;
    gUnk_03000280.w8 = 0;
    gUnk_03000280.wA = 0;
    gUnk_03000280.b0C = 0;
    gUnk_03000280.w4 = 0x100;
    gUnk_03000280.w6 = 0x100;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08092D60", sub_080955CC);
#endif
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
