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
#ifdef NONMATCHING
u32 sub_0805AB20(u8 *arg)
{
    extern u8 *mapItems asm("gUnk_030034E0");
    u8 *item = arg;
    u32 type = *(u16 *)item;
    register u8 **owner asm("r12") = &mapItems;
    register s32 previous asm("r6");
    s32 selected;
    s32 result;
    s32 best;
    s32 i;
    u8 *entry;
    register s32 cap asm("r5");
    u32 offset;
    u32 sum;
    if (type != 0xA) goto empty;
    previous = -1;
    goto find;
merge:
    previous = selected;
    if (selected > 0x18) goto empty;
    offset = selected * 0x10;
    offset += 0x150;
    entry = *owner;
    entry += offset;
    *(u16 *)entry = 0xA;
    sum = *(u32 *)(entry + 4) + *(u32 *)(item + 4);
    if (sum <= 100000) goto stacked;
    *(u32 *)(entry + 4) = 100000;
    *(u32 *)(item + 4) = sum - 100000;
find:
    selected = previous;
    if (previous < 0) selected = 0;
    offset = selected * 0x10;
    offset += 0x150;
    entry = *owner;
    entry += offset;
    best = -1;
    for (i = selected; i <= 0x18; i++, entry += 0x10) {
        cap = 100000;
        if (*(u16 *)entry == 0xA && best < *(s32 *)(entry + 4) && *(s32 *)(entry + 4) != cap) {
            selected = i;
            best = *(s32 *)(entry + 4);
        }
    }
    result = selected;
    if (best < 0) result = -1;
    if (previous != result && result >= 0) {
        selected = result;
        goto merge;
    }
empty:
    i = 0;
    entry = mapItems + 0x150;
    for (; i <= 0x18; i++, entry += 0x10)
        if (*(u16 *)entry == 0) goto found;
    selected = -1;
    goto check;
found:
    selected = i;
check:
    if (selected == -1) return 0;
    goto insert;
stacked:
    *(u32 *)(entry + 4) = sum;
    goto success;
insert:
    sub_0805CFF8((u8)selected, (const u32 *)item);
success:
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AB20);
#endif
#ifdef NONMATCHING
u32 sub_0805AC08(u8 *item)
{
    extern u8 *mapItems asm("gUnk_030034E0");
    s32 previous;
    s32 selected;
    s32 best;
    s32 i;
    s32 limit;
    u8 *entry;
    u32 sum;
    if (*(u16 *)item != 0xA) goto empty;
    previous = -1;
    goto find;
merge:
    previous = selected;
    limit = *(u16 *)(mapItems + 0x6A) * 15;
    if (limit > 0x18) goto empty;
    entry = mapItems + selected * 0x10 + 0x2E0;
    *(u16 *)entry = 0xA;
    sum = *(u32 *)(entry + 4) + *(u32 *)(item + 4);
    if (sum <= 100000) {
        *(u32 *)(entry + 4) = sum;
        return 1;
    }
    *(u32 *)(entry + 4) = 100000;
    *(u32 *)(item + 4) = sum - 100000;
    if (selected >= *(u16 *)(mapItems + 0x6A) * 15) goto empty;
find:
    selected = previous;
    if (previous < 0) selected = 0;
    entry = mapItems + selected * 0x10 + 0x2E0;
    best = -1;
    limit = *(u16 *)(mapItems + 0x6A) * 15;
    for (i = selected; i < limit; i++, entry += 0x10) {
        if (*(u16 *)entry == 0xA && best < *(s32 *)(entry + 4) && *(s32 *)(entry + 4) != 100000) {
            selected = i;
            best = *(s32 *)(entry + 4);
        }
    }
    if (best < 0) selected = -1;
    if (previous != selected && selected >= 0) goto merge;
empty:
    entry = mapItems + 0x2E0;
    for (i = 0; i <= 0x18; i++, entry += 0x10)
        if (*(u16 *)entry == 0) goto found;
    return 0;
found:
    sub_0805D028((u8)i, (const u32 *)item);
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AC08);
#endif
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
#ifdef NONMATCHING
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
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AD78);
#endif
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
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE94);
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
#ifdef NONMATCHING
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
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B140);
#endif
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
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B4CC);
#ifdef NONMATCHING
void *sub_0805B618(void)
{
    u32 i;
    u8 *base = *(u8 **)0x03005D58;
    u32 active = 0;
    u32 lowest = 0x11170;
    u32 lowestIndex = 0;
    for (i = 0; i < 16; i++) {
        u8 *slot = base + i * 0x20;
        if (*(u16 *)(slot + 0xA) & (1u << i)) {
            active++;
            if (*(u16 *)(slot + 0xC) < lowest) {
                lowest = *(u16 *)(slot + 0xC);
                lowestIndex = i;
            }
        }
    }
    if (active > 15)
        *(u16 *)(base + lowestIndex * 0x20 + 0xA) = 0;
    for (i = 0; i < 16; i++) {
        u8 *slot = base + i * 0x20;
        if ((*(u16 *)(slot + 0xA) & 3) == 0)
            return slot;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B618);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B688);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805BD5C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C208);
