#include "global.h"
void sub_080B5F94(void);

INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B3648);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B44F0);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4690);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4A7C);
void sub_080B4B48(void)
{
  u8 var_r2;
  void *temp_r0;
  gUnk_030007D0 = (temp_r0 = sub_08001494(0xA0U));
  if (temp_r0 != ((void *) 0))
  {
    var_r2 = 0;
    do
    {
      *((s32 *) (((s8 *) ((var_r2 * 0x28) + gUnk_030007D0)) + 8)) = 0;
      var_r2 += 1;
    }
    while (((u32) var_r2) <= 3U);
  }
}
void sub_080B4B7C(void)
{
    u8 *entry = *(u8 **)0x030007D0;
    u32 i;
    if (entry == 0) return;
    for (i = 0; i < 4; i++, entry += 0x28)
        if (sub_08000470((u32)entry)) sub_080003A8((u32)entry);
    sub_08001538(*(u32 **)0x030007D0);
    *(u32 **)0x030007D0 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4BB8);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B4C34);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5B90);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5E64);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B5F94);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6068);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B60F4);
INCLUDE_ASM("asm/nonmatchings/code_080B3648", sub_080B6178);
void sub_080B6324(void) {
    if (M2C_FIELD(gUnk_030007DC, s16 *, 0x5C) != 0) {
        sub_080B60F4();
        sub_080B6360();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030007E0);
}
void sub_080B6360(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_030007E4) != 0) {
        sub_080003A8(gUnk_030007E4);
    }
    if (gUnk_030007E4 != 0) {
        sub_08001538(gUnk_030007E4);
        gUnk_030007E4 = 0;
    }
}
void sub_080B63A0(void)
{
  s32 temp_r0;
  gUnk_030007E4 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080B63BC(void)
{
    u8 *obj=*(u8 **)0x030007E4; u32 mem; if(!obj)return;
    if(!sub_08000470((u32)obj)&&*(u32 *)(obj+8)==0)return;
    *(u32 *)(obj+8)=0x44; mem=sub_08001494(0x400);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+0x10)=mem+0x3FC;
    *(u32 *)(obj+0xC)=(u32)sub_080B5F94; *(u32 *)(obj+0x24)=0;
    sub_08000274_(obj,0,0);
}
void sub_080B640C(void)
{
    u16 *flags=(u16 *)0x030007D4; u32 i;
    for(i=0;i<2;i++) flags[i]=0;
    *(u32 *)0x030007EC=sub_08001494(0x28);
    if(*(u32 *)0x030007EC) *(u32 *)(*(u32 *)0x030007EC+8)=0;
}
void sub_080B6448(u32 a, u32 b)
{
    u8 *obj=*(u8 **)0x030007EC; if(!obj||sub_08000470((u32)obj)||*(u32 *)(obj+8))return;
    u32 mem=sub_08001494(0x400); *(u32 *)(obj+0x20)=mem; if(!mem)return;
    *(u32 *)(obj+0x10)=mem+0x3FC; *(u32 *)(obj+0xC)=(u32)sub_080B6178;
    *(u32 *)(obj+0x24)=0; *(u32 *)(obj+8)=0x3B; sub_08000274(obj,b,a,0);
}
void sub_080B64A4(void)
{
    u8 *base = gUnk_030056F4;
    u32 i;
    for (i = 1; i <= 4; i++)
        *(u16 *)(base + i * 0x60 - 0x20 + 0x7A) |= 1;
}
