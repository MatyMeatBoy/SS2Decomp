#include "global.h"
extern void sub_0807A064();
/* Declared here with the return type of its definition: the call sites ignore the result either way. */
extern void sub_08013CEC();
extern u32 gA03005700[] asm("gUnk_03005700");
extern u32 gW030042E8 asm("gUnk_030042E8");
extern u32 gW030056F0 asm("gUnk_030056F0");
extern u16 gH03005724 asm("gUnk_03005724");
extern u32 gW030056F8 asm("gUnk_030056F8");
extern u32 gW030056FC asm("gUnk_030056FC");
extern u8 *gP030056F4 asm("gUnk_030056F4");

u32 sub_0800BC08(s32, s32, u16 *, s16 *, s32, s32);
extern u8 gUnk_03003E28[];
extern u32 *gUnk_084B139C[];
extern u32 *gUnk_084B13BC[];
extern u32 *gUnk_084B13E4[];
extern u32 *gUnk_084B1420[];
extern u32 *gUnk_084B1454[];
extern u32 *gUnk_084B148C[];
extern u32 *gUnk_084B14D0[];
extern u32 *gUnk_084B1504[];
extern u32 *gUnk_084B154C[];
extern u32 *gUnk_084B1590[];
extern u32 *gUnk_084B15E4[];
extern u32 *gUnk_084B15E8[];
extern u32 *gUnk_084B15F8[];
extern u32 *gUnk_084B160C[];
extern u32 *gUnk_084B1610[];

