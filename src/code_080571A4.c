#include "global.h"
extern void sub_08084F9C();
extern void sub_0801AB90();
extern void sub_0801AB50();
extern void sub_0801AA8C();
extern void sub_0801AA34();

u32 sub_0805DF38(u32 arg0, u32 arg1, u32 arg2, u32 arg3, s32 arg4, u32 arg5);
s32 sub_0805EEFC(void *arg0);
u32 sub_0805EF90(void);

/* [SetEnemySpawnSlotState] Link parent/loopback predicate02204 gates a single byte write to
 * scene+1C8+u8group*5+u8slot; neither index is bounds checked. */
void sub_080571A4(u8 a, u8 b, u8 value)
{
    if (sub_08002204() != 0) {
        u8 *base = (u8 *)gUnk_03005CF4;
        u32 index = b + a * 5;
        base += 0x1C8;
        base += index;
        *base = value;
    }
}
/* [MatchEnemySpawnSlotState] Reads scene+1C8+u8group*5+u8slot and compares value, returning0/1; unlike setter
 * there is no parent guard or bounds check. */
u32 sub_080571D8(u8 a, u8 b, u8 value)
{
    u32 result = 0;
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 index = b + a * 5;
    base += 0x1C8;
    base += index;
    if (*base == value)
        result = 1;
    return result;
}
/* [HasEnemySpawnStateTwo] Scans offsets0..4 at scene+1C8+u8group*5 and early returns1 for byte2; it does not
 * test every nonzero state. */
u32 sub_08057210(u8 index)
{
    u32 i = 0;
    register u8 *base asm("r2") = (u8 *)gUnk_03005CF4;
    u32 row = index * 5;
    base += 0x1C8;
    for (; i <= 4; i++) {
        u32 offset = (u8)i;
        u32 found = 0;
        if (base[offset + row] == 2)
            found = 1;
        if (found)
            return 1;
    }
    return 0;
}
/* [HasNoBusySpawnSlots] Scans group*5 at scene+1C8 and returns0 immediately for byte2 or byte1; any other byte
 * is accepted, not just zero. */
u32 sub_08057254(u8 index)
{
    u32 i = 0;
    register u8 *base asm("r2") = (u8 *)gUnk_03005CF4;
    u32 row = index * 5;
    base += 0x1C8;
    for (; i <= 4; i++) {
        u32 value;
        u32 offset = (u8)i;
        register u32 found asm("r3") = 0;
        value = base[offset + row];
        if (value == 2)
            found = 1;
        if (found)
            return 0;
        found = 0;
        if (value == 1)
            found = 1;
        if (found)
            return 0;
    }
    return 1;
}
/* [ClearSceneRecordArrays] Loopi0..9 clears scene+160+i*8 and+164+i*8 plus byte scene+22C+i. The struct
 * gap0x7C follows the80-byte pair array, locating flags at22C. */
void sub_080572A4(void)
{
    struct State { u8 pad[0x160]; u32 pairs[10][2]; u8 pad2[0x7C]; u8 flags[10]; };
    u32 i;
    for (i = 0; i < 10; i++) {
        struct State *base;
        ((struct State *)gUnk_03005CF4)->flags[i] = 0;
        base = (struct State *)gUnk_03005CF4;
        base->pairs[i][0] = 0;
        base->pairs[i][1] = 0;
    }
}
/* [SetBossRetryPortalFlag] ORs0x100 into the unsigned scene header+4 while preserving its other bits. */
void sub_080572E4(void)
{
    gGameState->flags |= 0x100;
}
/* [ClearBossRetryPortalFlag] ANDs0xFEFF into the unsigned scene header+4 while preserving its other bits. */
void sub_080572FC(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFEFF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
/* [QueryBossRetryPortalFlag] Reads unsigned scene header+4 bit8 as normalized0/1. */
s32 sub_08057314(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 8) & 1;
}
/* [StartSceneCallbackTask] Searches 30 task records at scene+0xE34 for an inactive entry, retries 0x400-byte
 * allocation by yielding, assigns b to task function+0xC and starts it with argument a. No free record follows
 * the original undefined-result exit; this name does not promise successful creation. Field+8 is not
 * interpreted as priority. */
