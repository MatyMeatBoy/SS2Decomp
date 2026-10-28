#include "global.h"

void sub_080605D0(s32 index);

extern s32 gUnk_03006208;

extern void sub_0801A664(s32, s32);
extern u16 digitBasesFB63[] asm("gUnk_084EBD74");
extern u8 tileMap63[] asm("gUnk_03005740");
void sub_0805FB7C(s32 x, s32 y, u32 value, u8 style)
{
    u16 digits[3];
    u16 base;
    u16 *out;
    u32 remainder;
    if (value > 999) value = 999;
    base = digitBasesFB63[style];
    out = (u16 *)(tileMap63 + (y << 6) + x * 2);
    digits[0] = sub_08000498(&value, 100);
    digits[1] = sub_08000498(&value, 10);
    remainder = value;
    digits[2] = remainder;
    *out = base + remainder;
    if (digits[0] != 0) out[-2] = base + digits[0];
    if (digits[0] != 0 || digits[1] != 0) out[-1] = base + digits[1];
    sub_0801A664(y, 1);
}
extern u16 digitBases63[] asm("gUnk_084EBD74");
void sub_0805FC0C(u16 *out, u32 value, u8 index)
{
    u16 digits[3];
    u16 base;
    u32 remainder;
    if (value > 999) value = 999;
    base = digitBases63[index];
    digits[0] = sub_08000498(&value, 100);
    digits[1] = sub_08000498(&value, 10);
    remainder = value;
    digits[2] = remainder;
    *out = base + remainder;
    if (digits[0] != 0) {
        out[-2] = base + digits[0];
        goto tens;
    }
    if (digits[1] != 0) {
tens:
        out[-1] = base + digits[1];
    }
}
#ifdef NONMATCHING
struct IconAsset63 { s32 f0, f4, f8; u8 pad[0x20]; u16 value, step; s16 upper, lower; };
extern struct IconAsset63 iconAssets63[] asm("gUnk_03005DC0");
extern struct IconAsset63 iconOverlay63 asm("gUnk_03005D80");
extern u8 iconData63[] asm("gUnk_03005DDC");
extern void sub_0800BC08(s16, s16, s16 *, s16 *, s32, s32);
extern void sub_08008E74(s32, s32, u16, u16, u8, void *, s32, s32);
extern void sub_08007F0C(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32);
struct IconPosition63 { s32 x, y; };
extern s32 drawIcon63(struct IconPosition63, u16, u16, s32, s32, s32, s32) asm("sub_08007CF0");
void sub_0805FC80(struct IconPosition63 pos, u16 *item, u32 flags)
{
    u16 screenX; s16 screenY;
    u16 alternate = 0;
    u16 overlay = 0;
    u32 group;
    u32 frame;
    u8 *resource;
    u8 *descriptor;
    u32 packed;
    struct IconAsset63 *asset;
    u16 step;
    u32 value;
    s32 worldX, worldY;
    u8 priority;
    switch (*item) {
    case 0: return;
    default: return;
    case 1:
        descriptor = (u8 *)sub_08007290(item[1] | 0x100000) + 0xA8;
        goto packed16;
    case 2:
        resource = (u8 *)sub_08007290(item[1] | 0xB0000);
        descriptor = resource + 0xBE;
        group = *(u16 *)descriptor;
        frame = *descriptor;
        group >>= 8;
        if (((u8 *)item)[8] != 0) goto alt;
        overlay = ((u8 *)item)[7];
        if (overlay == 0) overlay = *(u16 *)(resource + 0xBC);
        break;
    case 3:
        resource = (u8 *)sub_08007290(item[1] | 0xC0000);
        goto equipment;
    case 4:
        resource = (u8 *)sub_08007290(item[1] | 0xD0000);
equipment:
        descriptor = resource + 0xB0;
        group = *(u16 *)descriptor;
        frame = *descriptor;
        group >>= 8;
        if (((u8 *)item)[8] != 0) goto alt;
        overlay = ((u8 *)item)[7];
        break;
    case 5:
        descriptor = (u8 *)sub_08007290(item[1] | 0xE0000) + 0xB0;
        group = *(u16 *)descriptor;
        frame = *descriptor;
        group >>= 8;
        if (((u8 *)item)[8] != 0) {
alt:
            group++;
            alternate++;
        }
        break;
    case 6:
        descriptor = (u8 *)sub_08007290(item[1] | 0xF0000) + 0xAC;
        goto packed16;
    case 7:
        descriptor = (u8 *)sub_08007290(item[1] | 0x110000) + 0xA8;
        goto packed16;
    case 8:
        descriptor = (u8 *)sub_08007290(item[1] | 0x120000) + 0xA0;
packed16:
        packed = *(u16 *)descriptor;
        goto unpack;
    case 9:
        descriptor = (u8 *)sub_08007290(item[1] | 0x150000) + 0xA0;
        packed = *(u32 *)descriptor;
        goto unpack;
    case 10:
        descriptor = (u8 *)sub_08007290(0x160000) + 0x9C;
        packed = *(u32 *)descriptor;
unpack:
        frame = *descriptor;
        group = packed >> 8;
        break;
    }
    if (flags & 1) {
        s32 camera = sub_0800CCCC();
        worldX = pos.x >> 8;
        worldY = pos.y >> 8;
        sub_0800BC08(worldX, worldY, &screenX, &screenY, 16, camera);
        if ((u32)((screenX + 16) << 16) > 0x1080000 || screenY < -16 || screenY > 168)
            return;
        priority = sub_0800BC44(worldX, worldY, sub_0800CCCC());
        sub_08008E74(screenX, screenY, 0, frame, priority, iconData63 + group * 0x34,
            *(s32 *)(iconData63 - 0x14 + group * 0x34), *(s32 *)(iconData63 - 0x1C + group * 0x34));
        return;
    }
    asset = &iconAssets63[group];
    if ((flags & 2) && alternate == 0)
        ((u8 *)asset)[0x25] = 10;
    else
        ((u8 *)asset)[0x25] = 9;
    if ((flags & 8) && overlay != 0) {
        if (overlay == 7) overlay = 6;
        sub_08007CF0(pos.x, pos.y + 8, 4, (u16)(overlay + 11), 0, (s32)((u8 *)&iconOverlay63 + 0x1C), iconOverlay63.f8, iconOverlay63.f0);
    }
    if (flags & 4) {
        step = asset->step;
        value = step + asset->value;
        asset->value = value;
        if ((s32)(step << 16) > 0 && (s16)value > asset->upper)
            asset->step = -step;
        if ((s16)asset->step < 0 && (s16)asset->value < asset->lower)
            asset->step = -asset->step;
        sub_08007F0C(pos.x, pos.y, 0, frame, 0, (u8 *)asset + 0x1C, asset->f8, asset->f0, (s16)asset->value, (s16)asset->value, 255);
    } else {
        drawIcon63(pos, 0, frame, 0, (s32)(iconData63 + group * 0x34),
            *(s32 *)(iconData63 - 0x14 + group * 0x34), *(s32 *)(iconData63 - 0x1C + group * 0x34));
    }
    ((u8 *)&iconAssets63[group])[0x25] = 9;
    ((u8 *)&iconOverlay63)[0x25] = 9;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FC80);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FFBC);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080605D0);
