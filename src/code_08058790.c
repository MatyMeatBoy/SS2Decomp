#include "global.h"
extern void sub_0802A19C();
extern void sub_08029788();
extern void sub_0802949C();

extern u32 sub_0805AB20(void *arg0);

/* [HoldHudAndQueueRows] Sets HUD-hold scene flag via0CF90. */
void sub_08058790(void)
{
    u16 count;
    sub_0800CF90();
    for (count = 1; count != 0; count--) {
        sub_080003F0();
        if (sub_080021A8()) break;
    }
    sub_0801A664(0, 2);
    for (count = 1; count != 0; count--) {
        sub_080003F0();
        if (sub_080021A8()) break;
    }
}
/* [ClearPlayerHudHoldWrapper] Body calls sub_0800CFA4 and performs no other work. */
void sub_080587D8(void) {
    sub_0800CFA4();
}
/* [SetLocalPlayerBit12Wrapper] Wrapper calls sub_08015D74 and does no other work. */
void sub_080587E4(void) {
    sub_08015D74();
}
/* [ClearLocalPlayerBit12Wrapper] Wrapper calls sub_08015D98 and does no other work. */
void sub_080587F0(void) {
    sub_08015D98();
}
/* [SetActorPriorityOverrideWrapper] The complete wrapper forwards its u16 input, if any, to sub_0800CC48 and
 * performs no other work. */
void sub_080587FC(u16 arg0) {
    sub_0800CC48(arg0);
}
/* [ClearActorPriorityOverrideWrapper] The complete wrapper forwards its u16 input, if any, to sub_0800CC68 and
 * performs no other work. */
void sub_0805880C(void) {
    sub_0800CC68();
}
/* [IsAdvancedModeActiveWrapper] Calls the Advanced Mode predicate CE30 and returns its R0 result unchanged.
 * The confirmed target returns exactly 0 or 1 from scene flag bit 9, whose file-menu choice, summary byte and
 * loader/lobby provenance are independently established. This wrapper neither marks the flag nor guarantees a
 * stable snapshot across calls, unlocking or multiplayer synchronization. */
s32 sub_08058818(void) {
    return sub_0800CE30();
}
/* [QueryAreaReturnPromptMarker] Returns sub_0800CF48 directly. */
s32 sub_08058824(void) {
    return sub_0800CF48();
}
/* [IsBossRetryPortalRequested] Extracts scene+4 bit8. */
s32 sub_08058830(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 8) & 1;
}
/* [IsMonsterCardCollectionComplete] Scans bytes0..144 at inventory+C10, counts nonzero entries and compares
 * count145. */
u32 sub_08058844(void)
{
    u32 count = 0;
    u32 i = 0;
    u8 *base = (u8 *)gUnk_030034E0 + 0xC10;
    for (; i <= 0x90; i++)
        if (base[i] != 0) count++;
    if (count == 0x91) return 1;
    return 0;
}
/* [IsTimedStageItemSlotCompleted] Tests a single bit of a byte at scene+0x236+row when CE30 is zero, or
 * scene+0x240+row otherwise. Returns exactly 0 or 1. Original 5887A..588AC preserves full row/bit arguments,
 * reads LDRB, register-shifts the zero-extended byte and masks bit 0. No row/slot bounds or bank-mode
 * stability guarantee is enforced. */
u32 sub_08058878(u32 offset, u32 shift)
{
    u8 *base;
    if (sub_0800CE30())
        base = (u8 *)gUnk_03005CF4 + 0x240;
    else
        base = (u8 *)gUnk_03005CF4 + 0x236;
    if (!((base[offset] >> shift) & 1)) return 0;
    return 1;
}
/* [MarkTimedStageItemSlotCompleted] ORs one shifted bit into a byte at scene+0x236+row when CE30 is zero, or
 * scene+0x240+row otherwise; other bits of that byte are retained and the final result is stored with STRB.
 * Original 588C2..588EE preserves row/bit across the mode query. No row/bit bounds, prior completion check or
 * inventory transfer is performed. */
void sub_080588C0(u32 index, u32 bit)
{
    struct StateA { u8 pad[0x240]; u8 flags[10]; };
    struct StateB { u8 pad[0x236]; u8 flags[10]; };
    if (sub_0800CE30())
        ((struct StateA *)gUnk_03005CF4)->flags[index] |= 1 << bit;
    else
        ((struct StateB *)gUnk_03005CF4)->flags[index] |= 1 << bit;
}
/* [GetTimedStageRecordedTicks] Reads a 32-bit timed-stage record field at scene + 0xA8 + index*4 when CE30
 * returns zero, or scene + 0xF8 + index*4 otherwise. The bank is selected on every call. No index bounds,
 * value validation or persistence operation is performed. Existing void-pointer C views do not establish
 * pointer semantics for these raw words. */