s32 sub_08057328(u32 a, void *b) {
    u8 *entry;
    u32 count;
    s32 result;
    u32 memory;
    entry = (u8 *)gUnk_03005CF4 + 0xE34;
    count = 0;
    goto check;
next:
    count++;
    entry += 0x28;
check:
    if (count > 0x1D) goto out;
    result = sub_08000470(entry);
    if (result != 0) goto next;
    goto allocate;
wait:
    sub_080003F0();
allocate:
    memory = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = memory;
    if (memory == 0) goto wait;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)b;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274((s32 *)entry, (s32)a);
    return (s32)entry;
out:
    return;
}
/* [RequestLinkedSceneCallbackTask] Calls68070(callback,arg), which sends tag 0xA3. Receiver6690C case 0x22
 * calls 57328(d1,d0), placing callback in a scene task and passing arg. The wrapper requests linked execution;
 * it does not start the callback locally before reception. */
s32 sub_08057390(s32 arg0, void (*arg1)(s32)) {
    return sub_08068070(arg1, arg0);
}
/* [RequestLinkedGuardedSceneCallbackTask] Calls68820(callback,arg,guardBit), sending tag 0xA4. Receiver6690C
 * case 0x23 calls 57430(d1,d0,d2), which uses the third word as a scene guard bit, not a third callback
 * argument. */
s32 sub_080573A0(s32 arg0, void (*arg1)(s32), void *arg2)
{
    return sub_08068820((void *)arg1, (void *)arg0, arg2);
}
/* [StartSceneCallbackTaskAndWait] Finds an inactive task in the same scene+0xE34 pool, allocates 0x400 bytes,
 * sets callback function and argument, starts it and yields while 00470 reports it active. With no free task
 * it exits without starting one. */
void sub_080573B0(u32 arg, u32 callback)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    if (sub_08000470((u32)entry)) goto next;
    {
        while ((*(u32 *)(entry + 0x20) = sub_08001494(0x400)) == 0)
            sub_080003F0();
        mem = *(u32 *)(entry + 0x20);
        *(u32 *)(entry + 8) = 0x3C;
        *(u32 *)(entry + 0xC) = callback;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = 0;
        sub_08000274((u32)entry, arg);
        do {
            sub_080003F0();
        } while (sub_08000470((u32)entry));
    }
out:
    return;
}
/* [IsSceneTaskScheduled] Direct wrapper that returns TaskIsScheduled(a). src/code_08087CC0.c:2071 polls it in
 * a wait loop on an event control until the control is no longer scheduled. */
s32 sub_08057424(s32 a)
{
    return sub_08000470(a);
}
/* [StartGuardedSceneCallbackTask] Computes 1<<bit, returns if scene+0x6C already contains it; otherwise sets
 * that bit before searching 30 task records at scene+0x12E4. Allocates 0x400 bytes and starts callback with
 * arg. Guard remains set until separately cleared; no free slot does not roll it back. */
u32 sub_08057430(u32 arg, u32 callback, u32 bit)
{
    u8 *state = (u8 *)gUnk_03005CF4;
    u32 mask = 1 << bit;
    u8 *entry;
    u32 i;
    u32 result;
    u32 mem;
    if (*(u32 *)(state + 0x6C) & mask)
        return;
    *(u32 *)(state + 0x6C) |= mask;
    entry = state + 0x12E4;
    i = 0;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 29) goto out;
    if (sub_08000470((u32)entry)) goto next;
    while ((*(u32 *)(entry + 0x20) = sub_08001494(0x400)) == 0)
        sub_080003F0();
    mem = *(u32 *)(entry + 0x20);
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = callback;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274((u32)entry, arg);
    result = (u32)entry;
