#include "global.h"

/* [ClearWorldMapDestinationAvailability] Decrements destination and clears1u<<index in normal+0x78 or
 * advanced+0x80; returns resulting word. */
u32 sub_08057CAC(u32 value)
{
    u32 result;
    value--;
    if (sub_0800CE30() == 0)
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x78) &= ~(1u << value));
    else
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x80) &= ~(1u << value));
    return result;
}
/* [GetWorldMapAvailabilityMask] Returns signed32 mask at scene+0x78 when normal; otherwise+0x80. */
s32 sub_08057CEC(void)
{
  int new_var2;
  s32 *new_var;
  if (sub_0800CE30() == 0)
  {
    return *((s32 *) (((s8 *) ((void *) gUnk_03005CF4)) + 0x78));
    new_var2 = 0;
 do { } while (new_var2);
  }
  new_var = (s32 *) (((s8 *) (((void *) gUnk_03005CF4) + 0x80)) + 0);
  return *new_var;
}
/* [SetSceneEncounterClearSnapshot] Exact full32 scene+0x50 write/read. */
void sub_08057D14(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x50) = arg0;
}
/* [GetSceneEncounterClearSnapshot] Exact full32 scene+0x50 write/read. */
s32 sub_08057D20(void) {
    return M2C_FIELD(gUnk_03005CF4, s32 *, 0x50);
}
/* [StartAreaReentryCallbackTask] Searches the 30 scene task controls beginning at scene+0xE34 for an inactive
 * record, then builds five meaningful argument words: pixel x/y converted to Q8, u16 width/height packed
 * together, callback and callback argument. Sets flags 0x3C, allocates a 0x400-byte stack once, registers
 * callback 5A874 with stack top allocation+0x3FC and null destructor, starts it, then performs two scheduler
 * signal-1 waits. If no control is free, returns without starting anything. Allocation failure is not checked
 * or retried; no successful-creation guarantee or explicit priority is inferred. The sixth local
 * argument-array word is not initialized and is not read by 5A874. */
void sub_08057D2C(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_0805A874;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 1);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
/* [StartAreaEntryCallbackTask] Searches the 30 scene task controls beginning at scene+0xE34 for an inactive
 * record, then builds five meaningful argument words: pixel x/y converted to Q8, u16 width/height packed
 * together, callback and callback argument. Sets flags 0x3C, allocates a 0x400-byte stack once, registers
 * callback 5A874 with stack top allocation+0x3FC and null destructor, starts it, then performs two scheduler
 * signal-1 waits. If no control is free, returns without starting anything. Allocation failure is not checked
 * or retried; no successful-creation guarantee or explicit priority is inferred. The sixth local
 * argument-array word is not initialized and is not read by 5A874. */
void sub_08057DD0(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_0805A874;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 0);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
/* [StartAnyPlayerAreaReentryCallbackTask] Searches 30 scene callback controls at scene+0xE34 for an inactive
 * entry. Stores pixel x/y shifted left by 8, u16 width/height packed in one word, callback and callback
 * argument into the first five local argument words; the sixth word is uninitialized and unused by callback
 * 28830. Sets task flags 0x3C, allocates a 0x400-byte stack once, registers 28830 with stack top
 * allocation+0x3FC and null destructor, starts the task, then waits twice on scheduler signal 1. A full pool
 * returns without creating a task. Allocation is not checked or retried, and creation success or elapsed-frame
 * duration is not guaranteed. */
void sub_08057E74(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_08028830;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 1);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
/* [StartAnyPlayerAreaEntryCallbackTask] Searches 30 scene callback controls at scene+0xE34 for an inactive
 * entry. Stores pixel x/y shifted left by 8, u16 width/height packed in one word, callback and callback
 * argument into the first five local argument words; the sixth word is uninitialized and unused by callback
 * 28830. Sets task flags 0x3C, allocates a 0x400-byte stack once, registers 28830 with stack top
 * allocation+0x3FC and null destructor, starts the task, then waits twice on scheduler signal 1. A full pool
 * returns without creating a task. Allocation is not checked or retried, and creation success or elapsed-frame
 * duration is not guaranteed. */
