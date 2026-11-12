#include "global.h"
struct Entry61 { u32 words[4]; };

/* [ApproachAndWaitAtAreaExitDirection3] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 3, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A630(s32 arg0) {
    sub_0802413C(arg0, 3);
}
/* [ApproachAndWaitAtAreaExitDirection4] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 4, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A63C(s32 arg0) {
    sub_0802413C(arg0, 4);
}
/* [ApproachAndWaitAtAreaExitDirection5] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 5, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A648(s32 arg0) {
    sub_0802413C(arg0, 5);
}
/* [ApproachAndWaitAtAreaExitDirection6] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 6, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A654(s32 arg0) {
    sub_0802413C(arg0, 6);
}
/* [ApproachAndWaitAtAreaExitDirection7] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 7, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A660(s32 arg0) {
    sub_0802413C(arg0, 7);
}
/* [CancelScheduledEnemySpawnGroupTasks] Visits 32 scene task controls at +0x1834 with stride 0x28. For each,
 * checks scheduler membership and calls 003A8 only when present, rereading the scene pointer for cancellation.
 * Does not directly clear enemy actors, group slot states, the group count, network queues or the group-record
 * pointer table. */
void sub_0805A66C(void)
{
    u32 i = 0;
    struct GameState **owner = &gGameState;
    u32 offset = 0x1834;
    for (; i <= 0x1F; offset += 0x28, i++)
        if (sub_08000470((u32)*owner + offset)) sub_080003A8((u32)*owner + offset);
}
/* [ClearSceneRequestFlag] Clears mask0x100 in game-state halfword+4 and preserves other bits; no allocation,
 * wait or return value. */
void sub_0805A6A0(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFEFF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
/* [TaskRunDelayedTwoArgumentCallback] Counts scheduler waits until its counter is at least the record word at
 * +0xC, then invokes callback +0 with arguments +4 and +8. Re-reads the wait threshold after each wait and
 * reads the callback/arguments only after waiting finishes, so the record remains live mutable input. A zero
 * threshold invokes the callback without an internal wait. No fixed elapsed-video-frame guarantee is
 * established. */
void sub_0805A6B8(void *arg0)
{
    u32 i;
    for (i = 0; i < M2C_FIELD(arg0, u32 *, 0xC); i++)
        sub_080003F0();
    ((void (*)(s32, s32))M2C_FIELD(arg0, u32 *, 0))(M2C_FIELD(arg0, s32 *, 4), M2C_FIELD(arg0, s32 *, 8));
}
/* [IsSceneObjectInteractionBlocked] Returns exactly bit 7 of the current scene flags halfword at state+4 as
 * zero or one. This is the flag used by animated scene objects to suppress starting their interaction
 * callbacks. It does not query callback task activity, count outstanding callbacks or report whether the
 * entire game is paused. */
s32 sub_0805A6DC(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 7) & 1;
}
/* [BlockSceneObjectInteraction] Sets bit 7 in the current scene flags halfword and preserves the other bits.
 * The animated scene-object task checks this gate before starting its player-confirm interaction callback. It
 * does not schedule a task, disable object drawing or cancel an existing callback. */
void sub_0805A6F0(void)
{
    gGameState->flags |= 0x80;
}
/* [UnblockSceneObjectInteraction] Clears bit 7 in the current scene flags halfword and preserves the other
 * bits. This is also installed as the destructor of the interaction callback task created by 5A58C. The
 * operation clears a flag without counting other outstanding tasks or restoring an earlier flag value. */