out:
    return result;
}
/* [ReleaseSceneCallbackGuard] Clears 1<<arg0 from scene+0x6C, the exact guard tested/set by 57430. Does not
 * cancel or join a task. */
void sub_080574B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
/* [RequestSceneObjectStopByHandle] Searches the 15 scene object records at scene state +0x7A4 (0x70-byte
 * stride) for one whose word +0 equals the argument and stores 4 in its halfword +0x36. The matched object
 * callback sub_080284F4 loops `while (e->f36 != 4)`, so this requests that object's loop to end. If no record
 * matches, it performs one TaskWaitForSignal1 and stores nothing. */
void sub_080574C4(void *target)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    u32 i = 0;
    while (*(void **)entry != target) {
        i++;
        entry += 0x70;
        if (i > 0xE) {
            sub_080003F0();
            entry = 0;
            break;
        }
    }
    if (entry)
        *(u16 *)(entry + 0x36) = 4;
}
/* [CancelAllSceneObjectTasks] For each of the 15 scene object records at +0x7A4, cancels the embedded task
 * control at record +0x48 with CancelTaskWithDestructor when TaskIsScheduled reports it scheduled. This is the
 * object-only part of CancelSceneCallbackAndObjectTasks; callback banks are untouched. */
void sub_080574FC(void) {
    s32 temp_r4;
    s32 var_r5;
    u32 var_r6;

    var_r5 = gUnk_03005CF4 + 0x7A4;
    var_r6 = 0;
    do {
        temp_r4 = var_r5 + 0x48;
        if (sub_08000470(temp_r4) != 0) {
            sub_080003A8(temp_r4);
        }
        var_r6 += 1;
        var_r5 += 0x70;
    } while (var_r6 <= 0xEU);
}
/* [SetSceneObjectInteractionBoxSizeById] Finds the first of fifteen scene+0x7A4 object records whose full
 * 32-bit ID matches. Narrows both supplied dimensions to unsigned 16 and writes halfwords+0x18/+0x1A, then ORs
 * mask 0x10 into word+0x3C. On a miss waits once on scheduler signal 1 and returns without mutation or rescan.
 * No activity, ID 0 or bounds validation is added. These fields are interaction-box dimensions, not object
 * world coordinates. */
void sub_08057534(void *key, u16 x, u16 y)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    u8 *result;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (*(void **)entry == key) {
            result = entry;
            goto found;
        }
    }
    sub_080003F0();
    result = 0;
found:
    if (result) {
        *(u16 *)(result + 0x18) = x;
        *(u16 *)(result + 0x1A) = y;
        *(u32 *)(result + 0x3C) |= 0x10;
    }
}
/* [SetSceneObjectInteractionCallbackById] Scans fifteen object records at scene+0x7A4, stride 0x70, for the
 * first matching full 32-bit ID and writes the supplied full 32-bit callback word to+0x44. No callback
 * type/address validation, activity check, ID 0 guard or immediate invocation occurs. If no match, waits once
 * on scheduler signal 1 and returns without rescanning. */
void sub_08057580(u32 key, u32 value)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    u8 *result;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (*(u32 *)entry == key) {
            result = entry;
            goto found;
        }
    }
    sub_080003F0();
    result = 0;
found:
    if (result)
        *(u32 *)(result + 0x44) = value;
}
/* [ShowSceneMessageAndWait] Waits until no dialogue task slot and no text window slot is used, then starts
 * StartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x140000 | id). Waits for DialogueStateIsComplete; if
 * IsWorldTaskSuspendRequested becomes set first, it cancels the dialogue through sub_0805EFBC and returns. */
void sub_080575C0(u16 value)
{
    u32 handle;

    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();

    handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x140000 | value);
    while (sub_0805EEFC((void *)handle) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
}
/* [WaitSignal1RepeatedUnlessLinkError] Calls TaskWaitForSignal1 up to count times (u16), stopping early as
 * soon as LinkHasErrorFlag returns nonzero. About 90 call sites use it as a scripted delay. The count is a
 * number of signal-1 waits, not a proven frame duration. */