void sub_08057F18(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_08028830;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 0);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
/* [SetSceneEntityOverlayAnimation] Searches15 actor handles and writes overlay+0x42; enemies1..5 resolve key
 * then call19EB8; selector0 writes player11E. */
void sub_08057FBC(u32 selector, u32 value)
{
    struct PlayerValue { u8 pad[0x11E]; u16 value; u8 tail[0x2C]; };
    u16 *target;
    if (selector > 0x100000) {
        u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
        u8 *result;
        u32 i;
        for (i = 0; i <= 14; i++, entry += 0x70) {
            if (*(u32 *)entry == selector) {
                result = entry;
                goto found;
            }
        }
        sub_080003F0();
        result = 0;
found:
        if (!result)
            return;
        target = (u16 *)(result + 0x42);
    } else if (selector != 0) {
        selector--;
        if (selector <= 4) {
            void **address = &gUnk_030056F4;
            u32 offset = selector * 0x2E0;
            u8 *slot = *address;
            slot += offset;
            sub_08019EB8(*(u16 *)(slot + 2), (u16)value);
        }
        return;
    } else {
        u32 index = sub_080020F4();
        index *= 0x14C;
        target = (u16 *)(index + (u32)gUnk_03003CE0);
        target = (u16 *)((u8 *)target + 0x11E);
    }
    *target = value;
}
/* [RequestLinkedFieldItemSpawnAtPosition] Builds a 16-byte item record, stores low16(kind) at+0, and for
 * kind10 writes the full value at+4 while leaving other fields uninitialized. Other kinds store low16(value)
 * at+2 and zero the twelve bytes at+4..+15. Repeatedly calls sub_08067B9C(x<<8,y<<8,&record), waiting for
 * signal1 after each rejected enqueue, until accepted. This is a spawn request; it does not wait for
 * field-item creation or prove input coordinates are tile indices. The producer67B9C copies this record into a
 * tag0x97 queue entry and does not itself test for duplicate spawns. No delivery,
 * complete-record-initialization or cancellation guarantee is claimed. */
void sub_08058048(u32 x, u32 y, u32 kind, u32 value)
{
    struct Item { u16 kind, value; u8 tail[12]; } data;
    if (kind == 10) {
        data.kind = kind;
        *(u32 *)data.tail = value;
    } else {
        u32 i;
        data.kind = kind;
        data.value = value;
        for (i = 0; i < 12; i++)
            data.tail[i] = 0;
    }
    while (sub_08067B9C(x << 8, y << 8, &data) == 0)
        sub_080003F0();
}
/* [SumBagAndConfiguredStashCurrency] Sums word +4 for kind-10 records in all 25 bag slots, then
 * configured_stash_rows*15 records beginning at character/inventory base +0x2E0, where the base is read
 * through pointer global 030034E0. Configured row count is the unsigned halfword at that base +0x6A. Uses
 * 32-bit addition without saturation; does not clamp configured capacity to the physical 75-record layout and
 * does not change any item. */
s32 sub_08058094(void)
{
    s32 temp;
    s32 i;
    s32 j;
    s32 total;
    u8 *entry;
    u8 *other;
    register s32 *state asm("r1");
    register s32 *saved asm("r4");
    total = 0;
    state = &gUnk_030034E0;
    entry = (u8 *)*state + 0x150;
    saved = state;
    i = 24;
    do {
        if (*(u16 *)entry == 10)
            total += *(s32 *)(entry + 4);
        i--;
        entry += 16;
    } while (i >= 0);
    other = (u8 *)*saved + 0x2E0;
    temp = *(u16 *)((u8 *)*saved + 0x6A) * 15;
    if (temp > 0) {
        j = temp;
        do {
            if (*(u16 *)other == 10)
                total += *(s32 *)(other + 4);
            j--;
            other += 16;
        } while (j != 0);
    }
    return total;
}
/* [SpendInventoryCurrencyWrapper] Forwards incoming machine R0 unchanged to the inventory-currency spender
 * 7C014 and returns without a result contract. Its incomplete no-argument C declaration does not mean the
 * machine amount argument is absent. It inherits bag-first then stash/menu-stock debit behavior, possible
 * partial spending on insufficient currency and lack of upfront affordability validation; no rollback, success
 * result or implicit zero amount is inferred. */
