#include "global.h"
extern void sub_080576A8();
extern void sub_08029788();
extern void sub_0802949C();
extern void sub_0802939C();
extern void sub_08023ED8();
extern void sub_0801AB90();
extern void sub_0801AB50();

/* [RunRomblemDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x14013C) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It does not restore the entity's facing. Finally it
 * reloads the local player index, clears flag bit 0 and calls EndLocalPlayerEventLock. */
void sub_08059534(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013C);
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
/* [RunPelignDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x14013D) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It does not restore the entity's facing. Finally it
 * reloads the local player index, clears flag bit 0 and calls EndLocalPlayerEventLock. */
void sub_080595E0(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013D);
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
/* [RunCognitoDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x14013E) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It does not restore the entity's facing. Finally it
 * reloads the local player index, clears flag bit 0 and calls EndLocalPlayerEventLock. */
void sub_0805968C(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013E);
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
/* [RunDelongueDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x14013F) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It does not restore the entity's facing. Finally it
 * reloads the local player index, clears flag bit 0 and calls EndLocalPlayerEventLock. */
void sub_08059738(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013F);
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
/* [RunVegitarDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x140140) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It does not restore the entity's facing. Finally it
 * reloads the local player index, clears flag bit 0 and calls EndLocalPlayerEventLock. */
void sub_080597E4(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140140);
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
/* [AnimateCameraTrackingOffsetToFixedEndpoint] Captures the two signed camera-tracking offsets from map state
 * +0x80/+0x82 once, then interpolates them toward first 0/second -50 using 659F4. Loop weights are 0..1024
 * inclusive in steps of 2. Each iteration narrows both results to signed 16, stores them through BB80 and
 * waits on scheduler signal 1. A normal uninterrupted run therefore performs 513 iterations; this is a count
 * of explicit waits, not an elapsed-frame or wall-clock guarantee. It always traverses the weights even if an
 * offset already equals its endpoint, and does not recapture the initial offsets after yields. */
void sub_08059890(void)
{
    struct Scroll { u8 pad[0x80]; s16 y; s16 x; };
    s32 step = 2;
    s32 y = ((struct Scroll *)&gUnk_03003170)->y;
    s32 x = ((struct Scroll *)&gUnk_03003170)->x;
    s32 i;
    s32 first;
    s32 second;
    s16 targetY = 0;
    s16 targetX = -50;
    for (i = 0; i <= 0x400; i += step) {
        sub_080659F4(&first, y, targetY, i);
        sub_080659F4(&second, x, targetX, i);
        ((void (*)(s32, s32))sub_0800BB80)((s16)first, (s16)second);
        sub_080003F0();
    }
}
/* [SetSceneEventFlagFromLinkCallback] Sets bit (n & 7) of byte (n >> 3) in the scene event-flag array at scene
 * state +0x1B7, or +0x1C3 when scene flag bit 9 is set: the same operation as SetSceneEventFlag
 * (sub_080579D8), in a separate copy. It is referenced about 34 times in src; for example the Klantol Times
 * trade callbacks (src/code_080443EC.c) pass it with the flag number to EnqueueLinkSceneCallbackTask, whose
 * linked receiver runs it as a scene callback task with that argument. */
void sub_0805990C(u32 bit)
{
    struct StateA { u8 pad[0x1C3]; u8 flags[12]; };
    struct StateB { u8 pad[0x1B7]; u8 flags[12]; };
    u32 index = bit >> 3;
    bit &= 7;
    if (sub_0800CE30())
        ((struct StateA *)gUnk_03005CF4)->flags[index] |= 1 << bit;
    else
        ((struct StateB *)gUnk_03005CF4)->flags[index] |= 1 << bit;
}
/* [SetSceneAreaEventFlag] Sets 1<<arg0 in scene-state word +0x38. */
void sub_08059954(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) | (1 << arg0));
}
/* [ClearBankedSceneEventFlag] Computes byte index and bit mask, clears in selected bank at lines136-139. */
void sub_08059968(u32 bit)
{
    struct StateA { u8 pad[0x1C3]; u8 flags[12]; };
    struct StateB { u8 pad[0x1B7]; u8 flags[12]; };
    u32 index = bit >> 3;
    bit &= 7;
    if (sub_0800CE30())
        ((struct StateA *)gUnk_03005CF4)->flags[index] &= ~(1 << bit);
    else
        ((struct StateB *)gUnk_03005CF4)->flags[index] &= ~(1 << bit);
}
/* [ClearSceneAreaEventFlag] Clears 1<<arg0 in scene-state word +0x38. */
void sub_080599B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) & ~(1 << arg0));
}
/* [MarkSceneCallbackGuardHeld] Sets bit arg of guard mask scene state +0x6C, the same operation as
 * AcquireSceneCallbackGuard in a separate copy; StartGuardedSceneCallbackTask will then refuse to start a task
 * for that bit until it is released. */