#ifdef NONMATCHING
u32 sub_0805C4FC(u8 *out, u32 count, u32 category)
{
    u32 roll;
    u8 *table;
    u32 special;
    u8 *group;
    u32 n;
    u32 pick;
    u8 *entry;
    u32 i;
    *(u32 *)out = 0;
    if (count == 0) {
        *(u16 *)out = 0;
        *(u16 *)(out + 2) = 0;
        return 0;
    }
    count--;
    roll = sub_080008C8() % 100;
    table = (u8 *)0x084E6DD8 + count * 36;
    special = (*(u16 *)(table + 0) >= roll);
    if (category == 8) category = 6;
    group = *(u8 **)(table + 4 + category * 4);
    n = *(u16 *)group;
    pick = sub_080008C8() % (*(u16 *)(group + 2) + 1);
    entry = group + 8;
    for (i = 0; i < n; i++, entry += 8) {
        u16 limit = *(u16 *)(entry + 4);
        if (pick <= limit) {
            *(u16 *)out = *(u16 *)entry;
            *(u16 *)(out + 2) = *(u16 *)(entry + 2);
            if (*(u16 *)out == 0xA) {
                u32 span;
                u32 extra;
                *(u32 *)(out + 4) = pick;
                span = *(u16 *)(entry + 2);
                extra = sub_080008C8() % ((span * 15) / 10);
                if (extra < span / 2) extra = span / 2;
                *(u32 *)(out + 4) = extra;
            }
            break;
        }
    }
    if (special)
        sub_0805C208(out, 0);
    if (*(u16 *)out == 9) {
        *(u16 *)(out + 4) = sub_080008C8() % 10 + *(u16 *)((u8 *)&gUnk_03003170 + 0x8C) * 10;
        if (sub_0800CE30()) *(u16 *)(out + 4) += 100;
    }
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C4FC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C620);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C7B8);
#ifdef NONMATCHING
void sub_0805CB04(u32 index, u8 *out)
{
    u32 i;
    const u8 *table = (const u8 *)gUnk_084EB7E8 + index * 0x30;
    for (i = 0; i <= 0xB; i++, table += 4, out += 0x10) {
        u16 type = *(u16 *)table;
        *(u16 *)out = type;
        *(u16 *)(out + 2) = *(u16 *)(table + 2);
        if (type == 2) {
            out[8] = 0;
            *(u16 *)(out + 4) = 0;
            out[6] = 0;
            out[7] = 0;
            out[9] = 0;
        }
        if (type == 0xFFFF) {
            if ((sub_080008C8() & 1) != 0)
                sub_0805C4FC(out, 0x14, index);
            else {
                *(u16 *)out = 0;
                *(u16 *)(out + 2) = 0;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB04);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB8C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CDF8);
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