void sub_080580EC(u32 arg0) {
    sub_0807C014(arg0);
}
/* [CountMatchingStashItemSlots] Counts records whose kind halfword and item-id halfword equal the two complete
 * 32-bit arguments, across all 75 physical stash slots. Does not restrict the scan to configured stash
 * capacity, exclude kind zero or sum currency amounts. Arguments above 65535 cannot equal the loaded
 * halfwords. */
u32 sub_080580F8(u32 a, u32 b)
{
    u32 count = 0;
    u32 i = 0;
    u8 *initial = (u8 *)gUnk_030034E0;
    u16 *first = (u16 *)(initial + 0x2e0);
    u8 *base = initial;
    for (; i <= 0x4a; first += 8, base += 16, i++)
        if (*first == a && *(u16 *)(base + 0x2e2) == b)
            count++;
    return count;
}
/* [CountMatchingBagItemSlots] Counts matching kind/id halfword pairs across all 25 bag records. Compares both
 * loaded halfwords with the complete 32-bit arguments, includes matching kind-zero records and counts slots
 * rather than currency quantities or stack amounts. */
u32 sub_0805813C(u32 a, u32 b)
{
    u32 count = 0;
    u32 i = 0;
    u8 *initial = (u8 *)gUnk_030034E0;
    u16 *first = (u16 *)(initial + 0x150);
    u8 *base = initial;
    for (; i <= 0x18; first += 8, base += 16, i++)
        if (*first == a && *(u16 *)(base + 0x152) == b)
            count++;
    return count;
}
/* [TryAddRepeatedItemsToBag] Attempts count calls to bag insertion 5AB20 and ignores every return value; zero
 * count inserts nothing. If the full type argument is not 10, initializes a 16-byte record with low-halfword
 * kind/id and twelve zero bytes, then reuses it. If type equals 10, resets only kind and word +4 amount before
 * each attempt; other currency-record bytes remain uninitialized. This is not a capacity guarantee or an
 * atomic grant, and currency insertion can modify existing stacks before an unsuccessful return. */
void sub_0805817C(u32 type, u32 value, u32 count)
{
    struct Item { u16 kind, value; u8 tail[12]; } record, money;
    u32 i;
    if (type != 10) {
        record.kind = type;
        record.value = value;
        for (i = 0; i < 12; i++)
            record.tail[i] = 0;
        for (i = 0; i < count; i++)
            sub_0805AB20(&record);
    } else {
        for (i = 0; i < count; i++) {
            money.kind = 10;
            *(u32 *)money.tail = value;
            sub_0805AB20(&money);
        }
    }
}
/* [RemoveMatchingBagItemSlots] Walks 25 bag records in ascending index and clears only kind/id halfwords for
 * matching complete 32-bit arguments. Decrements the requested count on each match and stops when the
 * decremented count becomes zero; leaves bytes +4..15 untouched and returns no removal count. An initial zero
 * count wraps on the first match, so all matches in this bounded scan are cleared. Does not shift records or
 * inspect stash slots. */
