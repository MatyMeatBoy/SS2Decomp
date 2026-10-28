#include "global.h"

void sub_080605D0(s32 index);

extern s32 gUnk_03006208;

INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FB7C);
#ifdef NONMATCHING
void sub_0805FC0C(u16 *out, u32 value, u32 index)
{
    u32 hundreds;
    u32 tens;
    u16 base = ((const u16 *)gUnk_084EBD74)[(u8)index];
    if (value > 0x3E7)
        value = 0x3E7;
    hundreds = sub_08000498(&value, 0x64);
    tens = sub_08000498(&value, 0xA);
    *out = base + (u16)value;
    if (hundreds != 0) {
        out[-2] = base + (u16)hundreds;
        out[-1] = base + (u16)tens;
    } else if (tens != 0) {
        out[-1] = base + (u16)tens;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FC0C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FC80);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FFBC);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080605D0);
#ifdef NONMATCHING
void sub_08060DB0(s32 index)
{
    u8 *task = (u8 *)&gUnk_03006110 + index * 40;
    u32 mem;

    if (index != 0)
        *(u32 *)(task + 8) = 0x3C;
    else
        *(u32 *)((u8 *)&gUnk_03006110 + 8) = 0x65;

    do {
        mem = sub_08001494(0x200);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);

    *(u32 *)(task + 0x0C) = (u32)sub_080605D0;
    *(u32 *)(task + 0x10) = mem + 0x1FC;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274_(task, index, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08060DB0);
#endif
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
struct Init66 { s32 f0, f4, f8, fC, f10, f14, f18; u8 data[16]; };
s32 sub_08065158(struct Init66 *obj, u32 resource, s32 index, s32 size, s32 alternate)
{
    void *table = &gUnk_08518938;
    s32 mem;
    s32 first;
    s32 second;
    s32 i;
    if (alternate != 0)
        table = &gUnk_08E3FB54;
    obj->f10 = resource;
    obj->f14 = index;
    obj->f18 = size;
    first = sub_08006EE0(resource, table);
    obj->f8 = first;
    if (first == 0) return 0;
    resource = (resource & 0xFFFF) | 0x60000;
    second = sub_08006EE0(resource, table);
    obj->f0 = second;
    if (second == 0) return 0;
    mem = sub_08006EE0((resource & 0xFFFF) | 0x80000, table);
    obj->fC = mem;
    if (mem == 0) return 0;
    if (size >= 0)
        sub_08000AF0(obj->f14 + 0x10, mem + (obj->f14 << 5), obj->f18);
    i = 0;
    do {
        obj->data[i] = i;
        i++;
    } while ((u32)i <= 15);
    sub_080653B8(obj, 0x120, 0xE0, 8);
    return (s32)obj;
}
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
extern void sub_08007F0C(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32);
struct Bounce66 { s32 f0, f4, f8; u8 pad[0x20]; u16 value; u16 step; s16 upper; s16 lower; };
void sub_08065264(struct Bounce66 *obj, s32 x, s32 y, u16 a, u16 b)
{
    u16 step = obj->step;
    u32 value = step + obj->value;
    s16 result;
    obj->value = value;
    if ((s32)(step << 16) > 0 && (s16)value > obj->upper)
        obj->step = -step;
    if ((s16)obj->step < 0 && (s16)obj->value < obj->lower)
        obj->step = -obj->step;
    sub_08007F0C(x, y, a, b, 0, (u8 *)obj + 0x1C, obj->f8, obj->f0, (s16)obj->value, (s16)obj->value, 255);
}
void sub_080652E0(struct Bounce66 *obj, s32 x, s32 y, u16 a, u16 b, u16 c)
{
    u16 step = obj->step;
    u32 value = step + obj->value;
    s16 result;
    obj->value = value;
    if ((s32)(step << 16) > 0 && (s16)value > obj->upper)
        obj->step = -step;
    if ((s16)obj->step < 0 && (s16)obj->value < obj->lower)
        obj->step = -obj->step;
    sub_08007F0C(x, y, a, b, (u8)c, (u8 *)obj + 0x1C, obj->f8, obj->f0, (s16)obj->value, (s16)obj->value, 255);
}
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
struct Task6654 { u32 f0, f4, f8; void (*fC)(); u8 *f10; u32 f14, f18, f1C; u8 *f20; u32 f24; };
extern struct Task6654 task6654 asm("gUnk_03006000");
void sub_08065654(void)
{
    u8 *mem;
    while ((mem = (u8 *)sub_08001494(0x400), task6654.f20 = mem) == 0)
        sub_080003F0();
    task6654.f8 = 0x34;
    task6654.fC = (void (*)())sub_080624D8;
    task6654.f10 = task6654.f20 + 0x3FC;
    task6654.f24 = 0;
    sub_08000274(&task6654);
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
#ifdef NONMATCHING
void sub_080656B8(void *owner)
{
    u8 *obj = sub_08001494(0x4B4);
    u32 i;
    gUnk_0300602C = obj;
    *(void **)obj = owner;
    for (i = 0; i < 30; i++)
        *(u32 *)(obj + 0xC + i * 0x28) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080656B8);
#endif
void sub_080656EC(void)
{
    u8 *base = (u8 *)gUnk_0300602C + 4;
    u32 i = 0;
    u32 result;
    do {
        while ((result = sub_08000470((u32)(base + i * 0x28))) != 0)
            sub_080003A8((u32)(base + i * 0x28));
        i++;
    } while (i <= 29);
    sub_08001538(gUnk_0300602C);
    gUnk_0300602C = result;
}
void sub_08065748(u32 a, u32 b, u32 c)
{
    u32 result;
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_0300602C + 4;
    i = 0;
    while (1) {
        if (i > 29) return;
        if (sub_08000470((u32)entry) == 0) {
            result = *(u32 *)(entry + 8);
            if (result == 0) break;
        }
        i++;
        entry += 0x28;
    }
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)sub_080634D8;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = result;
    sub_08000274(entry, (b << 16) | a, i | (c << 16));
}
extern s32 gUnk_03006030;
void sub_080657C4(u32 a, u32 mode)
{
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_03006030;
    i = 0;
    while (1) {
        if (i > 3) return;
        if (sub_08000470((u32)entry) == 0) break;
        i++;
        entry += 0x28;
    }
    while ((mem = sub_08001494(0x400), *(u32 *)(entry + 0x20) = mem) == 0)
        sub_080003F0();
    *(u32 *)(entry + 8) = 0x3C;
    switch (mode) {
    case 0: *(u32 *)(entry + 0xC) = (u32)sub_080636B0; break;
    case 1: *(u32 *)(entry + 0xC) = (u32)sub_08063B80; break;
    }
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274(entry, a);
}
void sub_08065838(u32 a, u32 b)
{
    u32 result;
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_03006208;
    i = 0;
    while (1) {
        if (i > 3) return;
        result = sub_08000470((u32)entry);
        if (result == 0) break;
        i++;
        entry += 0x28;
    }
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)sub_08065BD0;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = result;
    sub_08000274(entry, a, b);
}
void sub_080658A0(void)
{
    u32 i;
    gUnk_03006208 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006208 + i * 0x28, s32 *, 8) = 0;
}
void sub_080658CC(void)
{
    s32 base = gUnk_03006208;
    u32 i = 0;
    u32 result;
    do {
        while ((result = sub_08000470(i * 0x28 + base)) != 0)
            sub_080003F0();
        i++;
    } while (i <= 3);
    sub_08001538(gUnk_03006208);
    gUnk_03006208 = result;
}
void sub_08065918(u32 a, u32 b)
{
    u8 *mem;
    if (sub_08000470((u32)&gUnk_030061E0) == 0) {
        gUnk_030061E0.f8 = 0x3C;
        while ((mem = (u8 *)sub_08001494(0xC00), gUnk_030061E0.f20 = mem) == 0)
            sub_080003F0();
        gUnk_030061E0.fC = (void (*)())sub_0806441C;
        gUnk_030061E0.f10 = gUnk_030061E0.f20 + 0xBFC;
        gUnk_030061E0.f24 = 0;
        sub_08000274(&gUnk_030061E0, a, b);
    }
}
#ifdef NONMATCHING
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
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065974);
#endif