void sub_08057624(u16 count)
{
    while (count != 0) { sub_080003F0(); if (sub_080021A8() != 0) break; count = count - 1; }
}
/* [RevealScreenAndWait] CC98zero gates entire function; mode0 calls brightness fade-in/wait576A8, mode1
 * requests window reveal1AB50(6), mode2 requests window-preserving brightness fade1AB90(6); then loops on
 * IsScreenTransitionIdle with signal1 yields. No timeout or success result. */
void sub_08057644(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
}
/* [RequestScreenWindowHideAndWait] Requests 1ABE8 with fixed parameter 6, then repeatedly tests 1AAE0 and
 * waits on scheduler signal 1 while any transition active-mask 0x16 bit remains set. Returns when the shared
 * controller is idle. It does not own an individual request, start the controller, test link errors or
 * establish an exact elapsed duration. */
void sub_0805768C(void) { sub_0801ABE8(6); while (!sub_0801AAE0()) sub_080003F0(); }
/* [FadeScreenBrightnessInAndWait] Calls RequestScreenBrightnessFadeIn(0x1E), then yields with
 * TaskWaitForSignal1 until IsScreenTransitionIdle returns nonzero. */
void sub_080576A8(void) { sub_0801AA34(0x1E); while (!sub_0801AAE0()) sub_080003F0(); }
/* [FadeScreenBrightnessOutAndWait] Calls RequestScreenBrightnessFadeOut(0x1E), then yields with
 * TaskWaitForSignal1 until IsScreenTransitionIdle returns nonzero. */
void sub_080576C4(void) { sub_0801AA8C(0x1E); while (!sub_0801AAE0()) sub_080003F0(); }
/* [GetLocalPlayerId] No-argument wrapper returning 020F4 unchanged; it adds no cached player selection,
 * participant-count query, peer validation, link setup or handshake. Original 020F4 returns 0 when software
 * link-mode mask 0x2 in 030027D0 is clear; when set, it extracts bits 4..5 from word 04000128, giving 0..3.
 * This is an ID accessor, not proof that any remote peer is present. */
s32 sub_080576E0(void) {
    return sub_080020F4();
}
/* [InterpolateCameraTrackingOffset] Starts with signed-halfword camera tracking offsets at map state
 * +0x80/+0x82. For nonzero u16 duration computes integer step 1024/duration; for zero it leaves the step
 * without assignment. For each weight <=1024 calls InterpolateSignedValuesQ10 for both axes, applies low
 * signed-halfword results through SetCameraTrackingOffset and waits for signal 1. Duration 3 visits weights
 * 0,341,682,1023 then exits without reaching the target weight; durations above 1024 make step zero and do not
 * advance. No exact endpoint, elapsed-time, valid-input or universal termination guarantee is inferred. */
void sub_080576EC(u16 x, u16 y, u16 duration)
{
    s32 step;
    s32 startX;
    register s32 startY asm("r8");
    s32 i;
    s32 outX, outY;
    if (duration)
        step = 1024 / (s32)duration;
    startX = (s16)gUnk_03003170.f80;
    startY = (s16)gUnk_03003170.f82;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&outX, startX, (s16)x, i);
        sub_080659F4(&outY, startY, (s16)y, i);
        ((void (*)(s32, s32))sub_0800BB80)((s16)outX, (s16)outY);
        sub_080003F0();
    }
}
/* [InterpolateSceneDrawAndBg2Offset] Interpolates from signed-halfword map state offsets +0x80/+0x82 toward
 * signed-halfword (x,y) using InterpolateSignedValuesQ10. Computes a signed-halfword step 1024/n only when n
 * is nonzero; each iteration treats the stored weight as signed16, applies low-halfword results with
 * SetSceneDrawOffset and their negated full interpolated values with SetBg2EffectTransformOffset, then waits
 * for signal 1. Continues while the narrowed weight is <=1024. The target need not be reached (n=3 ends at
 * weight1023); n>1024 gives step0, and n=0 leaves the step without assignment. No full-range input validation,
 * exact endpoint or completion-time contract is claimed. */
