#include "global.h"
extern u8 *gA03000370[] asm("gUnk_03000370");
extern u8 gA030003F4[] asm("gUnk_030003F4");
extern u8 gA030003F8[] asm("gUnk_030003F8");
extern void sub_080A47A0();
extern struct TaskP *gTP03000360 asm("gUnk_03000360");
extern void sub_080A4AD0();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTP03000358 asm("gUnk_03000358");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void scrollA74E8(u32, s32, u32) asm("sub_0800BBD8");
extern void waveA74E8(s32,s32,s32,u16,u16,s32) asm("sub_0800903C");
extern void sub_080A6BE8(void);
void sub_080A47A0(void);
void sub_080A74E8(void);

extern s32 gUnk_0300035C;
extern s32 *gUnk_03000370[];
extern u8 gUnk_030003F4[];
extern u8 gUnk_030003F8[];
extern s32 gUnk_030003E8;
extern s32 gUnk_03000400;
extern s32 gUnk_03000404;
extern s32 gUnk_03000414;

extern s32 gUnk_03000408;
void sub_080A68B0(void);
extern s32 gUnk_0300040C;

INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A3D2C);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4520);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A47A0);
void sub_080A49A8(void)
{
    sub_0805867C(0xDF);
    if (*(s16 *)((u8 *)gUnk_03000368 + 0x5C) != 0) {
        sub_080A4BFC();
        sub_080A4B10();
        sub_080A4A54();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_030003E8);
}
#ifdef NONMATCHING
void sub_080A49EC(void)
{
    u32 i;
    u32 task;

    *(u8 *)0x030003EA = 0;
    *(u8 *)0x030003F0 = 0;
    *(u8 *)0x030003EF = 0;
    *(u8 *)0x030003F2 = 0;
    *(u8 *)0x030003F1 = 0;
    for (i = 0; i <= 2; i++) {
        *(u8 *)(0x030003EC + i) = 0;
        *(u8 *)(0x030003F8 + i) = 0;
    }
    task = (u32)sub_08001494(0x28);
    gUnk_03000358 = task;
    *(u32 *)(task + 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A49EC);
#endif
void sub_080A4A54(void) {
    if (sub_08000470(gUnk_03000358) != 0) {
        sub_080003A8(gUnk_03000358);
    }
    sub_08001538(gUnk_03000358);
    gUnk_03000358 = 0;
}
void sub_080A4A7C(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000358) == 0 && gTP03000358->f8 != 0)
        return;
    gTP03000358->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP03000358;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A35D0;
    t->f24 = (u32)sub_080A4AD0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A4AD0(void) {
    gUnk_030056FC &= ~2;
}
void sub_080A4AE4(void)
{
  int i;
  gUnk_0300035C = sub_08001494(0x78);
  for (i = 0; i < 3; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_0300035C) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_080A4B10(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_0300035C;
  for (i = 0, entry = new_var2; i < 3; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_0300035C);
  gUnk_0300035C = i;
}
void sub_080A4B48(s32 arg0)
{
  u16 argIndex = arg0;
  u8 i;
  u8 *entry = (u8 *) gUnk_0300035C;
  for (i = 0; i <= 2; i++, entry += 0x28)
  {
    u32 mem;
    if (sub_08000470((u32) entry) != 0)
    {
      continue;
    }
    if ((*((s32 *) (((s8 *) entry) + 8))) != 0)
    {
      continue;
    }
    *((s32 *) (((s8 *) entry) + 8)) = argIndex + 0x46;
    mem = sub_08001494(0x400);
    *((s32 *) (((s8 *) entry) + 0x20)) = mem;
    *((s32 *) (((s8 *) entry) + 0x10)) = mem + 0x3FC;
    *((s32 *) (((s8 *) entry) + 0xC)) = (s32) sub_080A3D2C;
    *((s32 *) (((s8 *) entry) + 0x24)) = (s32) sub_080A4BB0;
    sub_08000274((s32 *) entry, argIndex);
    break;
  }

}
void sub_080A4BB0(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x46;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000370[obj[2]]);
}
void sub_080A4BE0(void)
{
  s8 *new_var;
  s32 temp_r0;
  temp_r0 = (gUnk_03000360 = (s32) sub_08001494(0x28U));
  new_var = (s8 *) temp_r0;
  *((s32 *) (new_var + 8)) = 0;
}
void sub_080A4BFC(void) {
    if (sub_08000470(gUnk_03000360) != 0) {
        sub_080003A8(gUnk_03000360);
    }
    sub_08001538(gUnk_03000360);
    gUnk_03000360 = 0;
}
void sub_080A4C24(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000360) == 0 && gTP03000360->f8 != 0)
        return;
    gTP03000360->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP03000360;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A47A0;
    t->f24 = 0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A4C74(u8 arg0, u8 arg1) {
    if (gUnk_030003F1 != 0xFF) {
        gUnk_030003F2 = gUnk_030003F1;
    }
    gUnk_030003F1 = arg0;
    M2C_FIELD(gUnk_03000368, s16 *, 8) = (s16) arg1;
}
void sub_080A4CA8(u8 index, u32 a, u32 b, u8 value)
{
    gA030003F8[index] = a;
    gA030003F4[index] = b;
    *(u16 *)(gA03000370[index] + 8) = value;
}
void sub_080A4CDC(s8 arg0, s8 arg1) {
    gUnk_030003FB = arg1;
    gUnk_030003FC = arg0;
}
void sub_080A4CF0(s8 arg0) {
    gUnk_030003EF = arg0;
}
void sub_080A4CFC(s8 arg0) {
    gUnk_030003F0 = arg0;
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4D08);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6258);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6510);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A66E0);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A68B0);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6BE8);
#ifdef NONMATCHING
extern u16 taskIndexA705C asm("gUnk_03000404");
extern s32 gUnk_03000414;
extern void callA705C_0800BC08(s32,s32,s16*,s16*,s32,s32) asm("sub_0800BC08");
extern void callA705C_08007870(s16,s16,s32,u16,s32,void*,s32,s32) asm("sub_08007870");
extern u32 callA705C_08065158(void*,s32,u16,s32,s32) asm("sub_08065158");
extern s32 callA705C_0801ED8C(s32,void*) asm("sub_0801ED8C");
extern s32 callA705C_08096594(s32) asm("sub_08096594");
extern s8 taskFlagA705C asm("gUnk_03000407");
s32 sub_080A705C(void) {
    u8 stack[0x22C];
    s16 temp_r1_3;
    s16 temp_r4_6;
    s16 temp_r4_8;
    s32 *temp_r4_2;
    s32 *temp_r5;
    s32 *temp_r5_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r1;
    s32 temp_r1_5;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_3;
    s32 temp_r4_7;
    s32 temp_r5_3;
    s32 temp_r6;
    s32 var_r4;
    struct Player *temp_r1_2;
    u16 temp_r4_5;
    u8 *temp_r2;
    u8 *temp_r3_3;
    u8 temp_r0;
    u8 temp_r0_5;
    u8 temp_r0_8;
    u8 temp_r0_9;
    u8 var_r0;
    u8 var_r9;
    u8 var_r9_2;
    u8 var_r9_3;
    void *temp_r1_4;
    void *temp_r4;
    void *temp_r4_4;
    void *temp_r6_2;

    (M2C_FIELD(stack, u8 * *, 0x210)) = gUnk_03000400 + 0x204;
    callA705C_08065158(&(M2C_FIELD(stack, s32 *, 0x10)), 0x5000F, taskIndexA705C, -1, 1);
    M2C_FIELD(&(M2C_FIELD(stack, s32 *, 0x10)), s8 *, 0x1C) = (s8) taskIndexA705C;
    var_r9 = 0;
    (M2C_FIELD(stack, u8 * *, 0x228)) = &(M2C_FIELD(stack, u8 *, 0x44)) + 8;
    do {
        temp_r1 = var_r9 * 0x14;
        temp_r4 = &(M2C_FIELD(stack, u8 *, 0x44)) + temp_r1;
        M2C_FIELD(temp_r4, s8 *, 0x10) = 1;
        temp_r3 = var_r9 * 8;
        temp_r0_2 = M2C_FIELD(gUnk_03000400, s32 *, 0x14);
        M2C_FIELD(temp_r4, s32 *, 0) = temp_r0_2;
        *(s32 *)((u8 *)&(M2C_FIELD(stack, s32 *, 0x194)) + temp_r3) = temp_r0_2;
        temp_r0_3 = M2C_FIELD(gUnk_03000400, s32 *, 0x18);
        *(s32 *)((M2C_FIELD(stack, u8 * *, 0x224)) + temp_r1) = temp_r0_3;
        *(s32 *)((M2C_FIELD(stack, u8 * *, 0x218)) + temp_r3) = temp_r0_3;
        *(s32 *)((M2C_FIELD(stack, u8 * *, 0x228)) + temp_r1) = temp_r1 + 0x1E;
        M2C_FIELD(temp_r4, s8 *, 0x11) = 1;
        *(&(M2C_FIELD(stack, u8 *, 0x1F4)) + var_r9) = 0;
        M2C_FIELD(temp_r4, s16 *, 0xE) = 0;
        M2C_FIELD(temp_r4, s16 *, 0xC) = 0;
        *(&(M2C_FIELD(stack, u8 *, 0x200)) + var_r9) = 0x18;
        temp_r0 = var_r9 + 1;
        var_r9 = temp_r0;
    } while ((u32) temp_r0 <= 0xBU);
    sub_0805865C(0x1A2);
    gUnk_03000414 = 0;
loop_3:
    var_r9_2 = 0;
loop_4:
    temp_r6 = var_r9_2 * 0x14;
    temp_r4_2 = (M2C_FIELD(stack, u8 * *, 0x228)) + temp_r6;
    temp_r0_4 = *temp_r4_2;
    (M2C_FIELD(stack, s32 *, 0x21C)) = var_r9_2 * 4;
    if (temp_r0_4 != 0) {
        *temp_r4_2 = temp_r0_4 - 1;
        temp_r1_2 = &gUnk_03003CE0[callA705C_08096594(0)];
        temp_r3_2 = var_r9_2 * 8;
        *(s32 *)((u8 *)&(M2C_FIELD(stack, s32 *, 0x134)) + temp_r3_2) = ((u16) M2C_FIELD(M2C_FIELD(temp_r1_2, void **, 0x148), u16 *, 0) >> 4) << 8;
        *(s32 *)((u8 *)&(M2C_FIELD(stack, s32 *, 0x138)) + temp_r3_2) = (u32) (M2C_FIELD(M2C_FIELD(temp_r1_2, void **, 0x148), u16 *, 2) << 0x14) >> 0xC;
        if (*temp_r4_2 != 0) {

        } else {
            sub_0805865C(0x1A2);
        }
    } else {
        temp_r3_3 = &(M2C_FIELD(stack, u8 *, 0x1F4)) + var_r9_2;
        if (*temp_r3_3 != 0) {

        } else {
            temp_r2 = &(M2C_FIELD(stack, u8 *, 0x200)) + var_r9_2;
            temp_r0_5 = *temp_r2;
            if (temp_r0_5 != 0) {
                *temp_r2 = temp_r0_5 - 1;
                temp_r5 = (M2C_FIELD(stack, u8 * *, 0x214)) + temp_r6;
                temp_r4_3 = var_r9_2 * 8;
                *temp_r5 += (s32) (*(s32 *)((u8 *)&(M2C_FIELD(stack, s32 *, 0x134)) + temp_r4_3) - *(s32 *)((u8 *)&(M2C_FIELD(stack, s32 *, 0x194)) + temp_r4_3)) / 24;
                temp_r5_2 = (M2C_FIELD(stack, u8 * *, 0x224)) + temp_r6;
                *temp_r5_2 += (s32) (*(s32 *)((u8 *)&(M2C_FIELD(stack, s32 *, 0x138)) + temp_r4_3) - *(s32 *)((M2C_FIELD(stack, u8 * *, 0x218)) + temp_r4_3)) / 24;
            } else {
                *temp_r3_3 = 1;
                temp_r4_4 = (M2C_FIELD(stack, u8 * *, 0x214)) + temp_r6;
                M2C_FIELD(temp_r4_4, u8 *, 0x11) = temp_r0_5;
                temp_r4_5 = ((s32) M2C_FIELD(temp_r4_4, s32 *, 0) >> 8) - ((s32) *(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x8C) >> 8);
                temp_r4_6 = (s16) temp_r4_5;
                temp_r1_3 = (((s32) *(s32 *)((M2C_FIELD(stack, u8 * *, 0x224)) + temp_r6) >> 8) + 8) - ((s32) *(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x90) >> 8);
                if ((u32) Sqrt((temp_r4_6 * temp_r4_6) + (temp_r1_3 * temp_r1_3)) > 0xBU) {

                } else if (sub_0800CDF8() != 0) {

                } else if (sub_0800CD8C() != 0) {

                } else if (sub_0800CCCC() != 0) {

                } else if (M2C_FIELD(gUnk_03000400, u16 *, 0xC) == 0xB) {

                } else if (*(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30) & 0x2000) {

                } else if ((M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u8 *, 0x68) != 0) && (M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x20) != 0xE) && (M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x20) != 0xB) && (M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x20) != 0xC) && (*(s32 *)((M2C_FIELD(gUnk_03000400, u16 *, 0) * 4) + (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0xE4) != M2C_FIELD(gUnk_03000400, s32 *, 0x50))) {
                    M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), s16 *, 0x20) = 0xA;
                    M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), s16 *, 0xB0) = 0xFFFE;
                    temp_r5_3 = sub_080020F4();
                    temp_r4_7 = gUnk_03000400;
                    temp_r1_4 = (0x14C * temp_r5_3) + (u8 *)gUnk_03003CE0;
                    M2C_FIELD(temp_r1_4, u16 *, 0x88) = (u16) (callA705C_0801ED8C(temp_r4_7, (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0) + M2C_FIELD(temp_r1_4, u16 *, 0x88));
                    temp_r0_6 = M2C_FIELD(gUnk_03000400, s32 *, 0x50);
                    *(s32 *)((M2C_FIELD(gUnk_03000400, u16 *, 0) * 4) + (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0xE4) = temp_r0_6;
                    M2C_FIELD(gUnk_03000400, s32 *, 0x50) = (s32) (temp_r0_6 + 1);
                    temp_r4_8 = M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), s16 *, 0xC4);
                    if (((s32) temp_r4_8 > (s32) M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x88)) && ((sub_08015C14(), taskFlagA705C = 0, (sub_0800CE68() != 0)) || (sub_0800CC98() != 0))) {
                        sub_0800D038();
                    }
                    gUnk_03000414 = *(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x90) + 0xFFFFF800;
                }
            }
        }
    }
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
        temp_r0_7 = sub_0800CD34();
        if (temp_r0_7 == 0) {
            sub_08000AF0(taskIndexA705C + 0x10, (M2C_FIELD(stack, s32 *, 0x1C)) + (M2C_FIELD((M2C_FIELD(stack, u8 * *, 0x210)), u16 *, 0xD6) << 5), 1U);
            temp_r1_5 = ((M2C_FIELD(stack, s32 *, 0x21C)) + var_r9_2) * 4;
            temp_r6_2 = (M2C_FIELD(stack, u8 * *, 0x220)) + temp_r1_5;
            callA705C_0800BC08((s32) (M2C_FIELD(temp_r6_2, s32 *, 0) << 8) >> 0x10, (s32) (*(s32 *)((M2C_FIELD(stack, u8 * *, 0x224)) + temp_r1_5) << 8) >> 0x10, &(M2C_FIELD(stack, s16 *, 0x20C)), &(M2C_FIELD(stack, s16 *, 0x20E)), temp_r0_7, temp_r0_7);
            sub_08065370(&(M2C_FIELD(stack, s32 *, 0x10)), M2C_FIELD(temp_r6_2, u8 *, 0x10) + 5, (s32) (temp_r6_2 + 0xC), (s32) (temp_r6_2 + 0xE), 1);
            callA705C_08007870((M2C_FIELD(stack, s16 *, 0x20C)), (M2C_FIELD(stack, s16 *, 0x20E)), M2C_FIELD(temp_r6_2, u8 *, 0x10) + 5, M2C_FIELD(temp_r6_2, u16 *, 0xC), temp_r0_7, &(M2C_FIELD(stack, u8 *, 0x2C)), (M2C_FIELD(stack, s32 *, 0x18)), (M2C_FIELD(stack, s32 *, 0x10)));
        }
    }
    temp_r0_8 = var_r9_2 + 1;
    var_r9_2 = temp_r0_8;
    if ((u32) temp_r0_8 <= 0xBU) {
        goto loop_4;
    }
    var_r4 = 0;
    var_r9_3 = 0;
    var_r0 = M2C_FIELD((M2C_FIELD(stack, u8 * *, 0x220)), u8 *, 0x11);