void sub_0805A704(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFF7F & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
/* [FindSharedObjectPaletteSlot] Reads active bitmap 03005CFC once and scans the same three registry records in
 * ascending index order 0..2. Requires the full key, zero-extended u16 secondary selector and a nonzero 32-bit
 * reference count, then returns handle index+4; otherwise returns 65535. It does not allocate a slot,
 * increment a reference count, modify the bitmap or inspect uploaded colors. Its search order and
 * nonzero-count condition differ from acquisition. */
u32 sub_0805A71C(u32 key, u16 value)
{
    extern u32 activeSlots asm("gUnk_03005CFC");
    extern u8 slotRecords[] asm("gUnk_03005D00");
    u32 i = 0;
    u32 flags = activeSlots;
    u32 result = 0x40000;
    u32 offset = 0;
loop:
    if (flags & (1u << i)) {
        u32 base = (u32)slotRecords;
        u32 address;
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
/* [ReleaseSceneObjectOnTaskExit] Destructor for scene object tasks. For the record whose embedded task control
 * (+0x48) is the argument, calls ReleaseSharedObjectPaletteSlot with its handle +0x40 and clears that record's
 * bit in the active-object mask scene state +0x54. CancelSceneCallbackAndObjectTasks documents that the object
 * constructor installs this destructor. */
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
/* [SpawnSceneObjectAtPixelPosition] Searches the 15 embedded object task controls for the lowest inactive
 * slot, independently of the object bitmap. Sets its active bit, assigns the next full 32-bit object ID and
 * increments the scene counter, stores the full kind word and startup word+0x3C=1, and converts pixel x/y to
 * Q8 by low 32-bit left shift 8. Allocates a 0x400-byte stack once, registers callback 284F4, flags 0x3C,
 * stack top allocation+0x3FC and destructor 5A780, starts it with the object-record pointer, then returns that
 * record current ID. A full task pool returns 0. Allocation failure, type/resource bounds and ID wrap are not
 * checked here; it does not wait for resource or palette setup. */
u32 sub_0805A7C4(u32 id, u32 x, u32 y)
{
    u32 i;
    u32 mem;
    u32 one;
    u8 *base = (u8 *)gGameState;
    register u32 offset asm("r1") = 0x7A4;
    u8 *entry = base + offset;
    u8 *task;
    u8 *owner;
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
/* [TaskStartSceneCallbackOnPlayerAreaEntry] Captures the current local-player runtime position pointer once
 * and copies five trigger arguments before any scheduler waits: target Q8 x/y, packed u16 width/height,
 * callback and callback argument. Uses a zero-size local-player box with the matched fixed-point AABB test.
 * For nonzero mode, first waits while overlapping; all modes then wait until overlapping and call
 * 57328(argument, callback) once. Bounds are inclusive under the callee, which shifts signed coordinate
 * differences before absolute value. A mode 0 trigger already containing the player can dispatch immediately;
 * mode 1 requires an outside observation first. */
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
/* [StartSecondarySceneTask] Scans30 controls at game state+0x12E4 for an unscheduled control, retries0x400
 * allocation with yields, installs supplied callback with word0x3C/destructor0, forwards argument and returns
 * control. Fullpool reaches C end without defined return expression; no promised null return or callback
 * completion. */
void *sub_0805A8F8(u32 arg0, u32 callback)
{
    u32 i;
    u32 mem;
    u8 *base = (u8 *)gGameState;
    u32 offset = 0x12E4;
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
/* [FindSceneObjectByHandle] Returns the first of the 15 scene object records at scene state +0x7A4 (0x70-byte
 * stride) whose word +0 equals the argument. When none matches, it performs one TaskWaitForSignal1 and returns
 * null. */
void *sub_0805A960(u32 value)
{
    u8 *entry = *(u8 **)0x03005CF4 + 0x7A4;
    u32 i;
    for (i=0; i<=0xE; i++, entry+=0x70)
        if (*(u32 *)entry == value) return entry;
    sub_080003F0();
    return 0;
}
/* [WriteActiveActorWordPairs] Zero index returns; otherwise decrements index, waits until matching actor-mask
 * bit is set, selects actor stride0x2E0 and writes supplied words at+0x38/+0x3C while zeroing+0x30/+0x34. No
 * index bounds validation or termination escape from inactive-bit wait. */
void sub_0805A994(u32 index, u32 a, u32 b)
{
    u32 bit;
    u8 *entry;
    if (index == 0)
        return;
    index--;
    {
        u32 *flags = (u32 *)&gUnk_030056FC;
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
/* [TemporarilyReplaceSongAndRestore] Packed low8 selects song and high16 count of signal waits. Saves current
 * song, writes new song global and starts audio unless muted; waits count or first link-error predicate. If
 * sub_0800CC98()==0 at finish, restores global and previous audio; otherwise leaves replacement global. Zero
 * count restores immediately; no allocation. */
void sub_0805A9F4(u32 packed)
{
    register u32 value asm("r2") = packed;
    u32 frames = value >> 16;
    register u32 previous asm("r4");
    register u32 saved asm("r6");
    u32 wait;
    u32 next;
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
/* [StartPackedDelayedSong] Uses the high halfword as an interruptible wait count and low byte as song id.
 * After wait, only when no fullscreen menu is active updates the tracked song and starts it unless audio mute
 * flag0x20 is set. Zero delay skips wait; interruption skips remaining wait but still reaches menu-gated audio
 * action. */
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
/* [ReplaceSongThenUpdateMusic] Packed low8 selects song and high16 wait count. Saves current song,
 * writes/starts replacement unless muted, waits count or link-error predicate, then if sub_0800CC98()==0 calls
 * the conditional world-map music updater sub_0800A34C(currentLevel,savedSong,1). The updater can leave,
 * change or stop tracked music, so restoration and a fade are not guaranteed. Zero count proceeds immediately. */
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

/* [TryAddItemToBag] Attempts to add an item record to 25 bag slots at character +0x150. For kind 10, searches
 * from the previous selected index for the largest signed nonnegative amount not exactly 100000, preferring
 * the earlier index on ties. Adds incoming amount using 32-bit wrapping arithmetic: a sum at most 100000 is
 * stored and succeeds; a larger sum fills the existing stack to 100000 and replaces the input record amount
 * with the remainder before continuing. Otherwise copies all 16 input bytes to the first kind-zero slot.
 * Returns 1 for a merge/copy or 0 with no empty slot. Failure may follow partial mutation; the input
 * kind/amount is not validated, and a new stack is not necessarily capped. */
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

/* [TryAddItemToStash] Attempts stash insertion using records at character +0x2E0. Currency candidate search
 * spans configured_rows*15 records, with the same signed-largest/exact-100000 exclusion as bag insertion.
 * After selecting a candidate, an original guard skips merging when configured_rows*15 exceeds 24; thus two or
 * more rows take the empty-slot fallback. That fallback scans only 25 records, regardless of configured
 * capacity, and copies through 5D028. Returns 1 for a merge/copy or 0 for no empty candidate. A selected empty
 * index outside configured capacity is redirected to slot zero by the callee, so success does not prove a free
 * configured slot was used. */
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
/* [GetActiveWeaponResource] Returns a category-0xB weapon resource for the local player. When player +0xC
 * differs from +0x64, uses the resource ID at player pointer +0x138 then +0x28. Otherwise uses selected
 * item-slot ID from manager +0x70 + selection *16, but returns null when that slot activation byte +9 is zero.
 * The alternate-player-state meaning is left unresolved; this helper performs no weapon-index bounds
 * validation. */
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
/* [ActivateWeaponSlot] Clears activation bytes of the local player's item-selection slots, then validates the
 * indexed kind-2 item through sub_0805AE34. On success marks that slot active and stores its weapon resource
 * subtype +0x9B into local player +0x10; otherwise stores zero there. Finally enqueues/replaces link tag 0x83
 * through sub_08065DAC and returns that queue operation result, not a pure activation-success boolean. It does
 * not itself store manager selection +0x68 or validate the supplied index. */
s32 impl_0805AD78(u32 index)
{
    extern u8 *mapItems asm("gUnk_030034E0");
    u32 i = 0;
    u8 *item;
    u32 offset;
    u32 valid;
    u8 *players = (u8 *)gUnk_03003CE0;
    register u8 *states asm("r0");
    u32 player;
    u8 *playerBase;
    u8 **owner;
    u8 *table;
    for (; i < players[sub_080020F4() * 0x14C + 0x77]; i++) {
        u8 *slot = mapItems;
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
            u8 *slot = *owner;
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
/* [CanSelectWeaponItem] Returns 0 for null, non-kind-2 items or a nonzero item +8 byte. Resolves the
 * category-0xB weapon record, checks its permission mask +0xAE using current class, then accepts subtype 9
 * directly or requires record +0xAC not exceed the low halfword of sub_0801D028(subtype). The original passes
 * subtype +0x9B in retained r0 even though the local C call has no explicit argument. No prototype change,
 * unrelated character-level interpretation or broader item-kind eligibility is inferred. */
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
/* [CalculateItemValue] Computes a kind-specific item value from resource base price or count. Kinds 2..5
 * return 1 for nonzero item byte +8; otherwise use optional category-0x13 modifier, item bytes +6/+7 as
 * indices into two scaling tables, and sequential unsigned multiply/divide-by-10 stages. Kind 10 uses its raw
 * count; kind 9 IDs 0..4 multiply halfword +4 by 100, 250, 200, 10 or 20. Other supported kinds read their
 * respective resource prices. Null pointers and modifier/table indices are not validated. This is a common
 * valuation input, not universally the final shop sale price. */
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
/* [CalculateEquipmentRepairCost] For kinds 2..5, reads the category-B weapon base price at +0xA0 or
 * category-C/D/E base price at +0x9C. Queries flag keys 10 down to 1 until success or the lower limit. In the
 * CE30 mode returns half the base; otherwise caps that key at 5 and returns base times key divided by 10.
 * Other kinds have zero base. No null check. The flag keys are not named as a repair skill or discount rank. */
u32 sub_0805B068(const u8 *item)
{
    u32 divisor;
    u32 value = 0;
    u32 id;
    u32 category;
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
/* [SumBagAndStashCurrency] Sums word +4 for kind-10 entries in all 25 bag records at manager +0x150 and all 75
 * stash records at +0x2E0, stride 16. Returns the 32-bit sum without considering configured stash capacity or
 * clamping overflow. */
u32 sub_0805B0F0(void)
{
    extern u8 *mapObjects asm("gUnk_030034E0");
    u32 first = 0;
    u32 i = 0;
    register u8 **map asm("r0");
    u8 *base;
    u8 *entry;
    u32 firstOffset;
    register u32 second asm("r4");
    u32 secondOffset;
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
/* [TaskDrawWorldItemIcons] While scene stop predicate CB78 is false, waits on scheduler signal 1 and, when
 * gates CD34/CC98/CD8C allow, scans sixteen 0x20-byte world-item records through pointer global 0x03005D58.
 * For active records (halfword +0xA bit 0), passes Q8 x/y and the item payload at +0x10 to icon renderer 5FC80
 * with world flag 1. CCCC mode filters metadata halfword +8: the nonzero branch requires metadata>>5 nonzero
 * and compares metadata with bit 0x20 cleared against scene-area halfword 03003170+0x90; the zero branch
 * requires metadata>>5 zero. On stop, frees and nulls the item-record buffer, waits until each of six controls
 * through pointer global 0x03005D60 is unscheduled, then frees that control buffer. */
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
        u32 flags = *(u16 *)(entry + 0xA);
        u32 active = 1;
        u8 *payload;
        active &= flags;
        payload = entry + 0x10;
        if (active) {
            if (sub_0800CCCC() != 0) {
                u32 masked;
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
/* [InitializeWorldItemPoolAndStartDrawTask] Allocates 0x200 bytes and stores the buffer pointer in global
 * 0x03005D58 for sixteen 0x20-byte item records and clears each record with a halfword fill. Allocates a
 * 0xF0-byte six-task buffer through pointer global 0x03005D60 without an explicit clear here, then allocates
 * and byte-clears a separate 0x1B9-byte buffer through pointer global 0x03000124 and sets sequence halfword
 * 03005D5C to 1. Registers world-item draw callback 5B140 on fixed control 03005D30, allocates a 0x400-byte
 * stack, sets top allocation+0x3FC, flags 0x41 and null destructor, then starts it. */
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
    u16 *zeroPtr;
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
struct Data2C4 { u32 w[4]; };
extern u16 counter2C4 asm("gUnk_03005D5C");
static inline u8 *find2C4(s32 px, s32 py, u32 kind)
{
    u32 k;
    u8 *f = *(u8 **)&gUnk_03005D58;
    for (k = 0; k <= 15; k++, f += 0x20) {
        if (*(u16 *)(f + 0xA) & 1) {
            s32 dx = (px - *(s32 *)f) >> 8;
            s32 dy;
            if (dx < 0) dx = -dx;
            dy = (py - *(s32 *)(f + 4)) >> 8;
            if (dy < 0) dy = -dy;
            if (dx <= 7 && dy <= 7 && kind == *(u16 *)(f + 8))
                return f;
        }
    }
    return 0;
}
/* nov03-w2: 518 bytes, 82 diff lines. do/while(0) around the first loop and the b-loop body set the
   allocation priorities; left: 0x11170 temp, px gets r8 instead of sl (b+1 should get r8). */
/* [PlaceFieldItemNearPosition] Rejects zero input item type; when all16 field entries have activebit0, clears
 * the lowest sequence entry. Builds a21x21 map/nearby-item availability grid, takes first slot with
 * flagsbits0/1 clear, copies item payload and sequence, then chooses first valid expanding-square position or
 * original position, marks active and returns its pointer. Sequence wraps after65534; nofree path returns the
 * past-end scan pointer. Input kind/map selection and occupiedbit semantics are literal, not artwork identity. */
u8 *sub_0805B2C4(s32 x, s32 y, u32 kind, u16 *data)
{
    u8 *e;
    u32 i;
    u32 lowest, lowestIndex;
    u32 mode;
    s32 a, b, r;
    s32 py;
    register s32 qx asm("sl");
    u16 old;

    if (*data == 0)
        return 0;
    {
        u32 count;
        e = *(u8 **)&gUnk_03005D58;
        {
            register u32 limit asm("r0") = 0x11170;
            /* The ROM shares this loaded value between the two initial minima. */
            
            lowest = limit;
            lowestIndex = limit;
        }
        count = 0;
        for (i = 0; i <= 15; i++, e += 0x20) {
            if (*(u16 *)(e + 0xA) & 1) {
                count++;
                if (*(u16 *)(e + 0xC) < lowest) {
                    lowest = *(u16 *)(e + 0xC);
                    lowestIndex = i;
                }
            }
        }
        if (count > 15) {
            u32 offset;
            e = *(u8 **)&gUnk_03005D58;
            offset = lowestIndex << 5;
            *(u16 *)(offset + (u32)e + 0xA) = 0;
        }
    }
    mode = (kind & 0x20) ? kind : 0;
    {
        for (a = 0; a <= 20; a++) {
            s32 px = x + ((a - 10) << 10);
            asm("" : "+r"(px));
            for (b = 0; b <= 20; ) {
                do {
                    s32 gridResult;
                    s32 nextB;
                    py = y + ((b - 10) << 10);
                    gridResult = sub_0800AE50(px, py, mode) & 7;
                    if (gridResult == 0 && find2C4(px, py, kind) == 0)
                        (*(u8 **)&gUnk_03000124)[b * 21 + a] = 1;
                    else
                        (*(u8 **)&gUnk_03000124)[b * 21 + a] = 0;
                    nextB = b + 1;
                    b = nextB;
                } while (0);
            }
        }
    }
    e = *(u8 **)&gUnk_03005D58;
    for (i = 0; i <= 15; i++, e += 0x20) {
        if (!(*(u16 *)(e + 0xA) & 3)) {
            *(s32 *)e = x;
            *(s32 *)(e + 4) = y;
            *(struct Data2C4 *)(e + 0x10) = *(struct Data2C4 *)data;
            {
                u32 v = counter2C4;
                counter2C4 = v + 1;
                *(u16 *)(e + 0xC) = v;
                if ((u16)(v + 1) > 0xFFFE)
                    counter2C4 = 1;
            }
            *(u16 *)(e + 0xE) = 5;
            {
                register u16 entryKind asm("r0") = kind;
                *(u16 *)(e + 8) = entryKind;
            }
            for (r = 0; r <= 9; r++) {
                for (a = -r; a < r; a++) {
                    qx = *(s32 *)e + (a << 10);
                    for (b = -r; b < r; b++) {
                        py = *(s32 *)(e + 4) + (b << 10);
                        if ((*(u8 **)&gUnk_03000124)[b * 21 + a + 220]) {
                            *(s32 *)e = qx;
                            *(s32 *)(e + 4) = py;
                            *(u16 *)(e + 0xA) = 1;
                            return e;
                        }
                    }
                }
            }
            {
                u32 active = 1;
                *(u16 *)(e + 0xA) = active;
            }
            return e;
        }
    }
    return e;
}
/* [FindNearbyUnblockedUnoccupiedPosition] Builds21x21 scratch grid at4-unit spacing around input fixed-point
 * position, rejecting terrain low3bits and proximity within signed7px of active id0 entries among16 field
 * records. Then scans nested square neighborhoods radii0..9 in increasing radius and lexicographic x/y order,
 * bounds[-r,r), taking first clear point and writing x/y. Radius0 tests none; maximum positive offset8,
 * negative-9 despite grid spanning-10..10. Leaves position unchanged if no tested clear point; no scratch/null
 * validation. */
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
/* [AcquireFieldItemSlot] Scans16 field slots and, only if all have activebit0, clears flags of the smallest
 * sequence value entry. Returns first entry whose flagbits0/1 are both clear, or null if none. Does not
 * initialize or mark the returned slot; sequence ties keep earliest index. */
void *sub_0805B618(void)
{
    u16 temp;
    u32 lowest;
    u32 lowestIndex;
    register u32 i asm("r5");
    u32 active;
    register struct Slot60 *slot asm("r4");
    struct Slot60 **owner = &slots60;
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
        u32 address;
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









struct B688Anim { s32 f0, f4, f8, fC, f10, f14, f18; u8 data[24]; };
struct B688Item { u16 kind; u16 id; u8 rest[12]; };
struct B688Pos { s32 x, y; };
struct B688Size { u16 w, h; };
struct B688Shape {
    u32 kind : 4, x : 12, y : 12, direction : 4;
    u32 flags : 6, high : 2, pad5 : 8, unused : 4, power : 5, remaining : 7;
};
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
extern void b688_sub_08007870(s32, s32, u32, u32, u8, void *, s32, s32) asm("sub_08007870");
/* [RunThrownItemTrajectory] Builds an item sprite from throwing player's packed position/direction/power,
 * moves with map collision and a two-bounce height arc, and conditionally renders sprite/shadow. Eligible
 * player/enemy contact dispatches item/effect requests only for local thrower, or deactivates matching neutral
 * object classes, then returns. Area change returns without landing; remote throwers return after flight.
 * Local landing dispatches kind-specific requests or a field-item request, searches a nearby position and
 * draws for5/30 more steps. Enemy serial-key comparison uses an uninitialized value in C; request success is
 * unchecked. */
void sub_0805B688(u16 who, u16 itemId)
{
    struct B688Anim anim;
    struct B688Item item;
    s16 screenX, screenY;
    struct B688Pos pos;
    struct B688Pos other;
    struct B688Size size;
    struct B688Size size2;
    register struct B688Size *enemySize asm("sl");
    s32 x, y;
    struct B688Player *player;
    struct B688Obj *obj;
    u32 enemyKey;
    s32 speed;
    s32 height;
    s32 bounces;
    s32 velocity;
    s32 hit;
    u32 dir;
    u32 gfx;
    u32 me;
    s32 power;
    u16 angle;
    u16 i;
    u8 *enemy;
    u32 ok;
    u32 pal;
    s32 z;
    u32 lvl;

    player = &b688Players[who];
    me = (u16)sub_080020F4();
    b688_sub_08065158(&anim, 0x500F1, 0, 0x80000000, 0);
    lvl = player->shape->power;
    item.kind = 1;
    item.id = itemId;
    obj = (struct B688Obj *)sub_08007290(itemId | 0x100000);
    gfx = obj->gfx;
    x = player->shape->x << 8;
    y = player->shape->y << 8;
    height = 0x1000;
    angle = gUnk_0847AD0A[player->shape->direction];
    if (player->state != 0xD && !sub_0800CCCC() && !sub_0800CD34())
        sub_0805865C(0x17);
    dir = player->shape->direction;
    speed = lvl * 4 + 8;
    bounces = 0;
    velocity = -0x100;
    x += ((gUnk_080B9704[(s16)angle + 0x40] << 1) * speed) / 10;
    y += ((gUnk_080B9704[(s16)angle] << 1) * speed) / 10;
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

        if (obj->hitMask & 1) {
            for (i = 0; i < sub_08002164() && (u16)hit == 0; i++) {
                struct B688Shape *s;
                if (i == who)
                    continue;
                s = b688Players[i].shape;
                if (s->kind == 0xE || s->kind == 0xC)
                    continue;
                if (s->flags & 0x20)
                    continue;
                if (b688Players[i].flags & 0x400)
                    continue;
                other.x = s->x << 8;
                other.y = b688Players[i].shape->y << 8;
                if (!b688_sub_08021FE0(&pos, &other, &size, &size2))
                    continue;
                if (who == me) {
                    switch (obj->kind) {
                    case 5:
                        if (gUnk_03003170.curLevel != 11) {
                            if (b688Players[i].flags & 0x2000)
                                b688_sub_08068144(i);
                            else
                                b688_sub_08067F4C(itemId, i, power);
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
                        b688_sub_08067F4C(itemId, i, power);
                        break;
                    }
                    hit = 1;
                } else {
                    hit = 1;
                }
            }
        }
        if ((u16)hit)
            return;
        if (obj->hitMask & 0x3E) {
            i = 0;
            enemySize = &size2;
            for (; i <= 4; i++) {
                if (((u32)gUnk_030056FC & (1 << i)) == 0)
                    continue;
                enemy = b688Enemies + i * 0x2E0;
                if (*(u16 *)(enemy + 0xC) == 0xC)
                    continue;
                if (enemy[0x1DC] == 0 && !(obj->hitMask & 0x3C))
                    continue;
                {
                    struct B688Size *es;
                    u8 w = enemy[0x22E];

                    es = enemySize;
                    es->w = w;
                    es->h = enemy[0x22F];
                    if (!b688_sub_08021FE0(&pos, enemy + 0x14, &size, es))
                        continue;
                }
                /* enemyKey is never initialised in the original (stack slot +0x88). */
                if (*(u16 *)(enemy + 0xC) == 0xB)
                    ok = 0;
                else
                    ok = *(u32 *)(enemy + 0x54) != enemyKey;
                if (!ok)
                    continue;
                if (enemy[0x1DC] == 0) {
                    switch (enemy[0x226]) {
                    case 4:
                        if (!(obj->hitMask & 4))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    case 5:
                        if (!(obj->hitMask & 8))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    case 6:
                        if (!(obj->hitMask & 0x10))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    case 7:
                        if (!(obj->hitMask & 0x20))
                            continue;
                        *(u16 *)(enemy + 0xC) = 0xC;
                        *(u16 *)(enemy + 0xE) = 8;
                        break;
                    }
                    if (*(u16 *)(enemy + 0xC) == 0xC) {
                        /* (u16)(hit + 1), computed in the shifted domain as in the ROM. */
                        hit = ((u32)hit << 16) + 0x10000 >> 16;
                        break;
                    }
                } else {
                    hit = 1;
                    if (who == sub_080020F4()) {
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
                            b688_sub_08067F04(itemId, *(u16 *)(enemy + 2), power);
                            break;
                        }
                    }
                }
            }
        }
        if ((s16)hit)
            return;
        switch (obj->kind) {
        case 13:
        case 14:
        case 15:
            sub_08013E90((speed << 8) / 10, &pos.x, dir, 4, (s16)hit);
            break;
        default:
            sub_08013E90((speed << 8) / 10, &pos.x, dir, 0, 0);
            break;
        }
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
            pal = sub_0800BC44(x >> 8, y >> 8, 0);
            b688_sub_08007870(screenX, screenY - (height >> 8), 0, gfx, pal, anim.data, anim.f8, anim.f0);
            b688_sub_08007870(screenX, screenY, 0, 0xFE, pal, anim.data, anim.f8, anim.f0);
        }
        sub_080003F0();
    }
    if ((u16)hit)
        return;
    if (who != me)
        return;
    switch (obj->kind) {
    case 13:
        b688_sub_0806818C(player->id, 2, pos.x, pos.y, power);
        power = 5;
        break;
    case 14:
        b688_sub_0806818C(player->id, 3, pos.x, pos.y, power);
        power = 5;
        break;
    case 15:
        b688_sub_0806823C(player->id, 0, pos.x, pos.y, power);
        power = 5;
        break;
    default:
        sub_08066520(x, y, gUnk_03003170.f90, (u32 *)&item);
        power = 30;
        break;
    }
    sub_0805B4CC(&x, &y);
    while (power--) {
        if (!sub_0800CC98() && !sub_0800CD8C() && !(z = sub_0800CCCC())) {
            b688_sub_0800BC08((x << 8) >> 16, (y << 8) >> 16, &screenX, &screenY, 0x30, z);
            pal = sub_0800BC44(x >> 8, y >> 8, 0);
            b688_sub_08007870(screenX, screenY, 0, gfx, pal, anim.data, anim.f8, anim.f0);
            b688_sub_08007870(screenX, screenY, 0, 0xFE, pal, anim.data, anim.f8, anim.f0);
        }
        sub_080003F0();
    }
}
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
/* [ApplyLocalConsumableAction] Rejects null/wrong item type, pause/state/flag gates, then dispatches resource
 * kind: scaled HP/MP restoration, capped saved stat increments, status-slot removal/replacement, return-state
 * setup, full restoration or other effect request. Returns0 on unsupported/ineligible kinds; kind10 returns1
 * early, other successful kinds return1 after sounds. Does not remove input item from inventory; multiple
 * resource/status/world gates are kind-specific. Resource kind16 calls665B0 with resource halfword+A2 but
 * returns0 despite that side effect. */
s32 sub_0805BD5C(u16 *item, s32 level)
{
    struct BD5CPlayer *player;
    u8 *obj;
    u32 zero;
    u16 kind;
    s32 amount;
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
        amount = level * 40 + 100;
        amount = *(u16 *)(obj + 0xA2) * amount / 100;
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
        amount = level * 40 + 100;
        amount = *(u16 *)(obj + 0xA2) * amount / 100;
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
        sub_0805865C(0x61);
        return 0;
    } else if (kind == 0xC) {
        sub_0805865C(0x61);
        return 0;
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
        if ((p = (u8 *)sub_0801E1D8(player, 6, 100)) != NULL) {
        found10:
            sub_0801DB94(player->id, p, 6);
            *(s32 *)(p + 0x18) = level;
            sub_0805865C(0x73);
            return 1;
        }
        if ((p = (u8 *)sub_0801E1D8(player, 7, 100)) != NULL)
            goto found10;
        if ((p = (u8 *)sub_0801E164(player, 0)) != NULL)
            goto found10;
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
        sub_0805865C(0x61);
        return 0;
    } else if (kind == 0xE) {
        sub_0805865C(0x61);
        return 0;
    } else if (kind == 0x10) {
        sub_080665B0(*(u16 *)(obj + 0xA2));
        return 0;
    } else if (kind == 0x11) {
        player->mp = player->maxMp;
        player->hp = player->maxHp;
    } else if (kind == 0x12) {
        amount = level * 40 + 100;
        amount = *(u16 *)(obj + 0xA2) * amount / 100;
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
/* [RandomizeItemAttributeFields] For item types2..5, chooses weighted tables based on definition
 * bytes/mode/caller flagbit0, randomly enables and writes fields+4(u16),+6(byte),+7(byte). Existing definition
 * properties at3 four-byte entries force all3 fields zero. When packed attribute word+4 nonzero sets item+8
 * flag byte to0 if callerbit0 else1. Unknown types return1; recognized paths have no reliable return value.
 * Tables/definition pointers are unchecked; disabled randomized fields retain prior values unless forced
 * clear. */
s32 sub_0805C208(void *arg0, s32 arg1)
{
    u8 *o0;
    u8 *o1;
    u8 *o2;
    u8 *o3;
    struct C208Slot *slot;
    register u32 flags asm("r9");
    u32 rollElement;
    u32 rollBonus;
    u32 rollLevel;
    struct C208Range *table;
    u32 count1, count2, count3;
    register u32 upper asm("r3");
    u32 low;
    u32 i;
    register u32 r asm("r2");
    u8 *p;

    slot = arg0;
    flags = arg1;
    rollElement = 0;
    rollBonus = 0;
    rollLevel = 0;
    switch (slot->type) {
    case 2:
        o0 = (u8 *)sub_08007290(slot->arg | 0xB0000);
        if (o0[0x9B] == 9) {
            table = (struct C208Range *)gUnk_08478044;
            r = sub_080008C8();
            asm("" : : "r"(r));
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
                {
                    register u32 one asm("r2") = 1;
                    asm("" : : "r"(one));
                    rollLevel = one;
                }
                break;
            }
            if (r <= 10) {
                rollLevel = 1;
                rollElement = 1;
                break;
            }
            {
                register u32 one asm("r2") = 1;
                asm("" : : "r"(one));
                rollElement = one;
            }
            goto bonus;
        }
        r = sub_080008C8() & 0xF;
        if (r <= 4) {
            rollLevel = 1;
            break;
        }
        if (r <= 9)
            goto bonus;
        {
            register u32 one asm("r2") = 1;
            asm("" : : "r"(one));
            rollElement = one;
        }
        break;
    case 5:
        o1 = (u8 *)sub_08007290(slot->arg | 0xE0000);
        table = o1[0xA0] ? (struct C208Range *)gUnk_08478220 : (struct C208Range *)gUnk_08478158;
        goto resetLevelC208;
    case 3:
        o3 = (u8 *)sub_08007290(slot->arg | 0xC0000);
        table = (struct C208Range *)gUnk_08478158;
        {
            register u32 zero asm("r2") = 0;
            asm("" : "+r"(zero));
            rollLevel = zero;
        }
        break;
    case 4:
        o2 = (u8 *)sub_08007290(slot->arg | 0xD0000);
        table = (struct C208Range *)gUnk_08478158;
    resetLevelC208:
        rollLevel = 0;
        break;
    default:
        return 1;
    }
    switch (slot->type) {
    case 3:
    case 4:
    case 5:
        r = sub_080008C8() & 0xF;
        if (r <= 7) {
            r = sub_080008C8() & 0xF;
            if (r <= 7)
                goto pickBonus;
            {
                register u32 one asm("r2") = 1;
                asm("" : : "r"(one));
                rollElement = one;
            }
        } else {
            rollBonus = 1;
            rollElement = 1;
        }
    }
    if (rollBonus) {
    pickBonus:
        count1 = table[0].value;
        r = sub_080008C8();
        r %= table[0].upper;
        table++;
        for (low = 0, i = 0; i < count1; i++, low = upper, table++) {
            upper = table->upper;
            if (low <= r && upper >= r) {
                slot->bonus = table->value;
                break;
            }
        }
    }
    {
        register u32 levelEnabled asm("r2") = rollLevel;
        asm("" : : "r"(levelEnabled));
        if (levelEnabled) {
            table = (struct C208Range *)gUnk_084782F4;
            count2 = table[0].value + 1;
            r = sub_080008C8();
            r %= table[0].upper + 1;
            table++;
            for (low = 0, i = 0; i < count2; i++, low = upper + 1, table++) {
                upper = table->upper;
                if (low <= r && upper >= r) {
                    slot->level = table->value;
                    break;
                }
            }
        }
    }
    if (rollElement) {
        register u32 maskBit asm("r0") = 1;
        register u32 callerFlags asm("r2") = flags;
        asm("" : "+r"(maskBit) : "r"(callerFlags));
        if (maskBit & callerFlags)
            table = (struct C208Range *)gUnk_08478378;
        else if (sub_0800CE30())
            table = (struct C208Range *)gUnk_08478338;
        else
            table = (struct C208Range *)gUnk_08478310;
        count3 = table[0].value + 1;
        r = sub_080008C8();
        r %= table[0].upper + 1;
        table++;
        for (low = 0, i = 0; i < count3; i++, low = upper + 1, table++) {
            upper = table->upper;
            if (low <= r && upper >= r) {
                slot->element = table->value;
                break;
            }
        }
    }
    switch (slot->type) {
    case 2:
        for (i = 0, p = o0 + 0xB0; i <= 2; p += 4, i++)
            if (*(u16 *)p != 0)
                goto clearC;
        break;
    case 3:
        for (i = 0, p = o3 + 0xA4; i <= 2; p += 4, i++)
            if (*(u16 *)p != 0)
                goto clearB;
        break;
    case 4:
        for (i = 0, p = o2 + 0xA4; i <= 2; p += 4, i++)
            if (*(u16 *)p != 0)
                goto clearA;
        break;
    clearA:
    clearC:
        slot->bonus = 0;
        slot->element = 0;
        slot->level = 0;
        flags = 1;
        break;
    clearB:
        slot->bonus = 0;
        slot->element = 0;
        slot->level = 0;
        {
            register u32 one asm("r2") = 1;
            asm("" : : "r"(one));
            flags = one;
        }
        break;
    case 5:
        for (i = 0, p = o1 + 0xA4; i <= 2; p += 4, i++)
            if (*(u16 *)p != 0)
                goto clearB;
        break;
    }
    if (*(u32 *)&slot->bonus != 0) {
        register u32 v asm("r1") = 1;
        if (flags & v)
            v = 0;
        slot->flag = v;
    }
    /* Only unknown slot types return a value (1); callers ignore it. */
}
struct LootT { u16 chance; u16 pad; u16 *groups[8]; };
extern struct LootT gUnk_084E6DD8[];
/* [GenerateTieredRandomItem] Clears16-byte output. Count0 returns0; otherwise decrements tier, rolls threshold
 * flag and weighted category table (category8 maps6), writes matching itemtype/id, randomized type10 amount or
 * type9 level/mode value, optionally calls modifier helper. Returns1 even if no weighted entry matched;
 * tier/category/table bounds and divisor validity are unchecked. */
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
struct DropC620 { u16 type, val; u32 hi; };
struct ExC620 { u8 pad[0x2C]; struct DropC620 drops[3]; };
/* [GenerateActorDropRecord] Zeros16 output bytes, tries three cumulative configured drop intervals using
 * a16-bit random roll and returns1 on a permitted configured result. Otherwise clamps entity player-index
 * field, rolls against player/player-count chance and optionally calls category generator with mode-dependent
 * category. Copies entity+214 into type9 payload, rejects type10 unless flag227bit0 and clears out-of-range
 * generated types. Fallback returns generator status or0; C omits some returns, matching-object ABI preserves
 * that status for accepted types9/10. */
u32 sub_0805C620(u8 *entity, u16 *out)
{
    extern u8 c620Players[] asm("gUnk_03003CE0");
    struct ExC620 *extra;
    u32 zero;
    u32 low;
    u32 roll;
    u32 i;
    u32 *p214;
    u32 ok;
    u32 result;
    u32 category;

    extra = (struct ExC620 *)(entity + 0x204);
    zero = 0;
    CpuSet(&zero, out, 0x05000004);
    low = 0;
    roll = (u16)sub_080008C8();
    for (i = 0; i <= 2; i++) {
        if (extra->drops[i].type != 0) {
            if (low <= roll && extra->drops[i].hi >= roll) {
                out[0] = extra->drops[i].type;
                out[1] = extra->drops[i].val;
                if (extra->drops[i].type == 9)
                    out[2] = *(u32 *)(entity + 0x214);
                break;
            }
            low = (u16)(extra->drops[i].hi + 1);
        }
    }
    if (out[0] != 0) {
        if (out[0] == 10 && !(entity[0x227] & 1)) {
            out[0] = 0;
            out[1] = 0;
            return 0;
        }
        return 1;
    }
    roll = (u16)sub_080008C8() % 256;
    ok = 0;
    if (*(u16 *)(entity + 0x58) > 3)
        *(u16 *)(entity + 0x58) = 0;
    { u8 (*pb)[] = &c620Players; low = (*pb)[4 * (83 * *(u16 *)(entity + 0x58)) + 0x74]; }
    switch (sub_08002164()) {
    case 1: low = (u16)(low + 0x10); break;
    case 2: low = (u16)(low + 0x15); break;
    case 3: low = (u16)(low + 0x1A); break;
    case 4: low = (u16)(low + 0x20); break;
    }
    if (low > roll)
        ok = 1;
    if (ok == 0)
        goto fail;
    category = sub_0800CE30();
    if (category) {
        if (*(u16 *)(entity + 0x78) != 0) {
            category = *(u16 *)(entity + 0x78) + 50;
        } else {
            ok = 0;
            goto tail;
        }
    } else {
        category = *(u16 *)(entity + 0x78);
    }
    ok = sub_0805C4FC((u8 *)out, category, 0);
tail:
    if (out[0] == 9) {
        out[2] = *(u32 *)(entity + 0x214);
    } else if (out[0] == 10) {
        if (!(entity[0x227] & 1)) {
            out[0] = 0;
            out[1] = 0;
            return 0;
        }
    } else if (out[0] > 10) {
        { u32 z = 0; out[0] = z; return z; }
    } else {
        return ok;
    }
    return;
fail:
    return 0;
}
struct C7B8Slot { u16 type; u16 arg; u16 f4; u8 f6, f7, f8, f9; u8 padA[6]; };
struct C7B8Entry { s16 type; u16 arg; };
struct C7B8Pick { u32 index; u32 used; };
extern u8 *c7b8Map asm("gUnk_030034E0");
extern struct C7B8Entry c7b8TableA[][20][12] asm("gUnk_084E7BE8");
extern struct C7B8Entry c7b8TableB[][20][12] asm("gUnk_084E99E8");
extern struct C7B8Entry c7b8TableC[][12] asm("gUnk_084EB7E8");
/* Callers ignore the result; the original has no return value. */
void c7b8_void(u32) asm("sub_0805C7B8");
/* [PopulateThreeItemPools] Chooses mode-specific three twelve-slot arrays; progression bits1..9 plus mode
 * baseline select class/table row. Copies first two templates, counts-1 placeholders, randomly selects
 * distinct nonempty entries to duplicate into slots9+ with modifier helper, clearing fields at loop-index
 * slots as written. Third table clamps mode>1 to0, clears type2 fields and resolves0xFFFF entries by
 * coinflip/generator tier20. Invalid table domains and picked==0 cases unchecked. */
void c7b8_void(u32 mode)
{
    struct C7B8Pick picks[12];
    u32 count; u32 area;
    struct C7B8Slot *slotsA;
    struct C7B8Slot *slotsB;
    u32 k;
    struct C7B8Slot *slotsC;
    struct C7B8Entry *entry;
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
    entry = c7b8TableA[area][count];
    picked = 0;
    for (i = 0; i <= 11; i++) {
        slotsA[i].type = entry[i].type;
        slotsA[i].arg = entry[i].arg;
        slotsA[i].f4 = 0;
        slotsA[i].f6 = 0;
        slotsA[i].f7 = 0;
        slotsA[i].f8 = 0;
        if (entry[i].type != 0) {
            if (entry[i].type != -1) {
                picks[picked].index = i;
                picks[picked].used = 0;
                picked++;
            } else {
                slotsA[i].type = 0;
                empty++;
            }
        }
    }
    n = sub_080008C8() % (empty + 1);
    if (n != 0) {
        for (i = 0; i < n; i++) {
            k = sub_080008C8() % picked;
            if (picks[k].used == 0)
                picks[k].used = 1;
            else
                i--;
        }
        {
            empty = 0;
            for (i = 0; i < picked; i++) {
                if (picks[i].used != 0) {
                    slotsA[9 + empty] = slotsA[picks[i].index];
                    slotsA[i].f4 = 0;
                    slotsA[i].f6 = 0;
                    slotsA[i].f7 = 0;
                    slotsA[i].f8 = 0;
                    sub_0805C208(&slotsA[9 + empty], 1);
                    empty++;
                }
            }
        }
    }

    empty = 0;
    entry = c7b8TableB[area][count];
    picked = 0;
    for (i = 0; i <= 11; i++) {
        slotsB[i].type = entry[i].type;
        slotsB[i].arg = entry[i].arg;
        slotsB[i].f4 = 0;
        slotsB[i].f6 = 0;
        slotsB[i].f7 = 0;
        slotsB[i].f8 = 0;
        if (entry[i].type != 0) {
            if (entry[i].type != -1) {
                picks[picked].index = i;
                picks[picked].used = 0;
                picked++;
            } else {
                slotsB[i].type = 0;
                empty++;
            }
        }
    }
    n = sub_080008C8() % (empty + 1);
    if (n != 0) {
        for (i = 0; i < n; i++) {
            k = sub_080008C8() % picked;
            if (picks[k].used == 0)
                picks[k].used = 1;
            else
                i--;
        }
        {
            empty = 0;
            for (i = 0; i < picked; i++) {
                if (picks[i].used != 0) {
                    slotsB[9 + empty] = slotsB[picks[i].index];
                    slotsB[i].f4 = 0;
                    slotsB[i].f6 = 0;
                    slotsB[i].f7 = 0;
                    slotsB[i].f8 = 0;
                    sub_0805C208(&slotsB[9 + empty], 1);
                    empty++;
                }
            }
        }
    }

    if (mode > 1)
        mode = 0;
    entry = c7b8TableC[mode];
    for (i = 0; i <= 11; i++) {
        slotsC[i].type = entry[i].type;
        slotsC[i].arg = entry[i].arg;
        if (slotsC[i].type == 2) {
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
struct Record60 { u16 type, value, timer; u8 a, b, c, d; u8 tail[6]; };
/* [BuildTwelveItemRecords] Copies twelve type/value pairs from an unchecked indexed0x30-byte table row. Type2
 * also clears its extra fields; sentinelFFFF independently randomizes each entry to empty or delegates
 * category20 generation with the row index. No aggregate success result; per-entry generator result is
 * ignored. */
void sub_0805CB04(s32 index, struct Record60 *out)
{
    register u16 type asm("r1");
    u16 bit;
    register u32 i asm("r8");
    register u32 work asm("r2");
    u32 offset;
    u8 *base;
    u16 *table;
    u8 zero8;
    u32 zero16;
    u32 sentinel;
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






struct CB8CSlot { s32 x, y; u16 pad8; u16 active; u8 padC[0x14]; };
struct CB8CBounds { u32 left, top, right, bottom; };
struct CB8CColor { u16 r:5, g:5, b:5, x:1; u16 pad; };
struct CB8CLocal { u8 unused[16]; u8 counts[4]; s16 angles[4]; struct CB8CColor colors[4]; };
extern struct CB8CSlot *cb8c_slots asm("gUnk_03005D58");
extern struct CB8CBounds cb8c_bounds[] asm("gUnk_084EBCE8");
extern struct CB8CColor cb8c_colors[] asm("gUnk_084EBD28");
extern u16 cb8c_pal[][16] asm("gUnk_03001F40");
extern s16 cb8c_sine[] asm("gUnk_080B9704");

/* [PulseFieldOccupancyPalette] Infinite task counts active entries among16 field slots inside each of4
 * inclusive fixed rectangles after coordinate scaling. Exactly one entry advances phase4 modulo128 and
 * sine-scales rectangle base RGB into palette14 entries12..15. Other counts halve each RGB distance toward8,
 * reset phase0 and write palette. Yields once each iteration; no exit/restoration or allocation. */
void sub_0805CB8C(void)
{
    u8 unused[16];
    u8 counts[4];
    s16 angles[4];
    struct CB8CColor colors[4];
    struct CB8CSlot *slot;
    u32 i, j;
    register u32 area asm("ip");
    u8 *count;
    u32 next;
    u8 *cnts;

    for (i = 0; i <= 3; i++) {
        counts[i] = 0;
        angles[i] = 0;
        *(u16 *)&colors[i] = 0;
    }
    for (;;) {
        area = 0;
        cnts = counts;
        do {
            u8 *reset;
            u32 z;
            slot = cb8c_slots;
            reset = &cnts[area];
            z = 0;
            *reset = z;
            j = z;
            next = area + 1;
            count = reset;
            for (; j <= 15; j++, slot++) {
                if (slot->active != 0) {
                    s32 x = slot->x << 5;
                    u32 index = area;
                    u16 y = (u32)(slot->y << 5) >> 16;
                    if (cb8c_bounds[index].left <= (x >> 16) && cb8c_bounds[index].top <= (s16)y
                        && cb8c_bounds[index].right >= (x >> 16) && cb8c_bounds[index].bottom >= (s16)y)
                        (*count)++;
                }
            }
            area = next;
        } while (area <= 3);
        for (i = 0; i <= 3; i++) {
            if (counts[i] == 1) {
                angles[i] = (angles[i] + 4) & 0x7F;
                colors[i].r = (cb8c_colors[i].r * cb8c_sine[angles[i]]) >> 8;
                colors[i].g = (cb8c_colors[i].g * cb8c_sine[angles[i]]) >> 8;
                colors[i].b = (cb8c_colors[i].b * cb8c_sine[angles[i]]) >> 8;
                cb8c_pal[14][i + 12] = *(u16 *)&colors[i];
            } else {
                if ((8 - colors[i].r) >> 1 == 0)
                    colors[i].r = 8;
                else
                    colors[i].r += (8 - colors[i].r) >> 1;
                if ((8 - colors[i].g) >> 1 == 0)
                    colors[i].g = 8;
                else
                    colors[i].g += (8 - colors[i].g) >> 1;
                if ((8 - colors[i].b) >> 1 == 0)
                    colors[i].b = 8;
                else
                    colors[i].b += (8 - colors[i].b) >> 1;
                angles[i] = 0;
                cb8c_pal[14][i + 12] = *(u16 *)&colors[i];
            }
        }
        sub_080003F0();
    }
}
struct PuzzleSlot61 { s32 x,y; u16 pad8,active; u32 padC; u16 type,value; u8 tail[12]; };
struct PuzzleItem61 { u16 type,value; union { u32 wide; struct {u16 a;u8 b,c;} parts; } data; u8 last; u8 tail[7]; };
extern struct PuzzleSlot61 *puzzleSlots61 asm("gUnk_03005D58");
extern u32 puzzleBounds61[] asm("gUnk_084EBCE8");
extern u16 puzzleRecipes61[] asm("gUnk_084EB8D8");
/* [ResolveFourAreaItemRecipe] Requires exactly one active field item in each of four table-defined inclusive
 * coordinate bounds, then searches ordered four-item recipes until zero sentinel. On a match animates/removes
 * each input with waits, constructs result payload by type, requests a field reward at fixed(0xF700,0x6E00)
 * only on authority, starts another visual and returns1. Missing/extra items or no recipe returns0. Reward
 * admission ignored; success denotes recipe match/input consumption. */
s32 sub_0805CDF8(void) {
    struct PuzzleSlot61 *sp0[4];
    struct PuzzleItem61 sp10;
    register struct PuzzleItem61 *item asm("r4");
    register s32 temp_r1 asm("r1");
    u32 yBits;
    register s32 xBits asm("r1");
    u32 shifted;
    s32 temp_r2;
    s32 temp_r3;
    s32 var_r4_2;
    s32 var_r6;
    u32 var_r8;
    u16 *temp_r0_2;
    u8 *base;
    u32 *bounds;
    register u8 *bp asm("r0");
    u16 *recipes;
    u8 *p;
    u16 *var_r5;
    u16 *recipeValues;
    struct PuzzleSlot61 **slotsBase;
    s32 temp_r0_3;
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
            
            temp_r0_2=(u16 *)(p+var_r9);
            temp_r1_4 = *temp_r0_2;
            if (temp_r1_4 == 0xA) {
                item->type = temp_r1_4;
                p=base+18; 
                item->data.wide = (s32) *(u16 *)(p + var_r9);
            } else {
                item->data.wide = 0;
                item->type = (u16) *temp_r0_2;
                p=base+18; 
                item->value = (u16) *(u16 *)(p + var_r9);
                temp_r0_3 = item->type; 
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
            
            if (*test == 0) {
block_32:
                return 0;
            }
            goto loop_15;
        }
    }
    goto loop_1;
}
/* [FindFirstEmptyBagSlot] Returns the first kind-zero entry index among 25 bag records at manager +0x150,
 * stride 16, or -1. Does not reserve or clear the returned record. */
s32 sub_0805CFA0(void) {
    u32 i;
    u8 *p;
    for(i=0,p=(u8 *)gUnk_030034E0+0x150;i<=24;p+=16,i++) if(*(u16 *)p==0) return i;
    return -1;
}
/* [FindFirstEmptyStashSlotInFirst25] Returns the first kind-zero entry index among only the first 25 stash
 * records at manager +0x2E0, stride 16, or -1. This is not a scan of all 75 physical stash records or the
 * configured row count. */
s32 sub_0805CFCC(void) {
    u32 i;
    u8 *p;
    for(i=0,p=(u8 *)gUnk_030034E0+0x2E0;i<=24;p+=16,i++) if(*(u16 *)p==0) return i;
    return -1;
}
/* [CopyItemToBagSlot] Narrows the supplied index to one byte, substitutes index zero when greater than 24, and
 * copies all 16 item bytes to the bag record. No null, empty-slot or item-kind check. */
void sub_0805CFF8(u8 index, const struct Entry61 *src)
{
    if(index>24) index=0;
    *(struct Entry61 *)((u8 *)gUnk_030034E0+0x150+index*16)=*src;
}
/* [CopyItemToStashSlot] Narrows the index to one byte. If index is at least manager halfword +0x6A times 15,
 * substitutes zero, then copies all 16 bytes to stash +0x2E0 + index*16. A zero configured count still writes
 * slot zero. No null, empty-slot check or independent physical-capacity clamp. */
void sub_0805D028(u8 index,const struct Entry61 *src) {
    u8 *base=(u8 *)gUnk_030034E0;
    s32 count=*(u16 *)(base+0x6A);
    if(index>=count*15) index=0;
    *(struct Entry61 *)(base+index*16+0x2E0)=*src;
}
/* [CopyWeaponItemToSelectionSlot] Accepts only kind-2 items, copies all 16 bytes into manager +0x70 + index*16
 * and returns 1; otherwise returns 0. Does not validate index, select the slot or refresh activation. Weapon
 * identity is supported by category-B original item-name resources. */
u32 sub_0805D064(const struct Entry61 *src,u32 index) {
    register u32 savedIndex asm("r3")=index;
    struct Entry61 *dst;
    register u32 offset asm("r0");
    
    switch(*(const u16 *)src) { case 2: dst=(void *)gUnk_030034E0;  offset=savedIndex*16;  dst=(void *)((u8 *)dst+offset);  dst=(void *)((u8 *)dst+0x70); *dst=*src; return 1; default:return 0; }
}