void sub_080599C4(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
/* [EnsureWorldMapDestinationAvailable] Computes destination-1, checks selected bank mask; if absent queries
 * mode again and sets corresponding bank. */
void sub_080599D8(u32 index)
{
    u32 bit = index - 1;
    u32 mask;
    if (sub_0800CE30())
        mask = *(u32 *)(gUnk_03005CF4 + 0x80) & (1 << bit);
    else
        mask = *(u32 *)(gUnk_03005CF4 + 0x78) & (1 << bit);
    if (mask == 0) {
        bit = index - 1;
        if (sub_0800CE30())
            *(u32 *)(gUnk_03005CF4 + 0x80) |= 1 << bit;
        else
            *(u32 *)(gUnk_03005CF4 + 0x78) |= 1 << bit;
    }
}
/* [RepeatLocalPlayerEventLock] u16 loop starts1, reasserts player flag0 and event lock each iteration. */
void sub_08059A40(s32 count)
{
    u16 i;
    u16 wait;
    for (i = 1; i < count; i++) {
        ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
        sub_0800D0F4();
        for (wait = 1; wait != 0; wait--) {
            sub_080003F0();
            if (sub_080021A8()) break;
        }
    }
}
/* [MarkWorldMapDestinationAvailable] Subtracts1 and ORs corresponding bit into mode bank+0x80/+0x78. */
void sub_08059A94(s32 arg0)
{
  s32 temp_r4;
  temp_r4 = arg0;
  temp_r4 = temp_r4 - 1;
  if (sub_0800CE30() != 0)
  {
    *((s32 *) (((s8 *) gUnk_03005CF4) + 0x80)) = (s32) ((*((s32 *) (((s8 *) gUnk_03005CF4) + 0x80))) | (1 << temp_r4));
    return;
  }
  *((s32 *) (((s8 *) gUnk_03005CF4) + 0x78)) = (s32) ((*((s32 *) (((s8 *) gUnk_03005CF4) + 0x78))) | (1 << temp_r4));
}
/* [RunHourseyDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x140217) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It then calls RestoreSceneEntityFacingGradually on the
 * same selector. Finally it reloads the local player index, clears flag bit 0 and calls
 * EndLocalPlayerEventLock. */
void sub_08059AD0(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140217);
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
/* [RunHiryuDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x140218) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It then calls RestoreSceneEntityFacingGradually on the
 * same selector. Finally it reloads the local player index, clears flag bit 0 and calls
 * EndLocalPlayerEventLock. */
void sub_08059B84(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140218);
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
/* [RunOldieDialogue] Sets bit 0 of the local player's flags +0x30 (the input-suppression bit) and calls
 * BeginLocalPlayerEventLock. Turns the scene entity selected by the argument toward selector 0 with
 * TurnSceneEntityTowardEntity. Waits with TaskWaitForSignal1 until no dialogue-task slot and no text-window
 * slot is used, then starts StartFixedLayoutDialogueTask(1, 15, 2, 0, -1, 0x140219) and waits for
 * DialogueStateIsComplete. If IsWorldTaskSuspendRequested is observed during that final wait it calls
 * CloseUsedDialogueWindowsAndWait and stops waiting. It then calls RestoreSceneEntityFacingGradually on the
 * same selector. Finally it reloads the local player index, clears flag bit 0 and calls
 * EndLocalPlayerEventLock. */
void sub_08059C38(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140219);
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
/* [RunActorMessage538] Sets local-player flag0, begins event lock, turns supplied actor toward local-player
 * selector0; waits dialogue/text slots. */
void sub_08059CEC(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014021A);
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
/* [RunActorMessage539] Sets local-player flag0, begins event lock, turns supplied actor toward local-player
 * selector0; waits dialogue/text slots. */
void sub_08059DA0(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014021B);
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
/* [RunActorMessage383] Sets local-player flag0, begins event lock, turns supplied actor toward local-player
 * selector0; waits dialogue/text slots. */
void sub_08059E54(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014017F);
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
/* [RunActorMessage384] Sets local-player flag0, begins event lock, turns supplied actor toward local-player
 * selector0; waits dialogue/text slots. */
void sub_08059F08(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140180);
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
/* [RunSelectedScreenReveal] Full-screen menu suppresses all work. */
void sub_08059FBC(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
/* [PositionSelectedMapObject] Mode0 positions selector6 at128/88 with zero duration. */
void sub_0805A004(u32 mode)
{
    switch (mode) {
    case 0: sub_08028AAC(6, 0x80, 0x58, 0); break;
    case 1:
        sub_08028AAC(7, 0x80, 0x58, 0);
        { u32 *flags = (u32 *)((u8 *)gGameState + 0x38);
          u32 mask = 0x10;
          *flags |= mask; }
        break;
    }
}
/* [PositionMapObjectEight] Calls MoveSceneEntityToPosition with selector 8, x=0x38, y=0x30 and zero
 * interpolation duration. */
void sub_0805A040(void) {
    sub_08028AAC(8, 0x38, 0x30, 0);
}
/* [KeepSceneEntityParked] Repeatedly calls MoveSceneEntityToPosition(state,0x270F,0x270F,0). */
void sub_0805A054(u32 state)
{
    u16 wait;
    register u32 coordinate asm("r5") = 0x270F;
again:
    sub_08028AAC(state, coordinate, coordinate, 0);
    wait = 1;
    goto test;
countdown:
    wait--;
    if (wait == 0) goto again;
test:
    sub_080003F0();
    if (sub_080021A8() == 0) goto countdown;
    goto again;
}
/* [RequestLinkedCallbackOnOverlap] Target183/225 Q8 and size10/40; player size initialized0. */
void sub_0805A088(u32 arg)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    u8 *entry;
    result = 0;
    pos[0] = 0xB700;
    pos[1] = 0xE100;
    packed = 0x0028000A;
    entry = (u8 *)&((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    while (sub_08021FE0(entry + 0x8C, pos, &result, &packed) == 0)
        sub_080003F0();
    sub_08068070((u32)sub_0804BC38, arg);
}
/* [RemoveBagItem34ForPlayer] Nonlocal owner returns; scans kind/id at inventory+0x150/+0x152 with16-byte
 * stride. */
void sub_0805A0EC(u32 owner)
{
    extern u8 * volatile mapObjects asm("gUnk_030034E0");
    u32 remaining;
    u32 i;
    u32 zero;
    u8 * volatile *map;
    if (sub_080020F4() != owner) return;
    remaining = 1;
    i = 0;
    map = &mapObjects;
    zero = 0;
loop:
    {
        u8 *base = *map;
        u8 *slot = base + i * 16;
        u32 offset = 0x150;
        u16 *status = (u16 *)(slot + offset);
        if (*status == 1) {
            offset = 0x152;
            slot += offset;
            if (*(u16 *)slot == 0x22) {
                remaining--;
                *status = zero;
                *(u16 *)slot = zero;
                if (remaining == 0) goto done;
            }
        }
    }
    i++;
    if (i <= 0x18) goto loop;
done:
    return;
}
/* [RequestOrParkMapObject] Mode0 enqueues same callback with mode1/guard1; result ignored. */
void sub_0805A138(u32 mode)
{
    switch (mode) {
    case 0:
        sub_08068820((u32)sub_0805A138, 1, 1);
        break;
    case 1:
        if ((gUnk_030027D0 & 0x20) == 0)
            sub_08006D08(0x17B);
        sub_08028AAC(7, 0x270F, 0x270F, 0);
        { u32 *flags = (u32 *)((u8 *)gGameState + 0x38);
          u32 mask = 8;
          *flags |= mask; }
        break;
    }
}
/* [OscillateSceneEntityVertically] Infinite loop alternates MoveSceneEntityByOffset(arg0,0,-1,3) and
 * MoveSceneEntityByOffset(arg0,0,1,3). */
void sub_0805A194(s32 arg0)
{
 do { loop_1: sub_08028D98(arg0, 0, -1, 3); sub_08028D98(arg0, 0, 1, 3); goto loop_1; } while (0);
}
/* [ShowSceneInteractionMessage] Sets player flag0 and begins event lock; waits for dialogue/text slots to
 * become unused. */
void sub_0805A1B4(void)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014022A);
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
/* [RevealSceneThenMoveEnemy] Skips reveal only under fullscreen menu; otherwise selects reveal and waits idle. */
void sub_0805A258(void)
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
    sub_0802939C(1, 1);
    sub_08028D98(1, 0xF0, 0, 0x190);
}
/* [ParkMapObjectEight] Calls MoveSceneEntityToPosition(8,0x270F,0x270F,0). */
void sub_0805A2B8(void) {
    sub_08028AAC(8, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
/* [SetSceneEventFlagTwelve] Selects scene byte +0x1C4 in Advanced Mode, otherwise +0x1B8, and ORs bit 4 at
 * lines 484-487; these are byte 1/bit 4 of the established event-flag banks, hence flag 12. */
void sub_0805A2E4(void)
{
    register u8 *field asm("r1");
    u32 old;
    u32 mask;
    if (sub_0800CE30()) field = (u8 *)gGameState + 0x1C4;
    else field = (u8 *)gGameState + 0x1B8;
    old = *field;
    mask = 0x10;
    mask |= old;
    *field = mask;
}
/* [HasPlayerAppearance6Or8] Scans connected player records at0x14C stride; returns1 for current +0x64 value6
 * or8. */
u32 sub_0805A318(void)
{
    struct PlayerKinds { u8 pad[0x64]; u16 kind; u8 tail[0xE6]; };
    u32 count = sub_08002164();
    u32 i;
    for (i = 0; i < count; i++) {
        u16 kind = ((struct PlayerKinds *)gUnk_03003CE0)[i].kind;
        if (kind == 6 || kind == 8) return 1;
    }
    return 0;
}
/* [SetSceneEventFlag24] Chooses advanced+0x1C6 or normal+0x1BA and ORs bit0, equivalent to bit24 of
 * banks+0x1C3/+0x1B7. */
void sub_0805A350(void)
{
    u8 *field;
    u32 old;
    u32 mask;
    if (sub_0800CE30()) field = (u8 *)gGameState + 0x1C6;
    else field = (u8 *)gGameState + 0x1BA;
    old = *field;
    mask = 1;
    mask |= old;
    *field = mask;
}
/* [RequestGuardedEntityMovementSequence] Checks that arg0 is nonzero and scheduled, then cancels it at line
 * 514; regardless of the check, line 516 enqueues sub_0805A3B0 with argument 0 and guard 0. */
void sub_0805A384(s32 arg0) {
    if ((arg0 != 0) && (sub_08000470((u32)arg0) != 0)) {
        sub_080003A8(arg0);
    }
    sub_08068820(sub_0805A3B0, 0, 0);
}
/* [RunMapObjectMovementSequence] Conditionally requests song0x17B. */
void sub_0805A3B0(void) {
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x17BU);
    }
    sub_08028AAC(7, 0x270F, 0x270F, 0);
    sub_08028D98(6, 0, -0xC, 0x3C);
}
/* [RequestLinkedSceneEntityParking] Calls EnqueueLinkSceneCallbackTask with callback sub_0805A404 and
 * unchanged arg0. */
void sub_0805A3F0(s32 arg0) {
    sub_08068070(sub_0805A404, arg0);
}
/* [ParkSceneEntityWithSong] Only requests song35 when scene bit3 and link mask0x20 are clear. */
void sub_0805A404(s32 arg0) {
    if ((sub_0800CCCC() == 0) && !(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
    sub_08028AAC(arg0, 0x270F, 0x270F, 0);
}
/* [SetInventoryGateArbitrationStatus] Chooses advanced+0x1C1 or normal+0x1B5 and writes u8 input. */
void sub_0805A43C(u8 value)
{
    u32 offset;
    u8 *base;
    if (sub_0800CE30() != 0) {
        base = (u8 *)gGameState;
        offset = 0x1C1;
    } else {
        base = (u8 *)gGameState;
        offset = 0x1B5;
    }
    base[offset] = value;
}
/* [ParkSceneEntity] Calls MoveSceneEntityToPosition(arg0,0x270F,0x270F,0). */
void sub_0805A474(s32 arg0) {
    sub_08028AAC(arg0, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
struct GameState22 { u8 pad0[0x22]; u16 arr22[1]; };
/* [GetSceneEventVariantIndex] Reads the u16 array at scene+0x22 and subtracts one for the u16 result. */
u16 sub_0805A4A0(u16 index)
{
    return ((struct GameState22 *)gUnk_03005CF4)->arr22[index] - 1;
}
/* [StartSceneObjectGroupTask] Returns if embedded scene task+0x6F4 is already scheduled. */
void sub_0805A4BC(u32 arg)
{
    u32 mem;
    u8 *base;
    u8 **owner = (u8 **)&gUnk_03005CF4;
    if (sub_08000470((u32)*owner + 0x6F4) != 0) return;
    goto allocate;
retry:
    sub_080003F0();
allocate:
    {
        u32 slotOffset;
        mem = sub_08001494(0xC00);
        slotOffset = 0x714;
        *(u32 *)(*owner + slotOffset) = mem;
    }
    if (mem == 0) goto retry;
    base = (u8 *)gGameState;
    *(u32 *)(base + 0x700) = (u32)sub_08027C1C;
    *(u32 *)(base + 0x704) = *(u32 *)(base + 0x714) + 0xBFC;
    *(u32 *)(base + 0x6FC) = 0x46;
    *(u32 *)(base + 0x718) = 0;
    sub_08000274((u32)(base + 0x6F4), arg);
}
/* [RegisterAndStartEnemySpawnGroupAtIndex] If the supplied record first signed halfword is nonzero, writes its
 * pointer into scene+0x724+index*4 using the full explicit index, calls RestartEnemySpawnGroupTask (23ED8)
 * with the same arguments, then reloads the global scene pointer and increments its current unsigned halfword
 * count at +0xA. Zero first halfword returns without registration/start/count change. The explicit slot index
 * is not replaced by the count, and the count is not assigned index+1. */
void sub_0805A550(s16 *item, u32 index)
{
    struct SlotArray { u8 pad[0x724]; s16 *items[1]; };
    if (*item == 0) return;
    ((struct SlotArray *)gGameState)->items[index] = item;
    sub_08023ED8(item, index);
    (*(u16 *)((u8 *)gGameState + 0xA))++;
}
/* [StartSceneObjectInteractionCallbackTask] Searches 30 scene callback task records at state+0xE34 for an
 * inactive control. Sets scene flags bit 7 to block further object interactions, retries a 0x400-byte stack
 * allocation with scheduler signal 1 waits, installs the supplied callback with the supplied argument, task
 * flags 0x3C, stack top allocation+0x3FC and destructor 5A704, then starts it and returns the control pointer.
 * It does not wait for callback completion or reject an already-set interaction flag. A full pool does not set
 * the flag. */
void *sub_0805A58C(u32 arg0, u32 callback)
{
    u32 i;
    u32 mem;
    u8 *base = (u8 *)gGameState;
    u32 offset = 0xE34;
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
            gGameState->flags |= 0x80;
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
            *(u32 *)(entry + 0x24) = (u32)sub_0805A704;
            sub_08000274((u32)entry, arg0);
            return entry;
    }
done:
    ;
}
/* [ApproachAndWaitAtAreaExitDirection0] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 0, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A60C(s32 arg0) {
    sub_0802413C(arg0, 0);
}
/* [ApproachAndWaitAtAreaExitDirection1] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 1, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A618(s32 arg0) {
    sub_0802413C(arg0, 1);
}
/* [ApproachAndWaitAtAreaExitDirection2] Forwards the original input pointer in R0 to 2413C with second
 * argument exactly 2, then returns without a result contract. It inherits the movement, waiting, cancellation
 * and early-exit limits of the exit-approach body; it does not independently register a task or select/store
 * the destination. Direction is the observed numeric selector, not an inferred compass label. */
void sub_0805A624(s32 arg0) {
    sub_0802413C(arg0, 2);
}