void sub_08057780(u16 x, u16 y, u16 n)
{
    s32 ax;
    s32 ay;
    s16 step;
    s32 sx;
    s32 sy;
    u16 i;
    s16 t;
    if (n != 0)
        step = 0x400 / n;
    sx = (s16)gUnk_03003170.f80;
    sy = (s16)gUnk_03003170.f82;
    i = 0;
    do {
        t = i;
        sub_080659F4(&ax, sx, (s16)x, t);
        sub_080659F4(&ay, sy, (s16)y, t);
        ((void (*)(s32, s32))sub_0800BB94)((s16)ax, (s16)ay);
        ((void (*)(s32, s32))sub_08097D18)(-ax, -ay);
        sub_080003F0();
        i = t + step;
    } while ((s16)i <= 0x400);
}
/* [RunFadedFullScreenMenu] Matched wrapper 5782C sets scene bit 10, requests transition mode 6 through 1ABE8
 * and waits for 1AAE0. It requests map-background reload, performs four scheduler signal-1 waits, sets bit 2,
 * saves the signed map-scroll halfwords and starts 84F9C with its unchanged 32-bit argument. After waiting on
 * signal 0x11201100, it restores scroll, clears bit 2, wakes signal 0x514C8 and clears bit 10 before polling
 * transition idle again. These are scheduler waits, not an elapsed-frame guarantee; the flags do not
 * themselves prove rendering or task completion. */
void sub_0805782C(u32 arg)
{
    s32 x, y;
    sub_0800CE40();
    sub_0801ABE8(6);
    while (!sub_0801AAE0())
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    x = (s16)gUnk_03003170.scrollX;
    y = (s16)gUnk_03003170.scrollY;
    sub_08084F9C(arg);
    sub_080003F4(0x11201100);
    gUnk_03003170.scrollX = x;
    gUnk_03003170.scrollY = y;
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (!sub_0801AAE0())
        sub_080003F0();
}
/* [AskSceneQuestionAndWait] Waits for no used dialogue task slot, starts StartFixedLayoutDialogueTask(1, 0xF,
 * 2, 0, -2, 0x140000 | id), waits for DialogueStateIsComplete and returns DialogueSelectionIsZero for that
 * dialogue. The -2 timing argument is the one used by the save/quit confirmation in src/code_0805FB7C.c. */
u32 sub_080578BC(u32 value)
{
  u16 new_var;
  u32 handle;
  new_var = (u16) value;
  while (sub_0805F184() != 0)
  {
    sub_080003F0();
  }

  handle = sub_0805DF38(1, 0xF, 2, 0, -2, 0x140000 | new_var);
  while (sub_0805EEFC(handle) == 0)
  {
    sub_080003F0();
  }

  return sub_0805EF14(handle);
}
/* [SetLocalPlayerRenderSuppressionAndRequestFlagsUpdate] Sets mask2 in the local player word+0x30. Original
 * D368 at08012614..1261E tests mask2; set transfers to the common tail08013556, which yields and either loops
 * or cleans up using the existing frame, rather than returning into the skipped render block. The skipped
 * block includes main animation65370, player sprite07870, status overlay and additional visual work. A
 * separate branch0800FFF8..10002 skips damage-number rendering5FAC0 when mask2 is set. Other gameplay,
 * movement and damage processing precedes these branches; no invulnerability, removal, cancellation or
 * universal visibility guarantee is inferred. Clearing permits these paths subject to their other independent
 * gates. */
