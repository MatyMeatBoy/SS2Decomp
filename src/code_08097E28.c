#include "global.h"

void sub_0809A834(void);
void sub_08096FA0(void);

extern s32 gUnk_030002EC;
extern s32 gUnk_030002F0;

extern s32 gUnk_030002D8;

extern s32 gUnk_030002E4;

extern s32 gUnk_030002F4;
extern s32 gUnk_03000308;

extern s32 *gUnk_03000300[];
extern s32 gUnk_030056FC;

INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08097E28);
void sub_08097EB0(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    gUnk_030002B8 = arg3;
    gUnk_030002B6 = arg2;
    gUnk_030002BA = 0;
    gUnk_030002B0 = arg0;
    gUnk_030002B4 = arg1;
}
s16 sub_08097EE4(void) {
    return gUnk_030002BA;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08097EF0);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08097F70);
void sub_08097FE4(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD = 0;
}
u8 sub_08097FF8(void) {
    return gUnk_030002BC;
}
u8 sub_08098004(void) {
    return gUnk_030002BD;
}
void sub_08098010(u8 arg0) {
    gUnk_030002BC = arg0;
    gUnk_030002BD |= 1;
}
void sub_08098028(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD &= 0xFE;
}
void sub_08098044(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_030002C0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_08098060(void) {
    if (sub_08000470(gUnk_030002C0) != 0) {
        sub_080003A8(gUnk_030002C0);
    }
    sub_08001538(gUnk_030002C0);
    gUnk_030002C0 = 0;
}
#ifdef NONMATCHING
void sub_08098088(u32 arg0, u32 arg1, u32 mode)
{
    u8 *task = (u8 *)gUnk_030002C0;
    void *buffer;

    if (sub_08000470((u32)task) == 0 && *(u32 *)(task + 8) != 0)
        return;

    *(u32 *)0x030002C8 = arg0;
    *(u32 *)0x030002CC = arg1;
    buffer = sub_08001494(0x400);
    *(void **)(task + 0x20) = buffer;
    if (buffer == NULL) {
        *(u32 *)(task + 8) = 0;
        return;
    }

    *(void **)(task + 0x10) = (u8 *)buffer + 0x3FC;
    *(u32 *)(task + 0x0C) = (u32)sub_08096FA0;
    *(u32 *)(task + 0x24) = 0;
    *(u32 *)(task + 8) = 0x44;
    sub_08000274(task, (u8)mode);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098088);
#endif
#ifdef NONMATCHING
s32 sub_080980F0(void)
{
    return M2C_FIELD((void *)gUnk_030002C0, u32 *, 8) == 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_080980F0);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098108);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098F2C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809919C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099468);
void sub_08099720(void) {
    if (M2C_FIELD(gUnk_030002D0, s16 *, 0x5C) != 0) {
        sub_08099788();
        sub_080656EC();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002D4);
}
void sub_0809975C(void)
{
    u32 i;
    gUnk_030002D8 = sub_08001494(0xA00);
    for (i = 0; i < 64; i++)
        M2C_FIELD((u8 *)gUnk_030002D8 + i * 0x28, s32 *, 8) = 0;
}
void sub_08099788(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_030002D8;
  for (i = 0, entry = new_var2; i < 64; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002D8);
  gUnk_030002D8 = i;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_080997C0);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099838);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809A5E0);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809A834);
void sub_0809ADE8(void) {
    if (M2C_FIELD(gUnk_030002DC, s16 *, 0x5C) != 0) {
        sub_08097C6C();
        sub_0809AE50();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002E0);
}
void sub_0809AE24(void)
{
    u32 i;
    gUnk_030002E4 = sub_08001494(0xC8);
    for (i = 0; i < 5; i++)
        M2C_FIELD((u8 *)gUnk_030002E4 + i * 0x28, s32 *, 8) = 0;
}
#ifdef NONMATCHING
void sub_0809AE50(void)
{
    u32 i;
    s32 ptr = gUnk_030002E4;
    for (i = 0; i < 5; i++, ptr += 0x28) {
        if (sub_08000470(ptr) != 0)
            sub_080003A8(ptr);
    }
    sub_08001538(gUnk_030002E4);
    gUnk_030002E4 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AE50);
