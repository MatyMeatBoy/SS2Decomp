#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058790);
void sub_080587D8(void) {
    sub_0800CFA4();
}
void sub_080587E4(void) {
    sub_08015D74();
}
void sub_080587F0(void) {
    sub_08015D98();
}
void sub_080587FC(u16 arg0) {
    sub_0800CC48(arg0);
}
void sub_0805880C(void) {
    sub_0800CC68();
}
s32 sub_08058818(void) {
    return sub_0800CE30();
}
s32 sub_08058824(void) {
    return sub_0800CF48();
}
s32 sub_08058830(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 8) & 1;
}
u32 sub_08058844(void)
{
    u8 *p=(u8 *)0x030034E0+0xC10; u32 i;
    for(i=0;i<=0x90;i++) if(p[i]==0) return 0;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058878);
void sub_080588C0(u32 index, u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x240 : 0x236;
    base[offset + index] |= 1u << bit;
}
void *sub_08058900(u32 index)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0xF8 : 0xA8;
    return *(void **)(base + offset + index * 4);
}
void *sub_08058934(u32 index)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x120 : 0xD0;
    return *(void **)(base + offset + index * 4);
}
void sub_0805896C(u32 index, void *value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0xF8 : 0xA8;
    *(void **)(base + offset + index * 4) = value;
}
void sub_080589A0(u32 index, void *value)
{
    u8 *base=(u8 *)gUnk_03005CF4;
    u32 offset=sub_0800CE30()?0x120:0xD0;
    *(void **)(base+offset+index*4)=value;
}
s32 sub_080589D8(s32 arg0)
{
  s32 *var_r0;
  s32 var_r1;
  if (sub_0800CE30() != 0)
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x88;
  }
  else
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x84;
  }
  if (var_r1 & (*var_r0))
  {
    if (var_r0)
    {
      return 1;
    }
    else
    {
      return 1;
    }
  }
  return 0;
}
void sub_08058A18(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x88 : 0x84;
    *(u32 *)(base + offset) |= 1u << bit;
}
void sub_08058A4C(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x88 : 0x84;
    *(u32 *)(base + offset) &= ~(1u << bit);
}
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058A80);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058AD0);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058B08);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058B74);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058C08);
void sub_08058C74(s16 arg0) {
    M2C_FIELD(gUnk_030034E0, s16 *, 0x68) = arg0;
    sub_0805AD78();
}
void sub_08058C8C(s32 arg0) { if (sub_0800CB9C()) { sub_080586B4(0); return; } if (!(gUnk_030027D0 & 0x20)) { gUnk_03005CF8=arg0; sub_08006CB4(arg0); } }
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058CC4);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058D4C);
s32 sub_08058D8C(void) {
    return sub_080008C8();
}
extern void sub_0805AB20(void *arg0);
void sub_08058D98(s32 value)
{
    struct {
        u16 kind;
        u16 pad02;
        s32 value;
        u8 pad08[8];
    } request;
    request.kind = 10;
    request.value = value;
    sub_0805AB20(&request);
}
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058DB0);
s32 sub_08058E08(void) {
    return M2C_FIELD(gUnk_030034E0, s32 *, 0x20);
}
void sub_08058E14(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
void sub_08058E28(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
s32 sub_08058E3C(s32 bit)
{
    return (M2C_FIELD(gUnk_03005CF4, u32 *, 0x6C) & (1 << bit)) != 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058E54);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058EF8);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058F4C);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059000);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_080590B4);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059168);
void sub_0805921C(u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    base[(sub_0800CE30() ? 0x1BC : 0x1B0)] = (u8)value;
}
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059250);
void sub_080592FC(void)
{
    u32 index=sub_080020F4(); u8 *entry=(u8 *)0x03003CE0+index*0x14C;
    *(u32 *)(entry+0x30)|=1; sub_0800D0F4(); sub_0802A19C();
    index=sub_080020F4(); entry=(u8 *)0x03003CE0+index*0x14C;
    *(u32 *)(entry+0x30)&=~1u; sub_0800D108();
}
void sub_08059340(void) { u8 *p=(u8 *)(uintptr_t)gUnk_03005CF4 + (sub_0800CE30()?0x1BD:0x1B1); *p=0xA; }
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059374);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059418);
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059488);