void *sub_08058900(u32 index)
{
    struct TableA { u8 pad[0xA8]; void *items[10]; };
    struct TableB { u8 pad[0xF8]; void *items[10]; };
    void *result;
    if (sub_0800CE30() == 0)
        result = ((struct TableA *)gUnk_03005CF4)->items[index];
    else
        result = ((struct TableB *)gUnk_03005CF4)->items[index];
    return result;
}
/* [GetTimedStageRecordDisplayFraction] Reads a 32-bit timed-stage record field at scene + 0xD0 + index*4 when
 * CE30 returns zero, or scene + 0x120 + index*4 otherwise. The bank is selected on every call. No index
 * bounds, value validation or persistence operation is performed. Existing void-pointer C views do not
 * establish pointer semantics for these raw words. */
void *sub_08058934(u32 index)
{
    struct TableA { u8 pad[0xD0]; void *items[10]; };
    struct TableB { u8 pad[0x120]; void *items[10]; };
    void *result;
    if (sub_0800CE30() == 0)
        result = ((struct TableA *)gUnk_03005CF4)->items[index];
    else
        result = ((struct TableB *)gUnk_03005CF4)->items[index];
    return result;
}
/* [SetTimedStageRecordedTicks] Writes a 32-bit timed-stage record field at scene + 0xA8 + index*4 when CE30
 * returns zero, or scene + 0xF8 + index*4 otherwise. The bank is selected on every call. No index bounds,
 * value validation or persistence operation is performed. Existing void-pointer C views do not establish
 * pointer semantics for these raw words. */
void sub_0805896C(u32 index, void *value)
{
    struct TableA { u8 pad[0xA8]; void *items[10]; };
    struct TableB { u8 pad[0xF8]; void *items[10]; };
    if (sub_0800CE30())
        ((struct TableB *)gUnk_03005CF4)->items[index] = value;
    else
        ((struct TableA *)gUnk_03005CF4)->items[index] = value;
}
/* [SetTimedStageRecordDisplayFraction] Writes a 32-bit timed-stage record field at scene + 0xD0 + index*4 when
 * CE30 returns zero, or scene + 0x120 + index*4 otherwise. The bank is selected on every call. No index
 * bounds, value validation or persistence operation is performed. Existing void-pointer C views do not
 * establish pointer semantics for these raw words. */
void sub_080589A0(u32 index, void *value)
{
    struct TableA { u8 pad[0xD0]; void *items[10]; };
    struct TableB { u8 pad[0x120]; void *items[10]; };
    if (sub_0800CE30())
        ((struct TableB *)gUnk_03005CF4)->items[index] = value;
    else
        ((struct TableA *)gUnk_03005CF4)->items[index] = value;
}
/* [IsTimedStageSelectionEnabled] Tests one shifted bit in the 32-bit scene field at +0x84 when CE30 is zero or
 * +0x88 otherwise, and returns exactly 0 or 1. Original 589E4..58A12 uses a full-word LDR and an AND. No bit
 * bounds, continuous-prefix check or global count is performed here. */
s32 sub_080589D8(s32 arg0)
{
  s32 *var_r0;
  s32 var_r1;
  if (sub_0800CE30() != 0)
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x88;
  }
  else
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x84;
  }
  if (var_r1 & (*var_r0))
  {
    if (var_r0)
    {
      return 1;
    }
    else
    {
      return 1;
    }
  }
  return 0;
}
/* [EnableTimedStageSelection] ORs a shifted bit into the 32-bit scene field at +0x84 when CE30 is zero or
 * +0x88 otherwise. Original 58A36..58A3E uses LDR/ORR/STR; it preserves all other bits. No input bounds,
 * prerequisite checks, item-slot updates or record-time updates are performed. */
void sub_08058A18(u32 bit)
{
    if (sub_0800CE30())
        *(u32 *)(gUnk_03005CF4 + 0x88) |= 1u << bit;
    else
        *(u32 *)(gUnk_03005CF4 + 0x84) |= 1u << bit;
}
/* [DisableTimedStageSelection] Clears a shifted bit in the same 32-bit selection field: scene+0x84 when CE30
 * is zero or +0x88 otherwise. Original 58A6A..58A72 uses LDR/BIC/STR and retains other bits. No index bounds,
 * dependent-row clearing, item-slot reset or record reset is performed. */