#endif
#ifdef NONMATCHING
void sub_0809AE88(u32 arg0)
{
    u8 *entry = gUnk_030002E4;
    u32 i;
    for (i = 0; i < 5; i++, entry += 0x28) {
        if (sub_08000470(entry) != 0 || *(u32 *)(entry + 8) != 0)
            continue;
        *(u32 *)(entry + 0x20) = sub_08001494(0x400);
        if (*(u32 *)(entry + 0x20) == 0)
            return;
        *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
        *(u32 *)(entry + 0xC) = (u32)sub_0809A834;
        *(u32 *)(entry + 0x24) = 0;
        *(u32 *)(entry + 8) = 0x46;
        sub_08000274(entry, arg0);
        return;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AE88);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AEE8);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C1B4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C4E8);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C8F4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809CC2C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D374);
void sub_0809D558(void) {
    gUnk_030002E8 = 1;
}
s8 sub_0809D564(void) {
    return (s8) (u8) gUnk_030002E8;
}
void sub_0809D574(void)
{
    sub_0805867C(0xE6);
    if (*(s16 *)((u8 *)gUnk_030002EC + 0x5C) != 0) {
        sub_0809D5E4();
        sub_0809D6D8();
        sub_0809D810();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_030002F0);
}
void sub_0809D5B8(void)
{
  int i;
  gUnk_030002F4 = sub_08001494(0x140);
  for (i = 0; i < 8; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_030002F4) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_0809D5E4(void)
{
  u32 i;
  u8 *new_var;
  u8 *entry;
  new_var = (entry = (u8 *) gUnk_030002F4);
  sub_0805867C(0xE6);
  for (i = 0, new_var; i < 8; i++)
  {
    if (sub_08000470(entry) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002F4);
  gUnk_030002F4 = i;
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D620);
void sub_0809D6A8(void)
{
  u8 var_r2;
  void *new_var;
  gUnk_030002F8 = (new_var = sub_08001494(0x78U));
  var_r2 = 0;
  do
  {
    *((s32 *) (((s8 *) ((var_r2 * 0x28) + gUnk_030002F8)) + 8)) = 0;
    var_r2 += 1;
  }
  while (((u32) var_r2) <= 2U);
}
void sub_0809D6D8(void)
{
  s32 var_r4;
  u32 var_r5;
  s32 new_var;
  int new_var2;
  new_var = gUnk_030002F8;
  var_r5 = 0;
  var_r4 = new_var;
  do
  {
    if (sub_08000470(var_r4) != 0)
    {
 do { sub_080003A8(var_r4); } while (0);
    }
    var_r4 += 0x28;
    var_r5 += 1;
  }
  while (var_r5 <= 2U);
  new_var2 = 0;
  sub_08001538(gUnk_030002F8);
  gUnk_030002F8 = new_var2;
}
#ifdef NONMATCHING
void sub_0809D710(void *arg0, u32 arg1)
{
    u8 *entry = gUnk_030002F8;
    u32 i;
    for (i = 0; i < 3; i++, entry += 0x28) {
        if (sub_08000470(entry) != 0 || *(u32 *)(entry + 8) != 0)
            continue;
        *(u32 *)(entry + 0x20) = sub_08001494(0x400);
        if (*(u32 *)(entry + 0x20) == 0)
            return;
        *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
        *(u32 *)(entry + 0xC) = (u32)sub_0809C8F4;
        *(u32 *)(entry + 0x24) = 0;
        *(u32 *)(entry + 8) = 0x46;
        sub_08000274(entry, arg0, arg1);
        return;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D710);
#endif
#ifdef NONMATCHING
void sub_0809D77C(u32 arg0)
{
    u8 *entry = gUnk_03000308;
    u32 i;
    for (i = 0; i < 2; i++, entry += 0x28) {
        if (sub_08000470(entry) != 0 || *(u32 *)(entry + 8) != 0)
            continue;
        *(u32 *)(entry + 8) = (arg0 & 0xFF) + 0x46;
        *(u32 *)(entry + 0x20) = sub_08001494(0x400);
        *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
        *(u32 *)(entry + 0xC) = (u32)sub_0809CC2C;
        *(u32 *)(entry + 0x24) = (u32)sub_0809D848;
        sub_08000274(entry, arg0);
        return;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D77C);
#endif
void sub_0809D7E4(void)
{
    u32 i;
    gUnk_03000308 = sub_08001494(0x50);
    for (i = 0; i < 2; i++)
        M2C_FIELD((u8 *)gUnk_03000308 + i * 0x28, s32 *, 8) = 0;
}
#ifdef NONMATCHING
void sub_0809D810(void)
{
    u8 *entry = gUnk_03000308;
    u32 i;
    for (i = 0; i < 2; i++, entry += 0x28) {
        if (sub_08000470(entry) != 0)
            sub_080003A8(entry);
    }
    sub_08001538(gUnk_03000308);
    gUnk_03000308 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D810);
#endif
void sub_0809D848(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x46;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000300[obj[2]]);
}
