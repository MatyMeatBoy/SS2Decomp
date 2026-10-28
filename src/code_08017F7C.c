#include "global.h"

extern u8 gUnk_03005C60[];
extern u32 gUnk_03005CA0[];
void sub_0801A7AC(void);

extern u16 gUnk_03005C94;
extern u16 gUnk_03005C54;
extern u8 gUnk_03005C40[20];
extern u8 gUnk_03005740[];
extern const u8 gUnk_080B9AD0[];

INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08017F7C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801801C);
void *sub_08019BF8(u16 id)
{
    u8 *entry = (u8 *)gUnk_030056F4;
    u32 i = 0;
    u32 *flags = (u32 *)&gUnk_030056FC;
    u32 one = 1;
    u32 mask = *flags;
    for (; i < 5; i++, entry += 0x2E0)
        if ((mask & (one << i)) != 0 && *(u16 *)(entry + 2) == id)
            return entry;
    return 0;
}
u32 sub_08019C3C(void)
{
    if (gUnk_030056FC != 0) {
        u8 *base = gUnk_030056F4;
        u32 i = 0;
        u32 one = 1;
        u32 mask = gUnk_030056FC;
        u32 step = 0x2E0;
        u8 *entry = base + 0x4A;
        do {
            if ((mask & (one << i)) && *(s16 *)(entry + 0x12) - *(u16 *)entry > 0)
                goto yes;
            i++;
            entry += step;
        } while (i <= 4);
    }
    goto no;
yes:
    return 1;
no:
    return 0;
}
s32 sub_08019C8C(void)
{
    s32 i;
    s32 *flags;
    s32 one;
    s32 active;
    if (sub_0800CDC0()) {
        i = 4;
        flags = &gUnk_030056FC;
        one = 1;
        active = *flags;
        for (; i >= 0; i--)
            if (!(active & (one << i))) return i;
    } else {
        i = 0;
        flags = &gUnk_030056FC;
        one = 1;
        active = *flags;
        for (; i <= 4; i++)
            if (!(active & (one << i))) return i;
    }
    return -1;
}
u32 sub_08019CDC(void)
{
    u32 i = 0;
    do {
        i++;
    } while (i <= 4);
    return i;
}
u32 sub_08019CE8(u8 *obj)
{
    struct State { u8 pad[0x4A]; u16 timer; u8 pad2[0x10]; s16 health; };
    struct State *state = (struct State *)obj;
    state->health = state->health - (0x7FFF & state->timer);
    state->timer = 0;
    if ((state->health & 0x8000) || state->health == 0) {
        *(u16 *)(obj + 0xC) = 0xB;
        state->health = 0;
        return 1;
    }
    return 0;
}
u32 sub_08019D34(value)
u16 value;
{
    u8 *entry;
    u32 i;
    u32 *flags;
    u32 one;
    u32 active;
    if (value == 0) return 0;
    entry = gUnk_030056F4;
    i = 0;
    flags = (u32 *)&gUnk_030056FC;
    one = 1;
    active = *flags;
    for (; i <= 4; i++, entry += 0x2E0) {
        if ((active & (one << i)) && *(u16 *)(entry + 2) == value) return 1;
    }
    return 0;
}
s32 sub_08019D7C(u32 arg0, u32 arg1)
{
    extern u32 activeFlags asm("gUnk_030056F8");
    extern u8 records[] asm("gUnk_03005700");
    u16 key = arg1;
    u32 i = 0;
    u32 active = activeFlags;
    u32 result = 0x40000;
    u32 offset = 0;
    for (; i <= 2; result += 0x10000, offset += 12, i++) {
        if ((active & (1 << i)) && *(u32 *)(records + offset) == arg0 &&
            *(u32 *)(records + 4 + offset) == key && *(u32 *)(records + 8 + offset))
            return result >> 16;
    }
    return 0xFFFF;
}
u32 sub_08019DE0(u32 value)
{
    u8 *entry = gUnk_030056F4;
    u32 i = 0;
    u32 *pf = (u32 *)&gUnk_030056FC;
    u32 one = 1;
    s32 flags = *pf;
    for (; i <= 4; i++, entry += 0x2E0) {
        if (((one << i) & flags) && *(u32 *)(entry + 0x2C) == value) return 1;
    }
    return 0;
}
s32 sub_08019E20(s32 arg0) {
    sub_0800CE30();
    return arg0;
}
s32 sub_08019E30(s32 arg0)
{
  s32 temp_r1;
  s32 var_r4;
  u32 var_r2;
  void *var_r3;
  s32 *new_var;
  var_r3 = gUnk_030056F4;
  var_r4 = 0;
  var_r2 = 0;
  new_var = &gUnk_030056FC;
  do
  {
    temp_r1 = 1 << var_r2;
    if (((*new_var) & temp_r1) && ((*((s32 *) (((s8 *) var_r3) + 0x2C))) == arg0))
    {
      var_r4 |= temp_r1;
    }
    var_r2 += 1;
    var_r3 += 0x2E0;
  }
  while (var_r2 <= 4U);
  return var_r4;
}
u32 sub_08019E74(u32 value)
{
    u32 result = 0;
    u32 i = 0;
    s32 active = gUnk_03005724;
    s32 one = 1;
    u8 **table = (u8 **)&gUnk_030042E8;
    for (; i <= 1; i++) {
        if (((active >> i) & one) && *(u32 *)(*table + i * 8) == value)
            result |= one << i;
    }
    return result;
}
void sub_08019EB8(u16 key, u16 value)
{
    register s32 bit asm("r1");
    u32 i;
    register u8 *entry asm("r3");
    register s32 *flags asm("r2");
    entry = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    bit = 1;
    goto test;
loop:
    i++;
    entry += 0x2E0;
    if (i > 4) goto end;
    bit = 1 << i;
test:
    if (!(*flags & bit) || *(u16 *)(entry + 2) != key) goto loop;
    *(u16 *)(entry + 0x88) = value;
    asm("" : : "r"(entry));
end:
    return;
}
void sub_08019F04(void)
{
    u8 *player;
    u32 i;
    s32 *flags;
    u32 one;
    u32 test;
    u32 offset;
    register u32 field asm("r1");
    *(u16 *)((u8 *)gUnk_03005CF4 + 0x5A) = 1;
    player = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    one = 1;
    test = 4;
    offset = 0x201;
loop:
    {
        s32 bit = one << i;
        if (*flags & bit) {
            field = *(u16 *)(player + 0x7A);
            if (test & field) player[offset] = one;
        }
    }
    i++;
    player += 0x2E0;
    if (i <= 4) goto loop;
}
void sub_08019F60(s16 *data)
{
    struct Rate { u32 a, b, c; };
    extern const struct Rate rates[] asm("gUnk_0848FA0C");
    u32 index = sub_08002164();
    data[3] = data[3] * rates[index].a / 100;
    if (index > 1) data[0] = (data[0] + 2) * rates[index].b / 100;
}
u32 sub_08019FA8(void)
{
    u16 i;
    for (i = 0; i <= 1; i++)
        if (!((gUnk_03005724 >> i) & 1)) break;
    if (i > 1) return 0;
    else return 1;
}
u16 sub_08019FD8(const void *table, u32 index, u32 value)
{
    struct Descriptor { u32 resource; u32 value:8; u32 index:8; u32 sequence:16; } descriptor;
    u16 *sequence;
    extern u32 sub_0806603C(void *);
    descriptor.resource = (u32)table + index * 0x38;
    sequence = (u16 *)((u8 *)gUnk_03005CF4 + 8);
    descriptor.sequence = *sequence;
    descriptor.index = index;
    descriptor.value = value;
    *sequence = (u16)(*sequence + 1) + value;
    sub_0806603C(&descriptor);
    return descriptor.sequence + descriptor.value;
}
s32 sub_0801A040(u16 arg0) {
    return sub_08019D34(arg0);
}
void sub_0801A050(u16 key)
{
    u8 *entry;
    u32 i;
    volatile s32 *flags;
    u32 one;
    register u32 zero asm("ip");
    if (key == 0) return;
    entry = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    one = 1;
    { register u32 z asm("r0") = 0;
    asm("" : "+r"(z));
    zero = z; }
    asm("" : : "r"(zero));
    for (; i <= 4; i++, entry += 0x2E0) {
        s32 bit = one << i;
        if ((*flags & bit) && *(u16 *)(entry + 2) == key) {
            *(u16 *)(entry + 0x7A) |= one;
            return;
        }
    }
}
void sub_0801A0A4(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 2;
}
void sub_0801A0B0(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 0;
}
void sub_0801A0BC(u16 key, u16 value)
{
    u8 *entry;
    u32 i;
    s32 *flags;
    u32 one;
    if (key == 0) return;
    entry = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    one = 1;
    for (; i <= 4; i++, entry += 0x2E0) {
        s32 bit = one << i;
        if ((*flags & bit) && *(u16 *)(entry + 2) == key) {
            entry[0x1DC] = value;
            return;
        }
    }
}
void sub_0801A120(u8 *obj, u32 value, u16 offset)
{
    s16 x, y;
    u32 special;
    if (value & 0x8000) {
        special = 1;
        value &= ~0x8000;
    } else special = 0;
    if (value > 999) value = 999;
    sub_0800BC08((s32)(*(u32 *)(obj + 0x14) << 8) >> 16,
                 (s32)(*(u32 *)(obj + 0x18) << 8) >> 16,
                 &x, &y, 0x30, 0);
    x -= 8;
    if (special)
        sub_08065424(x, y + (s16)offset, value & 0x0FFFFFFF, 3, 4);
    else
        sub_08065424(x, y + (s16)offset, value, 0, 4);
}
u32 sub_0801A1C8(u8 *obj, s32 *distance)
{
    s32 nearest = 0xFFFF;
    s32 selected = -1;
    u32 i = 0;
    u8 **base = (u8 **)&gUnk_030056F4;
    u32 offset = 0;
    s32 *flags = &gUnk_030056FC;
    for (; i <= 4; offset += 0x2E0, i++) {
        s32 bit = 1 << i;
        if (*flags & bit) {
            u8 *other = *base + offset;
            if (other != obj) {
                s32 dx = (*(s32 *)(other + 0x14) - *(s32 *)(obj + 0x14)) >> 8;
                s32 dy = (*(s32 *)(other + 0x18) - *(s32 *)(obj + 0x18)) >> 8;
                u32 length = (u16)Sqrt(dx * dx + dy * dy);
                if (nearest > (s32)length) {
                    nearest = length;
                    selected = i;
                }
            }
        }
    }
    {
        register u32 result asm("r0");
        if (selected != -1) { *distance = nearest; result = (u16)selected; }
        else result = 0xFF;
        return result;
    }
}
s32 sub_0801A270(void)
{
  int new_var;
  int i;
  for (i = 0; i <= 4; i++)
  {
    new_var = gUnk_030056FC & (1 << i);
    if (!new_var)
    {
      return i;
    }
  }

  return -1;
}
void sub_0801A298(u8 *obj, u16 value)
{
    u32 zero;
    if (gUnk_03002344 % 0x19 == *(u16 *)obj * 5) {
        *(u16 *)(obj + 4) = ((s32 (*)(s32, s32, s32, s32, s32))sub_08016C88)(*(s32 *)(obj + 0x14),
                                          *(s32 *)(obj + 0x18),
                                          *(s32 *)(obj + 0x24),
                                          *(s32 *)(obj + 0x28),
                                          (s16)value);
    }
    { u32 next = *(u16 *)(obj + 0x44) + 1;
    zero = 0;
    *(u16 *)(obj + 0x44) = next; }
    if (*(u16 *)(obj + 0x44) > 0xB4) {
        *(u16 *)(obj + 0x44) = zero;
        *(u16 *)(obj + 4) = zero;
    }
}
s32 sub_0801A2F0(u8 *arg0)
{
    register u32 i asm("r3");
    u8 *table;
    register u32 roll asm("r2");
    u8 sum;
    u8 result;
    table = arg0;
    roll = (u8)(sub_080008C8() % 100U);
    result = 0xFF;
    i = 0;
    sum = table[1];
    goto test;
loop:
    i++;
    table += 4;
    if (i > 2) goto end;
    sum += table[1];
test:
    if (roll >= sum) goto loop;
    result = *table;
end:
    return result;
}
void sub_0801A328(u16 x, u16 y, u16 speed, u32 direction, volatile s32 *out)
{
    volatile s32 *output = out;
    register s32 velocity asm("r6") = speed;
    register u32 angleIndex asm("r2") = (u16)direction;
    register s32 posX asm("r4") = (u32)x << 8;
    register s32 posY asm("r5") = (u32)y << 8;
    s32 tempX;
    s32 tempY;
    s16 *sine;
    register u16 *angle asm("r2");
    register u16 *angleBase asm("r0");
    if (0x8000 & velocity) velocity = 0;
    sine = gUnk_080B9704;
    angleBase = gUnk_0847AD0A;
    angle = (u16 *)(angleIndex * 2 + (u32)angleBase);
    tempY = sine[*angle] * velocity + posY;
    output[1] = tempY;
    tempX = gUnk_080B9704[*angle + 0x40] * velocity + posX;
    output[1] = tempY >> 8;
    output[0] = tempX >> 8;
}
void sub_0801A388(u32 index)
{
    struct Entity {
        u8 pad[0x7A];
        u16 flags;
        u8 pad2[0x181];
        u8 state1FD;
        u8 pad3[3];
        u8 state201;
        u8 pad4[0xDE];
    };
    extern struct Entity *entities asm("gUnk_030056F4");
    struct Entity *base = entities;
    struct Entity *entry = (struct Entity *)(index * 0x2E0 + (u32)base);
    entry->flags |= 4;
    entry->state201 = 0;
    entities[index].state1FD = 0xFF;
}
static inline void FlushRows16(u32 index, u32 count)
{
    u32 pending = 0;
    u32 i;
    u32 value;
    void *destination;

    for (i = 0; i < count; i++) {
        value = gUnk_03005C40[index + i];
        if (value == 0) {
            gUnk_03005C40[index + i] = 1;
            pending++;
        } else {
            if (pending != 0) {
                destination = (void *)(0x0600E000 + index * 0x40);
                sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
                index += pending;
                pending = 0;
            }
            index++;
        }
    }
    if (pending != 0) {
        destination = (void *)(0x0600E000 + index * 0x40);
        sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
    }
}
void sub_0801A3D0(const u8 *script, u16 x, u32 row)
{
    register u32 column asm("sl") = x;
    volatile u32 savedRow = (u16)row;
    u16 tile;
    FlushRows16((u16)row, 2);
    tile = (gUnk_03005C54 >> 5) + 0x180;
    while (1) {
        register u32 scratch asm("r1");
        register u32 xOffset asm("r5");
        register u32 rowOffset asm("r3");
        register u32 rowLoad asm("r2");
        register u16 *map asm("r3");
        register u32 mapBaseNext asm("r2");
        register u32 glyph asm("r6");
        u8 *font;
        if (*script == 0xFD) break;
        if (*script > 0xF1) break;
        scratch = (u32)(*script - 1) << 16;
        font = (u8 *)gUnk_03005CA0[0];
        glyph = 0xFF0000;
        glyph &= scratch;
        xOffset = column * 2;
        rowLoad = savedRow;
        rowOffset = rowLoad * 64;
        rowOffset = xOffset + rowOffset;
        scratch = (u32)gUnk_03005740;
        map = (u16 *)(rowOffset + scratch);
        {
            u16 oldTile = tile++;
            scratch = 0xF000;
            *map = oldTile | scratch;
        }
        scratch = savedRow + 1;
        scratch *= 64;
        xOffset += scratch;
        mapBaseNext = (u32)gUnk_03005740;
        xOffset += mapBaseNext;
        {
            u16 oldTile = tile++;
            scratch = 0xF000;
            *(u16 *)xOffset = oldTile | scratch;
        }
        sub_08001348(font + (glyph >> 9), (void *)(0x0600B000 + gUnk_03005C54), 64);
        gUnk_03005C54 += 64;
        column = (u16)(column + 1);
        script++;
    }
}
void sub_0801A500(u32 a, u32 b, u32 c, ...)
{
}
void sub_0801A508(void)
{
    u32 i;
    gUnk_03005C98 = 0;
    gUnk_03005C94 = 0;
    gUnk_03005730 = 0x12;
    sub_0801A558();
    CpuFastSet(gUnk_080B9AD0, (void *)0x0600C000, 0xE0 << 3);
    for (i = 0; i <= 0x13; i++)
        gUnk_03005C40[i] = 1;
}
void sub_0801A558(void)
{
    u8 *flag = gUnk_03005C40;
    u32 i = 0;
    u32 zero;
    for (; i <= 0x13; i++, flag++) {
        if (*flag) {
            zero = 0;
            CpuFastSet(&zero, gUnk_03005740 + i * 0x40, 0x01000010);
            *flag = 0;
        }
    }
    gUnk_03005C54 = 0;
    gUnk_03005C98 = 0;
}
void sub_0801A5A8(const u8 *script, u8 x, u8 row, u8 palette)
{
    u32 offset = row * 64;
    u16 *start = (u16 *)(x * 2 + (u32)gUnk_03005740);
    u16 *dst = (u16 *)(offset + (u32)start);
    u32 bits;
    palette += 0xF;
    if (*script) {
        u16 *base;
        bits = palette << 12;
        base = start;
        do {
            u16 tile = (*script++ + 0x200) | bits;
            if (tile == 0xA) {
                sub_0801A664(row, 1);
                row++;
                tile = *script++ | bits;
                dst = (u16 *)(row * 64 + (u32)base);
            }
            *dst++ = tile;
        } while (*script);
    }
    sub_0801A664(row, 1);
    gUnk_03005C94 = 1;
}
void sub_0801A628(void) {

}
void sub_0801A62C(void) {
    gUnk_03005C98 = 1;
}
s32 sub_0801A638(u8 *p)
{
    s32 n = 0;
    while (1) {
        u8 c = *p;
        if (c == 0xFD) break;
        if (c > 0xF1) break;
        n++;
        p++;
    }
    return n;
}
void sub_0801A650(u32 arg0)
{
  if (((u32) gUnk_03005730) > arg0)
  {
    gUnk_03005730 = (u16) arg0;
  }
}
s32 sub_0801A664(u32 index, u32 count)
{
    u32 pending = 0;
    u32 i;
    u32 value;
    void *destination;

    for (i = 0; i < count; i++) {
        value = gUnk_03005C40[index + i];
        if (value == 0) {
            gUnk_03005C40[index + i] = 1;
            pending++;
        } else {
            if (pending != 0) {
                destination = (void *)(0x0600E000 + index * 0x40);
                sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
                index += pending;
                pending = 0;
            }
            index++;
        }
    }
    if (pending != 0) {
        destination = (void *)(0x0600E000 + index * 0x40);
        sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
    }
}
void sub_0801A6D4(u32 mode)
{
    u8 *base;
    u32 resource;
    switch (mode) {
    case 0: resource = 0x80006; goto load;
    case 1: resource = 0x8004A;
load:
        base = (u8 *)sub_08006EE0(resource, (void *)&gUnk_08518938);
    }
    sub_08000AF0(0x19, base + 0x120, 1);
}
void sub_0801A70C(void)
{
    u32 count, i;
    gUnk_03005C54 = 0;
    count = sub_08007164(4);
    for (i = 0; i < count; i++)
        gUnk_03005CA0[i] = sub_08007290(i | 0x40000);
    sub_08065158(gUnk_03005C60, 0x5004A, 0, -1, 0);
}
void sub_0801A764(const u8 *script, u16 x, u16 y)
{
    u32 count;
    while (1) {
        if (*script == 0xFD) break;
        if (*script > 0xF1) break;
        count = (u16)(*script - 1);
        sub_08065230(gUnk_03005C60, x, y, 0, count);
        x = (u16)(x + 8);
        script++;
    }
}
#ifdef NONMATCHING
void sub_0801A7AC(void)
{
    struct Transition16Display { u8 pad[0x30]; u16 f30, f32, f34, f36, f38, f3A; u8 pad3C[4]; u16 f40, f42, f44; };
    extern struct Transition16Display display16 asm("gUnk_03001250");
    extern s16 flags16 asm("gUnk_03000028");
    extern s16 level16 asm("gUnk_03001294");
    extern s16 displayLevel16 asm("gUnk_03001F40");

    s16 *step;
    struct Transition16Display *screen;
    s16 *savedStep;
    /* These addresses remain live across the yields in both fade loops. */
    u16 *progress, *period;
    s16 *fadeLevel;
    s32 flag2, flag16;
    u32 delta, total;
    s32 signedDelta;
    flags16 = 1;
    step = &gUnk_03000026;
    screen = &display16;
again:
    sub_080003F4(100);
    flag2 = (s16)(flags16 & 2);
    if (flag2 != 0) {
        display16.f40 = 255;
        flag2 = 0;
        if (*step > 0) level16 = flag2;
        else level16 = 16;
        sub_080003F0();
        sub_080009F8(0, 0x2000, 1);
        progress = &gUnk_03000022;
        period = &gUnk_03000020;
        fadeLevel = &level16;
        savedStep = &gUnk_03000026;
fade:
        *fadeLevel = ((s32)(*progress << 4)) / *period;
        delta = *(u16 *)step;
        total = delta + *progress;
        *progress = total;
        signedDelta = (s16)delta;
        if (signedDelta > 0 && *period < (u16)total) goto finished;
        if (signedDelta < 0 && (total & 0x8000)) goto finished;
        sub_080003F0();
        goto fade;
    }
    flag16 = (s16)(flags16 & 16);
    if (flag16 != 0) {
        struct Transition16Display *inner;
        /* Original blend loop retains display+0x44 independently of its base. */
        u16 *blendRegister;
        if (*step > 0) level16 = flag2;
        else level16 = 16;
        inner = &display16;
        blendRegister = &inner->f44;
        progress = &gUnk_03000022;
        period = &gUnk_03000020;
        savedStep = &gUnk_03000026;
blend:
        inner->f40 = 255;
        *blendRegister = ((s32)(*progress << 4)) / *period;
        delta = *(u16 *)step;
        total = delta + *progress;
        *progress = total;
        signedDelta = (s16)delta;
        if (signedDelta > 0 && *period < (u16)total) goto finished;
        if (signedDelta < 0 && (total & 0x8000)) goto finished;
        sub_080003F0();
        goto blend;
finished:
        if (*savedStep < 0) gUnk_03000022 = 0;
    } else {
        gUnk_03000020 = 2;
        if (gUnk_03000026 > 0) {
            screen->f3A = 0x3F3F;
            screen->f38 = flag16;
            screen->f30 = 0xF0;
            screen->f34 = 0xA0;
            sub_080003F0();
            displayLevel16 = flag16;
            sub_08000B38();
            sub_080009C0(0, 0x2000, 1);
            gUnk_03000022 = 1;
            gUnk_03000026 = flag16;
            sub_080003F0();
        } else {
            screen->f3A = flag16;
            screen->f38 = 0x3F3F;
            screen->f30 = flag16;
            screen->f34 = flag16;
            sub_080009F8(0, 0x2000, 1);
            gUnk_03000022 = flag16;
            gUnk_03000026 = -1;
            sub_080003F0();
        }
    }
    { s32 mask = -23; flags16 &= mask; }
    goto again;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A7AC);
