#include "global.h"
struct Entry61 { u32 words[4]; };

void sub_0805A630(s32 arg0) {
    sub_0802413C(arg0, 3);
}
void sub_0805A63C(s32 arg0) {
    sub_0802413C(arg0, 4);
}
void sub_0805A648(s32 arg0) {
    sub_0802413C(arg0, 5);
}
void sub_0805A654(s32 arg0) {
    sub_0802413C(arg0, 6);
}
void sub_0805A660(s32 arg0) {
    sub_0802413C(arg0, 7);
}
void sub_0805A66C(void)
{
    u32 i = 0;
    struct GameState **owner = &gGameState;
    u32 offset = 0x1834;
    for (; i <= 0x1F; offset += 0x28, i++)
        if (sub_08000470((u32)*owner + offset)) sub_080003A8((u32)*owner + offset);
}
void sub_0805A6A0(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFEFF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
void sub_0805A6B8(void *arg0)
{
    u32 i;
    for (i = 0; i < M2C_FIELD(arg0, u32 *, 0xC); i++)
        sub_080003F0();
    ((void (*)(s32, s32))M2C_FIELD(arg0, u32 *, 0))(M2C_FIELD(arg0, s32 *, 4), M2C_FIELD(arg0, s32 *, 8));
}
s32 sub_0805A6DC(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 7) & 1;
}
void sub_0805A6F0(void)
{
    gGameState->flags |= 0x80;
}
void sub_0805A704(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFF7F & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
u32 sub_0805A71C(u32 key, u16 value)
{
    extern u32 activeSlots asm("gUnk_03005CFC");
    extern u8 slotRecords[] asm("gUnk_03005D00");
    register u32 i asm("r1") = 0;
    register u32 flags asm("r5") = activeSlots;
    register u32 result asm("r4") = 0x40000;
    register u32 offset asm("r3") = 0;
loop:
    if (flags & (1u << i)) {
        register u32 base asm("r2") = (u32)slotRecords;
        register u32 address asm("r0");
        address = offset + base;
        if (*(u32 *)address != key) goto next;
        address = base + 4;
        address = offset + address;
        if (*(u32 *)address != value) goto next;
        address = base + 8;
        address = offset + address;
        if (*(u32 *)address != 0) return result >> 16;
    }
next:
    result += 0x10000;
    offset += 12;
    i++;
    if (i <= 2) goto loop;
    return 0xFFFF;
}
void sub_0805A780(void *target)
{
    u8 *base = (u8 *)gGameState;
    u8 *entry = base + 0x7A4;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (entry + 0x48 == (u8 *)target) {
            sub_08028498(*(u16 *)(entry + 0x40));
            *(u32 *)((u8 *)gGameState + 0x54) &= ~(1u << i);
        }
    }
}
u32 sub_0805A7C4(u32 id, u32 x, u32 y)
{
    u32 i;
    u32 mem;
    register u32 one asm("r3");
    register u8 *base asm("r0") = (u8 *)gGameState;
    register u32 offset asm("r1") = 0x7A4;
    u8 *entry = base + offset;
    u8 *task;
    register u8 *owner asm("r2");
    i = 0;
    offset += 0x48;
    task = base + offset;
    goto search;
next:
    i++; entry += 0x70; task = entry + 0x48;
search:
    if (i > 0xE) return 0;
    if (sub_08000470((u32)task) != 0) goto next;
    owner = (u8 *)gGameState;
    one = 1;
    *(u32 *)(owner + 0x54) |= one << i;
    *(u32 *)entry = *(u32 *)(owner + 0x4C);
    (*(u32 *)(owner + 0x4C))++;
    *(u32 *)(entry + 4) = id;
    *(u32 *)(entry + 0x3C) = one;
    *(u32 *)(entry + 8) = x << 8;
    *(u32 *)(entry + 0xC) = y << 8;
    *(u32 *)(entry + 0x50) = 0x3C;
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x68) = mem;
    *(u32 *)(entry + 0x54) = (u32)sub_080284F4;
    *(u32 *)(entry + 0x58) = mem + 0x3FC;
    *(u32 *)(entry + 0x6C) = (u32)sub_0805A780;
    sub_08000274((u32)task, (u32)entry);
    return *(u32 *)entry;
}
void sub_0805A874(const u32 *args, u32 mode)
{
    extern u8 playerPositions[] asm("gUnk_03003D6C");
    u8 *state = playerPositions + sub_080020F4() * 0x14C;
    u32 data[4];
    u32 callback;
    u32 value;
    u32 x;
    u32 y;
    data[2] = 0;
    x = args[0]; y = args[1];
    data[0] = x; data[1] = y;
    data[3] = args[2];
    callback = args[3]; value = args[4];
    if (mode) {
        while (sub_08021FE0(state, data, &data[2], &data[3]) != 0)
            sub_080003F0();
    }
    while (sub_08021FE0(state, data, &data[2], &data[3]) == 0)
        sub_080003F0();
    sub_08057328(value, callback);
}
void *sub_0805A8F8(u32 arg0, u32 callback)
{
    u32 i;
    u32 mem;
    register u8 *base asm("r1") = (u8 *)gGameState;
    register u32 offset asm("r2") = 0x12E4;
    u8 *entry = base + offset;
    i = 0;
    goto search;
next:
    i++;
    entry += 0x28;
search:
    if (i > 0x1D) goto done;
    if (sub_08000470((u32)entry) != 0) goto next;
    {
            goto allocate;
retry:
            sub_080003F0();
allocate:
            {
                mem = sub_08001494(0x400);
                *(u32 *)(entry + 0x20) = mem;
            }
            if (mem == 0) goto retry;
            *(u32 *)(entry + 8) = 0x3C;
            *(u32 *)(entry + 0xC) = callback;
            *(u32 *)(entry + 0x10) = mem + 0x3FC;
            *(u32 *)(entry + 0x24) = 0;
            sub_08000274((u32)entry, arg0);
            return entry;
    }
done:
    ;
}
void *sub_0805A960(u32 value)
{
    u8 *entry = *(u8 **)0x03005CF4 + 0x7A4;
    u32 i;
    for (i=0; i<=0xE; i++, entry+=0x70)
        if (*(u32 *)entry == value) return entry;
    sub_080003F0();
    return 0;
}
void sub_0805A994(u32 index, u32 a, u32 b)
{
    u32 bit;
    u8 *entry;
    if (index == 0)
        return;
    index--;
    {
        register u32 *flags asm("r2") = (u32 *)&gUnk_030056FC;
        bit = 1u << index;
        if ((*flags & bit) == 0) {
            u32 *savedFlags = flags;
            u32 savedBit = bit;
            do { sub_080003F0(); } while ((*savedFlags & savedBit) == 0);
        }
    }
    entry = (u8 *)gUnk_030056F4 + index * 0x2E0;
    *(u32 *)(entry + 0x38) = a;
    *(u32 *)(entry + 0x3C) = b;
    *(u32 *)(entry + 0x30) = 0;
    *(u32 *)(entry + 0x34) = 0;
}
void sub_0805A9F4(u32 packed)
{
    register u32 value asm("r2") = packed;
    register u32 frames asm("r5") = value >> 16;
    register u32 previous asm("r4");
    register u32 saved asm("r6");
    register u32 wait asm("r4");
    register u32 next asm("r0");
    value &= 0xFF;
    previous = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0) sub_08006CB4(value);
    saved = previous;
    wait = frames;
    goto test;
countdown:
    next = (wait - 1) << 16;
    wait = next >> 16;
test:
    if (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0) goto countdown;
    }
    if (sub_0800CC98() == 0) {
        gUnk_03005CF8 = saved;
        if ((gUnk_030027D0 & 0x20) == 0)
            ((void (*)(u32))sub_08006CB4)(saved);
    }
}
void sub_0805AA68(u32 packed)
{
    u32 value = packed;
    u32 frames = value >> 16;
    u16 wait;
    value &= 0xFF;
    wait = frames;
    goto test;
countdown:
    wait--;
test:
    if (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0) goto countdown;
    }
    if (sub_0800CC98() == 0) {
        gUnk_03005CF8 = value;
        if ((gUnk_030027D0 & 0x20) == 0)
            ((void (*)(u32))sub_08006CB4)(value);
    }
}
void sub_0805AAB8(u32 packed)
{
    register u32 value asm("r2") = packed;
    u16 frames = value >> 16;
    u32 previous;
    u32 saved;
    u16 wait;
    value &= 0xFF;
    previous = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0) sub_08006CB4(value);
    saved = previous;
    wait = frames;
    goto test;
countdown:
    wait--;
test:
    if (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0) goto countdown;
    }
    if (sub_0800CC98() == 0)
        sub_0800A34C(gUnk_03003170.curLevel, saved, 1);
}
struct ItemSlot { u16 type; u16 pad; u32 count; u32 c; u32 d; };
struct ItemTable {
    u8 pad[0x6A];
    u16 rows;
    u8 pad2[0x150 - 0x6C];
    struct ItemSlot field[25];
    struct ItemSlot stash[25];
};
extern struct ItemTable *gItemTable asm("gUnk_030034E0");
void sub_0805CFF8(u8 index, const struct Entry61 *src);
void sub_0805D028(u8 index, const struct Entry61 *src);

