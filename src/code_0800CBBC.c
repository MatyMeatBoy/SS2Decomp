#include "global.h"

/* [IncrementCoordinatedActionParticipantCount] Increments shared counter 0x03003474 without clamping. Original
 * player task sub_0800D368 calls this when entering packet state 14. Its completed-state scan compares ready
 * state-14 players with the clamped counter before enqueueing tag 0x9E. The exact action or skill title is
 * unresolved. */
void sub_0800CBBC(void) {
    gUnk_03003474 += 1;
}
/* [GetClampedCoordinatedActionParticipantCount] Returns shared coordinated-action participant counter
 * 0x03003474, updating it to the connected-player count when the stored value is at least that count under
 * unsigned comparison. The player-count function is called again on the update path. Original state-14 player
 * logic uses this value to decide when to enqueue tag 0x9E; the exact action title is unresolved. */
s32 sub_0800CBCC(void) {
    if (sub_08002164() <= (u32) gUnk_03003474) {
        gUnk_03003474 = (s32) sub_08002164();
    }
    return gUnk_03003474;
}
/* [ResetCoordinatedActionParticipantCount] Clears shared participant counter 0x03003474. Original state-14
 * player logic calls it immediately after enqueueing the aggregate action message tag 0x9E; the receiver task
 * also clears it on completion paths. This counter reset does not clear the separate scene-control flags. */
void sub_0800CBEC(void) {
    gUnk_03003474 = 0;
}
/* [SetPlayerSpritePriorityOverride] Stores the zero-extended u16 priority override and sets scene bit 15; does
 * not draw a sprite. */
void sub_0800CBF8(u16 arg0) {
    gUnk_030034D8 = (s32) arg0;
    gUnk_03003478 |= 0x8000;
}
/* [ClearPlayerSpritePriorityOverride] Zeros the player priority override and clears scene bit 15, preserving
 * other scene flags. */
void sub_0800CC18(void) {
    gUnk_030034D8 = 0;
    gUnk_03003478 &= 0xFFFF7FFF;
}
/* [IsPlayerSpritePriorityOverridden] Returns exactly 0 or 1 from scene bit 15, selecting the override consumed
 * by the player draw paths. */
s32 sub_0800CC38(void) {
    return ((u32) gUnk_03003478 >> 0xF) & 1;
}
/* [SetActorSpritePriorityOverride] Stores a zero-extended u16 actor sprite priority override, sets scene bit
 * 19, and returns the entire updated flag word. */
s32 sub_0800CC48(u16 arg0) {
    s32 temp_r0;

    gUnk_030034A8 = (s32) arg0;
    temp_r0 = gUnk_03003478 | 0x80000;
    gUnk_03003478 = temp_r0;
    return temp_r0;
}
/* [ClearActorSpritePriorityOverride] Zeros the actor sprite priority override, clears scene bit 19, and
 * returns the entire updated scene flag word. */
s32 sub_0800CC68(void) {
    s32 temp_r0;

    gUnk_030034A8 = 0;
    temp_r0 = gUnk_03003478 & 0xFFF7FFFF;
    gUnk_03003478 = temp_r0;
    return temp_r0;
}
/* [IsActorSpritePriorityOverridden] Returns exactly 0 or 1 from scene bit 19, which selects the actor sprite
 * priority override. */
s32 sub_0800CC88(void) {
    return ((u32) gUnk_03003478 >> 0x13) & 1;
}
/* [IsFullScreenMenuActive] Returns bit 2 of scene-flags word 0x03003478 as 0 or 1. */
s32 sub_0800CC98(void) {
    return ((u32) gUnk_03003478 >> 2) & 1;
}
/* [MarkFullScreenMenuActive] Sets bit 2 (0x4) of scene-flags word 0x03003478, preserving all other bits.
 * Paired clear sub_0800CCB8. */
void sub_0800CCA8(void) {
    gUnk_03003478 |= 4;
}
/* [MarkFullScreenMenuInactive] Clears bit 2 (0x4) of scene-flags word 0x03003478 with mask 0xFFFFFFFB,
 * preserving other bits. Inverse of MarkFullScreenMenuActive. */
void sub_0800CCB8(void) {
    gUnk_03003478 &= ~4;
}
/* [IsMapSetZeroActive] Returns scene bit 3 as exactly 0 or 1; it selects the map-set-zero layout path, without
 * loading a map. */
s32 sub_0800CCCC(void) {
    return ((u32) gUnk_03003478 >> 3) & 1;
}
/* [MarkMapSetZeroActive] Sets scene bit 3, marking the map-set-zero layout path; retains all other flags. */
void sub_0800CCDC(void) {
    gUnk_03003478 |= 8;
}
/* [ClearMapSetZeroActive] Clears scene bit 3, selecting the nonzero-map-set layout path; retains all other
 * flags. */