void sub_080581E4(u32 a, u32 b, u32 count)
{
    u32 i;
    for (i = 0; i <= 24; i++) {
        u32 address = gUnk_030034E0;
        u32 offset = i * 16;
        u8 *base = (u8 *)(address + offset);
        if (*(u16 *)(base + 0x150) == a && *(u16 *)(base + 0x152) == b) {
            count--;
            *(u16 *)(base + 0x150) = 0;
            *(u16 *)(base + 0x152) = 0;
            if (!count)
                break;
        }
    }
}
/* [GetLocalPlayerWorldPixelX] Queries the local player index, selects its 0x14C-byte runtime record at
 * 03003CE0, reads signed Q8 world X at +0x8C and returns arithmetic shift right by 8. The result is a signed
 * world pixel coordinate, including floor-style conversion for negative fractional Q8 values; it is not
 * screen-relative or a packet position. */
s32 sub_08058240(void)
{
    u32 i = sub_080020F4();
    u8 *base = (u8 *)gUnk_03003CE0;
    i *= 0x14C;
    base += 0x8C;
    return *(s32 *)(i + (u32)base) >> 8;
}
/* [GetLocalPlayerWorldPixelY] Queries the local player index, selects its 0x14C-byte runtime record at
 * 03003CE0, reads signed Q8 world Y at +0x90 and returns arithmetic shift right by 8. It does not subtract
 * camera scroll, read a packet coordinate or change player state. */
s32 sub_08058260(void)
{
    u32 i = sub_080020F4();
    u8 *base = (u8 *)gUnk_03003CE0;
    i *= 0x14C;
    base += 0x90;
    return *(s32 *)(i + (u32)base) >> 8;
}
/* [ResetActiveEnemyScriptStates] Scans exactly5 slots, only active and state12 records get state0. */
void sub_08058280(void)
{
    u8 *entry = (u8 *)gUnk_030056F4;
    u32 i;
    s32 mask;
    for (i = 0; i <= 4; i++, entry += 0x2E0) {
        mask = gUnk_030056FC & (1u << i);
        if (mask && *(u16 *)(entry + 0xC) == 0xC)
            *(u16 *)(entry + 0xC) = 0;
    }
    sub_08019F04();
}
/* [HasEmptyBagItemSlot] Returns 1 when FindFirstEmptyBagSlot returns a nonnegative index, otherwise 0. Does
 * not reserve the slot or test whether a currency amount could fit by merging into a nonempty stack. */
s32 sub_080582C0(void)
{
  int new_var;
 do { if (sub_0805CFA0() >= 0) { return 1; do { } while (new_var); } return 0; } while (0);
}
/* [StartGameplayMessageAfterUiSlotsIdle] First waits until no dialogue task slot is used, then waits until no
 * text-window slot is used, yielding on scheduler signal 1 while either separate loop remains busy. Calls
 * fixed-layout dialogue starter 5DF38 with arguments (1,15,2,0), positive duration 45 and resource ID 0x140000
 * OR the low 16 bits of the input; returns the starter result. The matched starter uses its fixed layout and
 * normalizes positive duration to 140, so 45 is not an exact display duration. These sequential checks do not
 * constitute an atomic UI lock or a guarantee that creation succeeds. */
u32 sub_080582D4(u16 value)
{
    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();
    return sub_0805DF38(1, 0xF, 2, 0, 0x2D, 0x140000 | value);
}
/* [WaitForDialogueStateComplete] Repeatedly tests DialogueStateIsComplete on the original pointer and waits on
 * scheduler signal 1 while false. A complete dialogue returns without an initial wait; null never satisfies
 * the predicate and therefore waits indefinitely. This checks dialogue state +0x74 rather than waiting for the
 * task slot bitmap to become free. */