static inline s32 FindStackableField(s32 start)
{
    s32 sel = start;
    s32 i;
    s32 best;
    struct ItemSlot *e;
    if (start < 0) sel = 0;
    e = &gItemTable->field[sel];
    best = -1;
    for (i = sel; i <= 0x18; i++, e++) {
        if (e->type == 0xA && best < (s32)e->count && e->count != 100000) {
            sel = i;
            best = e->count;
        }
    }
    if (best < 0) return -1;
    return sel;
}

u32 sub_0805AB20(struct ItemSlot *item)
{
    s32 prev;
    s32 r;
    u32 i;
    struct ItemSlot *e;
    u32 sum;
    struct ItemSlot *m;

    if (item->type != 0xA) goto empty;
    prev = -1;
    goto find;
    do {
        prev = r;
        if (r > 0x18) goto empty;
        m = &gItemTable->field[r];
        m->type = 0xA;
        i = m->count;
        sum = i + item->count;
        if (sum <= 100000) goto stored;
        m->count = 100000;
        i = sum - 100000;
        item->count = i;
find:
        r = FindStackableField(prev);
    } while (prev != r ? r >= 0 : 0);
empty:
    i = 0;
    do {
        if (gItemTable->field[i].type == 0) goto found;
        i++;
    } while (i <= 0x18);
    r = -1;
check:
    if (r == -1) return 0;
    goto call;
found:
    r = i;
    goto check;
stored:
    m->count = sum;
    goto ret;
call:
    sub_0805CFF8(r, (const struct Entry61 *)item);
ret:
    return 1;
}

static inline s32 FindStackableStash(s32 start)
{
    s32 sel = start;
    s32 i;
    s32 best;
    struct ItemSlot *e;
    if (start < 0) sel = 0;
    e = &gItemTable->stash[sel];
    best = -1;
    for (i = sel; i < gItemTable->rows * 15; i++, e++) {
        if (e->type == 0xA && best < (s32)e->count && e->count != 100000) {
            sel = i;
            best = e->count;
        }
    }
    if (best < 0) return -1;
    return sel;
}