void sub_0805790C(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 2; sub_08067D74(); }
/* [ClearLocalPlayerRenderSuppressionAndRequestFlagsUpdate] Clears mask2 in the local player word+0x30.
 * Original D368 at08012614..1261E tests mask2; set transfers to the common tail08013556, which yields and
 * either loops or cleans up using the existing frame, rather than returning into the skipped render block. The
 * skipped block includes main animation65370, player sprite07870, status overlay and additional visual work. A
 * separate branch0800FFF8..10002 skips damage-number rendering5FAC0 when mask2 is set. Other gameplay,
 * movement and damage processing precedes these branches; no invulnerability, removal, cancellation or
 * universal visibility guarantee is inferred. Clearing permits these paths subject to their other independent
 * gates. */
void sub_08057934(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~2u; sub_08067D74(); }
/* [BeginLocalPlayerEvent] Sets bit 0 of the local player's flags word +0x30 and calls
 * BeginLocalPlayerEventLock: the same opening pair the scripted message routines in src/code_08058790.c
 * inline. */
void sub_0805795C(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; sub_0800D0F4(); }
/* [EndLocalPlayerEvent] Clears bit 0 of the local player's flags word +0x30 and calls EndLocalPlayerEventLock,
 * closing BeginLocalPlayerEvent. */
void sub_08057984(void)
{
  (&gUnk_03003CE0[sub_080020F4()])->flags &= ~((char) 1u);
  sub_0800D108();
}
/* [GetNormalizedCharacterClassIndexWrapper] Calls the normalized character-class getter 1DE60, explicitly
 * narrows its R0 result to an unsigned byte and returns it. The target already maps saved class 8 to 6 and
 * truncates other classes to a byte, so this wrapper preserves that narrow class-index result. It does not
 * select or alter the character class, validate a class domain or assign numeric class titles. */
u8 sub_080579AC(void) {
    return sub_0801DE60();
}
/* [ResetLocalPlayerState] Stores 0 in the local player's state halfword +0x20. No other player fields change. */
void sub_080579BC(void)
{
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->state = 0;
}
/* [SetSceneEventFlag] Sets bit (n & 7) of byte (n >> 3) in the scene event-flag array at scene state +0x1B7,
 * or +0x1C3 when scene flag bit 9 (sub_0800CE30) is set. Paired with ClearSceneEventFlag/IsSceneEventFlagSet.
 * The flag indices are used as event conditions (for example 0x1B in sub_0808F088 and 39 in
 * src/code_08021DC4.c); no individual flag meaning is claimed. */
void sub_080579D8(u32 bit)
{
    u32 index = bit >> 3;
    register u8 *base asm("r1");
    u32 offset;
    bit &= 7;
    if (sub_0800CE30())
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base = (1 << bit) | *base;
}
/* [SetSceneEventFlagInBank] Like SetSceneEventFlag, but an explicit second argument chooses the +0x1C3 array
 * (nonzero) or +0x1B7 array (zero) instead of scene flag bit 9. */
void sub_08057A20(u32 bit, u32 alternate)
{
    u32 index = bit >> 3;
    register u8 *base asm("r1");
    u32 offset;
    bit &= 7;
    if (alternate)
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base = (1 << bit) | *base;
}
/* [ClearSceneEventFlag] Clears bit (n & 7) of byte (n >> 3) in the scene event-flag array at +0x1B7, or +0x1C3
 * when scene flag bit 9 is set. */
void sub_08057A5C(u32 bit)
{
    u32 index = bit >> 3;
    u8 *base;
    u32 offset;
    bit &= 7;
    if (sub_0800CE30())
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base &= ~(1 << bit);
}
/* [ClearSceneEventFlagInBank] Like ClearSceneEventFlag, with an explicit bank argument (nonzero selects
 * +0x1C3). */
void sub_08057AA4(u32 bit, u32 alternate)
{
    u32 index = bit >> 3;
    u8 *base;
    u32 offset;
    bit &= 7;
    if (alternate)
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base &= ~(1 << bit);
}
/* [IsSceneEventFlagSet] Returns bit (n & 7) of byte (n >> 3) of the scene event-flag array (+0x1B7, or +0x1C3
 * when scene flag bit 9 is set) as 0 or 1. */