void sub_08058318(s32 arg0)
{
    while (!sub_0805EEFC(arg0))
        sub_080003F0();
}
/* [HandleOverlapCallbackAndExit] Player box size24/32 and target pixel coordinates shifted8. */
void sub_08058334(u32 x, u32 y, u16 a, u16 b, u32 callback)
{
    u32 pos[2];
    u32 info;
    u32 packed;
    u8 *player = (u8 *)&gUnk_03003D6C + sub_080020F4() * 0x14C;
    info = 0x00200018;
    pos[0] = x << 8;
    pos[1] = y << 8;
    packed = a | ((u32)b << 16);
    if (sub_08021FE0(player, pos, &info, &packed)) {
        struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
        u32 i;
        for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
        if (i <= 0x1D) {
            while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
                sub_080003F0();
            entry->u8 = 0x3C;
            entry->uC = (void *)callback;
            entry->u10 = entry->u20 + 0x3FC;
            entry->u24 = 0;
            sub_08000274((u32)entry, 0);
        }
        sub_0800035C();
    }
}
/* [CloseDialoguesAndWaitForSlotsUnused] Calls the sequential dialogue-close helper 5EFBC, then performs at
 * least one scheduler signal-1 wait and continues waiting until dialogue-task bitmap 03005D6C has no low-four
 * used bits. Completion of an individual dialogue state and release of its task slot are separate conditions.
 * No elapsed-frame duration or bounded completion is inferred. */
void sub_080583EC(void) {
    sub_0805EFBC();
    do {
        sub_080003F0();
    } while (sub_0805F184() != 0);
}
/* [CancelTaskIfScheduled] For a nonnull task control that TaskIsScheduled reports scheduled, calls
 * CancelTaskWithDestructor. Does nothing for null or idle controls and does not itself free the control
 * allocation. */
void sub_08058404(s32 arg0) {
    if ((arg0 != 0) && (sub_08000470((u32)arg0) != 0)) {
        sub_080003A8(arg0);
    }
}
/* [TestExitOrEnemySurvival] Reads scene flags+4 bit4 and returns1 if set; otherwise calls19C3C at420. Null
 * checks later do not guard initial read. */
s32 sub_08058420(void)
{
  s8 *new_var;
  u16 *new_var2;
  s32 *new_var3;
  new_var = (s8 *) gUnk_03005CF4;
  new_var2 = (u16 *) (new_var + 4);
  if ((((u16) (*new_var2)) >> 4) & 1)
  {
    return 1;
  }
  new_var3 = &gUnk_03005CF4;
  if ((gUnk_03005CF4 && (*new_var3)) && (*new_var3))
  {
  }
  return sub_08019C3C();
}
/* [WaitUntilLocalPlayerInBox] Builds a box at (x << 8, y << 8) with size halfwords (w, h), then yields with
 * TaskWaitForSignal1 until TestFixedPointAxisAlignedBoxOverlap reports that the local player's position +0x8C
 * (zero size) is inside it. */
void sub_08058444(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    struct PlayerW12 *entry;
    a <<= 16;
    result = 0;
    pos[0] = x << 8;
    pos[1] = y << 8;
    b <<= 16;
    packed = (a >> 16) | b;
    entry = &((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    while (sub_08021FE0(&entry->pos8C, pos, &result, &packed) == 0)
        sub_080003F0();
}
/* [WaitForPlayerBoxConfirmation] Packs low16 width/height; shifts x/y8; player point box size0. */
void sub_08058498(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    struct PlayerW12 *entry;
    a <<= 16;
    result = 0;
    pos[0] = x << 8;
    pos[1] = y << 8;
    b <<= 16;
    packed = (a >> 16) | b;
    entry = &((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    while (sub_08021FE0(&entry->pos8C, pos, &result, &packed) == 0 ||
           !(*(u16 *)((u8 *)entry + 0x14) & 1)) {
        if (sub_08058608()) return;
        sub_080003F0();
    }
}
/* [MarkSceneAreaEvent] Sets/clears1<<arg0 at scene word+0x38, preserving other bits. */
void sub_080584FC(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) | (1 << arg0));
}
/* [UnmarkSceneAreaEvent] Sets/clears1<<arg0 at scene word+0x38, preserving other bits. */
void sub_08058510(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) & ~(1 << arg0));
}
/* [IsSceneAreaEventMarked] Tests1<<bit in scene+0x38 and returns normalized Boolean. */
s32 sub_08058524(s32 bit)
{
    return (M2C_FIELD(gUnk_03005CF4, u32 *, 0x38) & (1 << bit)) != 0;
}
/* [IsSceneEventFlagSetInBank] Returns bit (n & 7) of byte (n >> 3) of the scene event-flag array at scene
 * state +0x1B7 (bank 0) or +0x1C3 (nonzero bank) as 0 or 1. Explicit-bank form of sub_08057AE8. */