void sub_0800CCEC(void) {
    gUnk_03003478 &= ~8;
}
/* [IsWorldSceneExitRequested] Returns scene bit 4, a stop predicate consumed by the world-scene lifetime and
 * HUD/effect loops. */
s32 sub_0800CD00(void) {
    return ((u32) gUnk_03003478 >> 4) & 1;
}
/* [RequestWorldSceneExit] Sets scene bit 4 while preserving other bits; marks the world-scene stop predicate
 * without cancelling tasks itself. */
void sub_0800CD10(void) {
    gUnk_03003478 |= 0x10;
}
/* [ClearWorldSceneExitRequest] Clears scene bit 4 while preserving other bits; does not itself restart any
 * stopped task. */
void sub_0800CD20(void) {
    gUnk_03003478 &= ~0x10;
}
/* [IsWorldMapSelectionActive] Returns scene bit 5, marked during the world-map destination selection task. */
s32 sub_0800CD34(void) {
    return ((u32) gUnk_03003478 >> 5) & 1;
}
/* [MarkWorldMapSelectionActive] Sets the world-map selection marker (scene bit 5), preserving other flags;
 * does not launch the selection task. */
void sub_0800CD44(void) {
    gUnk_03003478 |= 0x20;
}
/* [ClearWorldMapSelectionActive] Clears the world-map selection marker (scene bit 5), preserving other flags;
 * does not cancel the selection task. */
void sub_0800CD54(void) {
    gUnk_03003478 &= ~0x20;
}
/* [MarkCoordinatedAttackScenePhaseActive] Reads the full scene flag word at 03003478, ORs mask 0x40 and writes
 * it back. Sets bit 6 while preserving other bits. This marks a phase flag consumed during coordinated-attack
 * presentation/waiting; it does not itself start the attack, wait for peers or execute the presentation. */
void sub_0800CD68(void) {
    gUnk_03003478 |= 0x40;
}
/* [MarkCoordinatedAttackScenePhaseInactive] Reads the full scene flag word at 03003478, ANDs mask 0xFFFFFFBF
 * and writes it back. Clears bit 6 while preserving other bits. Clearing this marker does not prove the
 * coordinated attack has completed, all synchronization has finished or every scene subsystem is running. */
void sub_0800CD78(void) {
    gUnk_03003478 &= ~0x40;
}
/* [IsCoordinatedAttackScenePhaseActive] Returns exactly 0 or 1 from scene flags 03003478 bit 6 using an
 * unsigned word load, shift and mask. It reports the marked coordinated-attack scene phase, whose lifetime
 * differs from the complete attack-resolution task. A nonzero result is not a general scheduled-task,
 * transport-readiness or whole-world suspension test. */
s32 sub_0800CD8C(void) {
    return ((u32) gUnk_03003478 >> 6) & 1;
}
/* [MarkSceneEncounterActive] Sets bit 7 (0x80) of scene-flags word 0x03003478, preserving all other bits.
 * Paired clear sub_0800CDAC and query sub_0800CDC0. */
void sub_0800CD9C(void) {
    gUnk_03003478 |= 0x80;
}
/* [ClearSceneEncounterActive] Clears bit 7 (0x80) of scene-flags word 0x03003478 with mask 0xFFFFFF7F,
 * preserving other bits. Inverse of MarkSceneEncounterActive. */
void sub_0800CDAC(void) {
    gUnk_03003478 &= ~0x80;
}
/* [IsSceneEncounterActive] Returns bit 7 of scene-flags word 0x03003478 as 0 or 1. */
s32 sub_0800CDC0(void) {
    return ((u32) gUnk_03003478 >> 7) & 1;
}
/* [RequestWorldTaskSuspend] Sets bit 8 (0x100) of scene-flags word 0x03003478, preserving all other bits.
 * Paired clear is sub_0800CDE4 and query sub_0800CDF8. */
void sub_0800CDD0(void) {
    gUnk_03003478 |= 0x100;
}
/* [ClearWorldTaskSuspendRequest] Clears bit 8 (0x100) of scene-flags word 03003478 with mask 0xFFFFFEFF,
 * preserving other bits. Clears the request set by RequestWorldTaskSuspend; it does not directly resume task
 * execution or acknowledge that all tasks were suspended. */
void sub_0800CDE4(void) {
    gUnk_03003478 &= 0xFFFFFEFF;
}
/* [IsWorldTaskSuspendRequested] Returns bit 8 of scene-flags word 0x03003478 as 0 or 1. */
s32 sub_0800CDF8(void) {
    return ((u32) gUnk_03003478 >> 8) & 1;
}
/* [MarkAdvancedModeActive] Performs a full-word read/OR/write on scene flags 03003478 with mask 0x200, setting
 * bit 9 and preserving other bits. This marks the mode flag only; it does not itself reload a stage, change
 * enemy resources, validate unlocking or start multiplayer. */