void sub_08058A4C(u32 bit)
{
    if (sub_0800CE30())
        *(u32 *)(gUnk_03005CF4 + 0x88) &= ~(1u << bit);
    else
        *(u32 *)(gUnk_03005CF4 + 0x84) &= ~(1u << bit);
}
/* [CountEnabledTimedStageFlags] Counts set bits at indices 0 through 10 inclusive in the shared 32-bit
 * selection field, returning 0..11 for stable reads. Original 58A8A..58AC6 re-queries CE30 and reloads the
 * selected field on every iteration; no single snapshot or fixed bank across the loop is assumed. It counts
 * all eleven tested bits, not only a continuous prefix. */
u32 sub_08058A80(void)
{
    u32 count = 0;
    u32 i;
    for (i = 0; i <= 0xA; i++) {
        s32 mask;
        u32 found;
        if (sub_0800CE30()) {
            mask = (1 << i) & *(u32 *)(gUnk_03005CF4 + 0x88);
            if (!mask) goto absent;
            goto increment;
        }
        mask = (1 << i) & *(u32 *)(gUnk_03005CF4 + 0x84);
        found = 1;
        if (mask) goto test;
    absent:
        found = 0;
    test:
        if (found) {
        increment:
            count++;
        }
    }
    return count;
}
/* [HasConnectedPlayerAppearance6Or8] Scans connected-player count with0x14C-byte records and tests+64 for6/8. */
u32 sub_08058AD0(void)
{
    struct Player { u8 pad[0x64]; u16 state; u8 rest[0xE6]; };
    u32 count = sub_08002164();
    u32 i;
    for (i = 0; i < count; i++)
        if (((struct Player *)gUnk_03003CE0)[i].state == 6 ||
            ((struct Player *)gUnk_03003CE0)[i].state == 8)
            return 1;
    return 0;
}
/* [StartTemporarySongTask] Packs two16-bit arguments and installs5A9F4 in first free of30 controls;
 * retries0x400 allocation, starts task and returns without completion wait. */
void sub_08058B08(u16 arg0, u16 arg1)
{
    u32 packed = arg0 | ((u32)arg1 << 16);
    void (*callback)(void) = sub_0805A9F4;
    struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    u32 i;
    for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
            sub_080003F0();
        entry->u8 = 0x3C;
        entry->uC = callback;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = 0;
        sub_08000274((u32)entry, packed);
    }
}
/* [StartSongWithDeferredChange] Stores/conditionally starts supplied tracked song, then searches30 callback
 * slots and retries stack allocation for delayed replacement. Full pool retains initial song change without
 * scheduling. Packs arg1-1 modulo65536 in high16; replacement callback uses low8 of arg2 and can shorten waits
 * on link error, skip change during full-screen menu. */
void sub_08058B74(u16 resource, u16 arg1, u16 arg2)
{
    u32 packed;
    void (*callback)(void);
    struct Task *entry;
    u32 i;
    gUnk_03005CF8 = resource;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(resource);
    packed = ((u32)(arg1 - 1) << 16) | arg2;
    callback = sub_0805AA68;
    entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
            sub_080003F0();
        entry->u8 = 0x3C;
        entry->uC = callback;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = 0;
        sub_08000274((u32)entry, packed);
    }
}
/* [StartTemporaryMapSongTask] Packs two16-bit arguments, finds first free of30 controls, retries0x400 stack
 * allocation and starts5AAB8; full pool returns without startup. */
void sub_08058C08(u16 arg0, u16 arg1)
{
    u32 packed = arg0 | ((u32)arg1 << 16);
    void (*callback)(void) = sub_0805AAB8;
    struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    u32 i;
    for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
            sub_080003F0();
        entry->u8 = 0x3C;
        entry->uC = callback;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = 0;
        sub_08000274((u32)entry, packed);
    }
}
/* [SelectAndActivateWeaponSlot] Writes supplied halfword to inventory manager+0x68. */
void sub_08058C74(s16 arg0) {
    M2C_FIELD(gUnk_030034E0, s16 *, 0x68) = arg0;
    sub_0805AD78();
}
/* [StartTrackedSongUnlessMultiplayer] When multiplayer-world-scene bit 1 is clear and mute/status word
 * 030027D0 bit 0x20 is clear, stores the full 32-bit argument in tracked-song word 03005CF8 and calls 06CB4.
 * That checked starter narrows the argument to its low 16 bits before accepting IDs <=0x1AB; it does not
 * reject every raw 32-bit value above that bound. If the mute bit is set, this path leaves the tracker
 * unchanged. When the multiplayer-scene bit is set, calls 586B4, which ignores the supplied zero argument,
 * stops the remembered song through its low 16 bits and clears the tracker. No raw link-hardware readiness or
 * input-ID validation is performed here. */
