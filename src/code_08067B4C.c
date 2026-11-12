#include "global.h"

extern u32 gUnk_03006338;

extern s32 gUnk_03005CF4;
#ifdef NONMATCHING

#endif

/* [UnusedNoOpStub8] Lines 10-12 define an empty leaf; no direct source callers found. */
void sub_08067B4C(void) {

}
/* [QueueLinkPlayerClassAndPalette] Queues message 0x82 containing the halfwords from profile gUnk_030034E0+0xA
 * and +0xC packed into one word; receiver writes player +0xC/+0xE and, for remote senders, +0x64 (halfword)
 * and +0x66 (byte). The pair is the profile class halfword and palette-selector halfword: receiver class
 * writes remain halfwords, while the remote rendering palette mirror consumes only the low byte of the second
 * halfword. Valid ranges and meanings of unused high palette bits are not established. */
u32 sub_08067B50(void)
{
    u8 *entry;
    u8 *source;
    u32 *count = &gUnk_03006338;
    if (*count > 0x31) return 0;
    entry = (u8 *)gUnk_03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x82;
    source = (u8 *)gUnk_030034E0;
    *(u32 *)(entry + 8) = *(u16 *)(source + 0xA) | ((u32)*(u16 *)(source + 0xC) << 16);
    entry[1] = 1;
    (*count)++;
    return 1;
}
/* [EnqueueLinkFieldItemSpawnIfAbsent] Matched producer sub_08067B9C enqueues tag 0x97 in the 0x88-byte link
 * queue; 3 eight-byte chunks. Payload: u32+0 X; u32+4 Y; bytes+8..17 item record. */
u32 sub_08067B9C(u32 arg0, u32 arg1, void *source)
{
    u32 count = gUnk_03006338;
    u8 *entry;

    if (count > 0x31)
        return 0;
    if (source != NULL) {
    entry = (u8 *)gUnk_03006300 + count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x97;
    *(u32 *)(entry + 8) = arg0;
    *(u32 *)(entry + 0xC) = arg1;
    CpuSet(source, entry + 0x10, 0x04000004);
    entry[1] = 3;
    gUnk_03006338++;
    return 1;
    }
}
/* [ConsumeDefaultLinkBarrierToken] Passes fixed token 0x37564 to 65E38, removing at most its first matching
 * local ring entry per current participant. Does not send a barrier token, wait until a peer arrives, clear
 * all ring values or guarantee every duplicate is gone. Default/common identifies the shared literal used by
 * the inspected phase barrier, not a global game-mode enum. */
void sub_08067BF8(void) {
    sub_08065E38(0x37564);
}
/* [AllParticipantsHaveDefaultLinkBarrierToken] Returns 682B8(0x37564) unchanged. The callee captures current
 * participant count, scans each local ten-word ring through its inclusive cursor for an equal token and
 * returns whether every participant had a match. It does not remove tokens, wait, send or validate membership
 * data. Zero participants produce true vacuously; no positive-count invariant is inferred. Rings include the
 * local participant, so this is not a remote-only readiness or hardware-handshake query. */
s32 sub_08067C08(void) {
    return sub_080682B8(0x37564);
}
/* [TryEnqueueDefaultLinkBarrierToken] Returns 68330(0x37564) unchanged. The callee returns 0 when outgoing
 * count>49 or the local participant ring cursor>9; otherwise appends ready status 1/tag 0x84/one-chunk queue
 * data with token in the first payload word, increments queue count and returns 1. The trailing four chunk
 * bytes are not initialized here. No wait, token-presence check, token consumption, parent-only gate or
 * successful-delivery guarantee is added. */
s32 sub_08067C18(void) {
    return sub_08068330(0x37564);
}
/* [TryEnqueueEnemyRemovalByStoredSpawnRecord] Rejects when outgoing queue count exceeds 49. Otherwise creates
 * a 0x88-byte queue record with tag 0x87, word+4=1 and one payload chunk, copying exactly the 32-bit word
 * dereferenced through the supplied argument to entry+8 (payload word 0). Increments queue count and returns
 * 1; rejection returns 0. The payload is the stored spawn-record pointer, not the address of its table slot or
 * a player/enemy enumeration. No actor is removed synchronously. */
