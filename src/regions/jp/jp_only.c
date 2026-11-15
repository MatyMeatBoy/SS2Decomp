/*
 * Japanese (AU2J) functions with no same-shaped, same-position EU counterpart.
 *
 * Built only by the regional reconstruction (make REGION=jp compare); the EU
 * build never compiles this directory. Symbols named jp_sub_XXXXXXXX and
 * jp_gUnk_XXXXXXXX are Japanese ROM/RAM addresses: the regional builder places
 * each jp_sub_ definition at its address and resolves the references. Plain EU
 * names are used only for helpers at the same address with the same code in both
 * ROMs (StartTask, TaskWaitForSignal1, ExtractQuotientAndStoreRemainder,
 * HeapAllocate, LinkGetLocalPlayerId).
 *
 * Japanese player records are 0x154 bytes with the flags word at +0x38 (EU 0x14C
 * and +0x30); enemy records are 0x454 bytes (EU 0x2E0).
 */
#include "global.h"

struct JpPlayer { u8 pad0[0x38]; u32 flags; u8 pad3C[0x154 - 0x3C]; };

extern u8 jpPlayers[] asm("jp_gUnk_03003D80");
extern struct JpPlayer jpPlayerArray[] asm("jp_gUnk_03003D80");
extern u8 jpDialogueTaskUsed asm("jp_gUnk_03005E2C");
extern u8 *jpDialogueTaskPool asm("jp_gUnk_03005E28");
extern u32 jpDialogueRowIndex asm("jp_gUnk_03003510");
extern u32 jpLinkQueueCount asm("jp_gUnk_030063F8");
extern u8 *jpLinkQueue asm("jp_gUnk_030063C0");
extern u8 *jpEnemies asm("jp_gUnk_030057B4");
extern u32 jpDigitDivisors[] asm("jp_gUnk_084F98D8");

extern void jpBeginLocalPlayerEventLock(void) asm("jp_sub_0800CA44");
extern void jpEndLocalPlayerEventLock(void) asm("jp_sub_0800CA58");
extern u32 jpIsWorldTaskSuspendRequested(void) asm("jp_sub_0800C748");
extern void jpTurnSceneEntityTowardEntity(u32, u32) asm("jp_sub_08029548");
extern void jpRestoreSceneEntityFacingGradually(u32) asm("jp_sub_0802983C");
extern u32 jpStartTextWindowTask(u32, u32, u32, u32) asm("jp_sub_0805DDF0");
extern u32 jpStartFixedLayoutDialogueTask(u32, u32, u32, u32, s32, u32) asm("jp_sub_0805E608");
extern void jpTaskDialogueScriptWindow(void) asm("jp_sub_0805E8E4");
extern u32 jpDialogueStateIsComplete(u32) asm("jp_sub_0805F820");
extern u32 jpIsAnyTextWindowSlotUsed(void) asm("jp_sub_0805F8B4");
extern void jpCloseUsedDialogueWindowsAndWait(void) asm("jp_sub_0805F8E0");
extern u32 jpIsAnyDialogueTaskSlotUsed(void) asm("jp_sub_0805FA94");
extern void jpInitSpriteResourceDescriptor(void *, u32, u32, u32, u32) asm("jp_sub_08065784");
extern u32 jpResolveMainResourceById(u32) asm("jp_sub_08006D98");
extern u32 jpExperienceTable[] asm("jp_gUnk_08495544");
extern void jpPlayPlayerLevelUpEffect(void *) asm("jp_sub_08061FB0");
extern u32 jpPlayerPosition asm("jp_gUnk_03003E14");
extern s32 jpSceneState asm("jp_gUnk_03005DB4");
extern s32 jpTestFixedPointAxisAlignedBoxOverlap(void *, void *, void *, void *) asm("jp_sub_08021EF0");
extern void sub_0800035C(void);
extern u32 sub_08000498(s32 *, u32);

/* [CountRenderableScriptGlyphs16] Japanese 16-bit-text form of EU CountRenderableScriptGlyphs
 * (sub_0801A638): counts halfwords until the 0xFFFD terminator or any control halfword with bit 15 set. */
u32 jp_sub_0801A1F4(u16 *text)
{
    u32 n = 0;
    while (*text != 0xFFFD && !(*text & 0x8000)) {
        n++;
        text++;
    }
    return n;
}

