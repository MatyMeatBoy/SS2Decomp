#include "global.h"
void sub_0809F4A8(void);

extern s32 gUnk_03000324;

INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809D878);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809E468);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809EDFC);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809EF84);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F018);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F4A8);
void sub_0809F8C8(void) {
    if (M2C_FIELD(gUnk_03000310, s16 *, 0x5C) != 0) {
        sub_0809FAEC();
        sub_0809FA28();
        sub_0809F934();
        sub_08097C6C();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000314);
}
void sub_0809F90C(void) {
    gUnk_0300031C = 1;
}
void sub_0809F918(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000318 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_0809F934(void) {
    if (sub_08000470(gUnk_03000318) != 0) {
        sub_08000E48();
        sub_0800CC18();
        sub_0800115C(0);
        sub_080011E4(0);
        sub_080009C0(0x400, 0, 0);
        sub_0800903C(0, 0, 0, 0, 0, 0);
        sub_0800BD48(2, 1);
        sub_080003A8(gUnk_03000318);
    }
    sub_08001538(gUnk_03000318);
    gUnk_03000318 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809F998);
void sub_0809F9F8(void)
{
    u8 *base = sub_08001494(0xA0);
    u32 i;
    gUnk_03000324 = base;
    if (base != 0) {
        for (i = 0; i < 4; i++)
            *(u32 *)(base + i * 0x28 + 8) = 0;
    }
}
void sub_0809FA28(void)
{
    u8 *entry = *(u8 **)0x03000324;
    u32 i;
    if (entry == 0) return;
    for (i = 0; i < 4; i++, entry += 0x28)
        if (sub_08000470((u32)entry)) sub_080003A8((u32)entry);
    sub_08001538(*(u32 **)0x03000324);
    *(u32 **)0x03000324 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809FA64);
void sub_0809FACC(void)
{
  int new_var;
  s8 *new_var2;
  s32 temp_r0;
  temp_r0 = (gUnk_03000328 = (s32) sub_08001494(0x28U));
  new_var = 0;
  new_var2 = (s8 *) temp_r0;
  if (temp_r0 != new_var)
  {
    *((s32 *) (new_var2 + 8)) = new_var;
  }
}
void sub_0809FAEC(void) {
    if (gUnk_03000328 != 0) {
        if (sub_08000470(gUnk_03000328) != 0) {
            sub_080003A8(gUnk_03000328);
        }
        sub_08001538(gUnk_03000328);
        gUnk_03000328 = 0;
    }
}
void sub_0809FB18(void)
{
    u8 *obj = *(u8 **)0x03000328;
    u32 mem;
    if (obj == 0) return;
    if (!sub_08000470((u32)obj) && *(u32 *)(obj + 8) == 0) return;
    *(u32 *)(obj + 8) = 0x40;
    mem = sub_08001494(0x400);
    *(u32 *)(obj + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(obj + 0x10) = mem + 0x3FC;
    *(u32 *)(obj + 0xC) = (u32)sub_0809F4A8;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274_(obj, 0, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_0809FB6C);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A05B4);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A099C);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A0B44);
void sub_080A0F64(void) {
    if (M2C_FIELD(gUnk_0300032C, s16 *, 0x5C) != 0) {
        sub_080A0FC4();
        sub_080A10D4();
        sub_080A118C();
        sub_08097C6C();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_03000330);
}
void sub_080A0FA8(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_03000334 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A0FC4(void) {
    if (sub_08000470(gUnk_03000334) != 0) {
        sub_080003A8(gUnk_03000334);
    }
    sub_08001538(gUnk_03000334);
    gUnk_03000334 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A0FEC);
void sub_080A104C(void) {
    gUnk_03000339 = 1;
}
void sub_080A1058(void) {
    gUnk_03000339 = 0;
    gUnk_0300033A = 0x14;
}
void sub_080A1070(s8 arg0) {
    gUnk_0300033B = arg0;
}
void sub_080A107C(s8 arg0) {
    gUnk_0300033C = arg0;
}
u8 sub_080A1088(void) {
    return (u8) gUnk_0300033C;
}
void sub_080A1094(void) {
    gUnk_03000338 = 1;
    gUnk_0300033C = 6;
}
void sub_080A10AC(void) {
    gUnk_03000338 = 0;
}
void sub_080A10B8(void)
{
  s32 temp_r0;
  gUnk_03000340 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A10D4(void) {
    if (sub_08000470(gUnk_03000340) != 0) {
        sub_080003A8(gUnk_03000340);
    }
    sub_08001538(gUnk_03000340);
    gUnk_03000340 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A10FC);
void sub_080A1170(void)
{
  int new_var;
  s8 *new_var2;
  s32 temp_r0;
  temp_r0 = (gUnk_03000344 = (s32) sub_08001494(0x28U));
  *((s32 *) (new_var2 = ((s8 *) temp_r0) + (new_var = 8))) = 0;
}
void sub_080A118C(void) {
    if (sub_08000470(gUnk_03000344) != 0) {
        sub_080003A8(gUnk_03000344);
    }
    sub_08001538(gUnk_03000344);
    gUnk_03000344 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A11B4);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1208);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1DA8);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1F88);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A1FF4);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A230C);
void sub_080A2698(void) {
    if (M2C_FIELD(gUnk_03000348, s16 *, 0x5C) != 0) {
        sub_080A1F88();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_0300034C);
}
void sub_080A26D0(void)
{
    u32 i;
    gUnk_03000350 = sub_08001494(0x140);
    for (i = 0; i < 8; i++)
        *(u32 *)((u8 *)gUnk_03000350 + i * 0x28 + 8) = 0;
    gUnk_03000354 = sub_08001494(0x140);
    for (i = 0; i < 8; i++)
        *(u32 *)((u8 *)gUnk_03000354 + i * 0x28 + 8) = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A2720);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A27B8);
INCLUDE_ASM("asm/nonmatchings/code_0809D878", sub_080A35D0);
