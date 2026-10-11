#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FB7C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FC0C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FC80);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FFBC);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080605D0);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08060DB0);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08060E44);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061688);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0806171C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061830);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061910);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061B88);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061E44);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080624D8);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0806335C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080634D8);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080636B0);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08063B80);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08063E30);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0806441C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08064E14);
void sub_0806514C(void) {
    gUnk_03006028 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065158);
void sub_08065204(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0x10) = -1;
    M2C_FIELD(arg0, s32 *, 8) = 0;
    M2C_FIELD(arg0, s32 *, 0) = 0;
    M2C_FIELD(arg0, s32 *, 0xC) = 0;
}
void sub_08065214(void *arg0) {
    s32 temp_r2;

    temp_r2 = M2C_FIELD(arg0, s32 *, 0x14);
    sub_08000AF0(temp_r2 + 0x10, M2C_FIELD(arg0, s32 *, 0xC) + (temp_r2 << 5), M2C_FIELD(arg0, s32 *, 0x18));
}
void sub_08065230(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4) {
    sub_08007CF0(arg1, arg2, arg3, (u16) arg4, 0, arg0 + 0x1C, M2C_FIELD(arg0, s32 *, 8), M2C_FIELD(arg0, s32 *, 0));
}
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065264);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080652E0);
s32 sub_08065370(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    return sub_08008CC4(arg1, arg2, arg3, M2C_FIELD(arg0, s32 *, 8), arg4);
}
s32 sub_08065394(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    return sub_08008D38(arg1, arg2, arg3, M2C_FIELD(arg0, s32 *, 8), arg4);
}
void sub_080653B8(void *arg0, s16 arg1, s16 arg2, s16 arg3)
{
  int new_var;
  new_var = 0x100;
  *((s16 *) (((s8 *) arg0) + 0x2C)) = new_var;
  *((s16 *) (((s8 *) arg0) + 0x30)) = arg1;
  *((s16 *) (((s8 *) arg0) + 0x32)) = arg2;
  *((s16 *) (((s8 *) arg0) + 0x2E)) = arg3;
}
M2C_UNK *sub_080653CC(void) {
    return &gUnk_03005D80;
}
void sub_080653D4(s32 arg0) {
    void *temp_r4;

    temp_r4 = (&((struct Sz40 *)&gUnk_03006110)[arg0]);
    if (sub_08000470(temp_r4) != 0) {
        sub_080003A8((s32) temp_r4);
    }
}
void sub_080653FC(s32 arg0) {
    void *temp_r4;

    temp_r4 = (&((struct Sz40 *)&gUnk_03006160)[arg0]);
    if (sub_08000470(temp_r4) != 0) {
        sub_080003A8((s32) temp_r4);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065424);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065504);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080655CC);
void sub_08065654(void)
{
    u8 *obj=(u8 *)0x03006000; u32 mem;
    do { mem=sub_08001494(0x400); if(!mem)sub_080003F0(); } while(!mem);
    *(u32 *)(obj+0x20)=mem; *(u32 *)(obj+8)=0x34; *(u32 *)(obj+0xC)=(u32)sub_080624D8;
    *(u32 *)(obj+0x10)=mem+0x3FC; *(u32 *)(obj+0x24)=0; sub_08000274(obj);
}
s32 sub_0806569C(void)
{
  M2C_UNK **new_var2;
  M2C_UNK *new_var;
  new_var2 = &new_var;
  new_var = &gUnk_03006000;
  if (sub_08000470(*new_var2) == 0)
  {
    return 0;
  }
  if (new_var2)
  {
    return 1;
  }
  else
  {
    return 1;
  }
}
void sub_080656B8(void *owner)
{
    u8 *obj = sub_08001494(0x4B4);
    u32 i;
    gUnk_0300602C = obj;
    *(void **)obj = owner;
    for (i = 0; i < 30; i++)
        *(u32 *)(obj + 0xC + i * 0x28) = 0;
}
void sub_080656EC(void)
{
    u8 *base = *(u8 **)0x0300602C + 4;
    for (u32 i = 0; i < 30; i++) {
        u8 *entry = base + i * 0x28;
        if (sub_08000470((u32)entry) != 0)
            sub_080003A8((u32)entry);
    }
    u32 ptr = *(u32 *)0x0300602C;
    sub_08001538(ptr);
    *(u32 *)0x0300602C = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065748);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080657C4);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065838);
extern s32 gUnk_03006208;
void sub_080658A0(void)
{
    u32 i;
    gUnk_03006208 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006208 + i * 0x28, s32 *, 8) = 0;
}
void sub_080658CC(void)
{
    u8 *base = *(u8 **)0x03006208;
    for (u32 i = 0; i < 4; i++) {
        u8 *entry = base + i * 0x28;
        while (sub_08000470((u32)entry) != 0)
            sub_080003F0();
    }
    u32 ptr = *(u32 *)0x03006208;
    sub_08001538(ptr);
    *(u32 *)0x03006208 = 0;
}
void sub_08065918(u32 arg1, u32 arg2)
{
    u8 *obj = (u8 *)0x030061E0;
    if (sub_08000470((u32)obj) != 0)
        return;
    *(u32 *)(obj + 8) = 0x3C;
    u32 mem;
    do {
        mem = sub_08001494(0xC00);
        if (mem == 0) sub_080003F0();
    } while (mem == 0);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0xC) = (u32)sub_0806441C;
    *(u32 *)(obj + 0x10) = mem + 0xBFC;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274((u32)obj, arg1, arg2);
}
u32 sub_08065974(void)
{
    u32 count = sub_08002164();
    u8 *entry = (u8 *)gUnk_03003CE0 + 0x148;
    u32 i;
    for (i = 0; i < count; i++, entry += 0x14C)
        if ((*(u8 *)*(u32 *)entry & 0xF) == 0xE)
            return 1;
    return 0;
}