loop_44:
    if (var_r0 != 0) {
        var_r4 = 1;
    } else {
        temp_r0_9 = var_r9_3 + 1;
        var_r9_3 = temp_r0_9;
        if ((u32) temp_r0_9 <= 0xBU) {
            var_r0 = M2C_FIELD(((M2C_FIELD(stack, u8 * *, 0x220)) + (((temp_r0_9 * 4) + var_r9_3) * 4)), u8 *, 0x11);
            goto loop_44;
        }
    }
    sub_080003F0();
    if (var_r4 != 0) {
        goto loop_3;
    }
    sub_08097A38(0U);
    M2C_FIELD((void *) sub_0800048C(), s32 *, 8) = var_r4;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A705C);
#endif
void sub_080A74E8(void)
{
    s32 x = 0;
    s32 y = 0;
    s32 dx = 0x2AA;
    s32 dy = 0x88;
    u8 index = 0;
loop:
    {
        s32 angle;
        u32 angleOffset;
        u16 inverseOffset;
        x += dx;
        y += dy;
        angle = gUnk_080B9704[index] >> 6;
        angleOffset = (u16)(angle + 7);
        inverseOffset = 15 - angle;
        index++;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            waveA74E8(2, 0x3C, 1, angleOffset, inverseOffset, 0);
            scrollA74E8(1, x >> 8, 0);
            scrollA74E8(3, y >> 8, 0);
        }
        sub_080003F0();
        goto loop;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A756C);