u32 sub_0805AC08(struct ItemSlot *item)
{
    s32 prev;
    s32 r;
    u32 i;
    u32 sum;
    u32 t;
    struct ItemSlot *m;

    if (item->type != 0xA) goto empty;
    prev = -1;
    goto find;
    do {
        prev = r;
        if (gItemTable->rows * 15 > 0x18) goto empty;
        m = &gItemTable->stash[r];
        m->type = 0xA;
        t = m->count;
        sum = t + item->count;
        if (sum <= 100000) goto stored;
        m->count = 100000;
        t = sum - 100000;
        item->count = t;
        if (r >= gItemTable->rows * 15) goto empty;
find:
        r = FindStackableStash(prev);
    } while (prev != r ? r >= 0 : 0);
empty:
    for (i = 0; i <= 0x18; i++)
        if (gItemTable->stash[i].type == 0) goto found;
    r = -1;
check:
    if (r == -1) return 0;
    goto call;
found:
    r = i;
    goto check;
stored:
    m->count = sum;
    goto ret;
call:
    sub_0805D028(r, (const struct Entry61 *)item);
ret:
    return 1;
}
u32 sub_0805AD18(void)
{
    extern u8 *mapObjects asm("gUnk_030034E0");
    u8 *state = (u8 *)&((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    register u32 id asm("r0");
    if (*(u16 *)(state + 0xC) != *(u16 *)(state + 0x64)) {
        id = *(u16 *)(*(u32 *)(state + 0x138) + 0x28);
    } else {
        u8 *entry = mapObjects + *(u16 *)(mapObjects + 0x68) * 0x10;
        if (*(u8 *)(entry + 0x79) == 0)
            return 0;
        id = *(u16 *)(entry + 0x72);
    }
    id |= 0xB0000;
    return sub_08007290(id);
}
s32 impl_0805AD78(u32 index) asm("sub_0805AD78");
s32 impl_0805AD78(u32 index)
{
    extern u8 *mapItems asm("gUnk_030034E0");
    u32 i = 0;
    u8 *item;
    u32 offset;
    u32 valid;
    u8 *players = (u8 *)gUnk_03003CE0;
    register u8 *states asm("r0");
    register u32 player asm("r0");
    register u8 *playerBase asm("r1");
    u8 **owner;
    u8 *table;
    for (; i < players[sub_080020F4() * 0x14C + 0x77]; i++) {
        register u8 *slot asm("r1") = mapItems;
        slot = slot + i * 0x10;
        slot += 0x79;
        *slot = 0;
    }
    owner = &mapItems;
    table = *owner;
    offset = index * 0x10;
    item = table + offset;
    if (*(u16 *)(item + 0x70) == 2) {
        valid = sub_0805AE34(table + (offset + 0x70));
        if (valid) {
            u8 *resource;
            register u8 *slot asm("r0") = *owner;
            slot += offset;
            slot += 0x79;
            *slot = 1;
            resource = (u8 *)sub_08007290(*(u16 *)(mapItems + offset + 0x72) | 0xB0000);
            player = sub_080020F4();
            playerBase = (u8 *)gUnk_03003CE0;
            player *= 0x14C;
            states = (u8 *)player + (u32)playerBase;
            *(u16 *)(states + 0x10) = resource[0x9B];
        } else {
            player = sub_080020F4();
            playerBase = (u8 *)gUnk_03003CE0;
            player *= 0x14C;
            states = (u8 *)player + (u32)playerBase;
            *(u16 *)(states + 0x10) = valid;
        }
    } else {
        player = sub_080020F4();
        playerBase = (u8 *)gUnk_03003CE0;
        player *= 0x14C;
        states = (u8 *)player + (u32)playerBase;
        *(u16 *)(states + 0x10) = 0;
    }
    return sub_08065DAC();
}
u32 sub_0805AE34(const u8 *item)
{
    u8 *resource;
    u32 state;
    u32 raw;
    u32 needed;
    register u8 *kind asm("r1");
    if (item == 0 || *(u16 *)item != 2 || item[8] != 0) goto reject;
    resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xB0000);
    state = sub_0801DE60();
    if (((*(u16 *)(resource + 0xAE) >> (u8)state) & 1) == 0) goto reject;
    kind = resource + 0x9B;
    if (*kind == 9) goto accept;
    resource += 0xAC;
    raw = sub_0801D028();
    needed = *(u16 *)resource;
    if (needed > (u16)raw) goto reject;
accept:
    return 1;
reject:
    return 0;
}
extern u32 gUnk_084B24B0[];
extern u32 gUnk_084B2504[];
u32 sub_0805AE94(u8 *item)
{
    u32 flag = 0;
    u32 value = 0;
    u32 level = 0;
    u32 quality = 0;
    u32 multiplier = 10;
    switch (*(u16 *)item) {
    case 1:
        value = *(u32 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0x100000) + 0x9C);
        break;
    case 2:
        value = *(u32 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0xB0000) + 0xA0);
        flag = item[8]; level = item[6]; quality = item[7];
        if (*(u16 *)(item + 4) != 0)
            multiplier = *(u16 *)((u8 *)sub_08007290((*(u16 *)(item + 4) - 1) | 0x130000) + 0x9C);
        break;
    case 3:
        value = *(u32 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0xC0000) + 0x9C);
        flag = item[8]; level = item[6]; quality = item[7];
        if (*(u16 *)(item + 4) != 0)
            multiplier = *(u16 *)((u8 *)sub_08007290((*(u16 *)(item + 4) - 1) | 0x130000) + 0x9C);
        break;
    case 4:
        value = *(u32 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0xD0000) + 0x9C);
        flag = item[8]; level = item[6]; quality = item[7];
        if (*(u16 *)(item + 4) != 0)
            multiplier = *(u16 *)((u8 *)sub_08007290((*(u16 *)(item + 4) - 1) | 0x130000) + 0x9C);
        break;
    case 7:
        value = *(u32 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0x110000) + 0x9C);
        flag = 0; level = 0;
        break;
    case 5:
        value = *(u32 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0xE0000) + 0x9C);
        flag = item[8]; level = item[6]; quality = item[7];
        if (*(u16 *)(item + 4) != 0)
            multiplier = *(u16 *)((u8 *)sub_08007290((*(u16 *)(item + 4) - 1) | 0x130000) + 0x9C);
        break;
    case 6:
        value = *(u32 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0xF0000) + 0x9C);
        flag = 0; level = 0; quality = 0;
        break;
    case 9:
        sub_08007290(*(u16 *)(item + 2) | 0x150000);
        switch (*(u16 *)(item + 2)) {
        case 0: value = *(u16 *)(item + 4) * 100; break;
        case 1: value = *(u16 *)(item + 4) * 250; break;
        case 2: value = *(u16 *)(item + 4) * 200; break;
        case 3: value = *(u16 *)(item + 4) * 10; break;
        case 4: value = *(u16 *)(item + 4) * 20; break;
        }
        break;
    case 10:
        value = *(u32 *)(item + 4);
        break;
    case 8:
        value = *(u16 *)((u8 *)sub_08007290(*(u16 *)(item + 2) | 0x120000) + 0x9C);
        break;
    }
    if (flag != 0)
        return 1;
    value = value * multiplier / 10;
    value = value * gUnk_084B24B0[level] / 10;
    value = value * gUnk_084B2504[quality] / 10;
    return value;
}
u32 sub_0805B068(const u8 *item)
{
    u32 divisor;
    u32 value = 0;
    register u32 id asm("r0");
    register u32 category asm("r1");
    u8 *resource;
    switch (*(u16 *)item) {
    case 2:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xB0000);
        value = *(u32 *)(resource + 0xA0);
        break;
    case 3:
        id = *(u16 *)(item + 2);
        category = 0xC0000;
        goto common;
    case 4:
        id = *(u16 *)(item + 2);
        category = 0xD0000;
        goto common;
    case 5:
        id = *(u16 *)(item + 2);
        category = 0xE0000;
common:
        id |= category;
        resource = (u8 *)sub_08007290(id);
        value = *(u32 *)(resource + 0x9C);
        break;
    }
    divisor = 10;
    while (sub_08057C34(divisor) == 0 && divisor > 1)
        divisor--;
    if (sub_0800CE30() != 0)
        return value >> 1;
    if (divisor > 5)
        divisor = 5;
    value = value * divisor / 10;
    return value;
}
u32 sub_0805B0F0(void)
{
    extern u8 *mapObjects asm("gUnk_030034E0");
    register u32 first asm("r3") = 0;
    register u32 i asm("r2") = 0;
    register u8 **map asm("r0");
    register u8 *base asm("r0");
    register u8 *entry asm("r1");
    register u32 firstOffset asm("r4");
    register u32 second asm("r4");
    register u32 secondOffset asm("r5");
    map = &mapObjects;
    base = *map;
    firstOffset = 0x150;
    entry = base + firstOffset;
    do {
        if (*(u16 *)entry == 0xA) first += *(u32 *)(entry + 4);
        entry += 0x10; i++;
    } while (i <= 0x18);
    second = 0;
    i = 0;
    map = &mapObjects;
    base = *map;
    secondOffset = 0x2E0;
    entry = base + secondOffset;
    do {
        if (*(u16 *)entry == 0xA) second += *(u32 *)(entry + 4);
        entry += 0x10; i++;
    } while (i <= 0x4A);
    first += second;
    return first;
}
void impl_0805B140(void) asm("sub_0805B140");
void impl_0805B140(void)
{
    extern u8 *slotsMemory asm("gUnk_03005D58");
    extern u8 *secondaryTasks asm("gUnk_03005D60");
    u8 *entry;
    u32 i;
    goto test;
loop:
    if (sub_0800CD34() != 0) goto yield;
    if (sub_0800CC98() != 0) goto yield;
    if (sub_0800CD8C() != 0) goto yield;
    entry = slotsMemory;
    for (i = 0; i <= 15; i++, entry += 0x20) {
        register u32 flags asm("r1") = *(u16 *)(entry + 0xA);
        register u32 active asm("r0") = 1;
        u8 *payload;
        active &= flags;
        payload = entry + 0x10;
        if (active) {
            if (sub_0800CCCC() != 0) {
                register u32 masked asm("r1");
                register u8 *current asm("r0");
                if ((*(u16 *)(entry + 8) >> 5) != 0) {
                    masked = *(u16 *)(entry + 8) & ~0x20;
                    current = (u8 *)&gUnk_03003170;
                    current += 0x90;
                    if (masked == *(u16 *)current)
                        sub_0805FC80(*(u32 *)entry, *(u32 *)(entry + 4), payload, 1);
                }
            } else if ((*(u16 *)(entry + 8) >> 5) == 0)
                sub_0805FC80(*(u32 *)entry, *(u32 *)(entry + 4), payload, 1);
        }
    }
yield:
    sub_080003F0();
test:
    if (sub_0800CB78() == 0) goto loop;
    sub_08001538(slotsMemory);
    slotsMemory = 0;
    for (i = 0; i <= 5; i++)
        while (sub_08000470((u32)(secondaryTasks + i * 0x28)) != 0)
            sub_080003F0();
    sub_08001538(secondaryTasks);
}
void sub_0805B21C(void)
{
    extern u8 *slotsMemory asm("gUnk_03005D58");
    extern u32 secondaryMemory asm("gUnk_03005D60");
    extern u8 *smallBuffer asm("gUnk_03000124");
    extern u16 allocationCount asm("gUnk_03005D5C");
    extern u8 slotTask[] asm("gUnk_03005D30");
    u32 i;
    u8 *entry;
    u8 *task;
    u16 zero;
    register u16 *zeroPtr asm("r6");
    u32 zeroValue;
    slotsMemory = sub_08001494(0x200);
    secondaryMemory = (u32)sub_08001494(0xF0);
    entry = slotsMemory;
    i = 0;
    zeroPtr = &zero;
    zeroValue = 0;
    for (; i <= 15; i++, entry += 0x20) {
        *zeroPtr = zeroValue;
        CpuSet(&zero, entry, 0x01000010);
    }
    smallBuffer = sub_08001494(0x1B9);
    for (i = 0; i <= 0x1B8; i++)
        smallBuffer[i] = 0;
    allocationCount = 1;
    task = slotTask;
    *(u32 *)(task + 0xC) = (u32)sub_0805B140;
    *(u32 *)(task + 0x20) = (u32)sub_08001494(0x400);
    *(u32 *)(task + 0x10) = *(u32 *)(task + 0x20) + 0x3FC;
    *(u32 *)(task + 8) = 0x41;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274((u32)task);
}
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B2C4);
void sub_0805B4CC(s32 *x, s32 *y)
{
    s32 i, j, r;
    s32 px, py;
    for (i = 0; i <= 20; i++) {
        px = *x + ((i - 10) << 10);
        for (j = 0; j <= 20; j++) {
            py = *y + ((j - 10) << 10);
            if ((sub_0800AE50(px, py, 0) & 7) == 0) {
                u32 k;
                u32 id = 0;
                u8 *e = *(u8 **)&gUnk_03005D58;
                u8 *res;
                for (k = 0; k <= 15; k++, e += 0x20) {
                    if (*(u16 *)(e + 0xA) & 1) {
                        s32 dx = (px - *(s32 *)e) >> 8;
                        s32 dy;
                        if (dx < 0) dx = -dx;
                        dy = (py - *(s32 *)(e + 4)) >> 8;
                        if (dy < 0) dy = -dy;
                        if (dx <= 7 && dy <= 7 && id == *(u16 *)(e + 8)) {
                            res = e;
                            goto done;
                        }
                    }
                }
                res = 0;
            done:
                if (res == 0) {
                    (*(u8 **)&gUnk_03000124)[j * 21 + i] = 1;
                    continue;
                }
            }
            (*(u8 **)&gUnk_03000124)[j * 21 + i] = 0;
        }
    }
    for (r = 0; r <= 9; r++) {
        for (i = -r; i < r; i++) {
            px = *x + (i << 10);
            for (j = -r; j < r; j++) {
                py = *y + (j << 10);
                if ((*(u8 **)&gUnk_03000124)[j * 21 + i + 220]) {
                    *x = px;
                    *y = py;
                    return;
                }
            }
        }
    }
}
struct Slot60 { u8 pad[10]; u16 flags; u16 age; u8 tail[18]; };
extern struct Slot60 *slots60 asm("gUnk_03005D58");
void *sub_0805B618(void)
{
    u16 temp;
    register u32 lowest asm("r2");
    register u32 lowestIndex asm("r3");
    register u32 i asm("r5");
    register u32 active asm("r6");
    register struct Slot60 *slot asm("r4");
    register struct Slot60 **owner asm("r1") = &slots60;
    register u32 initial asm("r0");
    slot = *owner;
    initial = 0x11170;
    lowest = initial;
    lowestIndex = initial;
    active = 0;
    i = 0;
    do {
        if (1 & slot->flags) {
            active++;
            temp = slot->age;
            if ((u32)temp < lowest) {
                lowest = temp;
                lowestIndex = i;
            }
        }
        i++;
        slot++;
    } while (i <= 15);
    if (active > 15) {
        register u32 address asm("r0");
        slot = slots60;
        address = lowestIndex << 5;
        address += (u32)slot;
        *(u16 *)(address + 10) = 0;
    }
    {
        struct Slot60 *second = slots60;
        u32 j;
        register u32 hint asm("r5");
        for (j = 0; j <= 15; j = hint + 1, second++) {
            hint = j;
            if (!(second->flags & 3)) return second;
        }
        return 0;
    }
}