extern u32 taskMem63[] asm("gUnk_03006130");
extern struct Task tasks63[] asm("gUnk_03006110");
extern void sub_080605D0(s32);
void sub_08060DB0(s32 index)
{
    u32 *memOut;
    if (index != 0) {
        tasks63[index].u8 = 0x3C;
    } else {
        tasks63[0].u8 = 0x65;
    }
    memOut = &taskMem63[index * 10];
    while ((*memOut = sub_08001494(0x200)) == 0)
        sub_080003F0();
    tasks63[index].uC = sub_080605D0;
    tasks63[index].u10 = tasks63[index].u20 + 0x1FC;
    tasks63[index].u24 = 0;
    sub_08000274(&tasks63[index], index);
}
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
extern u32 gUnk_084EBD4C[];
void sub_08065424(s32 x, s32 y, s32 number, u32 argStyle, u32 argDigits)
{
    u8 buffer[12];
    s32 value;
    s32 style = (u8)argStyle;
    u32 digits = (u8)argDigits;
    u32 *table;
    u8 *out;
    u32 i;
    s32 started;
    u8 *obj;
    if (number < 0) number = 0x7FFFFFFF;
    switch (style) {
    case 0: style = 0; break;
    case 1: style = 1; break;
    case 2: style = 2; break;
    case 3: style = 13; break;
    }
    value = number;
    table = gUnk_084EBD4C + (10 - digits);
    out = buffer;
    i = 0;
    if (i < digits) {
        do {
            *out = sub_08000498(&value, *table++);
            i++;
            out++;
        } while (i < digits);
    }
    started = 0;
    x -= (digits - 1) * 6;
    out = buffer;
    i = 0;
    if (i < digits) {
        obj = (u8 *)&gUnk_03005D80;
        do {
            if (started != 0 || *out != 0 || i == digits - 1) {
                started = 1;
                sub_08007CF0(x, y, style, *out, 0, (s32)(obj + 0x1C), *(u32 *)(obj + 8), *(u32 *)obj);
            }
            i++;
            x += 6;
            out++;
        } while (i < digits);
    }
}
#ifdef NONMATCHING
extern u32 gUnk_084EBD4C[];
extern u32 gUnk_03005740;
extern void sub_0801A664(s32, s32);
void sub_08065504(s32 x, s32 y, s32 number, u8 style, u8 digits)
{
    u8 buffer[12];
    s32 value;
    u32 *table;
    u8 *out;
    u32 i;
    s32 started;
    s32 column;
    if (number < 0) number = 0x7FFFFFFF;
    value = number;
    table = gUnk_084EBD4C + (10 - digits);
    out = buffer;
    i = 0;
    if (i < digits) {
        do {
            *out = sub_08000498(&value, *table++);
            i++;
            out++;
        } while (i < digits);
    }
    started = 0;
    column = (x + 1) - digits;
    out = buffer;
    i = 0;
    if (i < digits) {
        do {
            if (started != 0 || *out != 0 || i == digits - 1) {
                started = 1;
                *(u16 *)(column * 2 + (y << 6) + (u32)&gUnk_03005740) = *(u16 *)((style * 2) + (u32)&gUnk_084EBD74) + *out;
            }
            i++;
            column++;
            out++;
        } while (i < digits);
    }
    sub_0801A664(y, 1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065504);
#endif
#ifdef NONMATCHING
extern void textDraw66(s32, s32, s32) asm("sub_0801A3D0");
void sub_080655CC(s32 x, s32 y, u16 *data, s32 align)
{
    s32 text;
    s32 base;
    u16 offset;
    if (data != 0) {
        switch ((u32)*data) {
        case 0: return;
        case 1: return;
        case 2: goto draw;
        case 3: goto draw;
        case 4: goto draw;
        case 5: goto draw;
        default: return;
        }
    draw:
        base = sub_08007290(data[2] | 0x130000);
        offset = 0;
        text = base + gUnk_03003470 * 31;
        if (align < 0)
            offset = -(((u32)sub_0801A638((u8 *)text) * 13) >> 1);
        textDraw66(text, (u16)((s16)offset + x), (u16)y);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080655CC);
#endif
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
void sub_080656B8(s32 owner)
{
    s32 *global = &gUnk_0300602C;
    s32 mem;
    s32 offset;
    u32 i;
    mem = sub_08001494(0x4B4);
    *global = mem;
    *(s32 *)mem = owner;
    i = 0;
    offset = 0;
    do {
        *(s32 *)(*global + 0xC + offset) = 0;
        offset += 0x28;
        i++;
    } while (i <= 29);
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
    u32 i = 0;
    u8 *entry;
    if (i < count) {
        entry = (u8 *)gUnk_03003CE0 + 0x148;
        do {
            if (((u32)(*(u8 *)*(u32 *)entry << 28) >> 28) == 14)
                return 1;
            entry += 0x14C;
            i++;
        } while (i < count);
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065974);
#endif