void sub_08058C8C(s32 arg0)
{
    if (sub_0800CB9C() == 0) {
        if (!(gUnk_030027D0 & 0x20)) {
            gUnk_03005CF8 = arg0;
            ((void (*)(s32))sub_08006CB4)(arg0);
        }
    } else {
        sub_080586B4(0);
    }
}
/* [PlayWeaponSubtypeAttackSound] Switch maps numeric input to checked audio-start calls20/19/27; each branch
 * checks link mask0x20. */
void sub_08058CC4(u32 value)
{
    switch (value) {
    case 2:
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x14);
        break;
    case 1: case 4: case 5: case 7: case 9:
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x13);
        break;
    case 6: case 8:
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x1B);
        break;
    }
}
/* [FindActiveSceneObjectHandleByKey] Scans the 15 scene object records at scene state +0x7A4 whose active-mask
 * bit in +0x54 is set and returns word +0 (the handle FindSceneObjectByHandle matches) of the first record
 * whose word +4 equals the key; returns 0 when none matches. */
u32 sub_08058D4C(u32 key)
{
  int new_var;
  u32 i;
  u8 *base = *((u8 **) 0x03005CF4);
  u8 *entry = base + 0x7A4;
  u32 mask;
  for (i = 0; i <= 0xE; i++, entry += 0x70)
  {
    new_var = (*((u32 *) (base + 0x54))) & (1u << i);
    if (new_var && ((*((u32 *) (entry + 4))) == key))
    {
      return *((u32 *) entry);
    }
  }

  return 0;
}
/* [NextRandom32Wrapper] Calls NextRandom32 at 008C8 and returns all 32 result bits unchanged. The target
 * advances the shared eight-byte feedback state before assembling its result; this wrapper is not a pure read
 * or independent random stream. No seed initialization, cryptographic property, distribution guarantee or
 * runtime reachability is inferred. */
s32 sub_08058D8C(void) {
    return sub_080008C8();
}
/* [TryAddCurrencyToBag] Builds a 16-byte item record with kind 10 and the 32-bit amount at +4, then returns
 * TryAddItemToBag for it. Kind 10 is the stacked currency kind that TryAddItemToBag and SpendInventoryCurrency
 * treat specially. */
s32 sub_08058D98(s32 value)
{
    struct {
        u16 kind;
        u16 pad02;
        s32 value;
        u8 pad08[8];
    } request;
    request.kind = 10;
    request.value = value;
    return sub_0805AB20(&request);
}
/* [HasCoordinatedAttackState] Normalizes the coordinated-attack phase query to boolean. */
s32 sub_08058DB0(void)
{
    struct Player { u8 *item; u8 pad[0x148]; };
    s32 value = sub_0800CD8C();
    u32 found = (u32)(value | -value) >> 31;
    u8 *players = (u8 *)gUnk_03003CE0;
    u32 i;
    if (((struct PlayerW12 *)players)[sub_080020F4()].state == 0xE)
        found = 1;
    i = 0;
    players += 0x148;
    for (; i < sub_08002164(); i++) {
        u32 kind = *(u8 *)((struct Player *)players)[i].item;
        if ((kind << 28) >> 28 == 0xE) {
            found = 1;
            break;
        }
    }
    return found;
}
/* [GetLocalCharacterLevel] Returns save-record word at offset 0x20. */
s32 sub_08058E08(void) {
    return M2C_FIELD(gUnk_030034E0, s32 *, 0x20);
}
/* [AcquireSceneCallbackGuard] Sets bit arg of guard mask scene state +0x6C, the mask
 * StartGuardedSceneCallbackTask tests and sets and ReleaseSceneCallbackGuard clears. It starts no task. */