/* [StartDialogueTaskAtLayout] Unreferenced in the Japanese ROM; same code as USA usa_sub_0805E02C. Like EU
 * StartFixedLayoutDialogueTask, but the window position and size are arguments (height scaled by 13/8) and
 * the stack is 0x1000 bytes without a retry loop. The row-table pointer stored at task+0x64 for modes
 * 2/3/4/7 is computed from four locals that the original never initialises; other modes leave task+0x64
 * unwritten. */
u8 *jp_sub_0805E734(u8 x, u8 y, u8 width, u8 height, s32 duration, u32 resource, u16 *mode)
{
    u8 *task;
    u8 *rows2, *rows3, *rows4, *rows7;
    u32 index;
    u32 counter;
    u32 flags;
    u32 bit;
    register s32 found asm("r0");
    void *memory;
    u32 zero;
    u32 two;
    u8 *address;
    u16 *cursor;

    counter = 0;
    flags = jpDialogueTaskUsed;
    bit = 1;
    do {
        if (((s32)flags >> counter & bit) == 0) { found = counter; goto slot_found; }
        found = counter + 1;
        counter = (u8)found;
    } while (counter <= 3);
    found = 255;
slot_found:
    index = (u8)found;
    if (index == 0xFF)
        return 0;
    task = jpDialogueTaskPool + index * 0x88;
    {
        u8 *slot = task + 0x70;
        zero = 0;
        *slot = index;
    }
    *(u32 *)(task + 0x28) = jpStartTextWindowTask(x, y, width, (u8)(height * 13 >> 3));
    if (duration == -2)
        jpInitSpriteResourceDescriptor(task + 0x2C, 0x50002, 0, 0x80000000, zero);
    if (*(u32 *)(task + 0x28) == 0)
        return 0;
    address = task + 0x69;
    two = 2;
    *address = two;
    {
        u8 next = y + 1;
        task[0x6A] = next;
    }
    task[0x68] = two;
    *(u32 *)(task + 0x60) = jpResolveMainResourceById(resource);
    cursor = (u16 *)(task + 0x6C);
    *cursor++ = zero;
    *cursor = zero;
    *(u32 *)(task + 0x74) = 1;
    cursor += 11;
    *(s32 *)cursor = duration;
    cursor -= 2;
    *cursor = zero;
    cursor -= 4;
    *cursor++ = zero;
    *cursor++ = zero;
    *cursor++ = zero;
    *cursor = zero;
    switch (*mode) {
    case 2: *(u8 **)(task + 0x64) = rows2 + jpDialogueRowIndex * 62; break;
    case 4: *(u8 **)(task + 0x64) = rows4 + jpDialogueRowIndex * 62; break;
    case 3: *(u8 **)(task + 0x64) = rows3 + jpDialogueRowIndex * 62; break;
    case 7: *(u8 **)(task + 0x64) = rows7 + jpDialogueRowIndex * 62; break;
    }
    *(void **)(task + 0xC) = jpTaskDialogueScriptWindow;
    *(u32 *)(task + 0x24) = 0;
    memory = sub_08001494(0x1000);
    *(void **)(task + 0x20) = memory;
    *(void **)(task + 0x10) = (u8 *)memory + 0xFFC;
    *(u32 *)(task + 8) = 0x15;
    *(u32 *)(task + 0) = 0;
    *(u32 *)(task + 0x18) = 0;
    sub_08000274(task, task);
    jpDialogueTaskUsed |= 1 << task[0x70];
    return task;
}

/* [EnqueueLinkEntityPosition] Japanese placement of EU EnqueueLinkEntityPosition (sub_080663A4): tag 0x92
 * link message with the entity id and +0x14/+0x18 position. Japanese enemy records are 0x454 bytes (EU
 * 0x2E0). */
u32 jp_sub_08068508(u32 index)
{
    register u32 count asm("r2") = jpLinkQueueCount;
    u8 *entry;
    u8 *source;
    if (count > 0x31) return 0;
    entry = jpLinkQueue + count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x92;
    { u8 *base = jpEnemies;
      source = (u8 *)(index * 0x454 + (u32)base); }
    *(u32 *)(entry + 8) = *(u16 *)(source + 2);
    *(u32 *)(entry + 0xC) = *(u32 *)(source + 0x14);
    *(u32 *)(entry + 0x10) = *(u32 *)(source + 0x18);
    entry[1] = 2;
    jpLinkQueueCount++;
    return 1;
}