u32 sub_08057AE8(u32 bit)
{
    u32 index = bit >> 3;
    u8 *base;
    bit &= 7;
    if (sub_0800CE30() == 0)
        base = (u8 *)gUnk_03005CF4 + 0x1B7;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1C3;
    return (base[index] >> bit) & 1;
}
/* [SetBankedSceneProgressByte] CE30 selects scene+1BC when nonzero or+1B0 otherwise, then writes low8-bit
 * value at unchecked u32index. */
void sub_08057B2C(u32 index, u8 value)
{
    u8 *p;
    if (sub_0800CE30())
        p = (u8 *)gUnk_03005CF4 + 0x1BC;
    else
        p = (u8 *)gUnk_03005CF4 + 0x1B0;
    p[index] = value;
}
/* [GetBankedSceneProgressByte] CE30 zero selects scene+1B0, otherwise+1BC; unchecked u32index is returned
 * asu8. */
u8 sub_08057B64(u32 index)
{
    u8 *base;
    if (sub_0800CE30() == 0)
        base = (u8 *)gUnk_03005CF4 + 0x1B0;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1BC;
    return base[index];
}
/* [IsLevelEncounterCleared] Returns the nonzero masked bit (1 << (level - 1)) of word scene state +0x74 (+0x7C
 * when scene flag bit 9 is set); it is not normalized to 1. The word is set by MarkLevelEncounterCleared.
 * src/code_08087CC0.c:842 chooses the LoadWorldMapArea area for level 10 based on it. */
u32 sub_08057B98(u32 value)
{
    value--;
    if (sub_0800CE30() != 0)
        return *(u32 *)((u8 *)gUnk_03005CF4 + 0x7C) & (1u << value);
    return *(u32 *)((u8 *)gUnk_03005CF4 + 0x74) & (1u << value);
}
/* [MarkLevelEncounterCleared] ORs 1 << (level - 1) into word scene state +0x74 (+0x7C when scene flag bit 9 is
 * set) and returns the new word. The area encounter routines in src/code_0808D4A8.c call it with the current
 * level (map state curLevel) on their completion path (lines 108, 424, 687 and others), alongside
 * ClearSceneEncounterActive. */
u32 sub_08057BD0(u32 value)
{
    u32 result;
    value--;
    if (sub_0800CE30() == 0)
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x74) |= (1u << value));
    else
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x7c) |= (1u << value));
    return result;
}
/* [GetLevelEncounterClearedMask] Returns the whole word scene state +0x74 (or +0x7C when scene flag bit 9 is
 * set). The scene-restore paths in src/code_08021DC4.c copy it into their saved state at +0x50. */
s32 sub_08057C0C(void)
{
  if (sub_0800CE30() == 0)
  {
    return *((s32 *) (((s8 *) gUnk_03005CF4) + 0x74));
  }
  if (gUnk_03005CF4)
  {
    return *((s32 *) (((s8 *) gUnk_03005CF4) + 0x7C));
  }
  else
  {
    return *((s32 *) (((s8 *) gUnk_03005CF4) + 0x7C));
  }
}
/* [GetWorldMapAvailabilityBit] Decrements destination then ANDs1u<<index with scene+78 or+80 selected byCE30;
 * returns a mask bit, not normalized boolean. Zero input/shift domain is unchecked. */
u32 sub_08057C34(u32 value)
{
    value--;
    if (sub_0800CE30() != 0)
        return *(u32 *)((u8 *)gUnk_03005CF4 + 0x80) & (1u << value);
    return *(u32 *)((u8 *)gUnk_03005CF4 + 0x78) & (1u << value);
}
/* [SetWorldMapAvailabilityBit] Decrements input then ORs1u<<index into scene+78 when CE30zero or+80 otherwise;
 * returns the full word, not just the selected bit. Shift domain is unchecked. */
u32 sub_08057C6C(u32 value)
{
    u32 result;
    value--;
    if (sub_0800CE30() == 0)
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x78) |= (1u << value));
    else
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x80) |= (1u << value));
    return result;
}