void sub_08058E14(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
/* [ClearSceneCallbackGuardBit] Clears bit arg of guard mask scene state +0x6C; byte-for-byte the same
 * operation as ReleaseSceneCallbackGuard (sub_080574B0) in a separate copy. */
void sub_08058E28(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
/* [IsSceneCallbackGuardHeld] Returns 1 when bit arg of guard mask scene state +0x6C is set, otherwise 0. */
s32 sub_08058E3C(s32 bit)
{
    return (M2C_FIELD(gUnk_03005CF4, u32 *, 0x6C) & (1 << bit)) != 0;
}
/* [RunLockedDialogue1261] Locks local input/events, waits for free dialogue/text slots, opens bank20
 * message1261, polls completion with suspend-abort, then clears normal-path locks. Initial slot waits have no
 * abort test. */
void sub_08058E54(void)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001404ED);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunActorTrade1Event] Sets player flag0 and event lock, turns arg0 toward local-player selector0,
 * calls445E8(1,arg0), then clears locks. */
void sub_08058EF8(u32 arg0)
{
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    sub_080445E8(1, arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunFacingDialogue263] Locks input/events, turns selected entity toward player, shows bank20 message263 with
 * slot waits and suspend-abort, restores facing gradually and clears normal-path locks. Inherits facing-helper
 * enemy-selector caveat. */
void sub_08058F4C(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140107);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunFacingDialogue421] Locks input/events, turns selected entity toward player, shows bank20 message421 with
 * slot waits and suspend-abort, restores facing gradually and clears normal-path locks. No NPC identity
 * inferred. */
void sub_08059000(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A5);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunFacingDialogue422] Locks input/events, turns selected entity toward player, shows bank20 message422 with
 * slot waits and suspend-abort, restores facing gradually and clears normal-path locks. No NPC identity
 * inferred. */
void sub_080590B4(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A6);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunFacingDialogue423] Locks input/events, turns selected entity toward player, shows bank20 message423 with
 * slot waits and suspend-abort, restores facing gradually and clears normal-path locks. No NPC identity
 * inferred. */
void sub_08059168(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A7);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [SetCardTradeStageFromLinkCallback] Stores the u8 argument in scene state byte +0x1B0, or +0x1BC when scene
 * flag bit 9 is set. These are the trade stage bytes read by RunZaviCardTradeDialogue and
 * RunZaviAlternateCardTradeDialogue. Its only references in src are those two callbacks
 * (src/code_0802FEA0.c:3145 and :3581), which pass it with 5 to EnqueueLinkSceneCallbackTask after the final
 * trade. */
void sub_0805921C(u8 value)
{
    u8 *p;
    if (sub_0800CE30())
        p = (u8 *)gUnk_03005CF4 + 0x1BC;
    else
        p = (u8 *)gUnk_03005CF4 + 0x1B0;
    *p = value;
}
/* [RunPostRestInteractionDialogue] Sets local player flags bit 0 (input suppression), calls
 * BeginLocalPlayerEventLock and turns the argument entity toward selector 0. Shows 0x1401E0 with the usual
 * dialogue/text-window slot waits, StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, id) and the
 * IsWorldTaskSuspendRequested abort, then clears local flag bit 0 and calls EndLocalPlayerEventLock. It does
 * not restore the facing. */
void sub_08059250(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401E0);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunMonsterCardCatalogEvent] Sets player flag0 and begins event lock before2A19C call; clears both
 * afterward. */
void sub_080592FC(void)
{
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802A19C();
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [SetItem46CollectionCountTen] Stores literal10 to advanced+0x1BD or normal+0x1B1. */
void sub_08059340(void)
{
  int new_var2;
  int new_var3;
  u8 *p;
  int new_var;
  new_var2 = 0xA;
  new_var3 = new_var2;
 do { new_var = new_var3; *(((u8 *) ((uintptr_t) gUnk_03005CF4)) + ((sub_0800CE30()) ? (0x1BD) : (0x1B1))) = new_var; } while (0);
}
/* [RunLockedDialogue292] Locks local input/events, waits for free dialogue/text slots, opens bank20
 * message292, polls completion with suspend-abort, then clears normal-path locks. Initial slot waits have no
 * abort test. */
void sub_08059374(void)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140124);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunModeSelectedActorTrade] Begins local input/event locks and turns supplied actor toward player. */
void sub_08059418(s32 arg0)
{
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    if (sub_0800CE30() == 0) sub_080445E8(2, arg0);
    else sub_080445E8(3, arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
/* [RunQuincyDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x14013B) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It does not restore the entity's facing. Finally it
 * reloads the local player index, clears flag bit 0 and calls EndLocalPlayerEventLock. */
void sub_08059488(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013B);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