void sub_0800CE08(void) {
    gUnk_03003478 |= 0x200;
}
/* [MarkAdvancedModeInactive] Performs a full-word read/AND/write on scene flags 03003478 with mask 0xFFFFFDFF,
 * clearing bit 9 and preserving other bits. The observed lobby client uses it for a zero Advanced Mode header
 * bit. It does not erase saved progress or independently force all active gameplay consumers into a stable
 * normal-mode snapshot. */
void sub_0800CE1C(void) {
    gUnk_03003478 &= 0xFFFFFDFF;
}
/* [IsAdvancedModeActive] Returns exactly 0 or 1 from scene flags 03003478 bit 9 using an unsigned full-word
 * load/shift/mask. The file-menu Advanced Mode choice and its saved summary byte anchor the meaning. Consumers
 * can select alternate stage-record and resource banks; the mode need not remain unchanged across separate
 * calls, and this predicate is not a packet-ready or scheduled-task test. */
s32 sub_0800CE30(void) {
    return ((u32) gUnk_03003478 >> 9) & 1;
}
/* [MarkMenuFadeTransitionActive] Sets bit 10 (0x400) of the 32-bit scene-flags word at 03003478, preserving
 * other bits. Paired clear 0CE54 and query 0CE68 operate on the same bit. This helper only marks the flag; it
 * does not request a fade, change transition-engine state or wait. */
void sub_0800CE40(void) {
    gUnk_03003478 |= 0x400;
}
/* [MarkMenuFadeTransitionInactive] Clears scene-flags bit 10 with 32-bit mask 0xFFFFFBFF, preserving other
 * bits. Counterpart of MarkMenuFadeTransitionActive. It does not stop a transition, wait for idle or clear
 * other scene gates. */
void sub_0800CE54(void) {
    gUnk_03003478 &= 0xFFFFFBFF;
}
/* [IsMenuFadeTransitionActive] Returns scene-flags bit 10 as exactly 0 or 1. It reports the menu-transition
 * marker, not transition-engine idle or an elapsed fade duration. */
s32 sub_0800CE68(void) {
    return ((u32) gUnk_03003478 >> 0xA) & 1;
}
/* [IsSceneFlagBit12Set] Exact body manipulates only bit 12 of gUnk_03003478; no direct source caller or paired
 * predicate consumer was found. */
s32 sub_0800CE78(void) {
    return ((u32) gUnk_03003478 >> 0xC) & 1;
}
/* [SetSceneFlagBit12] Exact body manipulates only bit 12 of gUnk_03003478; no direct source caller or paired
 * predicate consumer was found. */
void sub_0800CE88(void) {
    gUnk_03003478 |= 0x1000;
}
/* [ClearSceneFlagBit12] Exact body manipulates only bit 12 of gUnk_03003478; no direct source caller or paired
 * predicate consumer was found. */
void sub_0800CE9C(void) {
    gUnk_03003478 &= 0xFFFFEFFF;
}
/* [RequestEffectAnimationStop] Sets only scene flags bit 13. */
void sub_0800CEB0(void) {
    gUnk_03003478 |= 0x2000;
}
/* [ClearEffectAnimationStopRequest] Clears bit13 and preserves all other scene flags. */
void sub_0800CEC4(void) {
    gUnk_03003478 &= 0xFFFFDFFF;
}
/* [IsEffectAnimationStopRequested] Returns exactly scene flags bit 13. */
s32 sub_0800CED8(void) {
    return ((u32) gUnk_03003478 >> 0xD) & 1;
}
/* [MarkLocalAreaDeparturePending] Sets scene bit 14, marking local player area departure pending; does not
 * complete departure. */
void sub_0800CEE8(void) {
    gUnk_03003478 |= 0x4000;
}
/* [ClearLocalAreaDeparturePending] Clears scene bit 14, preserving other flags; does not itself reposition the
 * player. */
void sub_0800CEFC(void) {
    gUnk_03003478 &= 0xFFFFBFFF;
}
/* [IsLocalAreaDeparturePending] Reads bit 14 of the scene flag word. */
s32 sub_0800CF10(void) {
    return ((u32) gUnk_03003478 >> 0xE) & 1;
}
/* [MarkAreaReturnPromptActive] Sets scene bit 21, the marker used around an area-return prompt task; does not
 * open the prompt itself. */
void sub_0800CF20(void) {
    gUnk_03003478 |= 0x200000;
}
/* [ClearAreaReturnPromptActive] Clears scene bit 21, preserving other flags; does not destroy a prompt or
 * count concurrent instances. */
void sub_0800CF34(void) {
    gUnk_03003478 &= 0xFFDFFFFF;
}
/* [IsAreaReturnPromptActive] Returns scene bit 21 as exactly 0 or 1, the area-return-prompt marker; it is not
 * a count of prompt tasks. */
s32 sub_0800CF48(void) {
    return ((u32) gUnk_03003478 >> 0x15) & 1;
}
