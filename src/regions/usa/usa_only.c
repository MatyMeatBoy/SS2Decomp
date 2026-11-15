/*
 * USA (AU2E) functions with no same-shaped EU counterpart.
 *
 * Built only by the regional reconstruction (make REGION=usa compare); the EU
 * build never compiles this directory. Symbols named usa_sub_XXXXXXXX and
 * usa_gUnk_XXXXXXXX are USA ROM/RAM addresses: the regional builder places each
 * usa_sub_ definition at its address and resolves the references, so nothing
 * here relies on EU addresses except the shared low helpers (StartTask,
 * ExtractQuotientAndStoreRemainder, HeapAllocate), which sit at the same
 * address in both ROMs.
 */
#include "global.h"

extern u8 usaDialogueTaskUsed asm("usa_gUnk_03005EBC");
extern u8 *usaDialogueTaskPool asm("usa_gUnk_03005EB8");
extern u32 usaDialogueRowIndex asm("usa_gUnk_03003590");
extern u32 usaLinkQueueCount asm("usa_gUnk_03006488");
extern u8 *usaLinkQueue asm("usa_gUnk_03006450");
extern u8 *usaEnemies asm("usa_gUnk_03005844");
extern u32 usaDigitDivisors[] asm("usa_gUnk_08540B8C");

extern u32 usaStartTextWindowTask(u32, u32, u32, u32) asm("usa_sub_0805D6E8");
extern void usaInitSpriteResourceDescriptor(void *, u32, u32, u32, u32) asm("usa_sub_08064FC0");
extern u32 usaResolveMainResourceById(u32) asm("usa_sub_08006E34");
extern void usaTaskDialogueScriptWindow(void) asm("usa_sub_0805E1DC");
extern u32 sub_08000498(s32 *, u32);

/* [CountRenderableScriptGlyphs16] USA 16-bit-text form of EU CountRenderableScriptGlyphs (sub_0801A638):
 * counts halfwords until the 0xFFFD terminator or any control halfword with bit 15 set. */
u32 usa_sub_0801A1C8(u16 *text)
{
    u32 n = 0;
    while (*text != 0xFFFD && !(*text & 0x8000)) {
        n++;
        text++;
    }
    return n;
}

/* [StartDialogueTaskAtLayout] Unreferenced in the USA ROM. Like EU StartFixedLayoutDialogueTask, but the
 * window position and size are arguments (height scaled by 13/8) and the stack is 0x1000 bytes without a retry
 * loop. The row-table pointer stored at task+0x64 for modes 2/3/4/7 is computed from four locals that the
 * original never initialises; other modes leave task+0x64 unwritten. */
u8 *usa_sub_0805E02C(u8 x, u8 y, u8 width, u8 height, s32 duration, u32 resource, u16 *mode)
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
    flags = usaDialogueTaskUsed;
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
    task = usaDialogueTaskPool + index * 0x88;
    {
        u8 *slot = task + 0x70;
        zero = 0;
        *slot = index;
    }
    *(u32 *)(task + 0x28) = usaStartTextWindowTask(x, y, width, (u8)(height * 13 >> 3));
    if (duration == -2)
        usaInitSpriteResourceDescriptor(task + 0x2C, 0x50002, 0, 0x80000000, zero);
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
    *(u32 *)(task + 0x60) = usaResolveMainResourceById(resource);
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
    case 2: *(u8 **)(task + 0x64) = rows2 + usaDialogueRowIndex * 62; break;
    case 4: *(u8 **)(task + 0x64) = rows4 + usaDialogueRowIndex * 62; break;
    case 3: *(u8 **)(task + 0x64) = rows3 + usaDialogueRowIndex * 62; break;
    case 7: *(u8 **)(task + 0x64) = rows7 + usaDialogueRowIndex * 62; break;
    }
    *(void **)(task + 0xC) = usaTaskDialogueScriptWindow;
    *(u32 *)(task + 0x24) = 0;
    memory = sub_08001494(0x1000);
    *(void **)(task + 0x20) = memory;
    *(void **)(task + 0x10) = (u8 *)memory + 0xFFC;
    *(u32 *)(task + 8) = 0x15;
    *(u32 *)(task + 0) = 0;
    *(u32 *)(task + 0x18) = 0;
    sub_08000274(task, task);
    usaDialogueTaskUsed |= 1 << task[0x70];
    return task;
}

/* [EnqueueLinkEntityPosition] USA placement of EU EnqueueLinkEntityPosition (sub_080663A4): tag 0x92 link
 * message with the entity id and +0x14/+0x18 position. USA enemy records are 0x454 bytes (EU 0x2E0). */
u32 usa_sub_08067CA4(u32 index)
{
    register u32 count asm("r2") = usaLinkQueueCount;
    u8 *entry;
    u8 *source;
    if (count > 0x31) return 0;
    entry = usaLinkQueue + count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x92;
    { u8 *base = usaEnemies;
      source = (u8 *)(index * 0x454 + (u32)base); }
    *(u32 *)(entry + 8) = *(u16 *)(source + 2);
    *(u32 *)(entry + 0xC) = *(u32 *)(source + 0x14);
    *(u32 *)(entry + 0x10) = *(u32 *)(source + 0x18);
    entry[1] = 2;
    usaLinkQueueCount++;
    return 1;
}

/* [ExpandEncodedTextUnsignedNumberToken16] USA 16-bit-text form of EU ExpandEncodedTextUnsignedNumberToken
 * (sub_080850C0): skips the two-halfword header, copies until 0xFFFD and replaces each 0xFFF7 token with the
 * decimal digits of value (leading zeros dropped, glyph = digit + 0x41). Returns the last written halfword. */
u16 *usa_sub_080813D8(u16 *src, u16 value, u16 *dst)
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
            divisor = usaDigitDivisors;
            out = dst + n;
            started = 0;
            i = 0;
            next = src + 1;
            do {
                u32 ch = sub_08000498(&number, *divisor) + 0x41;
                *out = ch;
                if (started != 0 || (u16)ch != 0x41 || i == 5) {
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