u32 sub_08067C28(const u32 *arg0)
{
    u8 *entry;
    u32 *n = (u32 *)0x03006338;
    if (*n > 0x31)
        return 0;
    entry =  *(u8 **)0x03006300 + *n * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x87;
    *(u32 *)(entry + 8) = *arg0;
    entry[1] = 1;
    (*n)++;
    return 1;
}
/* [TryEnqueueEnemyRemovalById] Returns 0 when the outgoing queue count exceeds 49. Otherwise selects
 * base+count*0x88, writes queue word+4=1, tag 0x88, the complete 32-bit argument to entry+8 (payload word 0)
 * and chunk count 1, increments the count and returns 1. It does not dereference or narrow the argument. Only
 * the first four payload bytes are initialized here; one wire chunk carries eight bytes, and this receiver
 * uses its first word. */
s32 sub_08067C68(s32 arg0)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x88; *(u32 *)(p + 8) = arg0; p[1] = 1;
    gUnk_03006338++; return 1;
}
/* [QueueRemoteEntityFullHpDamage] Queues message 0x89 with the full incoming r0 word as entity ID. Receiver
 * only for a remote sender scans five active entity slots, compares the payload word against entity ID
 * halfword +2, sets state halfword +0xC to 10, ORs flag halfword +0x7A with 0x80, and copies HP halfword +0x5C
 * into damage halfword +0x4A and zero-extended word +0x4C. This is a request; the producer does not apply
 * damage or prove death. Complete producer body: unsigned queue count >49 returns 0 without modifying the
 * queue; accepted path uses 0x88-byte entry, stores word 1 at +4, message byte at +0, payload at +8,
 * chunk-count byte at +1, increments count, returns 1. */
s32 sub_08067CA8(s32 arg0)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x89; *(u32 *)(p + 8) = arg0; p[1] = 1;
    gUnk_03006338++; return 1;
}
/* [QueueEntityFullHpDamageRequest] Queues message 0xB0 with the full incoming r0 word, despite the matched
 * source void-pointer parameter. Receiver scans five active entity slots, compares that word to entity ID
 * halfword +2, ORs flag halfword +0x7A with 0x80, sets state halfword +0xC to 10, and copies HP halfword +0x5C
 * into damage halfword +0x4A and zero-extended word +0x4C. Unlike message 0x89 there is no own-sender
 * exclusion. This is a request, not proven death completion. Complete producer body: unsigned queue count >49
 * returns 0 without modifying the queue; accepted path uses 0x88-byte entry, stores word 1 at +4, message byte
 * at +0, payload at +8, chunk-count byte at +1, increments count, returns 1. */
u32 sub_08067CE8(void *arg0)
{
    u8 *entry;
    u32 *n = (u32 *)0x03006338;
    if (*n > 0x31)
        return 0;
    entry =  *(u8 **)0x03006300 + *n * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xB0;
    *(void **)(entry + 8) = arg0;
    entry[1] = 1;
    (*n)++;
    return 1;
}
/* [EnqueueLinkStatusRecordUpdate] Matched producer sub_08067D28 enqueues tag 0x8B in the 0x88-byte link queue;
 * 1 eight-byte chunks. Payload: 8 bytes: byte+0 target ID; byte+1 status key; u16+4 status amount. */
u32 sub_08067D28(const void *source)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0x8B;
        CpuSet(source, entry + 8, 0x04000002);
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
/* [EnqueueLinkPlayerFlags] Matched producer sub_08067D74 enqueues tag 0x8C in the 0x88-byte link queue; 1
 * eight-byte chunks. Payload: u32+0 = local Player+30 flags. */