u32 sub_0805853C(u32 bit, u32 alternate)
{
    u32 index = bit >> 3;
    u8 *base;
    bit &= 7;
    if (alternate == 0)
        base = (u8 *)gUnk_03005CF4 + 0x1B7;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1C3;
    return (base[index] >> bit) & 1;
}
/* [StartObjectBreakCallbackTask] Searches30 controls; initializes descriptor words3/4 and child2A104,
 * allocates0x400 once, schedules and waits twice. */
void sub_08058574(u32 callback, u32 arg1, u32 arg2)
{
    struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    u32 i;
    s32 busy;
    u32 args[6];
    for (i = 0; i <= 0x1D && (busy = sub_08000470((u32)entry)) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        /* The original caller only fills these two argument slots. */
        args[3] = arg1;
        args[4] = arg2;
        entry->u8 = 0x3C;
        entry->u20 = (s32)sub_08001494(0x400);
        entry->uC = sub_0802A104;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = busy;
        sub_08000274((u32)entry, args, callback);
        sub_080003F0();
        sub_080003F0();
    }
}
/* [EnqueueNearbyFieldItemRemoval] Matching-object audit text+948..958: LSLS R0/R1,#8; BL5D37C; immediately
 * BL687A8. IncomingR2 is untouched before finder and finder-returnedR0 is unchanged into queue helper. Final
 * popR0 restores return address, so no returned admission result is exposed. */
void sub_080585F4(s32 arg0, s32 arg1) {
    sub_0805D37C(arg0 << 8, arg1 << 8);
    sub_080687A8();
}
/* [QueryMapSetZeroActive] Returns0CCCC predicate unchanged. */
s32 sub_08058608(void) {
    return sub_0800CCCC();
}
/* [GetCurrentMapAreaIndex] Returns map-state f90 as u16. */
u16 sub_08058614(void)
{
    return gUnk_03003170.f90;
}
/* [AppendAndStartEnemySpawnGroup] Snapshots scene pointer and its unsigned halfword group count at +0xA as the
 * registration index. If the supplied record first signed halfword is nonzero, stores the record pointer at
 * snapshot scene+0x724+index*4, calls RestartEnemySpawnGroupTask (23ED8) with that pointer/index, then reloads
 * the global scene pointer and increments its current group-count halfword. A zero first halfword does none of
 * those writes/calls. No index limit, empty-slot check or return-status contract is added. */
void sub_08058620(const s16 *arg0)
{
    struct State { u8 pad[0x724]; const s16 *items[32]; };
    u8 *state = (u8 *)gUnk_03005CF4;
    u32 index = *(u16 *)(state + 0xA);
    if (*arg0 != 0) {
        ((struct State *)state)->items[index] = arg0;
        sub_08023ED8(arg0, index);
        (*(u16 *)((u8 *)gUnk_03005CF4 + 0xA))++;
    }
}
/* [AudioStartSongWithLinkErrorGuard] When link-session flags030027D0 lack0x20, calls checked song
 * starter06D08. The bit is set after repeated missing peer reception in01BE4; this wrapper suppresses song
 * start while it is set. It does not prove that every audio path is globally muted or identify a
 * song/sound-effect channel. */
void sub_0805865C(s32 arg0)
{
    if ((gUnk_030027D0 & 0x20) == 0)
        ((void (*)(s32))sub_08006D08)(arg0);
}
/* [AudioStopSongWrapper] Forwards incoming machine R0 unchanged to AudioStopSong 06D5C and returns. The target
 * interprets the low halfword as a song ID and requests m4aSongNumStop only for IDs at most 0x1AB. Its
 * incomplete no-argument C declaration does not establish an ignored or implicit-zero song argument. The
 * wrapper does not clear the separate tracked-song word or add the link-error guard used by other audio
 * helpers. */