/* [ExpandEncodedTextUnsignedNumberToken16] Japanese 16-bit-text form of EU
 * ExpandEncodedTextUnsignedNumberToken (sub_080850C0): skips the two-halfword header, copies until 0xFFFD
 * and replaces each 0xFFF7 token with the decimal digits of value (leading zeros dropped, glyph = digit +
 * 0xEF). Returns the last written halfword. */
u16 *jp_sub_08081E08(u16 *src, u16 value, u16 *dst)
{
    u16 n;
    u16 c;
    u16 *next;
    src += 2;
    n = 0;
    while ((c = *src) != 0xFFFD) {
        register u32 token asm("r1") = 0xFFF7;
        if (c == token) {
            s32 number;
            u32 *divisor;
            u16 *out;
            u32 started;
            u16 i;
            register s32 copy asm("r0") = value;
            asm("" : "+r"(copy));
            number = copy;
            divisor = jpDigitDivisors;
            out = dst + n;
            started = 0;
            i = 0;
            next = src + 1;
            do {
                u32 ch = sub_08000498(&number, *divisor) + 0xEF;
                *out = ch;
                if (started != 0 || (u16)ch != 0xEF || i == 5) {
                    out++;
                    started = 1;
                    n++;
                }
                i++;
                divisor++;
            } while (i <= 5);
        } else {
            dst[n++] = c;
            next = src + 1;
        }
        src = next;
    }
    dst[n] = 0xFFFD;
    return dst + (n - 1);
}

/* [RunLockedDialogue1261] Japanese placement of EU RunLockedDialogue1261 (sub_08058E54): shows dialogue
 * 0x1404ED with local input locked; turns no entity. */
void jp_sub_080318C4(void)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x001404ED);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunFacingDialogue263] Japanese placement of EU RunFacingDialogue263 (sub_08058F4C): shows dialogue
 * 0x140107 with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08031B58(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x00140107);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunFacingDialogue421] Japanese placement of EU RunFacingDialogue421 (sub_08059000): shows dialogue
 * 0x1401A5 with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08033198(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x001401A5);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunFacingDialogue422] Japanese placement of EU RunFacingDialogue422 (sub_080590B4): shows dialogue
 * 0x1401A6 with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08033250(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x001401A6);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunFacingDialogue423] Japanese placement of EU RunFacingDialogue423 (sub_08059168): shows dialogue
 * 0x1401A7 with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08033308(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x001401A7);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunPostRestInteractionDialogue] Japanese placement of EU RunPostRestInteractionDialogue (sub_08059250):
 * shows dialogue 0x1401E0 with local input locked; turns the entity toward the player without restoring its
 * facing. */
void jp_sub_08038448(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x001401E0);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunLockedDialogue292] Japanese placement of EU RunLockedDialogue292 (sub_08059374): shows dialogue
 * 0x140124 with local input locked; turns no entity. */
void jp_sub_0803B5A0(void)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x00140124);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunQuincyDialogue] Japanese placement of EU RunQuincyDialogue (sub_08059488): shows dialogue 0x14013B
 * with local input locked; turns the entity toward the player without restoring its facing. */
void jp_sub_0803B978(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014013B);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunRomblemDialogue] Japanese placement of EU RunRomblemDialogue (sub_08059534): shows dialogue 0x14013C
 * with local input locked; turns the entity toward the player without restoring its facing. */
void jp_sub_0803BA2C(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014013C);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunPelignDialogue] Japanese placement of EU RunPelignDialogue (sub_080595E0): shows dialogue 0x14013D
 * with local input locked; turns the entity toward the player without restoring its facing. */
void jp_sub_0803BAE0(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014013D);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunCognitoDialogue] Japanese placement of EU RunCognitoDialogue (sub_0805968C): shows dialogue 0x14013E
 * with local input locked; turns the entity toward the player without restoring its facing. */
void jp_sub_0803BB94(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014013E);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunDelongueDialogue] Japanese placement of EU RunDelongueDialogue (sub_08059738): shows dialogue 0x14013F
 * with local input locked; turns the entity toward the player without restoring its facing. */
void jp_sub_0803BC48(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014013F);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunVegitarDialogue] Japanese placement of EU RunVegitarDialogue (sub_080597E4): shows dialogue 0x140140
 * with local input locked; turns the entity toward the player without restoring its facing. */