#endif
void sub_0801A9BC(void)
{
    u8 *base = (u8 *)gUnk_03001250;
    u16 *field = (u16 *)(base + 0x40);
    u32 zero = 0;
    u8 *obj;
    u32 *task;
    *field = 0xBF;
    *(u16 *)(base + 0x44) = 0x10;
    gUnk_03000024 = zero;
    gUnk_03000020 = zero;
    gUnk_03000022 = zero;
    gUnk_03000026 = zero;
    gUnk_03000028 = zero;
    sub_08000B50();
    obj = sub_08001494(0x400);
    task = &gUnk_03000030;
    task[3] = (u32)sub_0801A7AC;
    task[4] = (u32)obj + 0x3FC;
    task[8] = (u32)obj;
    task[2] = 1;
    task[9] = zero;
    sub_08000274(task, 0);
}
void sub_0801AA34(u16 value)
{
    s32 mask;
    if (gUnk_03000026 < 0 && (gUnk_03000022 & 0x8000) != 0)
        return;
    gUnk_03000026 = -1;
    gUnk_03000020 = value;
    gUnk_03000022 = value;
    sub_08000420(100);
    mask = 0x29;
    gUnk_03000028 = (gUnk_03000028 | 2) & -mask;
}
void sub_0801AA8C(u16 value)
{
    s32 mask;
    if (gUnk_03000026 == 1 && gUnk_03000022 > gUnk_03000020)
        return;
    gUnk_03000026 = 1;
    gUnk_03000020 = value;
    gUnk_03000022 = 0;
    sub_08000420(100);
    mask = 0x29;
    gUnk_03000028 = (gUnk_03000028 | 2) & -mask;
}
s32 sub_0801AAE0(void)
{
  s32 var_r2;
  var_r2 = 0;
  if (!(0x16 & gUnk_03000028))
  {
    var_r2 = 1;
  }
  return var_r2;
}