u32 sub_08067D74(void)
{
    u32 index = gUnk_03006338;
    u8 *entry;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x8C;
    *(u32 *)(entry + 8) = gUnk_03003CE0[sub_080020F4()].flags;
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
/* [QueueLinkSceneExitWithDestination] Complete original08067DC8..08067E08 audited ROM=ELF. No argument read.
 * If queue count<=49 append tag8D,flagsword+4=1,current sceneWORD+40
 * atpayload+8,byte1=1,incrementcount,return1; otherwise0. Declares8payloadbytes but initializes4.
 * Receiver6690C at src/code_080659B0.c1182 writes sceneWORD+40 frommessage and calls56E64, which sets
 * scenehalfwordflags bit4 tested by56E90; caller245CC src/code_08021DC4.c2493 sets destination before retrying
 * enqueue, while other callers8FD88 atsrc/code_0808FB5C.c154 enqueue aftercredits and wait while56E90==0
 * and21A8==0, yielding1; this wait can end on21A8 without scene-exit flag. Together anchor scene
 * exit/transition request carrying current destination. */
s32 sub_08067DC8(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x8D;
    *(u32 *)(p + 8) = *(u32 *)((u8 *)(uintptr_t)gUnk_03005CF4 + 0x40); p[1] = 1;
    gUnk_03006338++; return 1;
}
 s32 sub_08067E08(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x90;
    *(u32 *)(p + 8) = *(u32 *)((u8 *)(uintptr_t)gUnk_03005CF4 + 0x3C); p[1] = 1;
    gUnk_03006338++; return 1;
}
/* [IsOutgoingLinkHeadMarkedSending] Returns exactly whether the first outgoing record at global 03006300 has
 * full status word+4 equal to2. It does not read queue count, validate/null-check the buffer, inspect a live
 * sender task, wait, query acknowledgements or prove a peer transfer is active. The name records a sending
 * marker, not actual completion/busy status. */
s32 sub_08067E48(void)
{
    return M2C_FIELD(gUnk_03006300, u32 *, 4) == 2;
}
/* Remove the queued link message with tag 0x91 whose u16 at +0xE equals `arg` (shift the queue down). */
/* [RemovePendingEnemyActionStateBySpawnId] Scans outgoing 0x88-byte records while index<current count. Removes
 * only full status word 1/tag 0x91 records whose payload halfword+6 equals the full 32-bit argument; arguments
 * above 65535 cannot match and are not narrowed. For a match, CpuSet copies the fixed trailing-capacity slice
 * from next record onto current using word count(49-index)*34, masked to 21 bits, then decrements count. It
 * advances the index/pointer even after a removal, so adjacent matching records can be skipped. No explicit
 * vacated-tail/status clearing, in-flight status 2 removal, input-count clamp, scheduler wait or meaningful
 * success-return contract is provided. */
s32 sub_08067E60(u32 arg)
{
    u8 *p;
    u32 i;

    p = (u8 *)(uintptr_t)gUnk_03006300;
    for (i = 0; i < (u32)gUnk_03006338; i++, p += 0x88) {
        if (*(u32 *)(p + 4) == 1 && p[0] == 0x91 && *(u16 *)(p + 0xE) == arg) {
            CpuSet(p + 0x88, p, (((0x31 - i) * 0x22) & 0x1FFFFF) | 0x04000000);
            gUnk_03006338--;
        }
    }
}
/* [TryEnqueueTwoChunkSceneEncounterFinishedNotification] Returns 0 when the outgoing link queue count
 * 0x03006338 exceeds 49. Otherwise writes a 0x88-byte entry with tag 0x93, word +4 = 1, payload word +8 = 0
 * and chunk count 2, increments the count and returns 1. docs/LINK_MESSAGES.md: the receiver calls
 * MarkSceneEncounterFinished and ignores the payload; this is the two-chunk sibling of
 * TryEnqueueSingleChunkSceneEncounterFinishedNotification. */
s32 sub_08067EC8(void)
{
    u8 *p;
    u32 z;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1;
    z = 0;
    *p = 0x93;
    *(u32 *)(p + 8) = z;
    p[1] = 2;
    gUnk_03006338++;
    return 1;
}
#ifdef NONMATCHING
static s32 sub_08067Fxx(s32 a, s32 b, s32 c, u8 type)
{ u8 *p; if (gUnk_03006338 > 0x31) return 0; p=(u8 *)(uintptr_t)gUnk_03006300+gUnk_03006338*0x88; *(u32 *)(p+4)=1; *p=type; *(u32 *)(p+8)=(b<<16)|a; *(u32 *)(p+0xc)=c; p[1]=1; gUnk_03006338++; return 1; }
#endif
/* [EnqueueLinkActorConsumableEffect] Matched producer sub_08067F04 enqueues tag 0x9C in the 0x88-byte link
 * queue; 1 eight-byte chunks. Payload: u16+0 consumable ID; u16+2 target actor ID; u32+4 scaling value. */
s32 sub_08067F04(s32 a, s32 b, s32 c)
{
    u8 *entry;
    if (gUnk_03006338 > 0x31) return 0;
    entry = (u8 *)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9C;
    *(u32 *)(entry + 8) = (b << 16) | a;
    *(u32 *)(entry + 0xC) = c;
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
/* [TryEnqueueLinkItemDelivery] Returns 0 when outgoing link queue count exceeds 49. Otherwise marks one
 * pending entry, tag0x9D, payload word at entry+8=(a<<16)|b and entry+0xC=c, sets one 8-byte chunk, increments
 * count and returns1. Callers in code_0805A630.c pass (itemId,recipientIndex,power); the receiver compares the
 * LOW halfword of payload word0 with local player ID and uses the HIGH halfword as item ID for a kind1 item.
 * It passes word1 to sub_0805BD5C; if that operation fails, tries adding the item to the bag, and re-drops it
 * at the local player position if adding also fails. Producer operands are not independently masked; no
 * arbitrary-input field separation or delivery/completion guarantee is claimed. */
s32 sub_08067F4C(s32 a, s32 b, s32 c)
{
    u8 *entry;
    if (gUnk_03006338 > 0x31) return 0;
    entry = (u8 *)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9D;
    *(u32 *)(entry + 8) = (a << 16) | b;
    *(u32 *)(entry + 0xC) = c;
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
/* [TryEnqueueCoordinatedAttackRequest] Rejects unsigned outgoing count greater than 49, returning 0. Otherwise
 * selects queue base+count*0x88, writes word+4=1 and tag 0x9E, stores exactly (c << 16) | (b << 8) | a to
 * payload+8, sets chunk count 1, increments the queue count and returns 1. All three arguments are full 32-bit
 * operands with no masks before the ORs. Only the first four payload bytes are initialized here, although the
 * transmitted chunk carries eight bytes. */
u32 sub_08067F94(u32 a, u32 b, u32 c)
{
    u8 *entry;
    u32 *count = &gUnk_03006338;
    if (*count > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9E;
    *(u32 *)(entry + 8) = (c << 16) | (b << 8) | a;
    entry[1] = 1;
    (*count)++;
    return 1;
}
/* [EnqueueLinkClassSkillEffect] Matched producer sends tag 0xA0 in one 8-byte chunk: first parameter in high
 * 16, second in low 16. Second parameter 0 returns success without enqueue; the local parameter name handle is
 * not semantic proof. */
u32 sub_08067FE0(u16 value, u16 handle)
{
    u32 index = gUnk_03006338;
    u8 *entry;
    if (index > 0x31)
        return 0;
    if (handle == 0)
        return 1;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA0;
    *(u32 *)(entry + 8) = handle | ((u32)value << 16);
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
/* [QueueLinkEnemyCriticalHitMarker] Complete original08068030..08068070 audited ROM=ELF. ABI r0 full word,
 * caller1F374 at src/code_0801E244.c1034 supplies target unique halfword id only after critical-hit branch
 * passes. That branch computes chance for source class2, requests sound0x132 and sets critical=1. Sender
 * appends tagA1,flagsword+4=1,payloadword+8=r0,byte1=1 at queue stride136; count<=49 required, returns1 on
 * enqueue else0, no coalescing/wait. One8-byte chunk declared but only4bytes initialized. */
u32 sub_08068030(u32 value)
{
    u32 *count = (u32 *)0x03006338;
    u8 *entry;
    if (*count > 0x31) return 0;
    entry = *(u8 **)0x03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA1;
    *(u32 *)(entry + 8) = value;
    entry[1] = 1;
    (*count)++;
    return 1;
}
/* [EnqueueLinkSceneCallbackTask] Enqueues tag 0xA3, one 8-byte chunk: payload word 0=a(callback), word
 * 1=b(argument). */
u32 sub_08068070(u32 a, u32 b) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xA3;*(u32 *)(e+8)=a;*(u32 *)(e+0xC)=b;e[1]=1;(*n)++;return 1; }
/* [TryEnqueueEnemyEffectByKey] Returns 0 when outgoing count exceeds 49. Otherwise writes a 0x88-byte queue
 * record with tag 0xA2, word+4=1, the complete first argument at entry+8 (payload word 0) and complete second
 * argument at entry+0xC (payload word 1), chunk count 1, then increments count and returns 1. These two words
 * fill one eight-byte wire chunk. The producer does not narrow either value or synchronously modify an enemy. */
u32 sub_080680B4(u32 a, u32 b) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xA2;*(u32 *)(e+8)=a;*(u32 *)(e+0xC)=b;e[1]=1;(*n)++;return 1; }
/* [EnqueueLinkEligiblePlayerCentroidAreaAttack] Matched producer enqueues tag 0xA5 after 0CFF0 gate and 0CFC8
 * update. It writes caller value but receiver does not use that payload. */
u32 sub_080680F8(u32 value)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        sub_0800CFC8();
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA5;
        *(u32 *)(entry + 8) = value;
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
/* [TryEnqueuePlayerRevivalRequest] Returns 0 if outgoing queue count exceeds 49 or 0CFF0 returns nonzero.
 * Otherwise rereads the count after that helper, writes tag 0xA7 with queue word+4=1, the full argument as
 * entry+8 (payload word 0) and chunk count 1, increments count and returns 1. Only the first four payload
 * bytes are initialized here despite the eight-byte chunk. It does not reserve/set the operation gate or
 * synchronously change player health. The helper0CFF0 queries scene word0x03003478 bit18; this is a software
 * operation gate, not a connectivity check. */
u32 sub_08068144(u32 value)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA7;
        *(u32 *)(entry + 8) = value;
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
/* [EnqueueLinkTimedAreaDamageEffect] Matched producer sends tag 0xA8 in two chunks: owner/subtype packed in
 * word 0, X/Y in words 1/2 and extra value in word 3. Gate 0CFF0 must be clear. */
s32 sub_0806818C(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA8;
        *(u32 *)(entry + 8) = (arg1 << 16) | arg0;
        *(u32 *)(entry + 0xC) = arg2;
        *(u32 *)(entry + 0x10) = arg3;
        *(u32 *)(entry + 0x14) = arg4;
        entry[1] = 2;
        (*count)++;
        return 1;
    }
    return 0;
}
/* [QueueLinkSaveAndConditionalResetRequest] Complete original producer preserves full incoming r0 word,
 * rejects unsigned queue count>49 or global03003478 bit18 set (sub_0800CFF0), otherwise constructs0x88-byte
 * queue record: word+4=1, byte+0=0xA9, word+8=r0, byte+1=1 and count++. Returns1 only for enqueue,0 for
 * rejection. Declares8-byte payload chunk while initializing only first4payload bytes; trailing bytes retain
 * prior contents. Receiver passes first word to sub_08065C50, which starts save/conditional-reset entry
 * sub_08064E14 only when its task control is idle. No evidence payload is a callback. No guarantee of
 * transport delivery, task startup, save success or reset completion. */
u32 sub_080681F4(u32 callback)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA9;
        *(u32 *)(entry + 8) = callback;
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
/* Enqueue message 0xAA (lobby/setting block) unless sub_0800CFF0() says no. */
/* [EnqueueLinkRepeatingAreaDamageEffect] Matched producer sends tag 0xAA in two chunks, with packed
 * owner/subtype then X/Y/extra word, gated by 0CFF0. */
u32 sub_0806823C(u32 a, s32 b, u32 c, u32 d, u32 e)
{
    u8 *p;
    if (gUnk_03006338 < 0x32 && sub_0800CFF0() == 0) {
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0xAA;
        *(u32 *)(p + 8) = (b << 16) | a;
        *(u32 *)(p + 0xC) = c;
        *(u32 *)(p + 0x10) = d;
        *(u32 *)(p + 0x14) = e;
        p[1] = 2;
        gUnk_03006338++;
        return 1;
    }
    return 0;
}
/* [LinkIsMessageQueueFull] Returns1 when outgoing message count03006338 exceeds49, else0. Queue capacity50
 * follows allocation65CA8 and enqueue guards. */
u32 sub_080682A4(void)
{
    if (gUnk_03006338 > 0x31)
        return 1;
    return 0;
}
/* [LinkAllPeersContainRingValue] For each connected peer scans ring entries0 through its stored index
 * inclusive; returns whether every peer contains input value. Does not execute or validate that value as a
 * callback. */
s32 sub_080682B8(s32 callback)
{
    extern u32 counts[] asm("gUnk_03006210");
    extern s32 entries[][10] asm("gUnk_03006260");
    u32 count = sub_08002164();
    u32 found = 0;
    u32 i;
    u32 j;
    for (i = 0; i < count; i++) {
        for (j = 0; j <= counts[i]; j++) {
            if (entries[i][j] == callback) {
                found++;
                break;
            }
        }
    }
    return count == found;
}
/* [LinkEnqueueRingValueBroadcast] Rejects full50-entry outgoing queue or local ring index>9; enqueues pending
 * tag0x84 with input word and one8-byte payload chunk. No callback execution occurs in this sender. */
s32 sub_08068330(s32 callback)
{
    extern u32 states[] asm("gUnk_03006210");
    u32 player;
    u8 *entry;
    u32 *count = &gUnk_03006338;
    if (*count > 0x31)
        return 0;
    player = sub_080020F4();
    if (states[player] > 9)
        return 0;
    entry = (u8 *)gUnk_03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x84;
    *(u32 *)(entry + 8) = callback;
    entry[1] = 1;
    (*count)++;
    return 1;
}
/* [LinkClearConnectedPeerRings] For each connected peer writes -1 to ten ring words and resets peer stored
 * index to0. Disconnected peer slots are not visited. */
void sub_08068384(void)
{
    extern u32 records[][10] asm("gUnk_03006260");
    extern u32 states[] asm("gUnk_03006210");
    u32 i;
    u32 count = sub_08002164();
    for (i = 0; i < count; i++) {
        u32 j;
        for (j = 0; j < 10; j++) {
            records[i][j] = (u32)-1;
            states[i] = 0;
        }
    }
}
/* [RemoveDefaultLinkBarrierTokenMatches] Passes fixed common token 0x37564 to 65F08. Mutates local participant
 * rings by its forward matching-removal algorithm, which can skip adjacent duplicates after a shift. Does not
 * clear all ring values, broadcast a cancellation, wait or guarantee complete token removal. This differs from
 * 67BF8, which stops after the first matching entry per participant. */
void sub_080683CC(void) {
    sub_08065F08(0x37564);
}
/* [LinkCountPeersContainingRingValue] Counts connected peers whose inclusive0..stored-index ring scan contains
 * the supplied word, counting at most once per peer. Does not invoke callbacks. */
s32 sub_080683DC(s32 callback)
{
    extern u32 counts[] asm("gUnk_03006210");
    extern s32 entries[][10] asm("gUnk_03006260");
    u32 count = sub_08002164();
    u32 found = 0;
    u32 i;
    u32 j;
    for (i = 0; i < count; i++) {
        for (j = 0; j <= counts[i]; j++) {
            if (entries[i][j] == callback) {
                found++;
                break;
            }
        }
    }
    return found;
}
/* [TryEnqueueSharedEnemyActionChoice] Narrows the input to one unsigned byte. Returns 0 when outgoing count
 * 03006338 exceeds 49; otherwise appends one 0x88-byte queue record at 03006300, with status word +4=1, tag
 * 0xAC, zero-extended value at payload word +8 and chunk count +1=1, then increments the count and returns 1.
 * No parent, peer, enemy ID, sentinel or action-range validation occurs here. It initializes only the first
 * four payload bytes of the eight-byte chunk; the trailing word is not promised zero. Enqueue success is not a
 * delivery or synchronization guarantee. */
u32 sub_08068450(u8 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xAC;*(u32 *)(e+8)=value;e[1]=1;(*n)++;return 1; }
/* [GetSharedEnemyActionChoice] Returns the unsigned byte latch 0300636C unchanged, without clearing or
 * consuming it. It is one shared global latch, not a per-player or per-enemy queue. Value 0xFF is the waiting
 * sentinel in the inspected enemy consumers; this getter accepts every stored byte and imposes no global
 * action enum. */
u8 sub_08068490(void) {
    return gUnk_0300636C;
}
/* [ResetSharedEnemyActionChoice] Sets shared latch 0300636C to the waiting sentinel 0xFF. Does not send a
 * packet, clear queued messages, wait, reset an actor phase or consume an acknowledgement. The original leaves
 * incoming R0 unchanged on return; the pinned C returns its input word, and existing callers may use a void
 * alias. No Boolean success return is inferred. */
u32 sub_0806849C(u32 a)
{
    gUnk_0300636C = 0xFF;
    return a;
}
/* [EnqueueLinkByte173] Checks queue count <=49, appends active tag 0xAD entry at stride 0x88, zero-extends u8
 * payload, sets chunk count one and increments the queue. */
u32 sub_080684A8(u8 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xAD;*(u32 *)(e+8)=value;e[1]=1;(*n)++;return 1; }
/* [GetReceivedLinkByte173] Returns u8 global 03006224. */
u8 sub_080684E8(void) {
    return gUnk_03006224;
}
/* [ResetReceivedLinkByte173] Writes 0xFF to byte 03006224 and supplies no C return value. */
unsigned int sub_080684F4(void)
{
  gUnk_03006224 = 0xFF;
}
/* [EnqueueLinkByte174] Checks queue count <=49, appends active tag 0xAE entry at stride 0x88, zero-extends u8
 * payload, sets chunk count one and increments the queue. */
u32 sub_08068500(u8 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xAE;*(u32 *)(e+8)=value;e[1]=1;(*n)++;return 1; }
/* [GetReceivedLinkByte174] Returns u8 global 03006228. */
u8 sub_08068540(void) {
    return gUnk_03006228;
}
/* [ResetReceivedLinkByte174] Writes 0xFF to byte 03006228, with no explicit C return. */
int sub_0806854C(void)
{
  gUnk_03006228 = 0xFF;
}
/* [TryEnqueueSingleChunkSceneEncounterFinishedNotification] Returns 0 if unsigned outgoing queue count exceeds
 * 49. Otherwise writes a 0x88-byte entry with tag 0xAF, word+4=1, payload word+8=1 and chunk count 1,
 * increments count and returns 1. One chunk carries eight bytes, but the remaining payload word is not
 * initialized here. It does not directly set the local scene marker or wait for delivery. */
s32 sub_08068558(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1;
    *p = 0xAF;
    *(u32 *)(p + 8) = 1;
    p[1] = 1;
    gUnk_03006338++;
    return 1;
}
/* [LinkPopOutgoingMessage] Decrements outgoing count, treats signed-negative result as0, shifts
 * remaining0x88-byte records left via memcpy and clears final record active field+4. Overlapping memcpy
 * semantics follow original source/runtime. */
void sub_08068590(void)
{
    u8 *records;
    u32 i;

    gUnk_03006338--;
    if ((s32)gUnk_03006338 < 0)
        gUnk_03006338 = 0;
    records = (u8 *)gUnk_03006300;
    for (i = 0; i < gUnk_03006338; i++)
        memcpy(records + i * 0x88, records + (i + 1) * 0x88, 0x88);
    *(u32 *)(records + i * 0x88 + 4) = 0;
}
/* [LinkPayloadBytesToEightByteChunks] Rounds unsigned byte count up to next multiple of8 then divides by8.
 * Arithmetic wraps at32bits; do not infer overflow-safe mathematical ceiling for all inputs. */
u32 sub_080685F0(u32 n)
{
    u32 rem = n & 7;
    if (rem != 0)
        n += 8 - rem;
    return n >> 3;
}
/* [CancelLinkMessageTasks] Cancels two global task objects03006310/03006230, outgoing sender task03006368 and
 * four0x28-byte peer tasks03006258 when active. Does not free queue allocations itself. */
void sub_08068600(void)
{
    extern u8 taskA[] asm("gUnk_03006310");
    extern u8 taskB[] asm("gUnk_03006230");
    u32 i;

    if (sub_08000470((u32)taskA) != 0)
        sub_080003A8((u32)taskA);
    if (sub_08000470((u32)taskB) != 0)
        sub_080003A8((u32)taskB);
    if (sub_08000470(gUnk_03006368) != 0)
        sub_080003A8(gUnk_03006368);

    for (i = 0; i < 4; i++) {
        if (sub_08000470(gUnk_03006258 + i * 0x28) != 0)
            sub_080003A8(gUnk_03006258 + i * 0x28);
    }
}