void jp_sub_0803BCFC(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x00140140);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunHourseyDialogue] Japanese placement of EU RunHourseyDialogue (sub_08059AD0): shows dialogue 0x140217
 * with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08046CC0(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x00140217);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunHiryuDialogue] Japanese placement of EU RunHiryuDialogue (sub_08059B84): shows dialogue 0x140218 with
 * local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08046D78(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x00140218);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunOldieDialogue] Japanese placement of EU RunOldieDialogue (sub_08059C38): shows dialogue 0x140219 with
 * local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08046E30(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x00140219);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunActorMessage538] Japanese placement of EU RunActorMessage538 (sub_08059CEC): shows dialogue 0x14021A
 * with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08046EE8(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014021A);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunActorMessage539] Japanese placement of EU RunActorMessage539 (sub_08059DA0): shows dialogue 0x14021B
 * with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_08046FA0(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014021B);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunActorMessage383] Japanese placement of EU RunActorMessage383 (sub_08059E54): shows dialogue 0x14017F
 * with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_080485D4(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014017F);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [RunActorMessage384] Japanese placement of EU RunActorMessage384 (sub_08059F08): shows dialogue 0x140180
 * with local input locked; turns the entity toward the player and restores its facing afterwards. */
void jp_sub_0804868C(u32 arg0)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    jpTurnSceneEntityTowardEntity(arg0, 0);
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x00140180);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    jpRestoreSceneEntityFacingGradually(arg0);
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [ShowSceneInteractionMessage] Japanese placement of EU ShowSceneInteractionMessage (sub_0805A1B4): shows
 * dialogue 0x14022A with local input locked; turns no entity. */
void jp_sub_0805017C(void)
{
    u32 result;
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags |= 1;
    jpBeginLocalPlayerEventLock();
    while (jpIsAnyDialogueTaskSlotUsed() != 0) sub_080003F0();
    while (jpIsAnyTextWindowSlotUsed() != 0) sub_080003F0();
    result = jpStartFixedLayoutDialogueTask(1, 0xF, 2, 0, -1, 0x0014022A);
    while (jpDialogueStateIsComplete(result) == 0) {
        if (jpIsWorldTaskSuspendRequested() != 0) {
            jpCloseUsedDialogueWindowsAndWait();
            break;
        }
        sub_080003F0();
    }
    ((struct JpPlayer *)jpPlayers)[sub_080020F4()].flags &= ~1u;
    jpEndLocalPlayerEventLock();
}

/* [AddExperienceAndAdvanceOneLevel] Japanese placement of EU AddExperienceAndAdvanceOneLevel (sub_0801E4CC),
 * with the Japanese character-record layout: experience at +0x24, level at +0x28, the two growth fields at
 * +0x22/+0x38 (EU +0x1C/+0x20/+0x1A/+0x30). Returns 1 when a level was gained. */
s32 jp_sub_0801C87C(u8 *arg0, s32 arg1)
{
    s32 idx = sub_080020F4();
    u32 flags = jpPlayerArray[idx].flags;
    s32 n;
    u32 limit;

    if (flags & 0x2000) {
        return 0;
    }
    n = *(s32 *)(arg0 + 0x28);
    if ((u32)n > 0xC6) {
        return 0;
    }
    *(s32 *)(arg0 + 0x24) += arg1;
    limit = jpExperienceTable[n];
    if (*(u32 *)(arg0 + 0x24) < limit) {
        return 0;
    }
    *(s32 *)(arg0 + 0x28) = n + 1;
    *(u16 *)(arg0 + 0x22) += 4;
    *(u16 *)(arg0 + 0x38) += 1;
    jpPlayPlayerLevelUpEffect(&jpPlayerArray[sub_080020F4()]);
    return 1;
}

/* [HandleOverlapCallbackAndExit] Japanese placement of EU HandleOverlapCallbackAndExit (sub_08058334): when
 * the local player's box overlaps the given point box, starts the callback as a scene task from the 30-entry
 * pool at scene state +0xE34, then calls sub_0800035C. Japanese player records are 0x154 bytes. */
void jp_sub_0802A01C(u32 x, u32 y, u16 a, u16 b, u32 callback)
{
    u32 pos[2];
    u32 info;
    u32 packed;
    u8 *player = (u8 *)&jpPlayerPosition + sub_080020F4() * 0x154;
    info = 0x00200018;
    pos[0] = x << 8;
    pos[1] = y << 8;
    packed = a | ((u32)b << 16);
    if (jpTestFixedPointAxisAlignedBoxOverlap(player, pos, &info, &packed)) {
        struct Task *entry = (struct Task *)(jpSceneState + 0xE34);
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