void sub_080A7DEC(void)
{
    if (*(s16 *)((u8 *)gUnk_03000400 + 0x5C) != 0) {
        sub_080A7E94();
        sub_080A7F5C();
        sub_080A8014();
        sub_080A80D8();
        sub_0805867C(0x1A1);
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_03000404);
}
void sub_080A7E38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
    gUnk_030056FC = 0;
}
void sub_080A7E68(void)
{
  int new_var;
  gUnk_03000408 = sub_08001494(0x140);
  new_var = 0;
  for (new_var = new_var; new_var < 8; new_var++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_03000408) + (0x28 * new_var))) + 8)) = 0;
  }

}
void sub_080A7E94(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_03000408;
  for (i = 0, entry = new_var2; i < 8; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_03000408);
  gUnk_03000408 = i;
}
void sub_080A7ECC(u16 arg0)
{
    u8 *entry = (u8 *)gUnk_03000408;
    u8 i = 0;
    u32 memory;
    goto check;
    do {
next:
        i++;
        entry += 0x28;
check:
        if (i > 7) return;
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            goto next;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
    } while (0);
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A68B0;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274((M2C_UNK *)entry,arg0);
}
void sub_080A7F30(void)
{
  int i;
  gUnk_0300040C = sub_08001494(0x50);
  for (i = 0; i < 2; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_0300040C) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_080A7F5C(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_0300040C;
  for (i = 0, entry = new_var2; i < 2; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_0300040C);
  gUnk_0300040C = i;
}
void sub_080A7F94(u16 arg0)
{
    u8 *entry = (u8 *)gUnk_0300040C;
    u8 i = 0;
    u32 memory;
    goto check;
    do {
next:
        i++;
        entry += 0x28;
check:
        if (i > 1) return;
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            goto next;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
    } while (0);
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A6BE8;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274_(entry,arg0,0);
}
void sub_080A7FF8(void)
{
  s32 temp_r0;
  gUnk_03000410 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A8014(void) {
    if (sub_08000470(gUnk_03000410) != 0) {
        sub_080003A8(gUnk_03000410);
    }
    sub_08001538(gUnk_03000410);
    gUnk_03000410 = 0;
}
void sub_080A803C(void)
{
    u32 memory;
    u8 *entry;
    if (sub_08000470(gUnk_03000410) == 0 && *(u32 *)(gUnk_03000410 + 8) != 0)
        return;
    memory = sub_08001494(0x400);
    entry = (u8 *)gUnk_03000410;
    *(u32 *)(entry + 0x20) = memory;
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A705C;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274_(entry, 0, 0);
}
s32 sub_080A8090(void *arg0)
{
    u32 value = gUnk_03000414;
    if (value == 0)
        value = 0x4800;
    *(u32 *)((u8 *)arg0 + 4) = value;
    if (*(u32 *)((u8 *)gUnk_03000410 + 8) != 0) return 0;
    else return 1;
}
void sub_080A80BC(void)
{
  s32 temp_r0;
  gUnk_03000418 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A80D8(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_03000418) != 0) {
        sub_080003A8(gUnk_03000418);
    }
    sub_08001538(gUnk_03000418);
    gUnk_03000418 = 0;
}
void sub_080A8114(void)
{
    u32 memory;
    u8 *entry;
    if (sub_08000470(gUnk_03000418) == 0 && *(u32 *)(gUnk_03000418 + 8) != 0)
        return;
    *(u32 *)(gUnk_03000418 + 8) = 0x44;
    memory = sub_08001494(0x200);
    entry = (u8 *)gUnk_03000418;
    *(u32 *)(entry + 0x20) = memory;
    *(u32 *)(entry + 0x10) = memory + 0x1FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A74E8;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274_(entry, 0, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8164);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8F90);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A9100);
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A92C0);