void sub_0805867C(u32 arg0) {
    sub_08006D5C(arg0);
}
/* [AudioSetTrackedSongAndReturnPrevious] Saves old03005CF8, stores supplied32-bit song value, calls checked
 * start/continue06CB4 unless link-session flag0x20, then returns previous value. Current-song tracking updates
 * even when that guard suppresses playback. */
s32 sub_08058688(s32 value)
{
    s32 old = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0)
        ((void (*)(s32))sub_08006CB4)(value);
    return old;
}
/* [AudioStopAndClearTrackedSong] Reads tracked song03005CF8, calls checked stop06CD0 with its low16 bits
 * through existing alias, clears tracker and returns previous32-bit value. */
s32 sub_080586B4(void)
{
    s32 value = gUnk_03005CF8;
    ((void (*)(s32))sub_08006CD0)(value);
    gUnk_03005CF8 = 0;
    return value;
}
/* [AudioFadePlayersAndClearTrackedSong] Reads tracked song03005CF8, calls fade-all06C30, clears tracker and
 * returns previous song. Source declaration omits a formal speed argument although call sites pass one; this
 * name does not establish a corrected C prototype or ABI. */
s32 sub_080586D0(u32 arg0) {
    s32 temp_r5;

    temp_r5 = gUnk_03005CF8;
    sub_08006C30(arg0);
    gUnk_03005CF8 = 0;
    return temp_r5;
}
/* [ConfigureEnemyLocalCallback] Zero index returns; decrements1-based index and waits active bit without bound
 * or abort. */
void sub_080586EC(u32 index, u32 x, u32 y)
{
    u8 *entry;
    s32 ready;
    if (index == 0)
        return;
    index--;
    ready = gUnk_030056FC & (1u << index);
    while (!ready) {
        sub_080003F0();
        ready = gUnk_030056FC & (1u << index);
    }
    entry = (u8 *)gUnk_030056F4 + index * 0x2E0;
    *(u32 *)(entry + 0x30) = x;
    *(u32 *)(entry + 0x34) = y;
    *(u32 *)(entry + 0x38) = 0;
    *(u32 *)(entry + 0x3C) = 0;
}
/* [ResetActorActionSelectionWrapper] Calls1A388 with no explicit recovered-C argument. */
void sub_0805874C(void) {
    sub_0801A388();
}
/* [StartSpriteEffectWithMapDrawMode] Converts supplied pixel X/Y to Q8 by keeping the low 32 bits of each left
 * shift by 8, forwards the third argument as animation selector and requests constructor 73E2C with fourth
 * argument 1. The callback uses map-derived draw mode and screen Y +1 in this case. Performs no
 * coordinate/animation validation or success reporting, and the constructor can decline to start. */
void sub_08058758(s32 arg0, s32 arg1, s32 arg2) {
    sub_08073E2C(arg0 << 8, arg1 << 8, arg2, 1);
}
/* [StartSpriteEffectWithDefaultDrawMode] Sibling pixel-to-Q8 wrapper for constructor 73E2C, forwarding the
 * third argument as animation selector with fourth argument 0. Callback draws through ordinary descriptor mode
 * 0 without the selected-case screen Y +1 offset. It still computes the map draw-mode query during the
 * callback loop; this name does not imply no map access. No coordinate/animation validation or success status
 * is provided. */
void sub_08058768(s32 arg0, s32 arg1, s32 arg2) {
    sub_08073E2C(arg0 << 8, arg1 << 8, arg2, 0);
}
/* [RegenerateItemCollectionBanksWrapper] Calls5C7B8 with no explicit recovered-C argument. */
void sub_08058778(u32 arg0) {
    sub_0805C7B8(arg0);
}
/* [ProcessFieldItemRecipeWrapper] Returns5CDF8 result directly. */
s32 sub_08058784(void) {
    return sub_0805CDF8();
}