/* [TaskRunMovingChargedAttack] Movement speed is u16 charge tier times40 plus128, passed as signed halfword. */
void sub_080153A4(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 angle;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(p->w26 + 0xF9);
    angle = (u16)(p->w26 * 40 + 0x80);
    while (p->wB6 == 0 && p->state == 5) {
        p->w1C = sub_08013E90((s16)angle, (s32 *)&p->pos8C, p->w1C,
                              (u16)sub_0800CCCC(), 0);
        sub_08013CEC((u8 *)p);
        sub_080003F0();
    }
    if (p->state != 0xA && p->state != 0xB) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
/* [TaskRunChargedAttackAnimation] Waits while state5 and B6 completion flag zero. */
void sub_08015464(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 saved = p->w26;
    u16 *done;
    u32 initial;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(saved + 0xF9);
    {
        u16 *view = &p->wB6;
        register u32 loaded asm("r1") = *view;
        asm("" : "+r"(view), "+r"(loaded));
        done = view;
        initial = loaded;
        
    }
    while (initial == 0 && p->state == 5) {
        u32 *counter = (u32 *)((u8 *)p + 0xDC);
            switch (*(u16 *)((u8 *)p + 0xB2)) {
            case 2:
            case 5:
            case 7:
                if (*(u16 *)((u8 *)p + 0xB4) == 1)
                    (*counter)++;
                break;
            }
            sub_080003F0();
            initial = *done;

    }
    if ((u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}


extern struct Task tasks15[] asm("gUnk_03003C40");
struct PlrKind15 { u8 pad0[0xC]; u16 sub; u8 padE[2]; u16 kind; u8 pad12[0x14C - 0x12]; };
extern struct PlrKind15 kinds15[] asm("gUnk_03003CE0");
void sub_080156FC();
void sub_080152CC();
struct Info15 { u32 kind:4; u32 mid:24; u32 top:4; u32 lo:14; u32 level:3; u32 hi:15; };
struct Plr15 {
    u16 id;
    u8 pad2[0x1A];
    u16 w1C;
    u8 pad1E[2];
    u16 state;
    u8 pad22[2];
    s16 w24;
    u16 w26;
    u16 w28;
    u8 pad2A[6];
    u32 flags;
    u8 pad34[0xC];
    s16 w40;
    u8 pad42[0x4A];
    struct V2W12 pos8C;
    struct V2W12 pos94;
    u8 pad9C[0xB0 - 0x9C];
    u16 wB0;
    u16 wB2;
    u16 wB4;
    u16 wB6;
    u16 wB8;
    u8 padBA[0xDC - 0xBA];
    s32 counterDC;
    u8 padE0[0x122 - 0xE0];
    u16 w122;
    u8 pad124[0x148 - 0x124];
    struct Info15 *info;
};
extern struct Plr15 players15[] asm("gUnk_03003CE0");
void sub_08077444();
/* [StartLocalChargedAttackTask] Duplicate embedded task path resets local state outside10/11 and spectator
 * before returning. */
void sub_0801551C(void)
{
    s32 index = sub_080020F4();
    s32 memory;
    if (sub_08000470((u32)&tasks15[index]) != 0) {
        if (sub_080020F4() == index && (u16)(gUnk_03003CE0[index].state - 10) > 1) {
            if ((gUnk_03003CE0[index].flags & 0x2000) == 0)
                gUnk_03003CE0[index].state = 0;
        }
        return;
    }
    switch (kinds15[index].kind) {
    case 5:
        if (kinds15[index].sub != 4)
            tasks15[index].uC = sub_08015464;
        else
            tasks15[index].uC = sub_080153A4;
        break;
    case 4:
        tasks15[index].uC = sub_080152CC;
        break;
    default:
        return;
    }
    tasks15[index].u8 = 0x34;
    while ((tasks15[index].u20 = memory = (s32)sub_08001494(0x400)) == 0)
        sub_080003F0();
    tasks15[index].u10 = memory + 0x3FC;
    tasks15[index].u24 = 0;
    sub_08000274(&tasks15[index]);
}
/* [TaskTimeChargedAttackFrames] Reads packed charge tier and initializes timer(level+3)*8. */
void sub_08015620(s32 index)
{
    u8 unused[0x34];
    struct Plr15 *p = &players15[index];
    s32 self = sub_080020F4();
    u32 level;
    u32 timer;
    p->w122 = 0;
    level = p->info->level;
    timer = (level + 3) * 8;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(level + 0x100);
    while (timer != 0 && p->state == 5) {
        if (p->wB6 != 0) {
            timer = ((timer << 16) + 0xFFFF0000) >> 16;
            if (index == self && (timer & 0xF) == 0)
                p->counterDC++;
        }
        sub_080003F0();
    }
    if (index == self && (u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
/* [TaskRunClass7ChargedVolley] Packed tiers1..7 normalize remaining projectile attempts to5; tier0 skips loop.
 * Selected even frame/subframe2 observations advance hit ID and spread selector, attempt projectile start and
 * decrement count. Snapshot state change exits early; charge bookkeeping clears. */
void sub_080156FC(s32 index)
{
    struct Plr15 *p = &players15[index];
    u32 count;
    register u32 frame asm("r4");
    count = p->info->level;
    p->wB0 = p->info->top;
    switch (count) {
    case 1:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 2:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 3:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 4:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 5:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 6:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 7:
        count = 5;
        p->wB0 += 0x10;
        break;
    }
    p->wB8 = p->wB0;
    frame = 0;
    while (count != 0 && p->info->kind == 5) {
        if (!(p->wB2 & 1) && p->wB4 == 2 && count != 0) {
            p->counterDC++;
            sub_08077444(p->id, sub_0807A028(1), count, count, ++frame);
            if (frame > 2)
                frame = 0;
            count--;
        }
        sub_080003F0();
    }
    if (sub_080020F4() == index && (u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
/* [StartClassSevenChargedAttack] Already-scheduled path may reset only local player state outside10/11 and
 * spectator, then returns without allocation. */
void sub_08015820(s32 index)
{
    s32 memory;
    if (sub_08000470((u32)&tasks15[index]) != 0) {
        if (sub_080020F4() == index && (u16)(gUnk_03003CE0[index].state - 10) > 1) {
            if ((gUnk_03003CE0[index].flags & 0x2000) == 0)
                gUnk_03003CE0[index].state = 0;
        }
        return;
    }
    switch (kinds15[index].kind) {
    case 1:
        tasks15[index].uC = sub_08015620;
        break;
    case 8:
        tasks15[index].uC = sub_080156FC;
        break;
    default:
        return;
    }
    tasks15[index].u8 = 0x34;
    while ((tasks15[index].u20 = memory = (s32)sub_08001494(0x400)) == 0)
        sub_080003F0();
    tasks15[index].u10 = memory + 0x3FC;
    tasks15[index].u24 = 0;
    sub_08000274(&tasks15[index], index);
}
/* [TaskRunClass5ChargedLunge] Moves indexed charged attacker until two completion-flag observations or
 * snapshot state change. Flag is not reset after first decrement, so two distinct animation cycles are not
 * proven. Uses half-table speed plus modifier; normal local-state guards and charge cleanup follow. */
void sub_08015914(s32 index)
{
    struct Plr15 *p = &players15[index];
    struct Info15 *info = p->info;
    u32 level;
    u32 count;
    level = info->level;
    p->wB0 = info->top;
    p->wB0 += 8;
    count = 2;
    p->wB8 = p->wB0;
    if (p->info->kind == 5) {
        for (;;) {
            if ((p->wB2 == 1 || p->wB2 == 3) && p->wB4 == 1)
                p->counterDC++;
            if (p->wB6 != 0 && count != 0) {
                if (--count == 0) {
                    p->wB6 = count;
                    p->wB2 = count;
                    p->wB4 = count;
                }
            }
            p->pos94 = p->pos8C;
            p->w1C = sub_08013E90(((s32)gUnk_0847AD1C[level] >> 1) + p->w40, &p->pos8C, p->w1C,
                                  (u16)sub_0800CCCC(), 0);
            sub_08013CEC(p);
            sub_080003F0();
            if (count == 0 || p->info->kind != 5)
                break;
        }
    }
    if (sub_080020F4() == index && (u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
/* [TaskRepeatChargedAttackAnimation] Initializes repeat count to snapshot tier+1 and animation to snapshot top
 * nibble+8. */
void sub_08015A48(s32 index)
{
    struct Plr15 *p = &players15[index];
    struct Info15 *info = p->info;
    u32 count;
    count = info->level;
    p->wB0 = info->top;
    p->wB0 += 8;
    count++;
    p->wB8 = p->wB0;
    if (count != 0 && p->info->kind == 5) {
        for (;;) {
            if (p->wB6 != 0 && count != 0) {
                count--;
                p->counterDC++;
                p->wB6 = 0;
                p->wB2 = 0;
                p->wB4 = 0;
            }
            sub_080003F0();
            if (count == 0 || p->info->kind != 5)
                break;
        }
    }
    if (sub_080020F4() == index && (u32)(p->info->kind - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
void sub_08015914();
void sub_08015A48();
/* [StartClassFiveChargedAttack] Already-scheduled path may reset only local player state outside10/11 and
 * spectator, then returns. */
void sub_08015B20(s32 index)
{
    s32 memory;
    if (sub_08000470((u32)&tasks15[index]) != 0) {
        if (sub_080020F4() == index && (u16)(gUnk_03003CE0[index].state - 10) > 1) {
            if ((gUnk_03003CE0[index].flags & 0x2000) == 0)
                gUnk_03003CE0[index].state = 0;
        }
        return;
    }
    switch (kinds15[index].kind) {
    case 6:
        tasks15[index].uC = sub_08015914;
        break;
    case 8:
        tasks15[index].uC = sub_08015A48;
        break;
    default:
        return;
    }
    tasks15[index].u8 = 0x34;
    while ((tasks15[index].u20 = memory = (s32)sub_08001494(0x400)) == 0)
        sub_080003F0();
    tasks15[index].u10 = memory + 0x3FC;
    tasks15[index].u24 = 0;
    sub_08000274(&tasks15[index], index);
}
/* [SuppressLocalPlayerInput] Resolves the local player through 020F4 and ORs mask 0x1 into its 32-bit flags at
 * base03003CE0+index*0x14C+0x30. The observed controller bypasses both direct input acquisition and
 * movement-to-point key generation while this mask is set. This call does not clear pending movement mask 0x4,
 * inputs immediately, create a task, send a packet or wait. It requests suppression for the next controller
 * update; other global suppression conditions remain separate. */
void sub_08015C14(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 1;
}
/* [ReleaseLocalPlayerInputSuppression] Resolves the local player and clears only mask 0x1 from its 32-bit
 * flags. Does not clear other suppression conditions or a pending movement-to-point request. If mask 0x4
 * remains set, the next controller can generate target movement keys instead of reading direct user input;
 * this is not a guarantee of unrestricted input or immediate motion. No packet or wait. */
void sub_08015C38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
}
/* [RequestLocalPlayerMovementToPoint] Stores both full 32-bit inputs to local player+0x9C/+0xA0, then ORs
 * flags mask 0x24. The controller uses mask 4 to generate eight-way input keys toward these targets,
 * interpreted there as signed16-bit pixel coordinates, with integer-Sqrt distance threshold 8 after signed16
 * target/delta narrowing. This setter does not immediately change position, clear higher-priority
 * input-suppression mask 1, validate coordinates, wait for arrival, publish a packet or establish
 * pathfinding/reachability. An outstanding request can remain pending while suppression blocks processing. */
void sub_08015C5C(s32 arg0, s32 arg1) {
    void *temp_r2;

    temp_r2 = (&((struct Sz332 *)&gUnk_03003CE0)[sub_080020F4()]);
    M2C_FIELD(temp_r2, s32 *, 0x9C) = arg0;
    M2C_FIELD((temp_r2 + 0x9C), s32 *, 4) = arg1;
    M2C_FIELD(temp_r2, s32 *, 0x30) = (s32) (M2C_FIELD(temp_r2, s32 *, 0x30) | 0x24);
}
/* [SetLocalPlayerSpriteHideFlag] Queries the local player index, selects the 0x14C-byte runtime record, ORs
 * 0x80000 into its full 32-bit flags at +0x30 and then calls EnqueueLinkPlayerFlags. Preserves other flag bits
 * and ignores enqueue success. Does not stop the actor task, clear other visibility flags, wait for a peer or
 * validate the player index. */
void sub_08015C8C(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 0x80000;
    sub_08067D74();
}
/* [ClearLocalPlayerSpriteHideFlag] Queries the local player index, clears only bit 19 using full-word mask
 * 0xFFF7FFFF at Player+0x30 and calls EnqueueLinkPlayerFlags afterward. Ignores enqueue success. Removing this
 * particular hide flag does not guarantee a visible sprite: other scene/player draw gates and animation state
 * remain effective. */
void sub_08015CB4(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= 0xFFF7FFFF;
    sub_08067D74();
}
/* [EnableLocalPlayerDefeatProtection] Sets bit 0x100000 in flags+0x30 of the player selected by 020F4, using
 * 0x14C-byte player stride and preserving other bits. No HP, pending damage, player state or input flags are
 * changed immediately. */
void sub_08015CE0(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 0x100000;
}
/* [DisableLocalPlayerDefeatProtection] Clears bit 0x100000 in flags+0x30 of the player selected by 020F4,
 * using 0x14C-byte player stride and preserving other bits. No HP, pending damage, player state or input flags
 * are changed immediately. */
void sub_08015D04(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= 0xFFEFFFFF;
}
/* [SetLocalPlayerRenderSuppression] Sets mask2 in the local player word+0x30. Original D368 at08012614..1261E
 * tests mask2; set transfers to the common tail08013556, which yields and either loops or cleans up using the
 * existing frame, rather than returning into the skipped render block. The skipped block includes main
 * animation65370, player sprite07870, status overlay and additional visual work. A separate
 * branch0800FFF8..10002 skips damage-number rendering5FAC0 when mask2 is set. Other gameplay, movement and
 * damage processing precedes these branches; no invulnerability, removal, cancellation or universal visibility
 * guarantee is inferred. Clearing permits these paths subject to their other independent gates. */
void sub_08015D2C(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 2;
}
/* [ClearLocalPlayerRenderSuppression] Clears mask2 in the local player word+0x30. Original D368
 * at08012614..1261E tests mask2; set transfers to the common tail08013556, which yields and either loops or
 * cleans up using the existing frame, rather than returning into the skipped render block. The skipped block
 * includes main animation65370, player sprite07870, status overlay and additional visual work. A separate
 * branch0800FFF8..10002 skips damage-number rendering5FAC0 when mask2 is set. Other gameplay, movement and
 * damage processing precedes these branches; no invulnerability, removal, cancellation or universal visibility
 * guarantee is inferred. Clearing permits these paths subject to their other independent gates. */
void sub_08015D50(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~2;
}
/* [SetLocalPlayerFlagBit12] Sets bit 12 (mask 0x1000) of the local player's runtime flags word +0x30 (player
 * LinkGetLocalPlayerId in the 0x14C-byte array 0x03003CE0), preserving the other bits. The bit's gameplay
 * meaning is not claimed. This mechanical label remains a proposal and does not count as semantic
 * identification. */
void sub_08015D74(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 0x1000;
}
/* [ClearLocalPlayerFlagBit12] Clears bit 12 (mask 0x1000) of the local player's runtime flags word +0x30
 * (player LinkGetLocalPlayerId in the 0x14C-byte array 0x03003CE0), preserving the other bits. The bit's
 * gameplay meaning is not claimed. This mechanical label remains a proposal and does not count as semantic
 * identification. */
void sub_08015D98(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= 0xFFFFEFFF;
}
/* [DampValueTowardZero] Updates an in-place signed word. For current > 23 stores current minus its arithmetic
 * half, giving ceil(current/2) in that positive range. Otherwise subtracts 8 and replaces a nonpositive result
 * with zero. No null check. The original subtraction is 32-bit wrapping: extreme negative inputs can underflow
 * to positive, so the name describes ordinary counter damping rather than a proven all-s32
 * nonnegative/clamping invariant. */
void sub_08015DC0(s32 *p)
{
    s32 v = *p;
    if (v <= 23) {
        *p = v - 8;
        if (*p <= 0) *p = 0;
    } else {
        *p = v - (v >> 1);
    }
}
/* [ApproachTargetByHalfStep] Computes arithmetic half of target minus current; adds that half if positive,
 * otherwise adds1. If the resulting value is at least target by signed comparison, replaces it with target.
 * For ordinary current<=target without overflow this advances toward target with a minimum increment1; current
 * above target normally clamps down immediately. Original arithmetic wraps at 32 bits, so no overflow-free or
 * all-input monotonicity guarantee is inferred. */
void sub_08015DE0(s32 *value, s32 target)
{
    s32 current = *value;
    s32 step = (target - current) >> 1;
    *value = step > 0 ? current + step : current + 1;
    if (target <= *value)
        *value = target;
}
/* [StartPlayerStatusHudTask] Prepares control 03003C10 with flags/state 0x34, allocates one 0x400-byte stack,
 * installs callback 14170, sets stack top to allocation +0x3FC and destructor to null, then starts it with the
 * original complete argument. The callback interprets that argument as a player-record pointer; this starter
 * does not select the local player implicitly. It performs no explicit scheduled-membership check, allocation
 * retry/null check, prior-stack cleanup or completion wait. */
void sub_08015E00(s32 arg0)
{
  s8 *new_var;
  s32 temp_r0;
  new_var = (s8 *) (&gUnk_03003C10);
  *((s32 *) (new_var + 8)) = 0x34;
  temp_r0 = sub_08001494(0x400);
  *((s32 *) (new_var + 0x20)) = temp_r0;
  *((M2C_UNK **) (new_var + 0xC)) = &sub_08014170;
  *((s32 *) (new_var + 0x10)) = (s32) (temp_r0 + 0x3FC);
  *((s32 *) (new_var + 0x24)) = 0;
  sub_08000274(&gUnk_03003C10, arg0);
}
/* [DeductPlayerEnergyTierCost] Subtracts a table-derived tier cost from the supplied player record at +0xC2.
 * Reads halfword table 0847ACE8[index] plus 10*signed_byte(player +0x6C), truncates to signed 16 bits and
 * replaces a negative cost with zero. Stores the low halfword after subtraction and clamps it to zero only if
 * that stored halfword is negative as s16. Does not validate the table index or prove affordability before
 * subtraction. */
void sub_08015E3C(u8 *arg0, s32 arg1) {
    u16 r3;
    u16 *p;
    s32 r1;

    r3 = (u16)(*(s8 *)(arg0 + 0x6C) * 10 + gUnk_0847ACE8[arg1]);
    if ((s16)r3 < 0) {
        r3 = 0;
    }
    p = (u16 *)(arg0 + 0xC2);
    r1 = *p - (s16)r3;
    *p = r1;
    if ((s16)r1 < 0) {
        *p = 0;
    }
}
extern u16 gUnk_0847ACE8[];
/* [FindHighestAffordablePlayerEnergyTier] Checks indices 7 down to 0 of table 0847ACE8, adding
 * 10*signed_byte(player +0x6C), truncating to signed halfword and clamping a negative cost to zero. Returns
 * the first index whose cost is at most signed current energy +0xC2, or 0 if none passes. Thus return 0 also
 * represents an affordable index-zero tier. Does not spend energy or validate the player pointer. */
u32 sub_08015E84(u8 *arg0)
{
    register s32 signedByte asm("r2") = (s8)arg0[0x6C];
    register s32 half asm("r1");
    
    half = signedByte * 5;
    
    {
        s32 i = 7;
        register u16 *table asm("r2") = gUnk_0847ACE8;
        register s32 delta asm("r6") = half * 2;
        s16 *value;
        table += 7;
        
        value = (s16 *)(arg0 + 0xC2);
        for (; i >= 0; table--, i--) {
            u16 threshold = delta + *table;
            s32 current;
            if ((s16)threshold < 0)
                threshold = 0;
            
            current = *value;
            
            if (current >= (s16)threshold)
                return (u16)i;
    }
    return 0;
    }
}



/* [BlockLocalPlayerGameMenuRequest] Sets mask0x00400000 in the local player word+0x30. Original D368 input
 * path0800DC5C tests halfword+0x14 mask8. At0800DCC8..DCD2 the flag rejects that path; only if all other
 * independent gates pass does0800DD40..DD5E mark local runtime+0x30 mask1, clear player input
 * halfwords+0x14/+0x12 and call65654. The complete starter65654 registers624D8, the resource-backed
 * four-choice animated game menu. This role is request blocking: clearing alone does not open a menu; setting
 * does not cancel an active menu or block every direct starter call or every other menu. */
void sub_08015ED4(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 0x400000;
}
/* [AllowLocalPlayerGameMenuRequest] Clears mask0x00400000 in the local player word+0x30. Original D368 input
 * path0800DC5C tests halfword+0x14 mask8. At0800DCC8..DCD2 the flag rejects that path; only if all other
 * independent gates pass does0800DD40..DD5E mark local runtime+0x30 mask1, clear player input
 * halfwords+0x14/+0x12 and call65654. The complete starter65654 registers624D8, the resource-backed
 * four-choice animated game menu. This role is request blocking: clearing alone does not open a menu; setting
 * does not cancel an active menu or block every direct starter call or every other menu. */
void sub_08015EF8(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= 0xFFBFFFFF;
}
/* [IsLocalPlayerMovementToPointPending] Returns exactly local player flags mask 0x4 normalized to 0/1. It is a
 * request-state query; it does not measure velocity, animation, physical movement or arrival on its own. The
 * controller clears 0x24 when its target-key helper returns0, after which it sets input-suppression mask 1. No
 * consumption, wait, link error check or peer scan. */
u32 sub_08015F20(void) {
    return (gUnk_03003CE0[sub_080020F4()].flags >> 2) & 1;
}
/* [GetLastAreaSpawnList] Reads area count for the map set and subtracts one. */
u32 sub_08015F44(s32 level)
{
    register u32 **table asm("r0");
    u32 result;
    u32 last = gUnk_0847846C[level].count - 1;
    switch (level) {
    case 1: table = gUnk_084B139C; break;
    case 2: table = gUnk_084B13BC; break;
    case 3: table = gUnk_084B13E4; break;
    case 4: table = gUnk_084B1420; break;
    case 5: table = gUnk_084B1454; break;
    case 6: table = gUnk_084B148C; break;
    case 7: table = gUnk_084B14D0; break;
    case 8: table = gUnk_084B1504; break;
    case 9: table = gUnk_084B154C; break;
    case 10: table = gUnk_084B1590; break;
    case 11: table = gUnk_084B15E4; break;
    case 12: table = gUnk_084B15E8; break;
    case 13: table = gUnk_084B15F8; break;
    case 14: table = gUnk_084B160C; break;
    case 15: table = gUnk_084B1610; break;
    default: return result;
    }
    result = *table[last];
    return result;
}
/* [GetPresetAreaSpawnList] Selects a fixed area entry for map sets1..15; defaults return an uninitialized
 * result. */
u32 sub_0801602C(s32 level)
{
    u32 *entry;
    u32 result;
    switch (level) {
    case 1: entry = gUnk_084B139C[0]; break;
    case 2: entry = gUnk_084B13BC[0]; break;
    case 3: entry = gUnk_084B13E4[0]; break;
    case 4: entry = gUnk_084B1420[0]; break;
    case 5: entry = gUnk_084B1454[11]; break;
    case 6: entry = gUnk_084B148C[5]; break;
    case 7: entry = gUnk_084B14D0[0]; break;
    case 8: entry = gUnk_084B1504[14]; break;
    case 9: entry = gUnk_084B154C[16]; break;
    case 10: entry = gUnk_084B1590[3]; break;
    case 11: entry = gUnk_084B15E4[0]; break;
    case 12: entry = gUnk_084B15E8[0]; break;
    case 13: entry = gUnk_084B15F8[0]; break;
    case 14: entry = gUnk_084B160C[0]; break;
    case 15: entry = gUnk_084B1610[0]; break;
    default: return result;
    }
    result = *entry;
    return result;
}
/* [AllocateAndInitializeEnemyPools] Allocates 0xE60 bytes for five 0x2E0-byte enemy actors at 030056F4,0x50
 * bytes for two 40-byte request task controls at 030056F0 and 0x10 bytes for two eight-byte request
 * descriptors at 030042E8. Clears actor, enemy-palette and request masks 030056FC/030056F8/03005724. For actor
 * slots0..4 calls 7A064(slot+4) and zeroes only selected fields+0/+8/+0xC/+0x10/+0x14/+0x18/+0x4A; this is not
 * a full buffer memset. Clears all three 12-byte palette registry records 03005700. Does not initialize all
 * request-control/descriptor bytes, start actor tasks, check allocations or guard against double
 * initialization. */
void sub_08016114(void)
{
    u8 *p;
    u32 i;
    u32 z;
    u32 *q;
    gP030056F4 = (u8 *)sub_08001494(0xE60);
    gW030056FC = 0;
    gW030056F8 = 0;
    gH03005724 = 0;
    gW030056F0 = sub_08001494(0x50);
    gW030042E8 = sub_08001494(0x10);
    p = gP030056F4;
    i = 0;
    z = 0;
    for (; i <= 4; i++, p += 0x2E0) {
        sub_0807A064(i + 4);
        *(u16 *)(p + 0) = z;
        *(u16 *)(p + 8) = z;
        *(u16 *)(p + 0xC) = z;
        *(u16 *)(p + 0x10) = z;
        *(u32 *)(p + 0x14) = z;
        *(u32 *)(p + 0x18) = z;
        *(u16 *)(p + 0x4A) = z;
    }
    {
    u32 z2;
    for (i = 0, z2 = 0, q = gA03005700; i <= 2; q += 3, i++) {
        q[2] = z2;
        q[1] = z2;
        q[0] = z2;
    }
    }
}
/* [StopEnemyTasksAndFreePools] For each set request-mask bit 0..1, stops its40-byte task control in 030056F0.
 * For each set enemy-mask bit 0..4, stops its fixed control in 03004220, then calls 688F8 for actor IDs4..8
 * regardless of that bit. Frees the request-control buffer, five-actor buffer and request-descriptor buffer,
 * then nulls only 030056F0 and 030056F4. Does not explicitly null 030042E8, clear the three activity masks,
 * reset palette records or erase palette RAM. No explicit signal wait/retry loop occurs in this body;
 * stop/destructor callees retain their own behavior. */
void sub_080161A4(void) {
    u16 var_r4;
    u16 var_r4_2;
    volatile s32 *maskPtr;
    u32 bitMask;
    var_r4 = 0;
    do {
        if (((s32) gUnk_03005724 >> var_r4) & 1) {
            sub_080003A8(gUnk_030056F0 + (var_r4 * 0x28));
        }
        var_r4 += 1;
    } while ((u32) var_r4 <= 1U);
    var_r4_2 = 0;
    maskPtr = (volatile s32 *)&gUnk_030056FC;
    do {
        bitMask = 1;
        bitMask <<= var_r4_2;
        if (*maskPtr & bitMask) {
            sub_080003A8((s32)((u8 *)&gUnk_03004220 + (var_r4_2 * 0x28)));
        }
        sub_080688F8(var_r4_2 + 4);
        var_r4_2 += 1;
    } while ((u32) var_r4_2 <= 4U);
    sub_08001538(gUnk_030056F0);
    sub_08001538((s32) gUnk_030056F4);
    sub_08001538(gUnk_030042E8);
    gUnk_030056F0 = 0;
    gUnk_030056F4 = NULL;
}
struct Entry1623C { u16 flags; s16 x; s16 y; u16 wE; };
struct Src1623C { u8 pad0[8]; struct Entry1623C e[5]; u8 pad30[2]; u16 w32; };
struct Slot1623C { u16 id; u8 pad2[6]; u16 fill[0x10]; };
struct Obj1623C {
    u16 id;
    u16 w2;
    u8 pad4[4];
    u16 w8;
    u8 padA[0xA];
    s32 x14;
    s32 y18;
    u8 pad1C[8];
    s32 x24;
    s32 y28;
    struct Src1623C *src;
    s32 s30;
    s32 s34;
    s32 s38;
    s32 s3C;
    u16 w40;
    u8 pad42[6];
    u16 w48;
    u16 w4A;
    s32 s4C;
    u8 pad50[4];
    u32 w54;
    u8 pad58[2];
    u16 w5A;
    u8 pad5C[4];
    u16 w60;
    u16 w62;
    u8 pad64[0x12];
    u16 w76;
    u16 w78;
    u16 w7A;
    u16 w7C;
    u8 pad7E[6];
    u16 w84;
    u8 pad86[2];
    u16 w88;
    u8 pad8A[2];
    struct Slot1623C slots[8];
    u8 pad1CC[0x10];
    u8 b1DC;
    u8 pad1DD[0x1F];
    u8 lo1FC:4;
    u8 hi1FC:4;
    u8 b1FD;
    u8 b1FE;
    u8 b1FF;
    u8 pad200;
    u8 b201;
    u8 pad202[2];
    u8 data[0xD8];
};
struct Gs1623C { u8 pad0[0x40]; u32 f40; };
extern struct Gs1623C *gs1623C asm("gUnk_03005CF4");
extern u8 tables1623C[][0xD8] asm("gUnk_0847AD3C");
extern void cpuset1623C(const void *, void *, u32) asm("CpuSet");
extern void memcpy1623C(void *, const void *, u32) asm("memcpy");
/* [InitializeActorFromSceneDefinition] Uses indexed scene entry flags low12bits minus1 (plus0xC5 in alternate
 * mode) to select actor template, copies0xD8 bytes, sets fixed-point position/direction and source pointer,
 * resets motion/combat/team fields and eight item slots, then maps entry flags0x8000/0x4000/0x2000 into
 * actor+0x7A bits1/2/3. Flag0x4000 also clears+0x201 and sets+0x1FD=0xFF. No bounds or null validation of
 * source/template indices. */
void sub_0801623C(struct Obj1623C *obj, struct Src1623C *src, u32 idx)
{
    struct Entry1623C *entry = (struct Entry1623C *)src + idx;
    s32 n = (entry[1].flags & 0xFFF) - 1;
    u8 *table;
    u32 i;
    if (sub_0800CE30() != 0)
        n += 0xC5;
    table = tables1623C[n];
    obj->lo1FC = obj->id;
    obj->w2 = 4;
    obj->x14 = entry[1].x << 11;
    obj->y18 = entry[1].y << 11;
    obj->x24 = entry[1].x << 3;
    obj->y28 = entry[1].y << 3;
    obj->src = src;
    memcpy1623C(obj->data, table, 0xD8);
    obj->w8 = entry[1].wE;
    obj->w84 = 0;
    obj->w5A = 0;
    obj->w62 = 0;
    obj->w7C = 0;
    obj->w54 = 0xFFFF;
    if (sub_0800CCCC() != 0)
        obj->w48 = gs1623C->f40;
    else
        obj->w48 = gUnk_03003170.f90;
    obj->b1FD = 0;
    obj->b201 = 1;
    obj->hi1FC = 0;
    obj->b1FE = 0;
    obj->b1FF = 0;
    obj->w60 = 0;
    obj->w40 = 0;
    obj->w76 = obj->id + 1;
    obj->w78 = src->w32;
    obj->w7A = 0;
    obj->w88 = 0;
    obj->s30 = 0;
    obj->s38 = 0;
    obj->s34 = 0;
    obj->s3C = 0;
    obj->b1DC = 2;
    obj->s4C = 0;
    obj->w4A = 0;
    for (i = 0; i < 8; i++) {
        vu16 zero;
        obj->slots[i].id = 0xFFFF;
        zero = 0;
        cpuset1623C((void *)&zero, obj->slots[i].fill, 0x01000018);
    }
    if (((struct Entry1623C *)src)[idx + 1].flags & 0x8000)
        obj->w7A |= 2;
    if (((struct Entry1623C *)src)[idx + 1].flags & 0x4000) {
        obj->w7A |= 4;
        obj->b201 = 0;
        obj->b1FD = 0xFF;
    }
    if (((struct Entry1623C *)src)[idx + 1].flags & 0x2000)
        obj->w7A |= 8;
}
struct Src1641C { u16 x; u16 y; u16 flags; u16 f6; u16 f8; u16 fA; u16 fC; u16 fE; u16 f10; u16 f12; s32 f14; };
struct Pt1641C { s32 x, y; };
struct Slot1641C { u8 f0[0x28]; };
struct Obj1641C {
    u16 id;             /* 0x000 */
    u16 f2;             /* 0x002 */
    u8 pad4[4];
    u16 f8;             /* 0x008 */
    u8 padA[2];
    u16 fC;             /* 0x00C */
    u8 padE[6];
    struct Pt1641C pos; /* 0x014 */
    struct Pt1641C prev;/* 0x01C */
    s32 f24;            /* 0x024 */
    s32 f28;            /* 0x028 */
    s32 f2C;            /* 0x02C */
    s32 f30, f34, f38, f3C; /* 0x030 */
    u16 f40;            /* 0x040 */
    u8 pad42[6];
    u16 f48;            /* 0x048 */
    u8 pad4A[6];
    s32 f50;            /* 0x050 */
    s32 f54;            /* 0x054 */
    u8 pad58[2];
    u16 f5A;            /* 0x05A */
    u8 pad5C[4];
    u16 f60;            /* 0x060 */
    u16 f62;            /* 0x062 */
    u8 pad64[0x12];
    u16 f76;            /* 0x076 */
    u16 f78;            /* 0x078 */
    u16 f7A;            /* 0x07A */
    u16 f7C;            /* 0x07C */
    u8 pad7E[2];
    u16 f80;            /* 0x080 */
    u8 pad82[2];
    u16 f84;            /* 0x084 */
    u16 f86;            /* 0x086 */
    u16 f88;            /* 0x088 */
    u8 pad8A[2];
    struct { u16 head; u8 pad[6]; u8 body[0x20]; } slots[8]; /* 0x08C */
    u8 pad1CC[0x10];
    u8 f1DC;            /* 0x1DC */
    u8 pad1DD[0x1F];
    s8 f1FC;            /* 0x1FC */
    u8 f1FD;            /* 0x1FD */
    u8 f1FE;            /* 0x1FE */
    u8 f1FF;            /* 0x1FF */
    u8 pad200;
    u8 f201;            /* 0x201 */
    u16 f202;           /* 0x202 */
    u8 data[0xD8];      /* 0x204 */
    u8 *src;            /* 0x2DC */
};
extern u32 poolFlags1641C asm("gUnk_030056FC");
extern struct Obj1641C *poolObjects1641C asm("gUnk_030056F4");
extern struct Task tasks1641C[] asm("gUnk_03004220");
extern u8 table1641C[] asm("gUnk_0847AD3C");
extern u8 stacks1641C[] asm("gUnk_030046EC");
extern void taskMain1641C(void) asm("sub_0801801C");
extern void startTask1641C(void *, void *) asm("sub_08000274");
extern void cpuset1641C(const void *, void *, u32) asm("CpuSet");
struct Plr1641C { u8 pad0[0x2C]; u16 w2C; u8 pad2E[0x14C - 0x2E]; };
extern struct Plr1641C players1641C[] asm("gUnk_03003CE0");
/* [TryCreateEnemyFromSpawnState] Returns0 if all five bits of actor mask 030056FC are occupied. Searches slots
 * ascending normally, descending underCDC0; on success marks one slot and initializes its 0x2E0-byte actor in
 * 030056F4. Species/resource index is (spawn flags &0xFFF)-1, plus 0xC5 underCE30, with 0xD8-byte definitions
 * at 0847AD3C; raw request bit 0x80 can select the following definition when definition byte 0x47 is nonzero.
 * Stores spawn identifier at actor+2, unsigned source coordinates shifted11 at+0x14/+0x18, coordinates
 * shifted3 at+0x24/+0x28 and copies the selected definition to+0x204. Copies raw request/group halfwords
 * to+0x84/+0x86 after clearing request bit 0x80 from+0x84. */
s32 sub_0801641C(struct Src1641C *src)
{
    s32 i;
    s32 slot;
    struct Obj1641C *obj;
    s32 index;
    u8 *data;
    u32 k;
    s8 *bits;
    s32 lo;
    u8 zero8;
    u16 zero16;
    u32 nib;

    if (sub_0800CDC0() != 0) {
        for (i = 4; i >= 0; i--) {
            if (((1 << i) & poolFlags1641C) == 0) {
                slot = i;
                goto found;
            }
        }
    } else {
        for (i = 0; i <= 4; i++) {
            if (((1 << i) & poolFlags1641C) == 0) {
                slot = i;
                goto found;
            }
        }
    }
    slot = -1;
found:
    if (slot < 0)
        return 0;
    poolFlags1641C |= 1 << slot;
    obj = &poolObjects1641C[slot];
    index = (src->flags & 0xFFF) - 1;
    if (sub_0800CE30() != 0)
        index += 0xC5;
    data = table1641C + index * 0xD8;
    if ((src->f10 & 0x80) && ((s8 *)data)[0x47] != 0)
        data += 0xD8;
    obj->src = data;
    obj->id = slot;
    zero8 = 0;
    zero16 = 0;
    bits = &obj->f1FC;
    nib = 0xF;
    lo = slot & nib;
    *bits = (*bits & ~0xF) | lo;
    obj->f2 = src->f6;
    obj->pos.x = src->x << 11;
    obj->pos.y = src->y << 11;
    obj->f24 = src->x << 3;
    obj->f28 = src->y << 3;
    obj->prev = obj->pos;
    obj->f2C = src->f14;
    memcpy(obj->data, data, 0xD8);
    obj->f8 = src->f8;
    obj->f84 = src->f10 & 0xFF7F;
    obj->f86 = src->f12;
    obj->f5A = zero16;
    obj->f62 = zero16;
    obj->f7C = zero16;
    obj->f80 = zero16;
    obj->f54 = 100;
    obj->f7A = zero16;
    obj->f1FD = zero8;
    obj->f201 = 1;
    *bits &= nib;
    obj->f1FE = zero8;
    obj->f1FF = zero8;
    obj->f202 = obj->f2;
    if (src->flags & 0x4000) {
        obj->f7A |= 0x44;
        obj->f201 = zero8;
        obj->f1FD = 0xFF;
    }
    if (sub_0800CCCC() != 0)
        obj->f48 = players1641C[sub_080020F4()].w2C;
    else
        obj->f48 = gUnk_03003170.f90;
    obj->f50 = (slot + 4) << 24;
    obj->f60 = 0;
    obj->f40 = 0;
    obj->f76 = obj->id + 1;
    obj->f78 = src->fC;
    obj->f88 = 0;
    obj->f30 = 0;
    obj->f38 = 0;
    obj->f34 = 0;
    obj->f3C = 0;
    for (k = 0; k <= 7; k++) {
        vu16 fill;
        obj->slots[k].head = 0xFFFF;
        fill = 0;
        cpuset1641C((void *)&fill, obj->slots[k].body, 0x01000018);
    }
    if (src->flags & 0x8000)
        obj->f7A |= 2;
    if (src->flags & 0x2000)
        obj->f7A |= 8;
    obj->f1DC = 0;
    switch (src->fE) {
    case 0:
        obj->fC = 0xE;
        break;
    case 1:
        obj->fC = 0xF;
        break;
    case 2:
        obj->fC = 0;
        break;
    default:
        obj->fC = 0;
        break;
    }
    tasks1641C[slot].uC = taskMain1641C;
    tasks1641C[slot].u10 = (s32)(stacks1641C + (slot << 10));
    tasks1641C[slot].u20 = 0;
    tasks1641C[slot].u8 = 0x3C;
    tasks1641C[slot].u18 = 0;
    tasks1641C[slot].u0 = 0;
    tasks1641C[slot].u24 = 0;
    startTask1641C(&tasks1641C[slot], obj);
    return 1;
}
extern u32 poolFlags014 asm("gUnk_030056FC");
extern void startPool014(void *,void *) asm("sub_08000274");
extern u8 *poolObjects014 asm("gUnk_030056F4");
extern struct Task taskArray014s[] asm("gUnk_03004220");
/* [StartEnemyPoolActorTask] Finds the first clear bit of the five-slot enemy-actor mask 0x030056FC and returns
 * 0 if all five are in use. Otherwise it marks the slot, takes the slot's 0x2E0-byte actor record from the
 * pool 0x030056F4, stores the slot index at +0 and (slot+4)<<24 at +0x50, and fills task control
 * 0x03004220[slot]: callback arg0, a 0x800-byte stack from HeapAllocate (not checked for failure), order key
 * 0x3C and destructor arg1. It then calls StartTask with the actor record as argument and returns 1. */
s32 sub_0801674C(s32 arg0, s32 arg1)
{
    s32 i;
    s32 slot;
    u8 *object;
    u8 *memory;
    s32 zero;

    for (i = 0; i <= 4; i++) {
        if (((1 << i) & poolFlags014) == 0) {
            slot = i;
            goto found;
        }
    }
    slot = -1;
found:
    if (slot < 0)
        return 0;
    poolFlags014 |= 1 << slot;
    object = poolObjects014 + slot * 0x2E0;
    zero = 0;
    *(u16 *)object = slot;
    *(u32 *)(object + 0x50) = (slot + 4) << 24;
    taskArray014s[slot].uC = (void *)arg0;
    memory = sub_08001494(0x800);
    taskArray014s[slot].u20 = (s32)memory;
    taskArray014s[slot].u10 = (s32)(memory + 0x7FC);
    taskArray014s[slot].u8 = 0x3C;
    taskArray014s[slot].u18 = zero;
    taskArray014s[slot].u0 = zero;
    taskArray014s[slot].u24 = arg1;
    startPool014(&taskArray014s[slot], object);
    return 1;
}
struct Record1681C { u8 *source; u8 kind, sound; u16 extra; };
struct State1681C { u16 x,y,flags,index,f8,fA,fC,fE,kind,sound; u8 *source; };
extern struct Record1681C *volatile records1681C asm("gUnk_030042E8");
extern s32 step1681C(struct State1681C *) asm("sub_0801641C");
extern s32 position1681C(s32 *) asm("sub_08017F7C");
extern void sound1681C(u8,u32,s32) asm("sub_080571A4");
/* [TaskProcessEnemySpawnRequest] Copies one request record into local spawn state. Byte4 &0x7F selects a
 * point: flags at+8, unsigned x/y at+0xA/+0xC and a halfword at+0xE. Copies descriptor byte 5, raw byte 4 and
 * sequence+masked index; extra fields come from record+0x30/+0x32/+0x34. If point flags 0x4000 are clear and
 * 17F7C is false, writes scene grid value 1 through 571A4 using byte 5/masked byte 4 and finishes without
 * spawning. Otherwise waits on signal 1 first, then exits on scene stop, cancellation, live request byte
 * 4==0xFF or successful 1641C; while actor capacity is full it retries only while the same proximity/force
 * condition holds. It does not wait outside proximity until a player arrives. */
void sub_0801681C(u16 index) {
    struct State1681C state;
    struct { s32 x, y; } coords;
    struct Record1681C *record;
    struct Record1681C *loaded;
    register u32 value asm("r1");
    struct State1681C *statePtr;
    u8 *source, *entry;
    s32 kind;
    s32 *pos;
    loaded = records1681C;
    record = (struct Record1681C *)(index * 8 + (u32)loaded);
    source = record->source;
    kind = record->kind & ~0x80;
    statePtr = &state;
    entry = source + kind * 8;
    statePtr->x = *(u16 *)(entry + 0xA);
    statePtr->y = *(u16 *)(entry + 0xC);
    state.source = source;
    statePtr->flags = *(u16 *)(entry + 8);
    statePtr->f8 = *(u16 *)(entry + 0xE);
    state.kind = record->kind;
    state.sound = record->sound;
    state.fC = *(u16 *)(source + 0x32);
    state.fE = *(u16 *)(source + 0x34);
    state.index = record->extra + kind;
    state.fA = *(u16 *)(source + 0x30);
    coords.x = state.x << 11;
    value = state.y << 11;
    coords.y = value;
    pos = &coords.x;
    for (;;) {
        value = state.flags;
        if (!(0x4000 & value) && position1681C(pos) == 0) break;
        sub_080003F0();
        if (sub_0800CB78() != 0 || sub_08056E90() != 0 || records1681C[index].kind == 0xFF || step1681C(&state) != 0)
            goto done;
    }
    sound1681C((u8)state.sound, (u8)state.kind & 0x7F, 1);
done:
    sub_080003F0();
    gUnk_03005724 &= ~(1u << index);
}
extern volatile u16 bits168FC asm("gUnk_03005724");
struct Pair168FC { u32 first, second; };
extern struct Pair168FC *pairs168FC asm("gUnk_030042E8");
extern struct Task *volatile tasks168FC asm("gUnk_030056F0");
extern struct Task *volatile runtimeTasks168FC asm("gUnk_030056F0");
extern void callback168FC(void) asm("sub_0801681C");
extern void sound168FC(u8,u8,s32) asm("sub_080571A4");
/* [TryStartEnemySpawnRequestTask] Scans request-mask bits 0..1. Full pool returns-1, optionally writing scene
 * grid value 1 through 571A4 using descriptor bytes5 and4 without masking byte 4. Otherwise copies all eight
 * descriptor bytes, assigns 1681C as callback and retries a 0x200-byte stack allocation with signal 1 waits
 * until nonnull. Writes stack top+0x1FC, raw flags 0x96+slot and zeroes task fields+0/+0x18/+0x24; starts with
 * the request-slot index, then sets the busy bit and returns0. Flags do not establish a task priority.
 * Allocation retries reload the task-array pointer; no captured-pointer lifetime guarantee is inferred. */
s32 sub_080168FC(struct Pair168FC *arg) {
    u16 index;
    s32 mask;
    volatile u16 *bitPointer;
    register u32 one asm("r1");
    register struct Task *task asm("r1");
    register struct Task *initialBase asm("r1");
    struct Task *initialTask;
    register u32 factor asm("r2");
    u32 stackOffset;
    register u32 top asm("r0");
    u32 memory;
    register u32 offset4 asm("r5");
    u32 taskState;
    index = 0;
    bitPointer = &bits168FC;
    mask = *bitPointer;
    one = 1;
    goto test;
next:
    index++;
    if (index > 1) goto full;
    mask = (s32)*bitPointer >> index;
test:
    if (mask & one) goto next;
    if (index > 1) {
full:
        if (sub_08002204() != 0)
            sound168FC(((u8 *)arg)[5], ((u8 *)arg)[4], 1);
        return -1;
    }
    pairs168FC[index] = *arg;
    initialBase = tasks168FC;
    factor = index * 4;
    initialTask = (struct Task *)((factor + index) * 8 + (u32)initialBase);
    initialTask->uC = callback168FC;
    offset4 = factor;
    taskState = index + 0x96;
    for (;;) {
        memory = sub_08001494(0x200);
        task = runtimeTasks168FC;
        task = (struct Task *)((offset4 + index) * 8 + (u32)task);
        task->u20 = memory;
        if (memory != 0) break;
        sub_080003F0();
    }
    stackOffset = 0x1FC;
    top = memory + stackOffset;
    task->u10 = top;
    task->u8 = taskState;
    task->u18 = 0;
    task->u0 = 0;
    task->u24 = 0;
    sub_08000274(task, index);
    bits168FC |= 1 << index;
    return 0;
}
extern void sound169C8(u8,u8,s32) asm("sub_080571A4");
/* [StopEnemyTasksAndClearPoolState] Queries actual scheduler membership of each of five fixed enemy controls
 * through 00470. For each scheduled task, stops it, reloads the actor buffer and sets
 * health+0x5C=0/state+0xC=11, then writes scene-grid value 3 through 571A4 using the actor low
 * bytes+0x86/+0x84. Separately stops each scheduled task in the two-control request buffer. Clears all three
 * enemy palette registry records and masks 03005724/030056FC/030056F8. Does not free/null the actor,
 * request-control or descriptor buffers, and does not promise all actor bytes or unscheduled actors are
 * rewritten. Scene-grid notification is not sound playback. */
void sub_080169C8(void) {
    register u32 i asm("r5");
    u32 taskOffset;
    u32 objectOffset;
    u32 j;
    u32 secondOffset;
    s32 *secondBase;
    u32 loopZero;
    register u32 k asm("r5");
    u16 *flag;
    u32 *word1, *word2;
    u32 zero;
    u8 *task, *object;
    u32 *entry;
    i = 0; objectOffset = 0; taskOffset = 0;
    do {
        task = (u8 *)&gUnk_03004220 + taskOffset;
        if (sub_08000470((u32)task) != 0) {
            sub_080003A8((s32)task);
            object = (u8 *)(objectOffset + (u32)gP030056F4);
            *(u16 *)(object + 0x5C) = 0;
            *(u16 *)(object + 0xC) = 11;
            sound169C8(object[0x86], object[0x84], 3);
        }
        objectOffset += 0x2E0; taskOffset += 0x28; i++;
    } while (i <= 4);
    j = 0; secondBase = &gUnk_030056F0; secondOffset = 0;
    do {
        if (sub_08000470(*secondBase + secondOffset) != 0)
            sub_080003A8(*secondBase + secondOffset);
        secondOffset += 0x28; j++;
    } while (j <= 1);
    k = 0;
    flag = &gUnk_03005724; word1 = &gW030056FC; word2 = &gW030056F8;
    loopZero = 0;
    entry = gA03005700;
    do {
        entry[2] = loopZero; entry[1] = loopZero; entry[0] = loopZero;
        entry += 3; k++;
    } while (k <= 2);
    zero = 0;
    *flag = zero;
    *word1 = zero;
    *word2 = zero;
}
struct Obj16A7C { u8 pad0[0x2C]; s32 owner; u8 pad30[0x7A - 0x30]; u16 flags; u8 pad7C[0x2E0 - 0x7C]; };
struct Rec16A7C { s32 owner; u8 kind; u8 pad[3]; };
extern struct Obj16A7C *objects16A7C asm("gUnk_030056F4");
extern u32 active16A7C asm("gUnk_030056FC");
extern u16 bits16A7C asm("gUnk_03005724");
extern struct Rec16A7C *records16A7C asm("gUnk_030042E8");
static inline u32 findMask(s32 owner)
{
    struct Obj16A7C *obj = objects16A7C;
    u32 mask = 0;
    u32 i;
    for (i = 0; i <= 4; i++, obj++) {
        if ((active16A7C & (1 << i)) && obj->owner == owner)
            mask |= 1 << i;
    }
    return mask;
}
/* [RequestEnemyRemovalBySpawnRecord] Finds all active enemies whose full 32-bit field+0x2C equals the supplied
 * spawn-record address, then ORs mask 0x1 into each matching actor flags halfword+0x7A. For both active
 * request slots whose descriptor word0 matches that address, sets descriptor byte 4 to 0xFF. It only marks
 * matching actors and pending requests: no scheduler stop, free, yield or mask clear occurs. Matching is by
 * record pointer, not spawn identifier+2 or an actor slot. No input0 sentinel is checked. */
void sub_08016A7C(s32 owner)
{
    u32 found;
    u32 i;
    u32 k;

    found = findMask(owner);
    for (i = 0; i <= 4; i++) {
        if ((1 << i) & found)
            objects16A7C[i].flags |= 1;
    }
    for (k = 0; k <= 1; k++) {
        if ((bits16A7C >> k) & 1 && records16A7C[k].owner == owner)
            records16A7C[k].kind |= 0xFF;
    }
}
struct Pos16B30 { u32 kind:4; u32 x:12; u32 y:12; u32 pad2:4; u32 f4:6; u32 f4b:2; };
struct Dist16B30 { s32 dist; s32 index; };
struct Plr16B30 { u16 id; u8 pad2[0x2E]; u32 flags; u8 pad34[0x30]; u16 kind; u8 pad66[0xE2]; struct Pos16B30 *pos; };
extern struct Plr16B30 players16B30[] asm("gUnk_03003CE0");
/* [SelectNearestPlayerForEnemy] Uses a four-entry local distance/index array with loops bounded by participant
 * count 02164, without a count clamp. Origin is enemy live Q8 coordinates+0x14/+0x18 shifted8; candidate
 * coordinates are packed player positions at player+0x148. Rejects player flags 0x2000/0x40002 and player
 * kind+0x64==9; kind>9 additionally requires the enemy+0x5A bit indexed by player ID. Packed kind 0xB or
 * packed flags 0x20 leave squared distance at 0x7FFFFFFF. Sorts pairs by signed 32-bit squared distance;
 * narrows Sqrt of the first result to16 bits. Returns10 without updating the distance ceiling when distance
 * exceeds signed*best; otherwise stores distance and returns the first pair index. */
s32 sub_08016B30(u8 *self, s32 *best)
{
    struct Dist16B30 list[4];
    u32 count;
    s32 x, y;
    struct Plr16B30 *p;
    u32 i, j;

    count = sub_08002164();
    x = *(s32 *)(self + 0x14) >> 8;
    y = *(s32 *)(self + 0x18) >> 8;
    p = players16B30;
    for (i = 0; i < count; i++, p++) {
        u32 flags;
        u32 kind;
        list[i].dist = 0x7FFFFFFF;
        flags = p->flags;
        if (flags & 0x2000)
            continue;
        kind = p->kind;
        if (kind > 9 && !((*(u16 *)(self + 0x5A) >> p->id) & 1))
            continue;
        if (kind == 9 || (flags & 0x40002))
            continue;
        {
            struct Pos16B30 *pos = p->pos;
            if (pos->kind != 0xB && !(pos->f4 & 0x20)) {
                s32 d[2];
                d[0] = x - pos->x;
                d[1] = y - pos->y;
                list[i].dist = d[0] * d[0] + d[1] * d[1];
            }
        }
        list[i].index = i;
    }
    for (i = 0; i < count; i++) {
        for (j = i + 1; j < count; j++) {
            if (list[i].dist > list[j].dist) {
                list[i].dist ^= list[j].dist;
                list[j].dist ^= list[i].dist;
                list[i].dist ^= list[j].dist;
                list[i].index ^= list[j].index;
                list[j].index ^= list[i].index;
                list[i].index ^= list[j].index;
            }
        }
    }
    {
        s32 d = Sqrt(list[0].dist);
        if (d > *best)
            return 10;
        *best = d;
        return list[0].index;
    }
}
/* [ComputeEightWayMovementKeysToPoint] Takes Q8 origin x/y, pixel target x/y and low 16 signed stopping radius
 * as a fifth stack argument. Original converts each origin to signed 16 pixels with
 * shift-left8/arithmetic-right16, narrows target coordinates and each difference to signed 16, sums the low
 * 32-bit squares and narrows Sqrt to unsigned 16. Returns0 when that nonnegative distance<=signed radius.
 * Otherwise quantizes low 16 ArcTan2 into eight 45-degree bins, rounding up only when the within-bin fraction
 * is strictly greater than half (ties stay in the lower bin), and returns movement
 * masks10/90/80/A0/20/60/40/50 hex. */
s32 sub_08016C88(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4)
{
  s16 dx;
  s16 dy;
  u32 angle;
  u32 idx;
  u32 t;
  s16 px;
  s16 py;
  s16 qx;
  s16 qy;
  s32 s0;
  u32 *new_var;
  s0 = arg0 << 8;
  t = arg1 << 8;
  px = arg2;
  qx = s0 >> 16;
  dx = px - qx;
  py = arg3;
  qy = (s16) (t >> 16);
  new_var = &t;
  dy = py - qy;
  if (Sqrt((dx * dx) + (dy * dy)) > ((s16) arg4))
  {
    angle = ArcTan2(dx, dy);
    t = angle << 19;
    idx = angle >> 13;
    if ((*new_var) > 0x80000000)
    {
      if (idx <= 6)
      {
        idx++;
      }
      else
      {
        idx = 0;
      }
    }
    if (idx > 7)
    {
      return 0;
    }
    switch (idx)
    {
      case 0:
        return 0x10;

      case 1:
        return 0x90;

      case 2:
        return 0x80;

      case 3:
        return 0xA0;

      case 4:
        return 0x20;

      case 5:
        return 0x60;

      case 6:
        return 0x40;

      case 7:
        return 0x50;

    }

  }
  return 0;
}
extern s32 aimD40(s32,s32,s32,s32,s32) asm("sub_08016C88");
/* [UpdateEnemyTrackingMovementKeys] Every invocation refreshes integer-pixel target fields+0x24/+0x28 from the
 * actor+0x1FC high nibble. If actor byte+0x201 mask 0x2 is set, tracks a 030056F4 enemy actor by that index
 * and shifts its live Q8 coordinates8. Otherwise tracks that player index at 03003CE0 and decodes its packed
 * 12-bit pixel coordinates through+0x148, reloading the packet pointer for the second coordinate. No
 * target-index, activity, pointer, health or group validation occurs. Updates actor input+4 through 16C88 only
 * when global counter 03002344%25 equals actor slot+0 times5; second argument is narrowed to signed 16 as the
 * radius. */
void sub_08016D40(u8 *object, u16 arg) {
    u8 *source;
    u16 *volatile *packed;
    u32 zero;
    u32 count;
    u16 *counter;
    if (object[0x201] & 2) {
        source = gP030056F4 + (object[0x1FC] >> 4) * 0x2E0;
        *(s32 *)(object + 0x24) = *(s32 *)(source + 0x14) >> 8;
        *(s32 *)(object + 0x28) = *(s32 *)(source + 0x18) >> 8;
    } else {
        source = (u8 *)gUnk_03003CE0 + (object[0x1FC] >> 4) * 0x14C;
        packed = (u16 *volatile *)(source + 0x148);
        *(s32 *)(object + 0x24) = (*packed)[0] >> 4;
        *(s32 *)(object + 0x28) = ((u32)(*packed)[1] << 20) >> 20;
    }
    if (gUnk_03002344 % 25 == *(u16 *)object * 5)
        *(u16 *)(object + 4) = aimD40(*(s32 *)(object + 0x14), *(s32 *)(object + 0x18), *(s32 *)(object + 0x24), *(s32 *)(object + 0x28), (s16)arg);
    counter = (u16 *)(object + 0x44);
    count = *counter + 1;
    zero = 0;
    *counter = count;
    if ((u16)count > 180) {
        *counter = zero;
        *(u16 *)(object + 4) = zero;
    }
}
struct Reg16E04 { s32 key; s32 sub; s32 count; };
extern u32 used16E04 asm("gUnk_030056F8");
extern struct Reg16E04 regs16E04[] asm("gUnk_03005700");
/* [AcquireSharedEnemyPaletteSlot] First scans the three active12-byte records 03005700 in ascending order for
 * full 32-bit key plus low 16 selector, increments its32-bit reference count and returns handle 4..6. Matching
 * does not require the old count to be nonzero. If no match, allocates the first clear slot, stores both
 * keys/count 1 and sets its bit in 030056F8. Returns 0xFFFF if all three slots are active and no key pair
 * matches. The original word increment wraps with no overflow guard; this differs from find 19D7C which
 * requires a nonzero count. */
u16 sub_08016E04(s32 key, u16 sub)
{
    u32 i;

    for (i = 0; i <= 2; i++) {
        if ((used16E04 & (1 << i)) && regs16E04[i].key == key && regs16E04[i].sub == sub) {
            regs16E04[i].count++;
            return i + 4;
        }
    }
    for (i = 0; i <= 2; i++) {
        u32 *usedp = &used16E04;
        u32 bit = 1 << i;
        u32 used = *usedp;
        if (!(used & bit)) {
            regs16E04[i].key = key;
            regs16E04[i].sub = sub;
            regs16E04[i].count = 1;
            used16E04 = used | bit;
            return i + 4;
        }
    }
    return 0xFFFF;
}
extern u32 gW6ECC_56F8 asm("gUnk_030056F8");
extern u32 gT6ECC_5700 asm("gUnk_03005700");
void sub_08016ECC_u16(u16 arg0) asm("sub_08016ECC");
/* [ReleaseSharedEnemyPaletteSlot] Computes low 16(handle-4), then checks its active bit in 030056F8. For an
 * active record, an unsigned32-bit count<=1 clears all three words and its mask bit; a larger count is
 * decremented. Inactive handles make no change on the valid4..6 domain. No explicit range validation is
 * performed, so arbitrary invalid handles are not promised safe. No palette colors are erased and no
 * actor/request-task mask is changed. */
void sub_08016ECC_u16(u16 arg0)
{
  u32 *flagp;
  u32 mask;
  u32 flags;
  u32 *tbl;
  u32 off;
  u16 idx;
  idx = arg0 - 4;
  flagp = &gW6ECC_56F8;
  mask = 1 << idx;
  flags = *flagp;
  if (flags & mask)
  {
    tbl = &gT6ECC_5700;
    off = (idx * 3) * 4;
    if ((*((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8))) <= 1)
    {
      *((u32 *) (((u8 *) tbl) + off)) = 0;
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 4)) = 0;
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8)) = 0;
      *flagp = flags & (~mask);
    }
    else
    {
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8)) = (*((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8))) - 1;
    }
  }
}
struct Pos16F28 { u32 kind:4; u32 x:12; u32 y:12; u32 pad2:4; u32 f4:6; u32 f4b:2; };
struct Plr16F28 { u8 pad0[0x148]; struct Pos16F28 *pos; };
extern struct Plr16F28 players16F28[] asm("gUnk_03003CE0");
struct Roll16F28 { u8 result; u8 chance; u8 pad[2]; };
struct AI16F28 {
    u8 pad0[0x10];
    s32 f10;                 /* 0x214 */
    u8 pad14[0xC];
    u16 f20;                 /* 0x224 */
    u8 pad22[0x26];
    u16 near48;              /* 0x24C */
    u16 mid4A;               /* 0x24E */
    u16 hp4C;                /* 0x250 */
    u16 f4E;                 /* 0x252 */
    struct Roll16F28 tables[11][3]; /* 0x254 */
    u8 pad2D8[8];
};
struct Obj16F28 {
    u16 id;
    u16 f2;
    u16 input;               /* 0x04 */
    u16 f6;
    u16 f8;
    u16 fA;
    u16 state;               /* 0x0C */
    u8 padE[6];
    s32 x;                   /* 0x14 */
    s32 y;                   /* 0x18 */
    u8 pad1C[8];
    s32 tx;                  /* 0x24 */
    s32 ty;                  /* 0x28 */
    u8 pad2C[0x16];
    u16 f42;
    u16 f44;
    u8 pad46[0x16];
    s16 hp;                  /* 0x5C */
    u8 pad5E[4];
    u16 f62;
    u8 pad64[0xA];
    u16 f6E;
    u8 pad70[4];
    u16 f74;
    u8 pad76[4];
    u16 f7A;
    u8 pad7C[0xE];
    u16 f8A;
    u8 pad8C[0x14A];
    s16 maxhp;               /* 0x1D6 */
    u8 pad1D8[0x24];
    u8 tlo:4;                /* 0x1FC */
    u8 thi:4;
    u8 action;               /* 0x1FD */
    u8 phase;                /* 0x1FE */
    u8 pad1FF;
    u8 dir;                  /* 0x200 */
    u8 flags;                /* 0x201 */
    u8 pad202[2];
    struct AI16F28 ai;       /* 0x204 */
};
struct GS16F28 { u8 pad0[0xC]; u16 fC; };
extern struct GS16F28 *gs16F28 asm("gUnk_03005CF4");
extern u32 used16F28 asm("gUnk_030056FC");
extern struct Obj16F28 *objs16F28 asm("gUnk_030056F4");
struct Lead16F28 { u8 pad0[0x20]; s32 f20; };
extern struct Lead16F28 *lead16F28 asm("gUnk_030034E0");
extern u8 dirs16F28[] asm("gUnk_084790B4");
extern u8 dirIdx16F28[] asm("gUnk_084790C4");
extern s16 sin16F28[] asm("gUnk_080B9704");
extern u16 ang16F28[] asm("gUnk_0847AD0A");
extern u32 frame16F28 asm("gUnk_03002344");
extern s32 aim16F28(s32, s32, s32, s32, s32) asm("sub_08016C88");
extern void follow16F28(struct Obj16F28 *, u32) asm("sub_08016D40");
extern s32 nearest16F28(struct Obj16F28 *, s32 *) asm("sub_08016B30");
extern u32 notify16F28(u32) asm("sub_080662C4");

static inline u8 roll16F28(struct Roll16F28 *t)
{
    u32 i;
    register u32 r asm("r2");
    u8 sum;
    u8 res;
    r = (u8)(sub_080008C8() % 100U);
    res = 0xFF;
    i = 0;
    sum = t->chance;
    goto test;
loop:
    i++;
    t++;
    if (i > 2)
        goto end;
    sum += t->chance;
test:
    if (r >= sum)
        goto loop;
    res = t->result;
end:
    return res;
}

struct Vec16F28 { s32 x, y; };
#define TGT(o) (((u8 *)(o))[0x1FC])

static inline u32 dir16F28(struct Obj16F28 *self, s16 x, s16 y)
{
    s32 dx = -(self->x >> 8) + x;
    s32 dy = -(self->y >> 8) + y;
    return (u32)((ArcTan2(dx, dy) << 16) + 0x8000000) >> 28;
}

static inline void seek16F28(struct Obj16F28 *self, u16 *range, u32 tx, u32 ty)
{
    struct Vec16F28 v;
    struct Vec16F28 *t;
    u32 a = dirs16F28[dirIdx16F28[self->dir]];
    u32 speed = *range;
    t = (struct Vec16F28 *)&self->tx;
    v.x = tx << 8;
    v.y = ty << 8;
    if (speed & 0x8000)
        speed = 0;
    t->y = sin16F28[ang16F28[a]] * speed + v.y;
    t->x = sin16F28[ang16F28[a] + 0x40] * speed + v.x;
    t->y >>= 8;
    t->x >>= 8;
    if (frame16F28 % 25 == self->id * 5)
        self->input = aim16F28(self->x, self->y, self->tx, self->ty, 8);
}

/* [UpdateTableDrivenEnemyActions] Updates actor action selection and synthesized input: authority-gated
 * weighted tables depend on hit/animation readiness, target distance, relative parameter and HP percentage;
 * flag2 temporarily targets another active actor instead of a player and expires after900 updates.
 * Chooses/revises facing, notifies action changes, and drives timed waits, follow/offset-target movement, and
 * attack inputs. Non-authority paths still synthesize current action input; target and table indices are
 * unchecked. Counter uses ++f8A > 900; zero-start expiry is the 901st update. */
void sub_08016F28(struct Obj16F28 *self)
{
    u8 act;
    s32 dist;
    u32 active;
    u32 dir;
    struct Obj16F28 *e;
    u32 tx, ty;
    struct AI16F28 *ai;

    ai = &self->ai;
    act = 0xFF;

    if (self->flags & 2) {
        if (++self->f8A > 900) {
            self->flags &= ~2;
            gs16F28->fC = 0;
            self->f8A = 0;
        }
    }
    {
        u32 r = sub_08002204();
        active = (-r | r) >> 31;
    }
    if (active) {
        if (self->state == 10 && self->f6E != 0) {
            act = roll16F28(ai->tables[0]);
            self->flags |= 1;
        }
        if (self->action == 0xE) {
            if (self->phase > 1 && act == 0xFF && self->f74 == 1) {
                act = roll16F28(ai->tables[1]);
                self->flags |= 1;
            }
        } else if (act == 0xFF && self->f74 == 1) {
            act = roll16F28(ai->tables[1]);
            self->flags |= 1;
        }
        if (self->f62 == 10)
            self->flags &= ~1;
    }
    if (self->flags & 1) {
        if (active) {
            if (act == 0xFF) {
                dist = 0xF0;
                if (self->flags & 2) {
                    {
                        s32 *dp = &dist;
                        s32 bestD = 0xFFFF;
                        u32 i;
                        u32 off;
                        u32 r;
                        struct Obj16F28 **objsp = &objs16F28;
                        tx = -1;
                        for (i = 0, off = 0; i <= 4; off += 0x2E0, i++) {
                            struct Obj16F28 *o;
                            if ((used16F28 & (1 << i)) && (o = (struct Obj16F28 *)((u8 *)*objsp + off)) != self) {
                                s32 dx = (o->x - self->x) >> 8;
                                s32 dy = (o->y - self->y) >> 8;
                                u16 d = Sqrt(dx * dx + dy * dy);
                                if (bestD > d) {
                                    bestD = d;
                                    tx = i;
                                }
                            }
                        }
                        if (tx == -1)
                            r = 0xFF;
                        else {
                            *dp = bestD;
                            r = tx;
                        }
                        { u8 *p = &TGT(self); r <<= 4; *p = (*p & 0xF) | r; }
                    }
                } else {
                    self->thi = nearest16F28(self, &dist);
                }
                if (self->thi <= 9) {
                    s32 diff;
                    if (self->flags & 2)
                        diff = objs16F28[self->thi].ai.f10 - ai->f10;
                    else
                        diff = lead16F28->f20 - ai->f10;
                    if (ai->f4E < diff) {
                        if (dist < ai->near48)
                            act = roll16F28(ai->tables[8]);
                        else if (dist < ai->mid4A)
                            act = roll16F28(ai->tables[9]);
                        else
                            act = roll16F28(ai->tables[10]);
                    }
                    if (act == 0xFF) {
                        u16 pct = self->hp * 100 / self->maxhp;
                        if (ai->hp4C > pct) {
                            if (dist < ai->near48)
                                act = roll16F28(ai->tables[5]);
                            else if (dist < ai->mid4A)
                                act = roll16F28(ai->tables[6]);
                            else
                                act = roll16F28(ai->tables[7]);
                        }
                        if (act == 0xFF) {
                            if (dist <= ai->near48)
                                act = roll16F28(ai->tables[2]);
                            else if (dist <= ai->mid4A)
                                act = roll16F28(ai->tables[3]);
                            else
                                act = roll16F28(ai->tables[4]);
                        }
                    }
                } else {
                    act = 1;
                    TGT(self) &= 0xF;
                }
            }
            if (act == 0xD && self->f74 < ai->f20 && self->action != 0xFF)
                act = self->action;
            if (act != 0xFF) {
                self->flags &= ~1;
                if (self->action != act) {
                    self->phase = 0;
                    self->action = act;
                    if (self->flags & 2) {
                        e = &objs16F28[self->thi];
                        dir = dir16F28(self, e->x >> 8, e->y >> 8);
                        self->dir = dir;
                    } else {
                        struct Plr16F28 *pl;
                        u32 prod = self->thi * sizeof(struct Plr16F28);
                        pl = players16F28;
                        pl = (struct Plr16F28 *)((u8 *)pl + prod);
                        if ((s32)(*((u8 *)pl->pos + 4) << 26) < 0)
                            self->flags |= 1;
                        dir = dir16F28(self, pl->pos->x, pl->pos->y);
                        self->dir = dir;
                    }
                    {
                        u32 i;
                        u32 off;
                        u32 *usedp;
                        struct Obj16F28 **objsp;
                        i = 0;
                        usedp = &used16F28;
                        objsp = &objs16F28;
                        for (off = 0; i <= 4; off += 0x2E0, i++) {
                            if (self->id != i && (*usedp & (1 << i))) {
                                e = (struct Obj16F28 *)((u8 *)*objsp + off);
                                if (self->dir == e->dir) {
                                    self->dir++;
                                    if (self->dir > 15)
                                        self->dir = 0;
                                }
                            }
                        }
                    }
                    notify16F28(self->id);
                }
            } else {
                self->action = 0;
            }
        }
        self->phase = 0;
    }
    if (self->flags & 2) {
        e = &objs16F28[self->thi];
        do { dir = dir16F28(self, e->x >> 8, e->y >> 8); } while (0);
        tx = (u32)(e->x << 8) >> 16;
        ty = (u32)(e->y << 8) >> 16;
    } else {
        struct Plr16F28 *pl;
        u32 prod = self->thi * sizeof(struct Plr16F28);
        pl = players16F28;
        pl = (struct Plr16F28 *)((u8 *)pl + prod);
        if ((s32)(*((u8 *)pl->pos + 4) << 26) < 0)
            self->flags |= 1;
        do { dir = dir16F28(self, pl->pos->x, pl->pos->y); } while (0);
        tx = pl->pos->x;
        ty = pl->pos->y;
    }
    switch (self->action) {
    case 1:
        self->f6 = 0;
        self->input = 0;
        self->f42 = 0;
        if (!active)
            break;
        if (++self->phase > 30)
            self->flags |= 1;
        break;
    case 2:
        self->f6 = 0;
        self->input = 0;
        self->f42 = 0;
        if (!active)
            break;
        if (++self->phase > 60)
            self->flags |= 1;
        break;
    case 3:
        self->f6 = 0;
        self->input = 0;
        self->f42 = 0;
        if (!active)
            break;
        if (++self->phase > 90)
            self->flags |= 1;
        break;
    case 4:
        follow16F28(self, ai->near48);
        self->f6 = 0;
        if (!active)
            break;
        if (self->f7A & 0x20)
            self->input = 0;
        if (self->input == 0) {
            self->flags |= 1;
            self->f8 = dirs16F28[dir];
        }
        break;
    case 5:
        follow16F28(self, ai->mid4A);
        self->f6 = 0;
        if (!active)
            break;
        if (self->f7A & 0x20)
            self->input = 0;
        if (self->input == 0) {
            self->flags |= 1;
            self->f8 = dirs16F28[dir];
        }
        break;
    case 6:
        seek16F28(self, &ai->near48, tx, ty);
        if (++self->f44 > 180) {
            self->f44 = 0;
            self->input = 0;
        }
        self->f6 = 0;
        if (!active)
            break;
        if (self->f7A & 0x20)
            self->input = 0;
        if (self->input == 0) {
            self->flags |= 1;
            self->f8 = dirs16F28[dir];
        }
        break;
    case 7:
        seek16F28(self, &ai->mid4A, tx, ty);
        if (++self->f44 > 180) {
            self->f44 = 0;
            self->input = 0;
        }
        self->f6 = 0;
        if (!active)
            break;
        if (self->f7A & 0x20)
            self->input = 0;
        if (self->input == 0) {
            self->flags |= 1;
            self->f8 = dirs16F28[dir];
        }
        break;
    case 8: case 9: case 10: case 11: case 12:
    case 15: case 16: case 17:
    case 22: case 23: case 24: case 25: case 26: case 27: case 28: case 29: case 30:
        break;
    case 13:
        self->f8 = dirs16F28[dir];
        self->f6 = 1;
        self->input = 1;
        self->f42 = 0;
        if (!active)
            break;
        if (self->f74 > self->ai.f20)
            self->flags |= 1;
        break;
    case 14:
        self->f6 = 1;
        self->input = 1;
        self->f42 = 0;
        if (!active)
            break;
        switch (self->phase) {
        case 0:
            self->f8 = dirs16F28[dir];
            if (self->f74 > self->ai.f20)
                self->phase++;
            break;
        case 1:
            if (self->state == 0)
                self->phase = 2;
            break;
        case 2:
            self->flags |= 1;
            break;
        }
        break;
    case 18: case 19: case 20: case 21:
        self->f8 = dirs16F28[dir];
        self->f6 = 2;
        self->input = 2;
        self->f42 = 0;
        if (!active)
            break;
        if (self->f74 > self->ai.f20)
            self->flags |= 1;
        break;
    case 31: case 32: case 33: case 34: case 35: case 36: case 37: case 38: case 39: case 40: case 41: case 42: case 43: case 44: case 45: case 46: case 47: case 48: case 49: case 50: case 51: case 52: case 53: case 54: case 55: case 56: case 57: case 58: case 59: case 60: case 61: case 62: case 63: case 64: case 65: case 66: case 67: case 68: case 69: case 70: case 71: case 72: case 73: case 74: case 75: case 76: case 77: case 78: case 79: case 80: case 81: case 82: case 83: case 84: case 85: case 86: case 87: case 88: case 89: case 90: case 91: case 92: case 93: case 94: case 95: case 96: case 97: case 98: case 99: case 100: case 101: case 102: case 103: case 104: case 105: case 106: case 107: case 108: case 109: case 110: case 111: case 112: case 113: case 114:
        self->f8 = dirs16F28[dir];
        self->f6 = 2;
        self->input = 2;
        if (!active)
            break;
        if (self->f74 > self->ai.f20)
            self->flags |= 1;
        break;
    default:
        if (!(self->f7A & 4))
            self->flags |= 1;
        break;
    }
}
struct T015CEntity { u16 id; u8 pad2[0xA]; u16 kind; u8 padE[6]; s32 x,y; u8 pad1C[0x5A]; u16 cursor; u8 pad78[2]; u16 flags; u8 pad7C[0x194]; u32 active; u8 pad214[0x1A]; u8 radius; };
extern struct T015CEntity *T015CEntities asm("gUnk_030056F4");
extern u8 T015CDirections[] asm("gUnk_084790B4");
extern u8 T015CAngles[] asm("gUnk_0849E730");
extern u16 T015CProbe(u8,s32,s32,s32) asm("sub_0800B118");
/* [AdjustActorNeighborSeparation] On frame parity matching actor id, clears actor flag0x10 and checks one
 * cursor-selected entity0..4 when active mask/radii permit. Only within signed dx/dy bounds7, sets flag0x10,
 * computes radius overlap and trigonometric displacement, probes collision, and writes adjusted position only
 * for nonzero probe result. Advances cursor, resetting to actor id+1 when beyond range; parity mismatch
 * preserves cursor/flags. Radius temporary narrows to byte. */
void sub_08017C6C(struct T015CEntity *p) {
    s32 x;
    s32 y;
    s32 dx,ax;
    s32 delta;
    u16 *cp;
    s16 dy;
    register u32 angle asm("r0");
    s32 idx;
    u32 cosindex;
    u32 finalindex;
    s32 finalproduct;
    u8 *anglesptr;
    u32 minus;
    register u32 hitraw asm("r0");
    u32 hit;
    s32 ay;
    s32 index;
    u32 sumraw;
    u16 cursor;
    u32 nextvalue;
    register u32 offset asm("r0");
    u32 *flagptr;
    u32 angleword;
    u32 *phaseptr;
    u32 phase;
    register u32 id asm("r2");
    register u32 bit asm("r0");
    register u32 mask asm("r1");
    struct T015CEntity **baseptr;
    register struct T015CEntity *base asm("r1");
    register u32 loadtemp asm("r0");
    register u32 dxraw asm("r1");
    u32 dyraw;
    s32 deltaraw;
    s32 product;
    s32 signedangle;
    s32 cosine;
    u32 cursorraw;
    register u32 one asm("r5");
    u32 radiusraw;
    u32 flags;
    register u16 radius asm("sl");
    u16 dist;
    s32 px;
    s32 py;
    s16 *sines;
    u8 r;
    struct T015CEntity *q;
    x=p->x; y=p->y;
    cp=&p->cursor; loadtemp=*cp;
    cursorraw=loadtemp << 16;
    cursor=cursorraw >> 16;
    if ((u16)cursor>4) goto reset;
    phaseptr=&gUnk_03002344;
    phase=*phaseptr;
    one=1;
    phase &= one;
    id=p->id;
    bit=one;
    bit &= id;
    if (phase != bit) return;
    flags=p->flags & 0xFFEF; p->flags=flags;
    radiusraw=p->radius << 16;
    r=radiusraw >> 16;
    if (!radiusraw || p->active==0xFF) goto next;
    baseptr=&T015CEntities;
    index=(s32)cursorraw >> 16;
    offset=index*0x2E0;
    base=*baseptr;
    q=(struct T015CEntity *)((u8 *)base+offset);
    flagptr=&gUnk_030056FC;
    mask=one<<index;
    if (!(*flagptr & mask) || p->kind==0xB) goto next;
    sumraw=(q->radius+(u16)r)<<16;
    radius=sumraw>>16;
    asm("" : "+r"(radius));
    if (!sumraw) goto next;
    dxraw=q->x;
    dxraw=(x-dxraw)<<8;
    dyraw=(u32)((y-q->y)<<8)>>16;
    dx=(s32)dxraw>>16;
    ax=dx; if(dx<0) ax=-dx;
    if(ax>7) goto next;
    dy=dyraw;
    ay=dy; if(dy<0) ay=-dy;
    if(ay>7) goto next;
    mask=0x10;
    bit=flags;
    bit |= mask;
    p->flags=bit;
    dist=Sqrt(dx*dx+dy*dy);
    angle=(u16)ArcTan2(dx,dy)>>8;
    deltaraw=((s16)radius-(s16)dist)<<16;
    sines=gUnk_080B9704;
    angleword=(u32)angle << 16;
    signedangle=(s32)angleword >> 16;
    cosindex=signedangle+0x40;
    cosine=sines[cosindex];
    delta=deltaraw>>17;
    product=cosine*delta;
    px=x+product;
    product=sines[signedangle]*delta;
    py=y+product;
    hitraw=T015CProbe(T015CDirections[angleword>>20],px,py,0)<<16;
    hit=hitraw>>16;
    if(hitraw) {
        hitraw=hit<<16;
        anglesptr=T015CAngles;
        minus=0xFFFF0000;
        hitraw=(s32)(hitraw+minus)>>15;
        idx=(s32)(*(u16 *)(hitraw+(u32)anglesptr)<<20)>>16;
        finalindex=idx+0x40;
        finalproduct=sines[finalindex]*delta;
        px=x+finalproduct;
        finalproduct=sines[idx]*delta;
        py=y+finalproduct;
        p->x=px; p->y=py;
    }

next:
    cp=&p->cursor; nextvalue=*cp+1; *cp=nextvalue;
    if((u16)nextvalue<=5) return;
reset:
    *cp=p->id+1;
}







/* [IsActorWithinScreenMargin] Projects actor fixed-point coordinates 0x14/0x18 to screen coordinates. */
s32 sub_08017E34(s32 *arg0) {
    u8 *base;
    u32 n;
    u32 i;
    s32 result;
    s16 *pb;
    struct {
        u16 a;
        s16 b;
    } buf;

    sub_0800BC08((((s32) arg0[5]) << 8) >> 0x10, (((s32) arg0[6]) << 8) >> 0x10,
                 &buf.a, &buf.b, 0x30, 0);
    result = 0;
    n = sub_08002164();
    i = 0;
    pb = &buf.b;
    if (result < n) {
        base = gUnk_03003E28;
        do {
            u8 *p = *(u8 **) (base + i * 0x14C);
            if (!(((u32) (p[4] << 0x1A) >> 0x1A) & 0x20) && (u16) (buf.a + 0x3F) <= 0x16A) {
                if (*pb > -0x40) {
                    if (*pb <= 0xC7) {
                        result = 1;
                    }
                }
            }
            i++;
        } while (i < n);
    }
    return result;
}
struct T015ERect { u32 x:16; u32 y:16; };
struct T015EPos { u16 x, y; u8 flags:6; u8 rest:2; };
struct T015EPlayer { u8 pad[0x148]; struct T015EPos *pos; };
extern struct T015EPlayer T015EPlayers[] asm("gUnk_03003CE0");
extern s32 T015ETest(s32 *, void *, s32 *, u32 *) asm("sub_08021FE0");
/* [ShouldKeepEnemyActive] Enemy flags 0x7A bit 6 forces true. */
s32 sub_08017EC8(u8 *arg0)
{
    s32 pos[2];
    s32 size;
    u32 rect;
    register s32 found asm("r8");
    struct T015EPlayer *p;
    register u32 count asm("r5");
    register u32 i asm("r6");
    register u8 *lo asm("r2");
    u32 high;
    if (*(u16 *)(arg0 + 0x7A) & 0x40) return 1;
    size = 0x014001E0;
    lo = arg0 + 0x22E;
    
    high = arg0[0x22F] << 16;
    
    rect = *lo | high;
    found = 0;
    
    count = sub_08002164();
    p = T015EPlayers;
    i = 0;
    if ((u32)found < count) do {
        if (!(((u32)(p->pos->flags << 26) >> 26) & 0x20)) {
            pos[0] = (p->pos->x >> 4) << 8;
            pos[1] = ((u32)p->pos->y << 20) >> 12;
            if (T015ETest(pos, arg0 + 0x14, &size, &rect)) found = 1;
        }
        i++;
        p++;
    } while (i < count);
    
    return found;
}
