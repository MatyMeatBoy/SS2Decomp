#include "global.h"

void sub_08066898(void);
void sub_08064E14(void);
void sub_0806690C(void);
void sub_08065A1C(void);

void sub_080659B0(void *arg0, s16 arg1)
{
  s8 *new_var;
  s8 *new_var2;
  int new_var3;
  new_var3 = 0;
  new_var = (s8 *) arg0;
  *((s16 *) (new_var + 0x2C)) = arg1;
 do { new_var2 = new_var + 0x30; } while (0);
  if (1)
  {
    *((s16 *) new_var2) = 0;
  }
  *((s16 *) (new_var + 0x32)) = 0;
  *((s16 *) (new_var + 0x2E)) = new_var3;
}
void sub_080659BC(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4, s32 arg5) {
    sub_08007CF0(arg1, arg2, arg3, (u16) arg4, (s32) (u8) arg5, arg0 + 0x1C, M2C_FIELD(arg0, s32 *, 8), M2C_FIELD(arg0, s32 *, 0));
}
void sub_080659F4(s32 *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  if (arg1 == arg2)
  {
    *arg0 = arg1;
    if (1)
    {
      return;
    }
  }
  *arg0 = (((s32) (arg2 * arg3)) >> 0xA) + (((s32) (arg1 * (0x400 - arg3))) >> 0xA);
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065A1C);
void sub_08065A90(u32 a, u32 b)
{
    u8 *obj;
    u32 mem;
    obj=(u8 *)0x030061B0; if(sub_08000470((u32)obj))return;
    *(u32 *)(obj+8)=0x3C;
    do { mem=sub_08001638(0x200); if(!mem)sub_080003F0(); } while(!mem);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+0xC)=(u32)sub_08065A1C;
    *(u32 *)(obj+0x10)=mem+0x1FC; *(u32 *)(obj+0x24)=0; sub_08000274_(obj,a,b);
}
s32 sub_08065AE8(void)
{
  int new_var;
 do { if (sub_08058DB0() == 0) { return 0; } return 1; } while (0); new_var = 0; do { } while (new_var);
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065AFC);
extern s32 gUnk_03006030;
void sub_08065B58(void)
{
    u32 i;
    gUnk_03006030 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006030 + i * 0x28, s32 *, 8) = 0;
}
void sub_08065B84(void)
{
    u32 i;
    s32 ptr = gUnk_03006030;
    for (i = 0; i < 4; i++, ptr += 0x28) {
        while (sub_08000470(ptr) != 0)
            sub_080003F0();
    }
    sub_08001538(gUnk_03006030);
    gUnk_03006030 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065BD0);
void sub_08065C50(u32 arg)
{
    u8 *obj;
    u32 mem;
    obj = (u8 *)0x03002840;
    if(!sub_08000470((u32)obj)) *(u32 *)(obj+8)=0x3C;
    do { mem=sub_08001494(0xC00); if(!mem) sub_080003F0(); } while(!mem);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+0xC)=(u32)sub_08064E14;
    *(u32 *)(obj+0x10)=mem+0xBFC; *(u32 *)(obj+0x24)=0; sub_08000274(obj,arg);
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065CA8);
u32 sub_08065D50(void)
{
    u32 count = gUnk_03006338;
    u8 *entry;
    u8 *source = (u8 *)gUnk_030034E0;
    u32 i;

    if (count > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x81;
    for (i = 0; i < 10; i++)
        entry[8 + i] = source[i];
    entry[1] = 2;
    gUnk_03006338 = count + 1;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065DAC);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065E38);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08065F08);
u32 sub_08065FE8(void)
{
    u32 index = gUnk_03006338;
    u8 *entry;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x85;
    CpuSet((u8 *)gUnk_03005CF4 + 0x22, entry + 8, 0xA);
    entry[1] = 3;
    gUnk_03006338 = index + 1;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806603C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080660EC);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806617C);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066220);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080662C4);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080663A4);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066404);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066490);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066520);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080665B0);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066624);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066720);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066898);
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806690C);
void sub_08067A68(u32 index)
{
    u8 *entry;
    u32 mem;
    entry = *(u8 **)0x03006258 + index*0x28;
    if(sub_08000470((u32)entry)) return;
    *(u32 *)(entry+0xC)=(u32)sub_0806690C;
    mem=sub_08001494(0xC00); *(u32 *)(entry+0x20)=mem;
    *(u32 *)(entry+0x10)=mem+0xBFC; *(u32 *)(entry+8)=0x65;
    *(u32 *)(entry+0x24)=0; sub_08000274(entry,index);
}
s32 sub_08067AC0(void) {
    return 1;
}
s32 sub_08067AC4(void) {
    return 1;
}
s32 sub_08067AC8(void) {
    return 1;
}
s32 sub_08067ACC(void) {
    return 1;
}
s32 sub_08067AD0(void) {
    return 1;
}
s32 sub_08067AD4(void) {
    return 1;
}
s32 sub_08067AD8(void) {
    return 1;
}
s32 sub_08067ADC(void) {
    return 1;
}
s32 sub_08067AE0(void) {
    return 1;
}
s32 sub_08067AE4(void) {
    return 1;
}
s32 sub_08067AE8(void) {
    return 1;
}
void sub_08067AEC(void) {

}
s32 sub_08067AF0(void) {
    return 1;
}
void sub_08067AF4(void) {

}
void sub_08067AF8(void) {

}
void sub_08067AFC(void)
{
    u8 *obj;
    u32 mem;
    u32 i;
    obj = (u8 *)0x03006310;
    *(u32 *)(obj+0xC) = (u32)sub_08066898;
    mem = sub_08001494(0x400);
    *(u32 *)(obj+0x20) = mem;
    *(u32 *)(obj+0x10) = mem + 0x3FC;
    *(u32 *)(obj+8) = 0x65;
    *(u32 *)(obj+0x24) = (u32)sub_08068670;
    sub_08000274_(obj, 0, 0);
    for (i = 0; i < sub_08002164(); i++) sub_08067A68(i);
}