#ifdef NONMATCHING
struct B688Anim { s32 f0, f4, f8, fC, f10, f14, f18; u8 data[24]; };
struct B688Item { u16 kind; u16 id; u8 rest[12]; };
struct B688Pos { s32 x, y; };
struct B688Size { u16 w, h; };
struct B688Shape { u16 f0; u16 f2; u8 f4; u8 pad5; u16 f6; };
struct B688Player {
    u16 id;
    u8 pad2[0x1E];
    u16 state;
    u8 pad22[0xE];
    u32 flags;
    u8 pad34[0x114];
    struct B688Shape *shape;
};
struct B688Obj { u8 pad0[0xA0]; u16 kind; u8 padA2[2]; u32 hitMask; u8 gfx; };
extern struct B688Player b688Players[] asm("gUnk_03003CE0");
extern u8 *b688Map asm("gUnk_030034E0");
extern u8 *b688Enemies asm("gUnk_030056F4");
extern void b688_sub_08065158(struct B688Anim *, u32, u32, u32, u32) asm("sub_08065158");
extern s32 b688_sub_08021FE0(struct B688Pos *, void *, void *, void *) asm("sub_08021FE0");
extern void b688_sub_08068144(u32) asm("sub_08068144");
extern void b688_sub_08067F4C(u32, u32, u32) asm("sub_08067F4C");
extern void b688_sub_08067F04(u32, u32, u32) asm("sub_08067F04");
extern void b688_sub_0806818C(u32, u32, s32, s32, u32) asm("sub_0806818C");
extern void b688_sub_0806823C(u32, u32, s32, s32, u32) asm("sub_0806823C");
extern void b688_sub_0800BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void b688_sub_08007870(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
void sub_0805B688(u16 who, u16 itemId)
{
    struct B688Anim anim;
    struct B688Item item;
    s16 screenX, screenY;
    struct B688Pos pos;
    struct B688Pos other;
    struct B688Size size;
    struct B688Size size2;
    s32 x, y;
    u32 self;
    u32 itemArg;
    struct B688Player *player;
    struct B688Obj *obj;
    u32 enemyKey;
    s32 speed;
    s32 height;
    s32 bounces;
    s32 velocity;
    u16 hit;
    u32 dir;
    u32 gfx;
    u32 me;
    u32 power;
    u16 angle;
    u16 i;
    u8 *enemy;
    u32 *hitMask;
    u32 ok;
    u32 pal;
    s32 z;
    u32 n;

    self = who;
    itemArg = itemId;
    player = &b688Players[self];
    me = (u16)sub_080020F4();
    b688_sub_08065158(&anim, 0x500F1, 0, 0x80000000, 0);
    power = (u32)(player->shape->f6 << 23) >> 27;
    item.kind = 1;
    item.id = itemArg;
    obj = (struct B688Obj *)sub_08007290(itemArg | 0x100000);
    gfx = obj->gfx;
    x = (player->shape->f0 >> 4) << 8;
    y = (u32)(player->shape->f2 << 20) >> 12;
    height = 0x1000;
    angle = gUnk_0847AD0A[player->shape->pad5 >> 4];
    if (player->state != 0xD && !sub_0800CCCC() && !sub_0800CD34())
        sub_0805865C(0x17);
    dir = player->shape->pad5 >> 4;
    speed = power * 4 + 8;
    bounces = 0;
    velocity = -0x100;
    x += (speed * (gUnk_080B9704[(s16)angle + 0x40] * 2)) / 10;
    y += (speed * (gUnk_080B9704[(s16)angle] * 2)) / 10;
    if (sub_0801DE60() == 0)
        power = sub_0801E0AC((s32)(b688Map + 0x30), 5);
    else
        power = 0;

    while (bounces <= 1) {
        hit = 0;
        if (sub_08056E90()) {
            hit = 1;
            break;
        }
        pos.x = x;
        pos.y = y;
        *(u32 *)&size = 0x80008;
        *(u32 *)&size2 = 0x200018;
        hitMask = &obj->hitMask;
        if (*hitMask & 1) {
            for (i = 0; i < sub_08002164() && hit == 0; i++) {
                struct B688Shape *s;
                if (i == self)
                    continue;
                s = b688Players[i].shape;
                if ((s->f0 & 0xF) == 0xE || (s->f0 & 0xF) == 0xC)
                    continue;
                if ((s->f4 & 0x3F) & 0x20)
                    continue;
                if (b688Players[i].flags & 0x400)
                    continue;
                other.x = (s->f0 >> 4) << 8;
                other.y = (u32)(b688Players[i].shape->f2 << 20) >> 12;
                if (!b688_sub_08021FE0(&pos, &other, &size, &size2))
                    continue;
                if (self == me) {
                    switch (obj->kind) {
                    case 5:
                        if (gUnk_03003170.curLevel != 11) {
                            if (b688Players[i].flags & 0x2000)
                                b688_sub_08068144(i);
                            else
                                b688_sub_08067F4C(itemArg, i, power);
                        }
                        break;
                    case 13:
                        b688_sub_0806818C(player->id, 4, pos.x, pos.y, power);
                        break;
                    case 14:
                        b688_sub_0806818C(player->id, 5, pos.x, pos.y, power);
                        break;
                    case 15:
                        b688_sub_0806823C(player->id, 0, pos.x, pos.y, power);
                        break;
                    default:
                        b688_sub_08067F4C(itemArg, i, power);
                        break;
                    }
                    hit = 1;
                } else {
                    hit = 1;
                }
            }
        }
        if (hit)
            return;
        if (*hitMask & 0x3E) {
            for (i = 0; i <= 4; i++) {
                if (!(gUnk_030056FC & (1 << i)))
                    continue;
                enemy = b688Enemies + i * 0x2E0;
                if (*(u16 *)(enemy + 0xC) == 0xC)
                    continue;
                if (enemy[0x1DC] == 0 && !(*hitMask & 0x3C))
                    continue;
                size2.w = enemy[0x22E];
                size2.h = enemy[0x22F];
                if (!b688_sub_08021FE0(&pos, enemy + 0x14, &size, &size2))
                    continue;
                /* enemyKey is never initialised in the original (stack slot +0x88). */
                ok = 0;
                if (*(u16 *)(enemy + 0xC) != 0xB)
                    ok = *(u32 *)(enemy + 0x54) != enemyKey;
                if (!ok)
                    continue;
                if (enemy[0x1DC] == 0) {
                    switch (enemy[0x226]) {
                    case 4:
                        if (!(*hitMask & 4))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    case 5:
                        if (!(*hitMask & 8))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    case 6:
                        if (!(*hitMask & 0x10))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    case 7:
                        if (!(*hitMask & 0x20))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    }
                    if (*(u16 *)(enemy + 0xC) == 0xC) {
                        hit++;
                        break;
                    }
                } else {
                    hit = 1;
                    if (self == sub_080020F4()) {
                        switch (obj->kind) {
                        case 13:
                            b688_sub_0806818C(player->id, 4, pos.x, pos.y, power);
                            break;
                        case 14:
                            b688_sub_0806818C(player->id, 5, pos.x, pos.y, power);
                            break;
                        case 15:
                            b688_sub_0806823C(player->id, 0, pos.x, pos.y, power);
                            break;
                        case 18:
                            b688_sub_0806818C(player->id, 4, pos.x, pos.y, power);
                            break;
                        default:
                            b688_sub_08067F04(itemArg, *(u16 *)(enemy + 2), power);
                            break;
                        }
                    }
                }
            }
        }
        if ((s16)hit)
            return;
        if (obj->kind <= 15 && obj->kind >= 13)
            sub_08013E90((speed << 8) / 10, &pos.x, dir, 4, (s16)hit);
        else
            sub_08013E90((speed << 8) / 10, &pos.x, dir, 0, 0);
        x = pos.x;
        y = pos.y;
        if (power)
            power--;
        height -= velocity;
        velocity += 0x40;
        if (height < 0) {
            speed >>= 2;
            velocity = -(0x100 >> bounces);
            bounces++;
            height = 0x100;
        }
        if (!sub_0800CC98() && !sub_0800CD8C() && !(z = sub_0800CCCC())) {
            b688_sub_0800BC08((x << 8) >> 16, (y << 8) >> 16, &screenX, &screenY, 0x30, z);
            pal = (u8)sub_0800BC44(x >> 8, y >> 8, 0);
            b688_sub_08007870(screenX, screenY - (height >> 8), 0, gfx, pal, anim.data, anim.f8, anim.f0);
            b688_sub_08007870(screenX, screenY, 0, 0xFE, pal, anim.data, anim.f8, anim.f0);
        }
        sub_080003F0();
    }
    if (hit)
        return;
    if (self != me)
        return;
    switch (obj->kind) {
    case 13:
        b688_sub_0806818C(player->id, 2, pos.x, pos.y, power);
        n = 5;
        break;
    case 14:
        b688_sub_0806818C(player->id, 3, pos.x, pos.y, power);
        n = 5;
        break;
    case 15:
        b688_sub_0806823C(player->id, 0, pos.x, pos.y, power);
        n = 5;
        break;
    default:
        sub_08066520(x, y, gUnk_03003170.f90, (u32 *)&item);
        n = 30;
        break;
    }
    sub_0805B4CC(&x, &y);
    while (n--) {
        if (!sub_0800CC98() && !sub_0800CD8C() && !(z = sub_0800CCCC())) {
            b688_sub_0800BC08((x << 8) >> 16, (y << 8) >> 16, &screenX, &screenY, 0x30, z);
            pal = (u8)sub_0800BC44(x >> 8, y >> 8, 0);
            b688_sub_08007870(screenX, screenY, 0, gfx, pal, anim.data, anim.f8, anim.f0);
            b688_sub_08007870(screenX, screenY, 0, 0xFE, pal, anim.data, anim.f8, anim.f0);
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B688);
#endif
#ifdef NONMATCHING
struct BD5CPlayer {
    u16 id;
    u8 pad2[0x1E];
    u16 state;
    u16 f22;
    u8 pad24[0xC];
    u32 flags;
    u8 pad34[0x2C];
    s16 maxMp;
    s16 maxHp;
    u16 f64;
    u8 pad66[2];
    u8 f68;
    u8 pad69[0x59];
    s16 mp;
    s16 hp;
    u8 padC6[0x86];
};
struct BD5CMap { u8 pad0[0x10]; s16 stat10; s16 stat12; s16 stat14; s16 stat16; };
extern struct BD5CPlayer bd5cPlayers[] asm("gUnk_03003CE0");
extern struct BD5CMap *bd5cMap asm("gUnk_030034E0");
extern u32 sub_080665B0(u32);
extern void sub_08074DE8(u32, s32);
s32 sub_0805BD5C(u16 *item, s32 level)
{
    struct BD5CPlayer *player;
    u8 *obj;
    u32 zero;
    u16 kind;
    s16 amount;
    u8 *p;

    player = &bd5cPlayers[sub_080020F4()];
    if (item == NULL)
        return 0;
    if (sub_0800CDF8())
        return 0;
    if (player->state == 0xB)
        return 0;
    zero = player->flags & 0x2000;
    if (zero)
        return 0;
    if (item[0] != 1)
        return 0;
    obj = (u8 *)sub_08007290(item[1] | 0x100000);
    kind = *(u16 *)(obj + 0xA0);
    if (kind == 1 || kind == 0x13) {
        amount = ((level * 40 + 100) * *(u16 *)(obj + 0xA2)) / 100;
        if (player->hp >= player->maxHp)
            goto fail;
        player->hp += amount;
        if (player->maxHp < player->hp)
            player->hp = player->maxHp;
        else if (player->hp < 0)
            player->hp = zero;
        if (*(u16 *)(obj + 0xA2) != 0)
            sub_08074DE8(player->id, 8);
        if ((player->flags & 0x20000) && player->hp >= player->maxHp >> 1)
            player->flags &= ~0x20000;
        sub_0805865C(0x91);
    } else if (kind == 2) {
        if (player->mp >= player->maxMp)
            goto fail;
        amount = ((level * 40 + 100) * *(u16 *)(obj + 0xA2)) / 100;
        player->mp += amount * 10;
        if (player->maxMp < player->mp)
            player->mp = player->maxMp;
        else if (player->mp < 0)
            player->mp = zero;
        sub_0805865C(0x91);
    } else if (kind == 6) {
        if (bd5cMap->stat10 > 499)
            goto fail;
        bd5cMap->stat10++;
    } else if (kind == 7) {
        if (bd5cMap->stat12 > 499)
            goto fail;
        bd5cMap->stat12++;
    } else if (kind == 9) {
        if (bd5cMap->stat16 > 332)
            goto fail;
        bd5cMap->stat16++;
    } else if (kind == 8) {
        if (bd5cMap->stat14 > 499)
            goto fail;
        bd5cMap->stat14++;
    } else if (kind == 3) {
        p = (u8 *)sub_0801E1D8(player, 6, 100);
        if (p != NULL) {
            sub_0801DB94(player->id, p, 0);
            sub_0805867C(0x73);
            p = (u8 *)sub_0801E1D8(player, 7, 100);
            if (p != NULL)
                sub_0801DB94(player->id, p, 0);
        } else {
            p = (u8 *)sub_0801E1D8(player, 7, 100);
            if (p == NULL)
                goto fail;
            sub_0801DB94(player->id, p, 0);
            sub_0805867C(0x73);
        }
    } else if (kind == 5) {
        goto fail;
    } else if (kind == 0xC) {
        goto fail;
    } else if (kind == 4) {
        if (player->f68 == 0)
            goto fail;
        if (sub_08058DB0())
            goto fail;
        if (sub_0800D11C())
            goto fail;
        if (sub_0800CCCC())
            goto fail;
        if (player->state == 5)
            goto fail;
        if (sub_0800CDC0())
            goto fail;
        if (player->f64 > 9)
            goto fail;
        if (gUnk_03003170.curLevel == 11)
            goto fail;
        if (gUnk_03003170.curLevel == 14)
            goto fail;
        if (gUnk_03003170.curLevel == 2 && gUnk_03003170.f90 == 7)
            goto fail;
        if (gUnk_03003170.curLevel == 5 && gUnk_03003170.f90 == 10)
            goto fail;
        if (gUnk_03003170.curLevel == 8 && gUnk_03003170.f90 == 0x11)
            goto fail;
        if (gUnk_03003170.curLevel == 0x13 && gUnk_03003170.f90 == 2)
            goto fail;
        if (gUnk_03003170.curLevel == 0x15 && (gUnk_03003170.f90 == 2 || gUnk_03003170.f90 == 4))
            goto fail;
        sub_0805865C(0x75);
        player->state = 0xC;
        player->f22 = 1;
        sub_08015C14();
    } else if (kind == 10) {
        if (sub_0800D1B0())
            goto fail;
        if ((p = (u8 *)sub_0801E1D8(player, 6, 100)) != NULL
            || (p = (u8 *)sub_0801E1D8(player, 7, 100)) != NULL
            || (p = (u8 *)sub_0801E164(player, 0)) != NULL) {
            sub_0801DB94(player->id, p, 6);
            *(s32 *)(p + 0x18) = level;
            sub_0805865C(0x73);
            return 1;
        }
        goto fail;
    } else if (kind == 11) {
        if (sub_0800D1B0())
            goto fail;
        if ((p = (u8 *)sub_0801E1D8(player, 6, 100)) == NULL
            && (p = (u8 *)sub_0801E1D8(player, 7, 100)) == NULL
            && (p = (u8 *)sub_0801E164(player, 0)) == NULL)
            goto fail;
        sub_0801DB94(player->id, p, 7);
        *(s32 *)(p + 0x18) = level;
        sub_0805865C(0x73);
    } else if (kind == 0xD) {
        goto fail;
    } else if (kind == 0xE) {
        goto fail;
    } else if (kind == 0x10) {
        sub_080665B0(*(u16 *)(obj + 0xA2));
        return 0;
    } else if (kind == 0x11) {
        player->mp = player->maxMp;
        player->hp = player->maxHp;
    } else if (kind == 0x12) {
        amount = ((level * 40 + 100) * *(u16 *)(obj + 0xA2)) / 100;
        if (player->hp >= player->maxHp)
            goto fail;
        player->hp += amount;
        if (player->maxHp < player->hp)
            player->hp = player->maxHp;
        else if (player->hp < 0)
            player->hp = 0;
        if (*(u16 *)(obj + 0xA2) != 0)
            sub_08074DE8(player->id, 8);
        if ((player->flags & 0x20000) && player->hp >= player->maxHp >> 1)
            player->flags &= ~0x20000;
        sub_0805865C(0x91);
    } else {
    fail:
        sub_0805865C(0x61);
        return 0;
    }
    if (kind != 1)
        sub_0805865C(0x20);
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805BD5C);
#endif
#ifdef NONMATCHING
extern u8 gUnk_08477F3C[];
extern u8 gUnk_08478044[];
extern u8 gUnk_08478158[];
extern u8 gUnk_08478220[];
extern u8 gUnk_084782F4[];
extern u8 gUnk_08478310[];
extern u8 gUnk_08478338[];
extern u8 gUnk_08478378[];

struct C208Slot { u16 type; u16 arg; u16 bonus; u8 element; u8 level; u8 flag; };
struct C208Range { u16 value; u16 upper; };
s32 sub_0805C208(void *arg0, s32 arg1)
{
    u8 *objs[4];
    struct C208Slot *slot;
    u32 flags;
    u32 rollElement;
    u32 rollBonus;
    u32 rollLevel;
    struct C208Range *table;
    u32 count;
    u32 low;
    u32 i;
    u32 r;
    u8 *p;

    slot = arg0;
    flags = arg1;
    rollElement = 0;
    rollBonus = 0;
    rollLevel = 0;
    switch (slot->type) {
    case 2:
        objs[0] = (u8 *)sub_08007290(slot->arg | 0xB0000);
        if (objs[0][0x9B] == 9) {
            table = (struct C208Range *)gUnk_08478044;
            r = sub_080008C8();
            if ((r & 0xF) <= 7)
                goto bonusAndLevel;
            goto bonus;
        }
        table = (struct C208Range *)gUnk_08477F3C;
        r = sub_080008C8() & 0xF;
        if (r <= 2) {
            rollLevel = 1;
            rollElement = 1;
        bonus:
            rollBonus = 1;
            break;
        }
        if (r <= 7) {
            r = sub_080008C8() & 0xF;
            if (r <= 4) {
            bonusAndLevel:
                rollBonus = 1;
                rollLevel = 1;
                break;
            }
            if (r <= 10) {
                rollLevel = 1;
                rollElement = 1;
                break;
            }
            rollElement = 1;
            goto bonus;
        }
        r = sub_080008C8() & 0xF;
        if (r <= 4) {
            rollLevel = 1;
            break;
        }
        if (r <= 9)
            goto bonus;
        rollElement = 1;
        break;
    case 5:
        objs[1] = (u8 *)sub_08007290(slot->arg | 0xE0000);
        table = objs[1][0xA0] ? (struct C208Range *)gUnk_08478220 : (struct C208Range *)gUnk_08478158;
        rollLevel = 0;
        break;
    case 3:
        objs[3] = (u8 *)sub_08007290(slot->arg | 0xC0000);
        table = (struct C208Range *)gUnk_08478158;
        rollLevel = 0;
        break;
    case 4:
        objs[2] = (u8 *)sub_08007290(slot->arg | 0xD0000);
        table = (struct C208Range *)gUnk_08478158;
        rollLevel = 0;
        break;
    default:
        return 1;
    }
    if (slot->type <= 5 && slot->type >= 3) {
        r = sub_080008C8() & 0xF;
        if (r <= 7) {
            r = sub_080008C8() & 0xF;
            if (r <= 7)
                goto pickBonus;
            rollElement = 1;
        } else {
            rollBonus = 1;
            rollElement = 1;
        }
    }
    if (rollBonus) {
    pickBonus:
        count = table[0].value;
        r = sub_080008C8();
        r %= table[0].upper;
        table++;
        for (low = 0, i = 0; i < count; i++, table++) {
            if (low <= r && table->upper >= r) {
                slot->bonus = table->value;
                break;
            }
            low = table->upper;
        }
    }
    if (rollLevel) {
        table = (struct C208Range *)gUnk_084782F4;
        count = table[0].value + 1;
        r = sub_080008C8();
        r %= table[0].upper + 1;
        table++;
        for (low = 0, i = 0; i < count; i++, table++) {
            if (low <= r && table->upper >= r) {
                slot->level = table->value;
                break;
            }
            low = table->upper + 1;
        }
    }
    if (rollElement) {
        if (flags & 1)
            table = (struct C208Range *)gUnk_08478378;
        else if (sub_0800CE30())
            table = (struct C208Range *)gUnk_08478338;
        else
            table = (struct C208Range *)gUnk_08478310;
        count = table[0].value + 1;
        r = sub_080008C8();
        r %= table[0].upper + 1;
        table++;
        for (low = 0, i = 0; i < count; i++, table++) {
            if (low <= r && table->upper >= r) {
                slot->element = table->value;
                break;
            }
            low = table->upper + 1;
        }
    }
    switch (slot->type) {
    case 2:
        for (i = 0, p = objs[0] + 0xB0; i <= 2; i++, p += 4)
            if (*(u16 *)p != 0)
                goto clearA;
        break;
    case 3:
        for (i = 0, p = objs[3] + 0xA4; i <= 2; i++, p += 4)
            if (*(u16 *)p != 0)
                goto clearB;
        break;
    case 4:
        for (i = 0, p = objs[2] + 0xA4; i <= 2; i++, p += 4)
            if (*(u16 *)p != 0)
                goto clearA;
        break;
    clearA:
        slot->bonus = 0;
        slot->element = 0;
        slot->level = 0;
        flags = 1;
        break;
    clearB:
        slot->bonus = 0;
        slot->element = 0;
        slot->level = 0;
        flags = 1;
        break;
    case 5:
        for (i = 0, p = objs[1] + 0xA4; i <= 2; i++, p += 4)
            if (*(u16 *)p != 0)
                goto clearB;
        break;
    }
    if (*(u32 *)&slot->bonus != 0)
        slot->flag = (flags & 1) ? 0 : 1;
    /* Only unknown slot types return a value (1); callers ignore it. */
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C208);
#endif
struct LootT { u16 chance; u16 pad; u16 *groups[8]; };
extern struct LootT gUnk_084E6DD8[];
u32 sub_0805C4FC(u8 *out, u32 count, u32 category)
{
    u32 zero = 0;
    u32 roll, special, n, i, hi;
    u32 lo;
    u16 *group;
    u16 *e;
    CpuSet(&zero, out, 0x05000004);
    if (count == 0) {
        *(u16 *)out = count;
        *(u16 *)(out + 2) = count;
        return 0;
    }
    count--;
    roll = (u16)sub_080008C8();
    roll %= 100;
    if (gUnk_084E6DD8[count].chance >= roll) special = 1; else special = 0;
    if (category == 8) category = 6;
    group = gUnk_084E6DD8[count].groups[category];
    n = group[0];
    roll = sub_080008C8();
    roll %= group[1] + 1U;
    e = group + 4;
    lo = 0;
    for (i = 0; i < n; i++, lo = hi + 1, e += 4) {
        hi = e[2];
        if (lo <= roll && hi >= roll) {
            *(u16 *)out = e[0];
            *(u16 *)(out + 2) = e[1];
            if (*(u16 *)out == 10) {
                u32 v;
                *(u32 *)(out + 4) = roll;
                roll = sub_080008C8();
                v = e[1];
                roll %= v * 15 / 10;
                if (roll < v >> 1) roll = v >> 1;
                *(u32 *)(out + 4) = roll;
            }
            break;
        }

    }
    if (special)
        sub_0805C208(out, 0);
    if (*(u16 *)out == 9) {
        *(u16 *)(out + 4) = sub_080008C8() % 10 + gUnk_03003170.curLevel * 10;
        if (sub_0800CE30())
            *(u16 *)(out + 4) += 100;
    }
    return 1;
}
#ifdef NONMATCHING
u32 sub_0805C620(u8 *entity, u16 *out)
{
    extern u8 c620Players[] asm("gUnk_03003CE0");
    u32 zero;
    u8 *extra;
    u32 low;
    u32 roll;
    u32 i;
    u16 *entry;
    u32 offset;
    u32 *p214;
    u16 type;
    u32 t2;
    u16 chance;
    u32 ok;
    u32 result;

    extra = entity + 0x204;
    zero = 0;
    CpuSet(&zero, out, 0x05000004);
    low = 0;
    roll = (u16)sub_080008C8();
    i = 0;
    p214 = (u32 *)(entity + 0x214);
    entry = (u16 *)(entity + 0x230);
    /* No-op do/while(0): moves agbcc register allocation closer to the original. */
    do {
        offset = 0;
loop:
        type = t2 = entry[0];
        if (type != 0) {
            if (low <= roll && *(u32 *)(extra + 0x30 + offset) >= roll) {
                out[0] = type;
                out[1] = entry[1];
                if (t2 == 9)
                    out[2] = *p214;
                goto done;
            }
            low = (u16)(*(u32 *)(extra + 0x30 + offset) + 1);
        }
        entry += 4;
        offset += 8;
        i++;
        if (i <= 2)
            goto loop;
done:
        if (out[0] != 0) {
            if (out[0] == 10 && !(entity[0x227] & 1)) {
                out[0] = 0;
                out[1] = 0;
                return 0;
            }
            return 1;
        }
        roll = (u8)sub_080008C8();
        ok = 0;
        if (*(u16 *)(entity + 0x58) > 3)
            *(u16 *)(entity + 0x58) = 0;
        chance = c620Players[*(u16 *)(entity + 0x58) * 0x14C + 0x74];
        switch (sub_08002164()) {
        case 1: chance += 0x10; break;
        case 2: chance += 0x15; break;
        case 3: chance += 0x1A; break;
        case 4: chance += 0x20; break;
        }
        if (chance > roll)
            ok = 1;
        if (ok == 0)
            return 0;
        if (sub_0800CE30()) {
            u16 category = *(u16 *)(entity + 0x78);
            if (category == 0)
                result = 0;
            else
                result = sub_0805C4FC((u8 *)out, category + 50, 0);
        } else {
            result = sub_0805C4FC((u8 *)out, *(u16 *)(entity + 0x78), 0);
        }
    } while (0);
    /* Types 9 and 10 (flag set) fall off the end: the original returns whatever is in r0. */
    type = out[0];
    if (type == 9) {
        out[2] = *(u32 *)(entity + 0x214);
    } else if (type == 10) {
        if (!(entity[0x227] & 1)) {
            out[0] = 0;
            out[1] = 0;
            return 0;
        }
    } else if (type > 10) {
        out[0] = 0;
        return 0;
    } else {
        return result;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C620);
#endif
#ifdef NONMATCHING
struct C7B8Slot { u16 type; u16 arg; u16 f4; u8 f6, f7, f8, f9; u8 padA[6]; };
struct C7B8Entry { s16 type; u16 arg; };
struct C7B8Pick { u32 index; u32 used; };
extern u8 *c7b8Map asm("gUnk_030034E0");
extern struct C7B8Entry c7b8TableA[][20][12] asm("gUnk_084E7BE8");
extern struct C7B8Entry c7b8TableB[][20][12] asm("gUnk_084E99E8");
extern struct C7B8Entry c7b8TableC[][12] asm("gUnk_084EB7E8");
/* Callers ignore the result; the original has no return value. */
s32 sub_0805C7B8(u32 mode)
{
    struct C7B8Pick picks[12];
    u32 area;
    struct C7B8Slot *slotsA;
    struct C7B8Slot *slotsB;
    struct C7B8Slot *slotsC;
    struct C7B8Slot *dst;
    struct C7B8Entry *entry;
    u32 count;
    u32 bits;
    u32 i;
    u32 empty;
    u32 picked;
    u32 n;
    u16 type;

    if (sub_0800CE30()) {
        count = 10;
        slotsA = (struct C7B8Slot *)(c7b8Map + 0x9D0);
        slotsB = (struct C7B8Slot *)(c7b8Map + 0xA90);
        slotsC = (struct C7B8Slot *)(c7b8Map + 0xB50);
    } else {
        count = 0;
        slotsA = (struct C7B8Slot *)(c7b8Map + 0x790);
        slotsB = (struct C7B8Slot *)(c7b8Map + 0x850);
        slotsC = (struct C7B8Slot *)(c7b8Map + 0x910);
    }
    bits = sub_08057CEC();
    for (i = 1; i <= 9; i++)
        if ((1 << i) & bits)
            count++;
    if (sub_0800CE30()) {
        if (count > 19)
            count = 19;
    } else if (count > 9) {
        count = 9;
    }
    area = sub_0801DE60();

    empty = 0;
    picked = 0;
    entry = c7b8TableA[area][count];
    for (i = 0; i <= 11; i++) {
        slotsA[i].type = entry[i].type;
        slotsA[i].arg = entry[i].arg;
        slotsA[i].f4 = 0;
        slotsA[i].f6 = 0;
        slotsA[i].f7 = 0;
        slotsA[i].f8 = 0;
        if (entry[i].type != 0) {
            if (entry[i].type == -1) {
                slotsA[i].type = 0;
                empty++;
            } else {
                picks[picked].index = i;
                picks[picked].used = 0;
                picked++;
            }
        }
    }
    n = sub_080008C8() % (empty + 1);
    if (n != 0) {
        for (i = 0; i < n; i++) {
            u32 k = sub_080008C8() % picked;
            if (picks[k].used == 0)
                picks[k].used = 1;
            else
                i--;
        }
        dst = &slotsA[9];
        for (i = 0; i < picked; i++) {
            if (picks[i].used != 0) {
                *dst = slotsA[picks[i].index];
                slotsA[i].f4 = 0;
                slotsA[i].f6 = 0;
                slotsA[i].f7 = 0;
                slotsA[i].f8 = 0;
                sub_0805C208(dst, 1);
                dst++;
            }
        }
    }

    empty = 0;
    picked = 0;
    entry = c7b8TableB[area][count];
    for (i = 0; i <= 11; i++) {
        slotsB[i].type = entry[i].type;
        slotsB[i].arg = entry[i].arg;
        slotsB[i].f4 = 0;
        slotsB[i].f6 = 0;
        slotsB[i].f7 = 0;
        slotsB[i].f8 = 0;
        if (entry[i].type != 0) {
            if (entry[i].type == -1) {
                slotsB[i].type = 0;
                empty++;
            } else {
                picks[picked].index = i;
                picks[picked].used = 0;
                picked++;
            }
        }
    }
    n = sub_080008C8() % (empty + 1);
    if (n != 0) {
        for (i = 0; i < n; i++) {
            u32 k = sub_080008C8() % picked;
            if (picks[k].used == 0)
                picks[k].used = 1;
            else
                i--;
        }
        dst = &slotsB[9];
        for (i = 0; i < picked; i++) {
            if (picks[i].used != 0) {
                *dst = slotsB[picks[i].index];
                slotsB[i].f4 = 0;
                slotsB[i].f6 = 0;
                slotsB[i].f7 = 0;
                slotsB[i].f8 = 0;
                sub_0805C208(dst, 1);
                dst++;
            }
        }
    }

    if (mode > 1)
        mode = 0;
    entry = c7b8TableC[mode];
    for (i = 0; i <= 11; i++) {
        type = slotsC[i].type = entry[i].type;
        slotsC[i].arg = entry[i].arg;
        if (type == 2) {
            slotsC[i].f8 = 0;
            slotsC[i].f4 = 0;
            slotsC[i].f6 = 0;
            slotsC[i].f7 = 0;
            slotsC[i].f9 = 0;
        }
        if (slotsC[i].type == 0xFFFF) {
            if (sub_080008C8() & 1) {
                sub_0805C4FC((u8 *)&slotsC[i], 0x14, mode);
            } else {
                slotsC[i].type = 0;
                slotsC[i].arg = 0;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C7B8);
#endif
struct Record60 { u16 type, value, timer; u8 a, b, c, d; u8 tail[6]; };
void sub_0805CB04(s32 index, struct Record60 *out)
{
    register u16 type asm("r1");
    u16 bit;
    register u32 i asm("r8");
    register u32 work asm("r2");
    register u32 offset asm("r0");
    register u8 *base asm("r1");
    u16 *table;
    u8 zero8;
    u32 zero16;
    register u32 sentinel asm("r9");
    offset = index * 0x30;
    base = (u8 *)&gUnk_084EB7E8;
    work = 0;
    i = work;
    zero8 = 0;
    zero16 = work;
    work = 0xFFFF;
    sentinel = work;
    table = (u16 *)(offset + (u32)base);
    do {
        type = table[0];
        out->type = type;
        out->value = table[1];
        if (type == 2) {
            out->c = zero8;
            out->timer = zero16;
            out->a = zero8;
            out->b = zero8;
            out->d = zero8;
        }
        if (out->type == sentinel) {
            bit = sub_080008C8() & 1;
            if (bit != 0)
                sub_0805C4FC(out, 0x14, index);
            else {
                out->type = bit;
                out->value = bit;
            }
        }
        table += 2;
        work = 1;
        i += work;
        out++;
    } while (i <= 0xB);
}






#ifdef NONMATCHING
struct CB8CSlot { s32 x, y; u16 pad8; s16 active; u8 padC[0x14]; };
struct CB8CBounds { u32 left, top, right, bottom; };
struct CB8CColor { u16 value, pad; };
struct CB8CLocal { u8 unused[16]; u8 counts[4]; u16 angles[4]; struct CB8CColor colors[4]; };
extern struct CB8CSlot *cb8c_slots asm("gUnk_03005D58");
extern struct CB8CBounds cb8c_bounds[] asm("gUnk_084EBCE8");
extern struct CB8CColor cb8c_colors[] asm("gUnk_084EBD28");
extern u8 cb8c_video[] asm("gUnk_03001F40");

/* Pulse four palette colors when exactly one active slot occupies each
 * rectangle; otherwise ease their RGB components toward neutral gray. */
void sub_0805CB8C(void)
{
    struct CB8CLocal state;
    struct CB8CSlot *particle;
    struct CB8CColor *color;
    u8 *bytes;
    u32 i, j, component;
    s32 x, y, step;
    s16 sine;
    for (i = 0; i < 4; i++) {
        state.counts[i] = 0;
        state.angles[i] = 0;
        state.colors[i].value = 0;
    }
    for (;;) {
        for (i = 0; i < 4; i++) {
            particle = cb8c_slots;
            state.counts[i] = 0;
            for (j = 0; j < 16; j++, particle++) {
                if (particle->active != 0) {
                    x = (particle->x << 5) >> 16;
                    if (cb8c_bounds[i].left <= (u32)x) {
                        y = (s16)((particle->y << 5) >> 16);
                        if (cb8c_bounds[i].top <= (u32)y &&
                            cb8c_bounds[i].right >= (u32)x &&
                            cb8c_bounds[i].bottom >= (u32)y)
                            state.counts[i]++;
                    }
                }
            }
        }
        for (i = 0; i < 4; i++) {
            color = &state.colors[i];
            bytes = (u8 *)&color->value;
            if (state.counts[i] == 1) {
                state.angles[i] = (state.angles[i] + 4) & 0x7F;
                sine = gUnk_080B9704[(s16)state.angles[i]];
                bytes[0] = (bytes[0] & 0xE0) |
                    (((sine * (cb8c_colors[i].value & 31)) >> 8) & 31);
                color->value = (color->value & 0xFC1F) |
                    ((((sine * ((cb8c_colors[i].value >> 5) & 31)) >> 8) & 31) << 5);
                bytes[1] = (bytes[1] & 0x83) |
                    ((((sine * ((((u8 *)&cb8c_colors[i].value)[1] >> 2) & 31)) >> 8) & 31) << 2);
            } else {
                component = bytes[0] & 31;
                step = (s32)(8 - component) >> 1;
                if (step == 0) bytes[0] = (bytes[0] & 0xE0) | 8;
                else bytes[0] = (bytes[0] & 0xE0) | ((component + step) & 31);
                component = (color->value >> 5) & 31;
                step = (s32)(8 - component) >> 1;
                if (step == 0) color->value = (color->value & 0xFC1F) | 0x100;
                else color->value = (color->value & 0xFC1F) | (((component + step) & 31) << 5);
                component = (bytes[1] >> 2) & 31;
                step = (s32)(8 - component) >> 1;
                if (step == 0) bytes[1] = (bytes[1] & 0x83) | 0x20;
                else bytes[1] = (bytes[1] & 0x83) | (((component + step) & 31) << 2);
                state.angles[i] = 0;
            }
            *(u16 *)(cb8c_video + 0x1D8 + i * 2) = color->value;
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB8C);
#endif
struct PuzzleSlot61 { s32 x,y; u16 pad8,active; u32 padC; u16 type,value; u8 tail[12]; };
struct PuzzleItem61 { u16 type,value; union { u32 wide; struct {u16 a;u8 b,c;} parts; } data; u8 last; u8 tail[7]; };
extern struct PuzzleSlot61 *puzzleSlots61 asm("gUnk_03005D58");
extern u32 puzzleBounds61[] asm("gUnk_084EBCE8");
extern u16 puzzleRecipes61[] asm("gUnk_084EB8D8");
s32 sub_0805CDF8(void) {
    struct PuzzleSlot61 *sp0[4];
    struct PuzzleItem61 sp10;
    register struct PuzzleItem61 *item asm("r4");
    register s32 temp_r1 asm("r1");
    register u32 yBits asm("r6");
    register s32 xBits asm("r1");
    register u32 shifted asm("r0");
    s32 temp_r2;
    register s32 temp_r3 asm("r3");
    s32 var_r4_2;
    s32 var_r6;
    register u32 var_r8 asm("r8");
    u16 *temp_r0_2;
    register u8 *base asm("r2");
    register u32 *bounds asm("r5");
    register u8 *bp asm("r0");
    register u16 *recipes asm("r1");
    register u8 *p asm("r0");
    register u16 *var_r5 asm("r5");
    u16 *recipeValues;
    struct PuzzleSlot61 **slotsBase;
    register s32 temp_r0_3 asm("r0");
    u16 temp_r1_4;
    u32 var_r7;
    s32 var_r9;
    struct PuzzleSlot61 **var_ip;
    struct PuzzleSlot61 **var_r3;
    struct PuzzleSlot61 **var_r5_2;
    struct PuzzleSlot61 *temp_r0;
    struct PuzzleSlot61 *temp_r1_2;
    struct PuzzleSlot61 *temp_r1_3;
    struct PuzzleSlot61 *temp_r2_2;
    register struct PuzzleSlot61 *var_r4 asm("r4");

    var_r7 = 0;
    slotsBase = &puzzleSlots61;
    var_ip = sp0;
loop_1:
    var_r4 = *slotsBase;
    var_r8 = 0;
    *var_ip = NULL;
    var_r9 = 0;
    do {
        if (var_r4->active != 0) {
            xBits = (u32)var_r4->x << 5;
            shifted = (u32)var_r4->y << 5;
            yBits = shifted >> 16;
            bounds = puzzleBounds61;
            temp_r2 = var_r7 * 0x10;
            bp = (u8 *)((u32)temp_r2 + (u32)bounds);
            temp_r3 = xBits >> 16;
            if ((u32)*(u32 *)bp <= (u32)temp_r3) {
                bp = (u8 *)bounds + 4;
                bp = (u8 *)((u32)temp_r2 + (u32)bp);
                temp_r1 = (s16)yBits;
                if ((u32)*(u32 *)bp <= (u32)temp_r1) {
                    bp = (u8 *)bounds + 8;
                    if ((u32)*(u32 *)((u32)temp_r2+(u32)bp) >= (u32)temp_r3) {
                        bp = (u8 *)bounds + 12;
                        if ((u32)*(u32 *)((u32)temp_r2+(u32)bp) >= (u32)temp_r1) {
                            var_r8 += 1;
                            *var_ip = var_r4;
                        }
                    }
                }
            }
        }
        var_r9 += 1;
        var_r4++;
    } while (var_r9 <= 0xFU);
    if (var_r8 != 1) {
        goto block_32;
    }
    var_ip++;
    var_r7 += 1;
    if (var_r7 > 3U) {
        recipes = puzzleRecipes61;
        if (*recipes == 0) {
            goto block_32;
        }
        var_r8 = (u32)recipes;
        slotsBase = (struct PuzzleSlot61 **)var_r8;
        var_r9 = 0;
        recipeValues = (u16 *)(var_r8 + 2);
loop_15:
        var_r6 = 0;
        var_r7 = 0;
        var_r5 = (u16 *)var_r9;
        var_r5 = (u16 *)((u8 *)var_r5 + (u32)slotsBase);
        var_r4_2 = var_r9;
        var_r3 = sp0;
        do {
            temp_r2_2 = *var_r3;
            if ((temp_r2_2->type == *var_r5) && (temp_r2_2->value == *(u16 *)((u32)var_r4_2 + (u32)recipeValues))) {
                var_r6 += 1;
            }
            var_r5 += 2;
            var_r4_2 += 4;
            var_r3++;
            var_r7 += 1;
        } while (var_r7 <= 3U);
        if (var_r6 == 4) {
            var_r7 = 0;
            item = &sp10;
            var_r5_2 = sp0;
            do {
                temp_r1_2 = *var_r5_2;
                sub_08021EC8(temp_r1_2->x, temp_r1_2->y, 2);
                temp_r1_3 = *var_r5_2;
                sub_08058768((s32) temp_r1_3->x >> 8, (s32) temp_r1_3->y >> 8, 0);
                sub_08057624(2U);
                temp_r0 = *var_r5_2;
                var_r5_2++;
                temp_r0->active = 0;
                sub_08057624(0xAU);
                var_r7 += 1;
            } while (var_r7 <= 3U);
            base = (u8 *)puzzleRecipes61;

            p=base+16;
            asm("" : "+r"(p));
            temp_r0_2=(u16 *)(p+var_r9);
            temp_r1_4 = *temp_r0_2;
            if (temp_r1_4 == 0xA) {
                item->type = temp_r1_4;
                p=base+18; asm("" : "+r"(p));
                item->data.wide = (s32) *(u16 *)(p + var_r9);
            } else {
                item->data.wide = 0;
                item->type = (u16) *temp_r0_2;
                p=base+18; asm("" : "+r"(p));
                item->value = (u16) *(u16 *)(p + var_r9);
                temp_r0_3 = item->type; asm("" : "+r"(temp_r0_3));
                switch (temp_r0_3) {
                case 2:
                case 3:
                case 4:
                case 5:
                    item->last = 0;
                    item->data.parts.a = 0;
                    item->data.parts.b = 0;
                    item->data.parts.c = 0;
                    break;
                }
            }
item_ready:
            if (sub_08002204() != 0) {
                sub_08066490(0xF700U, 0x6E00U, (u32 *)item);
            }
            sub_08021EC8(0xF700U, 0x6E00U, 6);
            return 1;
        }
        var_r8 += 20;
        var_r9 += 0x14;
        {
            register u16 *test asm("r1") = (u16 *)var_r8;
            asm("" : "+r"(test));
            if (*test == 0) {
block_32:
                return 0;
            }
            goto loop_15;
        }
    }
    goto loop_1;
}
s32 sub_0805CFA0(void) {
    u32 i;
    u8 *p;
    for(i=0,p=(u8 *)gUnk_030034E0+0x150;i<=24;p+=16,i++) if(*(u16 *)p==0) return i;
    return -1;
}
s32 sub_0805CFCC(void) {
    u32 i;
    u8 *p;
    for(i=0,p=(u8 *)gUnk_030034E0+0x2E0;i<=24;p+=16,i++) if(*(u16 *)p==0) return i;
    return -1;
}
void sub_0805CFF8(u8 index, const struct Entry61 *src)
{
    if(index>24) index=0;
    *(struct Entry61 *)((u8 *)gUnk_030034E0+0x150+index*16)=*src;
}
void sub_0805D028(u8 index,const struct Entry61 *src) {
    u8 *base=(u8 *)gUnk_030034E0;
    s32 count=*(u16 *)(base+0x6A);
    if(index>=count*15) index=0;
    *(struct Entry61 *)(base+index*16+0x2E0)=*src;
}
u32 sub_0805D064(const struct Entry61 *src,u32 index) {
    register u32 savedIndex asm("r3")=index;
    register struct Entry61 *dst asm("r1");
    register u32 offset asm("r0");
    asm volatile("" : "+r" (savedIndex));
    switch(*(const u16 *)src) { case 2: dst=(void *)gUnk_030034E0; asm volatile("" : "+r" (dst)); offset=savedIndex*16; asm volatile("" : "+r" (offset)); dst=(void *)((u8 *)dst+offset); asm volatile("" : "+r" (dst) : "r" (offset)); dst=(void *)((u8 *)dst+0x70); *dst=*src; return 1; default:return 0; }
}
