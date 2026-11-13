#include "global.h"
/* Declared here with the return type of its definition: the call sites ignore the result either way. */
extern void sub_0802939C(s32, s32);

extern u8 *state44 asm("gUnk_03005CF4");
extern u8 players44[] asm("gUnk_03003CE0");
/* [ShowEventGatedMessage221] 1BA/1C6 bit4 gates literal resource1400DD; suspension breaks only completion
 * loop. */
void sub_080443EC(void)
{
    u8 *flag;
    u32 message;
    u8 *player;
    register s32 offset asm("r2");
    s32 multiplier;
    s32 bit;
    register s32 one asm("r0");
    register s32 raw asm("r0");
    if (sub_0800CE30())
        flag = state44 + 0x1C6;
    else
        flag = state44 + 0x1BA;
    raw = *flag;
    
    bit = raw >> 4;
    one = 1;
    bit &= one;
    if (bit == 0) {
        offset = sub_080020F4();
        multiplier = 0x14C;
        offset *= multiplier;
        player = players44 + offset;
        *(u32 *)(player + 0x30) |= 1;
        sub_0800D0F4();
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        message = sub_0805DF38(1, 15, 2, 0, -1, 0x1400DD);
        while (sub_0805EEFC((void *)message) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        offset = sub_080020F4();
        multiplier = 0x14C;
        offset *= multiplier;
        player = players44 + offset;
        *(u32 *)(player + 0x30) &= ~1;
        sub_0800D108();
    }
}
/* [RunProgressFiveActorSequence] kind0x9000D; resources1401C4/1401C6 mode45; actor state+36=4;
 * progress1B3/1BF=5 before final completion wait. */
void sub_080444C0(void)
{
    u32 actor;
    u32 message;
    u32 i;
    s32 upperOffset;
    s32 lowerOffset;
    u8 *slot;
    u8 *flag;
    actor=sub_080289C0(0x9000D,0xF0,0xE6);
    if (sub_0800CE30()) {
        upperOffset = 0x1BF;
        flag = state44 + upperOffset;
    } else {
        lowerOffset = 0x1B3;
        flag = state44 + lowerOffset;
    }
    if (*flag != 5) {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        message=sub_0805DF38(1,15,2,0,0x2D,0x1401C4);
    } else {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        message=sub_0805DF38(1,15,2,0,0x2D,0x1401C6);
    }
    sub_08028AAC(actor,0xF0,0x88,0x3C);
    slot=state44+0x7A4;
    i=0;
    while (*(u32 *)slot != actor) {
        i++;
        slot += 0x70;
        if (i > 14) {
            sub_080003F0();
            slot = NULL;
            break;
        }
    }
    if(slot)*(u16 *)(slot+0x36)=4;
    actor = 5;
    
    if (sub_0800CE30()) {
        upperOffset = 0x1BF;
        flag = state44 + upperOffset;
    } else {
        lowerOffset = 0x1B3;
        flag = state44 + lowerOffset;
    }
    *flag=actor;
    actor=message;
    while(!sub_0805EEFC((void *)actor))sub_080003F0();
}

struct Trade44 {
    u32 msgNone0, msgNone1, msgDone, msgAsk, msgYes, msgNo, msgGive;
    u32 itemType, itemId, itemCount;
    u32 rewardType, rewardId, rewardCount, flag, once;
};
struct Slot44 { u16 type, id; u8 pad[12]; };
struct Inv44 { u8 pad[0x150]; struct Slot44 slots[25]; };
struct GrantM44 {s16 type,id;u8 payload[12];};
struct CurrencyM44 {s16 type;u16 padding;s32 amount;u8 extra[8];};
extern const struct Trade44 trades44[] asm("gUnk_084B1C50");
extern u8 *state5E8 asm("gUnk_03005CF4");
struct Player44 { u8 pad[0x30]; u32 flags; u8 pad2[0x11E - 0x34]; u16 mark; u8 pad3[0x14C-0x120]; };
extern struct Player44 players5E8[] asm("gUnk_03003CE0");
struct Rec44 { u16 a, id; u8 pad[0x2DC]; };
extern struct Rec44 *records5E8 asm("gUnk_030056F4");
extern struct Inv44 *inventory5E8 asm("gUnk_030034E0");
extern u32 audioFlags5E8 asm("gUnk_030027D0");
extern void rec5E8(u32, u32) asm("sub_08019EB8");
extern u32 emit5E8(void *) asm("sub_0805AB20");

static inline void msg5E8(u16 id)
{
    u32 h;
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    h = sub_0805DF38(1, 15, 2, 0, -1, id | 0x140000);
    while (!sub_0805EEFC((void *)h)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
}
static inline u32 ask5E8(u16 id)
{
    u32 h;
    while (sub_0805F184()) sub_080003F0();
    h = sub_0805DF38(1, 15, 2, 0, -2, id | 0x140000);
    while (!sub_0805EEFC((void *)h)) sub_080003F0();
    return sub_0805EF14((u8 *)h);
}
static inline u8 *find5E8(u32 actor)
{
    u8 *p;
    register u32 i asm("r3");
    s32 raw = (s32)state5E8;
    u32 off = 0x7A4;
    p = (u8 *)raw + off;
    i = 0;
    do {
        if (*(u32 *)p == actor) return p;
        i++;
        p += 0x70;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
static inline u32 count5E8(u32 type, u32 id)
{
    u32 count = 0;
    u32 i;
    for (i = 0; i <= 24; i++) {
        if (inventory5E8->slots[i].type == type && inventory5E8->slots[i].id == id)
            count++;
    }
    return count;
}
static inline void remove5E8(u32 type, u32 id, u32 n)
{
    u32 i;
    for (i = 0; i <= 24; i++) {
        if (inventory5E8->slots[i].type == type && inventory5E8->slots[i].id == id) {
            n--;
            inventory5E8->slots[i].type = 0;
            inventory5E8->slots[i].id = 0;
            if (n == 0) break;
        }
    }
}
static inline void give5E8(u32 type, u32 id, u32 n)
{
    u32 i;
    if (type != 10) {
        struct GrantM44 grant;
        grant.type = type;
        grant.id = id;
        for (i = 0; i <= 11; i++) grant.payload[i] = 0;
        for (i = 0; i < n; i++) emit5E8(&grant);
    } else {
        struct CurrencyM44 coin;
        for (i = 0; i < n; i++) {
            coin.type = 10;
            coin.amount = id;
            emit5E8(&coin);
        }
    }
}
static inline void setflag5E8(u32 flag)
{
    if (flag != 0) {
        register u8 *p asm("r1");
        u32 bit = flag;
        u32 byte = bit >> 3;
        bit &= 7;
        if (sub_0800CE30()) p = state5E8 + 0x1C3;
        else p = state5E8 + 0x1B7;
        p += byte;
        *p |= 1 << bit;
    }
}
static inline void mark5E8(u32 target)
{
    u32 actor = target;
    u16 v;
    
    v = 3;
    if (target > 0x100000) {
        u8 *p = find5E8(actor);
        if (p) *(u16 *)(p + 0x42) = v;
    } else if (target != 0) {
        u32 i = target - 1;
        if (i <= 4) { register u8 **base asm("r1") = (u8 **)&records5E8; s32 raw = i * 0x2E0; base = (u8 **)((u8 *)*base + raw); rec5E8(*(u16 *)((u8 *)base + 2), 3); }
    } else {
        s32 raw = sub_080020F4() * 0x14C;
        s32 v1;
        { u8 *base = (u8 *)players5E8; raw += (s32)base; v1 = 0x11E; raw += v1; *(u16 *)raw = v; }
    }
}
static inline void mark2_5E8(u32 target)
{
    u32 actor = target;
    u16 v;
    asm("" : "+r"(actor));
    v = 3;
    if (actor > 0x100000) {
        u8 *p = find5E8(actor);
        if (p) *(u16 *)(p + 0x42) = v;
    } else if (target != 0) {
        u32 i = target - 1;
        if (i <= 4) { register u8 **base asm("r1") = (u8 **)&records5E8; s32 raw = i * 0x2E0; base = (u8 **)((u8 *)*base + raw); rec5E8(*(u16 *)((u8 *)base + 2), 3); }
    } else {
        s32 raw = sub_080020F4() * 0x14C;
        s32 v1;
        { u8 *base = (u8 *)players5E8; raw += (s32)base; v1 = 0x11E; raw += v1; *(u16 *)raw = v; }
    }
}

/* [ExecuteTableDrivenItemTrade] Locks player/input, selects literal messages by player index and trade record,
 * counts required item type/id and returns through unlock when insufficient. Eligible branches mark actor,
 * optionally ask a choice, and responses1/2 remove required items, submit configured rewards, set configured
 * progression flag and show completion message; zero only shows refusal. Other-player once-only branch shows
 * message without exchange. Table index unchecked; downstream insertion success not tested. */
void sub_080445E8(s32 arg0, u32 arg1)
{
    s32 second;
    u32 count, i;
    s32 result;

    { u8 *pl = (u8 *)players5E8 + sub_080020F4() * 0x14C; *(u32 *)(pl + 0x30) |= 1; }
    sub_0800D0F4();
    second = sub_080020F4();
    if (second == 0)
        msg5E8(trades44[arg0].msgNone0);
    else
        msg5E8(trades44[arg0].msgNone1);
    count = count5E8(trades44[arg0].itemType, trades44[arg0].itemId);
    if (count < trades44[arg0].itemCount)
        goto end;
    if (second == 0) {
        mark5E8(arg1);
        if (trades44[arg0].msgYes != 0)
            result = ask5E8(trades44[arg0].msgDone);
        else {
            msg5E8(trades44[arg0].msgDone);
            result = 2;
        }
    } else if (trades44[arg0].once == 0) {
        mark2_5E8(arg1);
        if (trades44[arg0].msgYes != 0)
            result = ask5E8(trades44[arg0].msgAsk);
        else {
            msg5E8(trades44[arg0].msgDone);
            result = 2;
        }
    } else {
        msg5E8(trades44[arg0].msgAsk);
        goto end;
    }
    switch (result) {
    case 0:
        msg5E8(trades44[arg0].msgNo);
        break;
    case 1:
        msg5E8(trades44[arg0].msgYes);
    case 2:
        remove5E8(trades44[arg0].itemType, trades44[arg0].itemId, trades44[arg0].itemCount);
        give5E8(trades44[arg0].rewardType, trades44[arg0].rewardId, trades44[arg0].rewardCount);
        setflag5E8(trades44[arg0].flag);
        if (!(audioFlags5E8 & 0x20)) sub_08006D08(0x33);
        msg5E8(trades44[arg0].msgGive);
        break;
    }
end:
    { u8 *pl = (u8 *)players5E8 + sub_080020F4() * 0x14C; *(u32 *)(pl + 0x30) &= ~1; }
    sub_0800D108();
}
struct Actor566045 { u32 id; u8 p4[0x14]; u16 x, y; u8 p1C[0x20]; u32 flags; u8 p40[4]; u32 callback; u8 p48[0x28]; };
extern u8 *state566045 asm("gUnk_03005CF4");
extern void callback566045(void) asm("sub_08033198");
static inline s32 bit566045(u8 *p, s32 one) { s32 raw = *p;  return (raw >> 2) & one; }
static inline u8 *flag566045(u8 **st) {
    if (sub_0800CE30()) return *st + 0x1C3;
    return *st + 0x1B7;
}
static inline void wait566045(u16 n) {
    while (n) { sub_080003F0(); if (sub_080021A8()) break; n--; }
}
static inline struct Actor566045 *find566045(u8 **st, u32 id) {
    struct Actor566045 *p = (struct Actor566045 *)(*st + 0x7A4);
    u32 i;
    i = 0;
    do {
        if (p->id == id) return p;
        i++; p++;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
static inline void setcb566045(u8 **st, u32 id, u32 cb) {
    struct Actor566045 *a = find566045(st, id);
    if (a) a->callback = cb;
}
extern void callback4D1C45(void) asm("sub_08034F64");
static inline u8 *flag4D1C45(u8 **st) {
    if (sub_0800CE30()) return *st + 0x1C5;
    return *st + 0x1B9;
}
static inline u32 spawn4D1C45(s32 a, s32 b, s32 c) { return sub_080289C0(a, b, c); }
/* [SpawnActorAfterEvent18Change] flag4D1C45 selects1B9/1C5 and bit566045 shifts2; 16+2 gives persistent
 * event18. Explicit kind15 and callback34F64. */
void sub_08044D1C(void) {
    s32 bit;
    u32 id;
    struct Actor566045 *a;
    s32 one, x, y;
    u8 **st = &state566045;
    
    one = 1;
    
again:
    bit = bit566045(flag4D1C45(st), one);
    wait566045(1);
    if (bit == (bit566045(flag4D1C45(st), one))) goto again;
    wait566045(0x1F4);
    id = spawn4D1C45(0xF, 0x128, 0x197);
    x = 8; y = 4;
    asm("" : "+r"(x), "+r"(y));
    a = find566045(st, id);
    if (a) { a->x = x; a->y = y; a->flags |= 0x10; }
    setcb566045(st, id, (u32)callback4D1C45);
    sub_0802939C(id, 0x11);
}
/* [AnimateAfterEvent13Change] Reads1B8/1C4 bit5 before/after wait; unequal sample calls2939C(arg,1). */
void sub_08044E34(s32 arg0) {
    register s32 arg asm("r8") = arg0;
    s32 *base;
    u32 mask;
    s32 count;
    register s32 oldBit asm("r5");
    s32 value;
    s32 temp;
    mask = 1;
    base = &gUnk_03005CF4;
start:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    oldBit = (value >> 5) & mask;
    count = 1;
    goto wait;
dec:
    temp = count - 1;
    
    count = (u16)temp;
    if (count == 0) goto compare;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
compare:
    count = 1;
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    if (oldBit == ((value >> 5) & count)) goto start;
    sub_0802939C(arg, 1);
}
extern void cbA40EB445(void) asm("sub_08059A40");
extern void cbFEA0EB445(void) asm("sub_0802FEA0");
extern void cb990CEB445(void) asm("sub_0805990C");
static inline u8 *flagEB445(u8 **st) {
    if (sub_0800CE30()) return *st + 0x1C4;
    return *st + 0x1B8;
}
static inline s32 first6EB445(u8 **st, s32 one) {
    s32 raw;
    if (sub_0800CE30()) { raw = (*st)[0x1C4];  return (raw >> 6) & one; }
    raw = (*st)[0x1B8];  return (raw >> 6) & one;
}
static inline s32 b6tEB445(u8 **st, s32 one) {
    s32 raw;
    if (sub_0800CE30()) { raw = (*st)[0x1C4]; return (raw >> 6) & one; }
    raw = (*st)[0x1B8]; return (raw >> 6) & one;
}
static inline s32 b7tEB445(u8 **st, s32 one) {
    s32 raw;
    if (sub_0800CE30()) { raw = (*st)[0x1C4]; return (raw >> 7) & one; }
    raw = (*st)[0x1B8]; return (raw >> 7) & one;
}
static inline s32 bit6EB445(u8 **st, s32 one) { u8 *p = flagEB445(st); s32 raw = *p;  return (raw >> 6) & one; }
static inline s32 bit7EB445(u8 **st, s32 one) { u8 *p = flagEB445(st); s32 raw = *p;  return (raw >> 7) & one; }
static inline void fxEB445(u8 **st) {
    void *cb = cbA40EB445;
    u8 *task = *st + 0xE34;
    u32 i;
    u8 *buf;
    for (i = 0; i <= 0x1D; i++, task += 0x28) {
        if (sub_08000470((u32)task) == 0) {
            while ((*(u8 **)(task + 0x20) = buf = sub_08001494(0x400)) == NULL) sub_080003F0();
            *(u32 *)(task + 8) = 0x3C;
            *(void **)(task + 0xC) = cb;
            *(u8 **)(task + 0x10) = buf + 0x3FC;
            *(u32 *)(task + 0x24) = 0;
            sub_08000274(task, 0x3C);
            break;
        }
    }
}
#define SCENE_EB445(msg) { \
    u32 dlg; \
    s32 x, y; \
    struct Actor566045 *a; \
    sub_0805EFBC(); \
    do { sub_080003F0(); } while (sub_0805F184()); \
    { struct Player *pp = (struct Player *)(sub_080020F4() * 0x14C + (u32)gUnk_03003CE0); pp->flags |= one; } \
    sub_0800D0F4(); \
    fxEB445(st); \
    sub_08028AAC(id, 0x78, 0xFA, 0); \
    sub_080290E4(id, 4); \
    sub_0802939C(id, 8); \
    sub_08028AAC(id, 0x78, 0x82, 0x64); \
    sub_0802939C(id, 0); \
    while (sub_0805F184()) sub_080003F0(); \
    while (sub_0805EF90()) sub_080003F0(); \
    dlg = sub_0805DF38(1, 15, 2, 0, 0x2D, msg); \
    while (!sub_0805EEFC((void *)dlg)) sub_080003F0(); \
    sub_0802939C(id, 8); \
    sub_080290E4(id, 6); \
    sub_08028AAC(id, 0xB0, 0x82, 0x28); \
    sub_080290E4(id, 4); \
    sub_08028AAC(id, 0xB0, 0x60, 0x1E); \
    sub_080290E4(id, 0); \
    sub_0802939C(id, 0); \
    x = 8; y = 4; \
    ap = find566045(st, id); \
    if (ap) { ap->x = x; ap->y = y; ap->flags |= 0x10; } \
    setcb566045(st, id, (u32)cbFEA0EB445); \
    sub_08068070((u32)cb990CEB445, 0x17); \
    {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;} \
    sub_0800D108(); \
}
/* [WatchProgressionDialogueChanges] Continuously watches progression bits6/7 in the selected byte1B8/1C4.
 * After an interruptible 2200/3200 wait closes the dialog, locks local events/input, attempts a callback task,
 * moves the supplied actor through the scripted positions, shows resource0x1400EA/0x1400EB, then places the
 * actor at its final position with extents8/4, flag0x10 and callback. Queues token0x5990C23 and unlocks. The
 * watcher continues rather than returning. */
void sub_08044EB4(u32 id) {
    s32 a, b, c, d;
    u32 dlg;
    s32 x, y;
    struct Actor566045 *ap;
    s32 one = 1;
    u8 **st = &state566045;
    
    for (;;) {
        a = first6EB445(st, one);
        b = b7tEB445(st, 1);
        wait566045(1);
        c = b6tEB445(st, 1);
        d = b7tEB445(st, 1);
        if (a != c) {
            wait566045(0x898);
            SCENE_EB445(0x1400EA);
        } else if (b != d) {
            wait566045(0xC80);
            SCENE_EB445(0x1400EB);
        }
    }
}
extern u8 *state534C45 asm("gUnk_03005CF4");
extern void callbackA874534C45(void) asm("sub_0805A874");
extern void callback9968534C45(void) asm("sub_08059968");
extern u32 flags534C45 asm("gUnk_030027D0");
struct Spawn534C45 { u32 x, y; u16 w, h; void *cb; u32 zero; u8 pad[12]; };
struct Cmd534C45 { u16 kind, value; u8 data[12]; };
extern u32 emit534C45(struct Cmd534C45 *) asm("sub_0805AB20");
static inline u32 count534C45(u32 n) { return n; }
#define FX534C45(next, check)                                              \
    {                                                           \
        void *cb = sub_0804534C;                                \
        u8 *task = state534C45 + 0xE34;                         \
        u32 i;                                                  \
        u32 r;                                                  \
        u8 *buf;                                                \
        i = 0;                                                  \
        goto check;                                             \
    next:                                                       \
        i++;                                                    \
        task += 0x28;                                           \
    check:                                                      \
        if (i > 0x1D) goto done;                                \
        r = sub_08000470((u32)task);                            \
        if (r != 0) goto next;                                                                                \
        u.args.x = 0x9700;                                      \
        u.args.y = 0x16D00;                                     \
        u.args.w = 0x10;                                        \
        u.args.h = 8;                                           \
        u.args.cb = cb;                                         \
        { register u32 z asm("r0") = 0;                                                                u.args.zero = z; }                                    \
        *(u32 *)(task + 8) = 0x3C;                              \
        buf = sub_08001494(0x400);                              \
        *(u8 **)(task + 0x20) = buf;                            \
        *(u32 *)(task + 0xC) = (u32)callbackA874534C45;         \
        *(u8 **)(task + 0x10) = buf + 0x3FC;                    \
        *(u32 *)(task + 0x24) = r;                              \
        sub_08000274_(task, (u32)&u.args, 1);                   \
        sub_080003F0();                                         \
        sub_080003F0();                                         \
    }
static inline s32 result534C45(void) {
    s32 v = sub_0805CFA0();
    register s32 r asm("r1");
    r = 1;
    if (v < 0) r = 0;
    return r;
}
/* [AskDialogue540EmitItem29] Locks input, asks choice0x14021C. Nonzero choice finds first empty bag slot;
 * nonnegative result plays sound0x33, attempts adding one category1/id0x29 item with zeroed payload; insertion
 * return is ignored, queues sub_08059968(20), shows cancellable0x14021D. Negative result shows0x14021E then
 * rearms spatial trigger; zero choice rearms directly. Rearm searches30 task slots and uses unchecked0x400
 * allocation. Clears player bit0 and unlocks on all final paths. */
void sub_0804534C(void) {
    u32 dlg;
    u32 i;
    union { struct Cmd534C45 cmd; struct Spawn534C45 args; } u;
    u32 a;
    u32 b;
    register struct Cmd534C45 *c asm("r0");
    {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags |= 1;}
    sub_0800D0F4();
    while (sub_0805F184()) sub_080003F0();
    dlg = sub_0805DF38(1, 15, 2, 0, -2, 0x14021C);
    while (!sub_0805EEFC((void *)dlg)) sub_080003F0();
    if (sub_0805EF14((u8 *)dlg)) {
        if (result534C45()) {
            if (!(flags534C45 & 0x20)) sub_08006D08(0x33);
            a = 1;
            b = 0x29;
            c = &u.cmd;
            c->kind = a;
            c->value = b;
            i = 0;
            do { u.cmd.data[i] = 0; i++; } while (i <= 11);
            i = 0;
            do { emit534C45(&u.cmd); i++; } while (i < count534C45(1));
            sub_08068070((u32)callback9968534C45, 0x14);
            while (sub_0805F184()) sub_080003F0();
            while (sub_0805EF90()) sub_080003F0();
            dlg = sub_0805DF38(1, 15, 2, 0, -1, 0x14021D);
            while (!sub_0805EEFC((void *)dlg)) {
                if (sub_0800CDF8()) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
        } else {
            while (sub_0805F184()) sub_080003F0();
            while (sub_0805EF90()) sub_080003F0();
            dlg = sub_0805DF38(1, 15, 2, 0, -1, 0x14021E);
            while (!sub_0805EEFC((void *)dlg)) {
                if (sub_0800CDF8()) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            FX534C45(next1, check1);
        }
    } else {
        FX534C45(next2, check2);
    }
done:
    {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}
    sub_0800D108();
}
/* [TrackEvent20EntityPosition] Reads1B9/1C5 bit4 and calls28AAC with duration0 in both branches; one-count
 * wait always loops. */
void sub_080455F0(s32 arg0) {
    s32 arg = arg0;
    register s32 mask asm("r6");
    s32 *base = &gUnk_03005CF4;
    s32 value;
    s32 oldBit;
    u16 count;
    s32 call0;
    register s32 call1 asm("r1");
    s32 call2;
    s32 call3;
    mask = 1;
loop:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C5);
    else value = *(u8 *)(*(u32 *)base + 0x1B9);
    oldBit = (value >> 4) & mask;
    if (oldBit != 0) {
        call0 = arg; call1 = 0x79; call2 = 0x186; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    } else {
        call2 = 0x270F; call0 = arg; call1 = 0x270F; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    }
    count = 1;
    goto wait;
dec:
    count = count - 1;
    if (count == 0) goto loop;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
    goto loop;
}
/* [SpawnActor40AfterEvent2Change] flag566045 selects bankbase1B7/1C3, bit566045 shifts2; changed sample gates
 * spawn40 and callback33198. */
void sub_08045660(void) {
    s32 bit;
    u32 id;
    struct Actor566045 *a;
    s32 one, x, y; u32 cb;
    u8 **st = &state566045;
    
    one = 1;
    
again:
    bit = bit566045(flag566045(st), one);
    wait566045(1);
    if (bit == (bit566045(flag566045(st), one))) goto again;
    wait566045(0xF0);
    id = sub_080289C0(0x28, 0xBF, 0xF9);
    x = 8; y = 4;
    asm("" : "+r"(x), "+r"(y));
    a = find566045(st, id);
    if (a) { a->x = x; a->y = y; a->flags |= 0x10; }
    setcb566045(st, id, (u32)callback566045);
}
extern u8 *state576445 asm("gUnk_03005CF4");
#define set576445(bit) { if (sub_0800CE30()) { u32 *p = (u32 *)(state576445 + 0x80); u32 m = (bit); *p |= m; } else { u32 *p = (u32 *)(state576445 + 0x78); u32 m = (bit); *p |= m; } }
/* [SetProgressBitGroups] Input0 ORs mode-selected progress bits1..9; input1 ORs10..14 and16..22, leaving bit15
 * untouched. Other values do nothing. Uses inline setter for each bit; no clearing or scene transition. */
void sub_08045764(s32 arg0) {
    switch (arg0) {
    case 0:
        { u32 b = 2; set576445(b); }
        set576445(1 << 2);
        set576445(1 << 3);
        set576445(1 << 4);
        set576445(1 << 5);
        set576445(1 << 6);
        set576445(1 << 7);
        set576445(1 << 8);
        set576445(1 << 9);
        break;
    case 1:
        set576445(arg0 << 10);
        set576445(1 << 11);
        set576445(1 << 12);
        set576445(1 << 13);
        set576445(1 << 14);
        set576445(1 << 16);
        set576445(1 << 17);
        set576445(1 << 18);
        set576445(1 << 19);
        set576445(1 << 20);
        set576445(1 << 21);
        set576445(1 << 22);
        break;
    }
}
struct Bits5AFC { u8 b0:5; u8 b5:1; u8 b6:1; u8 b7:1; };
extern u8 *gGS5AFC asm("gUnk_03005CF4");
static inline struct Bits5AFC *SelA_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C3);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B7);
}
static inline struct Bits5AFC *SelB_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C5);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B9);
}
/* [ClearEvent21WhenEvent7Set] SelA selects bankbase1B7/1C3 bit7; SelB selects1B9/1C5 and clears bit5, hence
 * event21. */
void sub_08045AFC(void)
{
    if (*(u8 *)SelA_5AFC() >> 7) {
        { u8 *q = (u8 *)SelB_5AFC(); s32 m = ~0x20; *q = m & *q; }
        sub_0805C7B8(0);
    }
}
extern void cbA40B6845(void) asm("sub_08059A40");
extern void cb8F4CB6845(void) asm("sub_08058F4C");
extern void cb9968B6845(void) asm("sub_08059968");
extern void cb9A94B6845(void) asm("sub_08059A94");
static inline void fxB6845(void) {
    void *cb = cbA40B6845;
    u8 *task = state566045 + 0xE34;
    u32 i;
    u8 *buf;
    for (i = 0; i <= 0x1D; i++, task += 0x28) {
        if (sub_08000470((u32)task) == 0) {
            while ((*(u8 **)(task + 0x20) = buf = sub_08001494(0x400)) == NULL) sub_080003F0();
            *(u32 *)(task + 8) = 0x3C;
            *(void **)(task + 0xC) = cb;
            *(u8 **)(task + 0x10) = buf + 0x3FC;
            *(u32 *)(task + 0x24) = 0;
            sub_08000274(task, 0x3C);
            break;
        }
    }
}
static inline u8 *flagB6845(void) {
    if (sub_0800CE30()) return state566045 + 0x1C5;
    return state566045 + 0x1B9;
}
static inline s32 bitB6845(u8 *p, s32 one) { s32 raw = *p;  return (raw >> 6) & one; }
static inline s32 bit2B6845(s32 one) {
    s32 raw;
    if (sub_0800CE30()) { raw = state566045[0x1C5];  return (raw >> 6) & one; }
    raw = state566045[0x1B9];  return (raw >> 6) & one;
}
static inline s32 bit3B6845(u8 **st, s32 one) {
    s32 raw;
    if (sub_0800CE30()) { raw = (*st)[0x1C5]; return (raw >> 6) & one; }
    raw = (*st)[0x1B9]; return (raw >> 6) & one;
}
static inline struct Actor566045 *findB6845(u32 id) {
    struct Actor566045 *p = (struct Actor566045 *)(state566045 + 0x7A4);
    u32 i;
    for (i = 0; i <= 14; i++, p++) {
        if (p->id == id) return p;
    }
    sub_080003F0();
    return NULL;
}
static inline struct Actor566045 *find2B6845(u32 id) {
    struct Actor566045 *p = (struct Actor566045 *)(state566045 + 0x7A4);
    u32 i;
    for (i = 0; i <= 14; i++, p++) {
        if (p->id == id) goto out;
    }
    sub_080003F0();
    p = NULL;
out:
    return p;
}
static inline void setcbB6845(u32 id, u32 cb) {
    struct Actor566045 *a = findB6845(id);
    if (a) a->callback = cb;
}
/* [StageResourceActorDialogueSequence] Creates/configures resource0x2F and callback; waits progression
 * byte+0x1B9/+0x1C5 bit6, closes current dialog, locks input, attempts background callback60 and queues
 * callbacks16/5. Shows cancellable0x1400B3, moves passed actor and turns resource0x2F toward it,
 * shows0x1400B4, moves resource actor through(120,176) to(120,240), marks slot state4 and unlocks.30 task
 * slots full skips background task; allocation retries; queue requests not guaranteed completion. */
void sub_08045B68(u32 arg0) {
    u32 id;
    u32 dlg;
    struct Actor566045 *a;
    id = sub_080289C0(0x2F, 0xBE, 0x95);
    a = findB6845(id);
    if (a) { a->x = 8; a->y = 4; a->flags |= 0x10; }
    setcbB6845(id, (u32)cb8F4CB6845);
    { u8 **st = &state566045; s32 one = 1;  
    do {
        wait566045(1);
    } while (!bit3B6845(st, one)); }
    sub_0805EFBC();
    do { sub_080003F0(); } while (sub_0805F184());
    { struct Player *pp = (struct Player *)(sub_080020F4() * 0x14C + (u32)gUnk_03003CE0); pp->flags |= 1; }
    sub_0800D0F4();
    fxB6845();
    sub_08068070((u32)cb9968B6845, 0x10);
    sub_08068070((u32)cb9A94B6845, 5);
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dlg = sub_0805DF38(1, 15, 2, 0, -1, 0x1400B3);
    while (!sub_0805EEFC((void *)dlg)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    sub_0802939C(arg0, 8);
    sub_08028D98(arg0, 0x10, 0x20, 0x1E);
    sub_0802939C(arg0, 0);
    sub_0802949C(id, arg0);
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dlg = sub_0805DF38(1, 15, 2, 0, -1, 0x1400B4);
    while (!sub_0805EEFC((void *)dlg)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    sub_080290E4(id, 0);
    sub_0802939C(id, 8);
    sub_08028AAC(id, 0x78, 0xB0, 0x28);
    sub_08028AAC(id, 0x78, 0xF0, 0x28);
    a = find2B6845(id);
    if (a) *(u16 *)((u8 *)a + 0x36) = 4;
    {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}
    sub_0800D108();
}
extern void callback5E3845(void) asm("sub_0803898C");
static inline s32 bit5E3845(u8 *p, s32 one) { s32 raw = *p;  return (raw >> 5) & one; }
static inline u32 spawn5E3845(s32 a, s32 b, s32 c) { return sub_080289C0(a, b, c); }
/* [SpawnActorAfterEvent5Change] bit5E3845 shifts bankbase flag5; kind0x40026 and callback3898C are explicit.
 * Reuses15-record lookup and wait helper at302..323. */
void sub_08045E38(void) {
    s32 bit;
    u32 id;
    struct Actor566045 *a;
    s32 one, x, y;
    u8 **st = &state566045;
    
    one = 1;
    
again:
    bit = bit5E3845(flag566045(st), one);
    wait566045(1);
    if (bit == (bit5E3845(flag566045(st), one))) goto again;
    wait566045(0xF0);
    id = spawn5E3845(0x40026, 0xDD, 0x11E);
    x = 8; y = 4;
    asm("" : "+r"(x), "+r"(y));
    a = find566045(st, id);
    if (a) { a->x = x; a->y = y; a->flags |= 0x10; }
    setcb566045(st, id, (u32)callback5E3845);
}
struct PlF4445 { u8 p0[0x30]; u32 flags; u8 p34[0x58]; s32 f8C; u8 p90[0x8E]; u16 f11E; u8 p120[0x2C]; };
struct ItemF4445 { u16 kind, value; u8 pad[12]; };
struct RecF4445 { u16 f0, f2; u8 pad[0x2DC]; };
struct CmdF4445 { u16 kind, value; u8 data[12]; };
extern struct PlF4445 playersF4445[] asm("gUnk_03003CE0");
extern u8 *invF4445 asm("gUnk_030034E0");
extern u8 *recordsF4445 asm("gUnk_030056F4");
extern u32 audioF4445 asm("gUnk_030027D0");
extern void cb990CF4445(void) asm("sub_0805990C");
extern u32 emitF4445(struct CmdF4445 *) asm("sub_0805AB20");
extern void sub_08029174(s32,s32);
extern void sub_08019EB8(u16,s32);
static inline u32 countF4445(u32 n) { return n; }
#define DIALOG_F4445(msg) { \
    while (sub_0805F184()) sub_080003F0(); \
    while (sub_0805EF90()) sub_080003F0(); \
    dlg = sub_0805DF38(1, 15, 2, 0, -1, msg); \
    while (!sub_0805EEFC((void *)dlg)) { \
        if (sub_0800CDF8()) { sub_0805EFBC(); break; } \
        sub_080003F0(); \
    } }
#define READ_BIT_F4445(result, shift, setReg, clearReg) { \
    u8 *addr; \
    if (sub_0800CE30()) { \
        u8 *base = state566045; \
        register u32 offset asm(setReg) = 0x1C7; \
        asm("" : : "r"(offset), "r"(base)); \
        addr = base + offset; \
    } else { \
        u8 *base = state566045; \
        register u32 offset asm(clearReg) = 0x1BB; \
        asm("" : : "r"(offset), "r"(base)); \
        addr = base + offset; \
    } \
    { register s32 raw asm("r0") = *addr; \
        (result) = (raw >> (shift)) & 1; \
    } \
}
static inline void setlvF4445(u32 id, u16 v) {
    struct Actor566045 *ap;
    register u32 key asm("r2") = id;
    u32 level;
    
    level = v;
    if (id > 0x100000) {
        ap = find566045(&state566045, key);
        if (ap) *(u16 *)((u8 *)ap + 0x42) = level;
    } else if (id != 0) {
        u32 k = id - 1;
        if (k <= 4) {
            u8 **table = &recordsF4445;
            u32 offset;
            offset = k * sizeof(struct RecF4445);
            sub_08019EB8(((struct RecF4445 *)(*table + offset))->f2, v);
        }
    } else {
        ((struct PlF4445 *)(sub_080020F4() * 0x14C + (u32)playersF4445))->f11E = level;
    }
}
/* [RunHamasanDialogue] Sets local player flags bit 0 (input suppression) and BeginLocalPlayerEventLock. Plays
 * scene animation 6 on the argument entity (PlaySceneEntityAnimation) when the local player's pixel x (+0x8C
 * >> 8) exceeds 0x1E7, otherwise animation 2. Reads scene event flags 0x22..0x25 (bits 2..5 of event-flag byte
 * +0x1BB, or +0x1C7 when scene flag bit 9 is set). When all four are set it only shows 0x1402A9. Otherwise,
 * when its own flag 0x22 is set, it only shows 0x1402A8. Otherwise it shows 0x1402A1 and counts bag records
 * (character +0x150, 25 slots) with kind 5 and ID 0xA6. */
void sub_08045F44(u32 inputId) {
    u32 id = inputId;
    struct CmdF4445 cmd;
    u8 unused[16];
    u32 dlg;
    s32 a;
    register s32 b asm("r5");
    s32 c;
    s32 d, cntv;
    s32 lastBit;
    u32 i, n;
    struct ItemF4445 *it;
    struct Actor566045 *ap;

    ((struct PlF4445 *)(sub_080020F4() * 0x14C + (u32)playersF4445))->flags |= 1;
    sub_0800D0F4();
    { s32 coord = playersF4445[sub_080020F4()].f8C; a = coord >> 8; }
    if (a > 0x1E7) sub_08029174(id, 6);
    else sub_08029174(id, 2);
    READ_BIT_F4445(a, 2, "r1", "r3");
    READ_BIT_F4445(b, 3, "r4", "r1");
    READ_BIT_F4445(c, 4, "r3", "r4");
    READ_BIT_F4445(lastBit, 5, "r1", "r3");
    if (a && b && c && lastBit) {
        DIALOG_F4445(0x1402A9);
    } else if (a) {
        DIALOG_F4445(0x1402A8);
    } else {
        u32 count, cnt;
        s32 player;
        DIALOG_F4445(0x1402A1);
        {
            u32 count;
            u32 k;
            u8 *entry;
            count = 0;
            k = 0;
            entry = invF4445 + 0x150;
            do {
                if (*(u16 *)entry == 5 && *(u16 *)(entry + 2) == 0xA6)
                    count++;
                entry += 0x10;
            } while (++k <= 0x18);
            a = count;
            
            cntv = a;
        }
        b = sub_080020F4();
        if (cntv == 0 || b != 0) goto end;
        setlvF4445(id, 3);
        while (sub_0805F184()) sub_080003F0();
        dlg = sub_0805DF38(1, 15, 2, 0, -2, 0x1402A2);
        while (!sub_0805EEFC((void *)dlg)) sub_080003F0();
        dlg = sub_0805EF14((u8 *)dlg);
        if (dlg) {
            DIALOG_F4445(0x1402A4);
            {
                register u8 **inventory asm("r6");
                u32 n;
                register u32 i asm("r3");
                u32 clear;
                n = 1;
                i = 0;
                
                inventory = &invF4445;
                clear = 0;
            removeItem:
                {
                    u8 *base = *inventory;
                    u32 scaled;
                    u8 *e;
                    
                    scaled = i * 16;
                    e = base + scaled;
                    if (*(u16 *)(e + 0x150) == 5 && *(u16 *)(e + 0x152) == 0xA6) {
                        n--;
                        *(u16 *)(e + 0x150) = clear;
                        *(u16 *)(e + 0x152) = clear;
                        if (n == 0) goto removedItem;
                    }
                }
                if (++i <= 0x18) goto removeItem;
            removedItem:;
            }
            {
                u32 ka;
                u32 kb;
                register struct CmdF4445 *kc asm("r0");
                ka = 1; kb = 0x1E; kc = &cmd; kc->kind = ka; kc->value = kb;
            }
            i = 0;
            do { cmd.data[i] = 0; i++; } while (i <= 11);
            i = 0;
            do { emitF4445(&cmd); i++; } while (i < countF4445(1));
            sub_08068070((u32)cb990CF4445, 0x22);
            if (!(audioF4445 & 0x20)) sub_08006D08(0x33);
            DIALOG_F4445(0x1402A5);
            DIALOG_F4445(0x1402A6);
        } else {
            DIALOG_F4445(0x1402A3);
        }
    }
end:
    sub_0802939C(id, 0);
    {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}
    sub_0800D108();
}
#undef READ_BIT_F4445
struct Item46490 { u16 kind,id; u8 data[12]; };
extern u8 *state46490 asm("gUnk_03005CF4");
extern u8 *items46490 asm("gUnk_030034E0");
extern void sub_0805990C(void);
static inline u32 load46490(u16 *p) {u32 v=*p;return v;}
static inline u32 count46490(u32 n) { return n; }
static inline u8 *find46490(u32 actor) { u8 *p;u32 i;s32 raw=(s32)state46490;u32 off=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
/* [RunBakatarDialogue] Sets local player flags bit 0 (input suppression) and BeginLocalPlayerEventLock. Plays
 * scene animation 6 on the argument entity (PlaySceneEntityAnimation) when the local player's pixel x (+0x8C
 * >> 8) exceeds 0x1CD, otherwise animation 2. Reads scene event flags 0x22..0x25 (bits 2..5 of event-flag byte
 * +0x1BB, or +0x1C7 when scene flag bit 9 is set). If its own flag 0x23 is set it only shows 0x1402B1, or
 * 0x1402B2 when all four flags are set. Otherwise it shows 0x1402AA and counts bag records (character +0x150,
 * 25 slots) with kind 3 and ID 0x15. */
void sub_08046490(u32 arg0){
 struct Item46490 cmd; u8 unused[16];
 u32 arg=arg0;
 s32 flag; s32 offset;
 struct Player *player; u8 *selected; register s32 count asm("r3"); u32 i; struct Item46490 *item;
 u8 *data; u32 task; u8 *entity; u8 *found; u32 j; s32 left; u8 *slot; u32 actor; u8 **itemsbase; register u32 v1 asm("r1"); u32 v2; u8 *cmdaddr; u8 *dataptr; u32 off; u32 n;
 register s32 raw asm("r0"); register u32 zero asm("r5");
 s32 b2; s32 b3; s32 b4; s32 b5;register s32 bit asm("r0");u32 off4;u32 off1;register s32 savedCount asm("r6");register s32 playerIndex asm("r5");
 {u32 stride; u8 *base;struct Player *p;register u32 idx asm("r2");register s32 pos asm("r6"); idx=sub_080020F4();stride=0x14C;idx*=stride;base=(u8 *)gUnk_03003CE0;p=(struct Player *)(idx+(u32)base);p->flags|=1;sub_0800D0F4();raw=sub_080020F4()*stride;base+=0x8C;raw=*(s32 *)(raw+(u32)base);pos=raw>>8;if(pos>0x1CD)sub_08029174(arg,6);else sub_08029174(arg,2); }
 if(sub_0800CE30()) {raw=(s32)state46490;off1=0x1C7;selected=(u8 *)raw+off1;}else {raw=(s32)state46490;off=0x1BB;selected=(u8 *)raw+off;}
 raw=*selected;b2=raw>>2;bit=1;b2 &= bit;
 if(sub_0800CE30()) {raw=(s32)state46490;off4=0x1C7;selected=(u8 *)raw+off4;}else {raw=(s32)state46490;off1=0x1BB;selected=(u8 *)raw+off1;}
 raw=*selected;b3=raw>>3;bit=1;b3 &= bit;
 if(sub_0800CE30()) {raw=(s32)state46490;off=0x1C7;selected=(u8 *)raw+off;}else {raw=(s32)state46490;off4=0x1BB;selected=(u8 *)raw+off4;}
 raw=*selected;b4=raw>>4;bit=1;b4 &= bit;
 if(sub_0800CE30()) {raw=(s32)state46490;off1=0x1C7;selected=(u8 *)raw+off1;}else {raw=(s32)state46490;off=0x1BB;selected=(u8 *)raw+off;}
 raw=*selected;b5=raw>>5;bit=1;b5 &= bit;
 if(b2) {if(!b3)goto exchange;if(!b4||!b5)goto partial;
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402B2);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto finish;}
 partial:if(b3){
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402B1);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto finish;}
 exchange:
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402AA);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 count=0;i=0;item=(struct Item46490 *)(items46490+0x150);
 do {if(load46490(&item->kind)==3 && item->id==0x15)count++;item++;i++;}while(i<=24);
 savedCount=count;playerIndex=sub_080020F4();if(savedCount && !playerIndex){
 actor=arg;flag=3;if(arg>0x100000) {
 found=find46490(actor);
 if(found) *(u16 *)(found+0x42)=flag;
 } else if(arg) {actor=arg-1;if(actor<=4){u8 **base=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else {raw=sub_080020F4()*0x14C;{u8 *base=(u8 *)gUnk_03003CE0;raw+=(s32)base;v1=0x11E;raw+=v1;*(u16 *)raw=flag;}}
while(sub_0805F184())sub_080003F0();task=sub_0805DF38(1,15,2,0,-2,0x1402AB);while(!sub_0805EEFC((void *)task))sub_080003F0();flag=sub_0805EF14((u8 *)task);if(flag){data=cmd.data;
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402AD);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;itemsbase=&items46490;zero=0;
 loopRemove:raw=(s32)*itemsbase;slot=(u8 *)raw+j*16;
 if(*(u16 *)(slot+0x150)!=3 || *(u16 *)(slot+0x152)!=0x15 || (left--,*(u16 *)(slot+0x150)=zero,*(u16 *)(slot+0x152)=zero,left!=0)) {j++;if(j<=24)goto loopRemove;}

 v1=1;v2=0x1E;cmdaddr=(u8 *)&cmd;*(u16 *)cmdaddr=v1;*(u16 *)(cmdaddr+2)=v2;
 n=0;dataptr=data;v2=0;do{dataptr[n]=v2;n++;}while(n<=11);
 n=0;do{sub_0805AB20(&cmd);n++;}while(n<count46490(1));
 sub_08068070((u32)sub_0805990C,0x23);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402AE);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402AF);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}else{
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402AC);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}}
 finish:sub_0802939C(arg,0);
 {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
struct Item469DC { u16 kind,id; u8 data[12]; };
extern u8 *state469DC asm("gUnk_03005CF4");
extern u8 *items469DC asm("gUnk_030034E0");
static inline u32 load469DC(u16 *p) {u32 v=*p;return v;}
static inline u32 count469DC(u32 n) { return n; }
static inline u8 *find469DC(u32 actor) { u8 *p;u32 i;s32 raw=(s32)state469DC;u32 off=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
/* [RunJackieDialogue] Sets local player flags bit 0 (input suppression) and BeginLocalPlayerEventLock. Plays
 * scene animation 5 on the argument entity (PlaySceneEntityAnimation) when the local player's pixel x (+0x8C
 * >> 8) exceeds 0x224, otherwise animation 3. Reads scene event flags 0x22..0x25 (bits 2..5 of event-flag byte
 * +0x1BB, or +0x1C7 when scene flag bit 9 is set). If its own flag 0x24 is set it only shows 0x1402BA, or
 * 0x1402BB when all four flags are set. Otherwise it shows 0x1402B3 and counts bag records (character +0x150,
 * 25 slots) with kind 4 and ID 3. */
void sub_080469DC(u32 arg0){
 struct Item469DC cmd; u8 unused[16];
 u32 arg=arg0;
 s32 flag; s32 offset;
 struct Player *player; u8 *selected; register s32 count asm("r3"); u32 i; struct Item469DC *item;
 u8 *data; u32 task; u8 *entity; u8 *found; u32 j; s32 left; u8 *slot; u32 actor; u8 **itemsbase; register u32 v1 asm("r1"); u32 v2; u8 *cmdaddr; u8 *dataptr; u32 off; u32 n;
 register s32 raw asm("r0"); register u32 zero asm("r5");
 s32 b2; s32 b3; s32 b4; s32 b5;register s32 bit asm("r0");u32 off4;u32 off1;register s32 savedCount asm("r6");register s32 playerIndex asm("r5");
 {u32 stride; u8 *base;struct Player *p;register u32 idx asm("r2");register s32 pos asm("r6"); idx=sub_080020F4();stride=0x14C;idx*=stride;base=(u8 *)gUnk_03003CE0;p=(struct Player *)(idx+(u32)base);p->flags|=1;sub_0800D0F4();raw=sub_080020F4()*stride;base+=0x8C;raw=*(s32 *)(raw+(u32)base);pos=raw>>8;if(pos>0x224)sub_08029174(arg,5);else sub_08029174(arg,3); }
 if(sub_0800CE30()) {raw=(s32)state469DC;off1=0x1C7;selected=(u8 *)raw+off1;}else {raw=(s32)state469DC;off=0x1BB;selected=(u8 *)raw+off;}
 raw=*selected;b2=raw>>2;bit=1;b2 &= bit;
 if(sub_0800CE30()) {raw=(s32)state469DC;off4=0x1C7;selected=(u8 *)raw+off4;}else {raw=(s32)state469DC;off1=0x1BB;selected=(u8 *)raw+off1;}
 raw=*selected;b3=raw>>3;bit=1;b3 &= bit;
 if(sub_0800CE30()) {raw=(s32)state469DC;off=0x1C7;selected=(u8 *)raw+off;}else {raw=(s32)state469DC;off4=0x1BB;selected=(u8 *)raw+off4;}
 raw=*selected;b4=raw>>4;bit=1;b4 &= bit;
 if(sub_0800CE30()) {raw=(s32)state469DC;off1=0x1C7;selected=(u8 *)raw+off1;}else {raw=(s32)state469DC;off=0x1BB;selected=(u8 *)raw+off;}
 raw=*selected;b5=raw>>5;bit=1;b5 &= bit;
 if(b2 && b3) {if(!b4)goto exchange;if(!b5)goto partial;
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402BB);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto finish;}
 partial:if(b4){
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402BA);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto finish;}
 exchange:
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402B3);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 count=0;i=0;item=(struct Item469DC *)(items469DC+0x150);
 do {if(load469DC(&item->kind)==4 && item->id==3)count++;item++;i++;}while(i<=24);
 savedCount=count;playerIndex=sub_080020F4();if(savedCount && !playerIndex){
 actor=arg;flag=3;if(arg>0x100000) {
 found=find469DC(actor);
 if(found) *(u16 *)(found+0x42)=flag;
 } else if(arg) {actor=arg-1;if(actor<=4){u8 **base=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else {raw=sub_080020F4()*0x14C;{u8 *base=(u8 *)gUnk_03003CE0;raw+=(s32)base;v1=0x11E;raw+=v1;*(u16 *)raw=flag;}}
while(sub_0805F184())sub_080003F0();task=sub_0805DF38(1,15,2,0,-2,0x1402B4);while(!sub_0805EEFC((void *)task))sub_080003F0();flag=sub_0805EF14((u8 *)task);if(flag){data=cmd.data;
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402B6);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;itemsbase=&items469DC;zero=0;
 loopRemove:raw=(s32)*itemsbase;slot=(u8 *)raw+j*16;
 if(*(u16 *)(slot+0x150)!=4 || *(u16 *)(slot+0x152)!=3 || (left--,*(u16 *)(slot+0x150)=zero,*(u16 *)(slot+0x152)=zero,left!=0)) {j++;if(j<=24)goto loopRemove;}

 v1=1;v2=0x1E;cmdaddr=(u8 *)&cmd;*(u16 *)cmdaddr=v1;*(u16 *)(cmdaddr+2)=v2;
 n=0;dataptr=data;v2=0;do{dataptr[n]=v2;n++;}while(n<=11);
 n=0;do{sub_0805AB20(&cmd);n++;}while(n<count469DC(1));
 sub_08068070((u32)sub_0805990C,0x24);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402B7);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402B8);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}else{
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402B5);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}}
 finish:sub_0802939C(arg,0);
 {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
struct Item46F28 { u16 kind,id; u8 data[12]; };
extern u8 *state46F28 asm("gUnk_03005CF4");
extern u8 *items46F28 asm("gUnk_030034E0");
static inline u32 load46F28(u16 *p) {u32 v=*p;return v;}
static inline u32 count46F28(u32 n) { return n; }
static inline u8 *find46F28(u32 actor) { u8 *p;u32 i;s32 raw=(s32)state46F28;u32 off=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
/* [RunKeitaDialogue] Sets local player flags bit 0 (input suppression) and BeginLocalPlayerEventLock. Plays
 * scene animation 6 on the argument entity (PlaySceneEntityAnimation) when the local player's pixel x (+0x8C
 * >> 8) exceeds 0x1AF, otherwise animation 2. Reads scene event flags 0x22..0x25 (bits 2..5 of event-flag byte
 * +0x1BB, or +0x1C7 when scene flag bit 9 is set). If its own flag 0x25 is set it only shows 0x1402C3, or
 * 0x1402C4 when all four flags are set. Otherwise it shows 0x1402BC and counts bag records (character +0x150,
 * 25 slots) with kind 2 and ID 0x38. */
void sub_08046F28(u32 arg0){
 struct Item46F28 cmd; u8 unused[16];
 u32 arg=arg0;
 s32 flag; s32 offset;
 struct Player *player; u8 *selected; register s32 count asm("r3"); u32 i; struct Item46F28 *item;
 u8 *data; u32 task; u8 *entity; u8 *found; u32 j; s32 left; u8 *slot; u32 actor; u8 **itemsbase; register u32 v1 asm("r1"); u32 v2; u8 *cmdaddr; u8 *dataptr; u32 off; u32 n;
 register s32 raw asm("r0"); register u32 zero asm("r5");
 s32 b2; s32 b3; s32 b4; s32 b5;register s32 bit asm("r0");u32 off4;u32 off1;register s32 savedCount asm("r6");register s32 playerIndex asm("r5");
 {u32 stride; u8 *base;struct Player *p;register u32 idx asm("r2");register s32 pos asm("r6"); idx=sub_080020F4();stride=0x14C;idx*=stride;base=(u8 *)gUnk_03003CE0;p=(struct Player *)(idx+(u32)base);p->flags|=1;sub_0800D0F4();raw=sub_080020F4()*stride;base+=0x8C;raw=*(s32 *)(raw+(u32)base);pos=raw>>8;if(pos>0x1AF)sub_08029174(arg,6);else sub_08029174(arg,2); }
 if(sub_0800CE30()) {raw=(s32)state46F28;off1=0x1C7;selected=(u8 *)raw+off1;}else {raw=(s32)state46F28;off=0x1BB;selected=(u8 *)raw+off;}
 raw=*selected;b2=raw>>2;bit=1;b2 &= bit;
 if(sub_0800CE30()) {raw=(s32)state46F28;off4=0x1C7;selected=(u8 *)raw+off4;}else {raw=(s32)state46F28;off1=0x1BB;selected=(u8 *)raw+off1;}
 raw=*selected;b3=raw>>3;bit=1;b3 &= bit;
 if(sub_0800CE30()) {raw=(s32)state46F28;off=0x1C7;selected=(u8 *)raw+off;}else {raw=(s32)state46F28;off4=0x1BB;selected=(u8 *)raw+off4;}
 raw=*selected;b4=raw>>4;bit=1;b4 &= bit;
 if(sub_0800CE30()) {raw=(s32)state46F28;off1=0x1C7;selected=(u8 *)raw+off1;}else {raw=(s32)state46F28;off=0x1BB;selected=(u8 *)raw+off;}
 raw=*selected;b5=raw>>5;bit=1;b5 &= bit;
 if(b2 && b3 && b4) {if(!b5)goto exchange;
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402C4);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto finish;}
 partial:if(b5){
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402C3);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto finish;}
 exchange:
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402BC);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 count=0;i=0;item=(struct Item46F28 *)(items46F28+0x150);
 do {if(load46F28(&item->kind)==2 && item->id==0x38)count++;item++;i++;}while(i<=24);
 savedCount=count;playerIndex=sub_080020F4();if(savedCount && !playerIndex){
 actor=arg;flag=3;if(arg>0x100000) {
 found=find46F28(actor);
 if(found) *(u16 *)(found+0x42)=flag;
 } else if(arg) {actor=arg-1;if(actor<=4){u8 **base=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else {raw=sub_080020F4()*0x14C;{u8 *base=(u8 *)gUnk_03003CE0;raw+=(s32)base;v1=0x11E;raw+=v1;*(u16 *)raw=flag;}}
while(sub_0805F184())sub_080003F0();task=sub_0805DF38(1,15,2,0,-2,0x1402BD);while(!sub_0805EEFC((void *)task))sub_080003F0();flag=sub_0805EF14((u8 *)task);if(flag){data=cmd.data;
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402BF);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;itemsbase=&items46F28;zero=0;
 loopRemove:raw=(s32)*itemsbase;slot=(u8 *)raw+j*16;
 if(*(u16 *)(slot+0x150)!=2 || *(u16 *)(slot+0x152)!=0x38 || (left--,*(u16 *)(slot+0x150)=zero,*(u16 *)(slot+0x152)=zero,left!=0)) {j++;if(j<=24)goto loopRemove;}

 v1=1;v2=0x1E;cmdaddr=(u8 *)&cmd;*(u16 *)cmdaddr=v1;*(u16 *)(cmdaddr+2)=v2;
 n=0;dataptr=data;v2=0;do{dataptr[n]=v2;n++;}while(n<=11);
 n=0;do{sub_0805AB20(&cmd);n++;}while(n<count46F28(1));
 sub_08068070((u32)sub_0805990C,0x25);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402C0);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402C1);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}else{
while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();task=sub_0805DF38(1,15,2,0,-1,0x1402BE);while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}}
 finish:sub_0802939C(arg,0);
 {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
struct Item47474 { u16 kind,id; u8 data[12]; };
extern u8 *state47474 asm("gUnk_03005CF4");
extern u8 *items47474 asm("gUnk_030034E0");
extern void sub_0805990C(void);
static inline u32 load47474(u16 *p) {u32 v=*p;return v;}
static inline u32 count47474(u32 n) { return n; }
static inline u8 *find47474(u32 actor) { u8 *p;u32 i;s32 raw=(s32)state47474;u32 off=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
/* [ExchangeItemFortyTwo] Sets player flag1 and faces entity. If mode-selected byte mask0x20 clear, shows22B
 * and, when inventory contains type1:id0x2A, consumes one, updates entity animation/state3, attempts inventory
 * insertion of one descriptor1:0x2B, queues callback5990C(13) and shows22E. Completed-bit path shows230;
 * no-item path only initial message. All normal exits clear flag/input helper; message abort does not cancel
 * later transaction. Inventory insertion return is ignored; consumed inputs are not restored on insertion
 * failure. */
void sub_08047474(u32 arg0) {
 struct Item47474 cmd; u8 unused[16];
 u32 arg=arg0;
 register s32 flag asm("r4"); register s32 offset asm("r1");
 struct Player *player; u8 *selected; s32 count; u32 i; struct Item47474 *item;
 register u8 *data asm("r6"); u32 task; u8 *entity; u8 *found; u32 j; s32 left; u8 *slot; u32 actor; u8 **itemsbase; register u32 v1 asm("r1"); u32 v2; u8 *cmdaddr; register u8 *dataptr asm("r1"); u32 off; u32 n;
 register s32 raw asm("r0"); register u32 zero asm("r5");
 offset=sub_080020F4();offset*=0x14C;player=(struct Player *)((u8 *)gUnk_03003CE0+offset);raw=player->flags;flag=1;player->flags=raw|flag;
 sub_0800D0F4();sub_0802949C(arg,0);
 if(sub_0800CE30()) selected=state47474+0x1C4;else {off=0x1B8;selected=state47474+off;}
 raw=*selected;asm("" : "+r"(raw));raw>>=5;raw &= flag;
 if(!raw) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x14022B);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 count=0;i=0;item=(struct Item47474 *)(items47474+0x150);
 do {if(load47474(&item->kind)==1 && item->id==0x2A)count++;item++;i++;}while(i<=24);
 if(count>0) {
 actor=arg;flag=3;if(actor>0x100000) {
 found=find47474(actor);data=cmd.data;
 if(found) *(u16 *)(found+0x42)=flag;
 } else if(arg) {actor=arg-1;data=cmd.data;if(actor<=4){u8 **base=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else {raw=sub_080020F4()*0x14C;{u8 *base=(u8 *)gUnk_03003CE0;raw+=(s32)base;v1=0x11E;raw+=v1;*(u16 *)raw=flag;}data=cmd.data;}
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x14022D);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;itemsbase=&items47474;zero=0;
 loopRemove:raw=(s32)*itemsbase;slot=(u8 *)raw+j*16;
 if(*(u16 *)(slot+0x150)!=1 || *(u16 *)(slot+0x152)!=0x2A || (left--,*(u16 *)(slot+0x150)=zero,*(u16 *)(slot+0x152)=zero,left!=0)) {j++;if(j<=24)goto loopRemove;}

 v1=1;v2=0x2B;cmdaddr=(u8 *)&cmd;*(u16 *)cmdaddr=v1;*(u16 *)(cmdaddr+2)=v2;
 n=0;dataptr=data;v2=0;do{dataptr[n]=v2;n++;}while(n<=11);
 n=0;do{sub_0805AB20(&cmd);n++;}while(n<count47474(1));
 sub_08068070((u32)sub_0805990C,13);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x14022E);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 } else {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x140230);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 {struct Player *p;register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
struct Camera778C { u8 pad[0x80]; s16 x,y; };
struct Task778C { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
extern u8 *state778C asm("gUnk_03005CF4");
extern void camera778C(s32,s32) asm("sub_0800BB80");
extern void sub_08047970(void);
static inline u32 bool778C(u8 *base, u32 *unused) { register u32 bit asm("r4"); register u32 value asm("r0");bit=1;value=*(u32 *)(base+0x38);value &= bit;if(value)value=1;return value; }
/* [StartCameraActorResetScene] If scene word+0x38 bit0 is clear, locks local player/input, pans camera
 * to(0,-120), restores screen, attempts callback sub_08047970 in30-slot pool with retry allocation, and sets
 * that scene bit. If already set, restores screen and resets state12 to0 on active entity slots0..4, then
 * calls sub_08019F04. First branch leaves input locked for asynchronous continuation. */
void sub_0804778C(void) {
 volatile s32 out[2]; s32 sx,sy; s32 i; register s32 step asm("sl"); s32 *py;
 union { s32 all; struct { u16 low; s16 high; } half; } tx,ty;
 struct Task778C *t; u32 n; u32 j; u8 *p; s32 flag; register s32 mask asm("r4"); register s32 offset asm("r1"); struct Player *player; u32 cb; u32 one; register u32 *bits asm("r5"); u32 zero; s32 raw; s32 bit;
 mask=1;flag=bool778C(state778C,0);
 if(flag) goto already;
 offset=sub_080020F4();offset*=0x14C;player=(struct Player *)((u8 *)gUnk_03003CE0+offset);player->flags |= mask;
 sub_0800D0F4();
 step=0x400; sx=((struct Camera778C *)&gUnk_03003170)->x; sy=((struct Camera778C *)&gUnk_03003170)->y;
 i=0; py=&out[1]; tx.all=0; ty.all=0xFF880000;
 do {sub_080659F4(&out[0],sx,tx.half.high,i);sub_080659F4(py,sy,ty.half.high,i);camera778C((s16)out[0],(s16)out[1]);sub_080003F0();i+=step;}while(i<=0x400);
 if(sub_0800CC98()==0) {
 switch(sub_0801AB24()) {case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
 while(sub_0801AAE0()==0)sub_080003F0();
 }
 cb=(u32)sub_08047970;t=(struct Task778C *)(state778C+0xE34); n=0; goto check;
 next: n++;t++;
 check: if(n>29)goto done;
 if(sub_08000470((u32)t)!=0)goto next;
 goto alloc;
 retry:sub_080003F0();
 alloc:t->f20=sub_08001494(0x400);if(t->f20==0)goto retry;
 t->f8=0x3C;t->fC=cb;t->f10=t->f20+0x3FC;t->f24=0;sub_08000274((u32)t,0);
 done:p=state778C;bit=1;raw=*(s32 *)(p+0x38);*(s32 *)(p+0x38)=raw|bit;goto end;
 already:
 if(sub_0800CC98()==0) {
 switch(sub_0801AB24()) {case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
 while(sub_0801AAE0()==0)sub_080003F0();
 }
 p=gUnk_030056F4;j=0;bits=(u32 *)&gUnk_030056FC;one=1;zero=0;
 do {bit=one<<j;raw=*bits;raw &= bit;if((raw)&&*(u16 *)(p+0xC)==0xC)*(u16 *)(p+0xC)=zero;j++;raw=0x2E0;p+=raw;}while(j<=4);
 sub_08019F04();
 end:;
}

struct T47Task970 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u8 *t47State970 asm("gUnk_03005CF4");
extern u32 t47Mask asm("gUnk_030056FC");
extern u8 *t47Players asm("gUnk_030056F4");
extern void sub_08047B2C(void);
extern void sub_0802A080(s32,s32,s32,s32);
/* [SequenceActorResetTasks] Searches30 scene task slots and retries 0x400-byte allocation for callback
 * sub_08047B2C argument0, invokes sub_0802A080, then conditionally stops that task. Closes dialog, starts
 * callbacks with arguments2 and3 using separate pool searches, waits60 ticks, resets state12 to0 for active
 * entity slots0..4 (stride0x2E0), then calls sub_08019F04. Saved first-task pointer is uninitialized if the
 * pool is full in C; startup is not guaranteed. */
void sub_08047970(void)
{
    struct T47Task970 *task;
    struct T47Task970 *saved;
    u32 i, mem;
    u16 timer;
    u8 *player;
    void (*cb)(void);
    void (*cb2)(void);
    u8 *p2;
    u32 j;
    register u32 one asm("r6");
    register u32 zero asm("r4");
    register u32 *mask asm("r5");
    register u32 stride asm("r0");
    cb = sub_08047B2C;
    task = (struct T47Task970 *)(t47State970 + 0xE34);
    i=0;
    goto check0;
next0:
    i++; task++;
check0:
    if (i > 29) goto end0;
    if (sub_08000470((u32)task) != 0) goto next0;
    goto alloc0;
yield0:
    sub_080003F0();
alloc0:
    mem = sub_08001494(0x400);
    task->f20 = mem;
    if (mem == 0) goto yield0;
    task->f8 = 60;
    task->fC = (u32)cb;
    task->f10 = mem+0x3FC;
    task->f24 = 0;
    sub_08000274(task, 0);
    saved = task;
end0:
    sub_0802A080(60,190,160,100);
    if (saved != 0 && sub_08000470((u32)saved) != 0) sub_080003A8((s32)saved);
    timer=1;
    goto wait1;
dec1:
    timer--;
    if (timer == 0) goto done1;
wait1:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec1;
done1:
    sub_0805EFBC();
    do { sub_080003F0(); } while (sub_0805F184() != 0);
    cb2 = sub_08047B2C;
    task = (struct T47Task970 *)(t47State970 + 0xE34);
    i=0;
    goto check1;
next1:
    i++; task++;
check1:
    if (i > 29) goto end1;
    if (sub_08000470((u32)task) != 0) goto next1;
    goto alloc1;
yield1:
    sub_080003F0();
alloc1:
    mem = sub_08001494(0x400);
    task->f20 = mem;
    if (mem == 0) goto yield1;
    task->f8 = 60;
    task->fC = (u32)cb2;
    task->f10 = mem+0x3FC;
    task->f24 = 0;
    sub_08000274(task, 2);
end1:
    cb2 = sub_08047B2C;
    task = (struct T47Task970 *)(t47State970 + 0xE34);
    i=0;
    goto check2;
next2:
    i++; task++;
check2:
    if (i > 29) goto end2;
    if (sub_08000470((u32)task) != 0) goto next2;
    goto alloc2;
yield2:
    sub_080003F0();
alloc2:
    mem = sub_08001494(0x400);
    task->f20 = mem;
    if (mem == 0) goto yield2;
    task->f8 = 60;
    task->fC = (u32)cb2;
    task->f10 = mem+0x3FC;
    task->f24 = 0;
    sub_08000274(task, 3);
end2:
    timer=60;
    goto wait2;
dec2:
    timer--;
    if (timer==0) goto done2;
wait2:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec2;
done2:
    p2=t47Players;
    j=0;
    mask=&t47Mask;
    one=1; zero=0;
    do {
        if (((one<<j) & *mask) && *(u16 *)(p2+12)==12) *(u16 *)(p2+12)=zero;
        j++; stride=0x2E0; p2+=stride;
    } while (j<=4);
    sub_08019F04();
}


extern s16 t47BCamera[] asm("gUnk_03003170");
extern void t47BSetCamera(s32,s32) asm("sub_0800BB80");
extern u8 *t47BPlayers asm("gUnk_030056F4");
extern u8 t47BActors[] asm("gUnk_03003CE0");
extern void sub_08019EB8(u16,s32);
extern void sub_0802949C(s32,s32);
void t47B2C(s32 arg0) asm("sub_08047B2C");
struct T47BPlayer { u16 f0,id; u8 pad[0x2DC]; };
extern struct T47BPlayer *t47BPlayerRows asm("gUnk_030056F4");
void t47B2C(s32 arg0) asm("sub_08047B2C");
/* [RunTwelveMessageCameraSequence] Case0 waits, moves actor selector1, shows messages0x140000..00B with
 * alternating actor1/2 motion and pans camera toward0,0; clears local player flag1/input helper midway.
 * Cases2/3 play sound, set respective actor state3 and facing. Other inputs return unchanged. Dialog waits
 * have no abort path; timed waits can break on21A8. */
void t47B2C(s32 arg0) {
    volatile s32 pos[2];
    s32 *yp;
    register s32 zeroX asm("r8");
    s32 zeroY;
    register s32 step asm("sl");
    register s32 temp_r5 asm("r5");
    register s32 temp_r6 asm("r6");
    s32 var_r4_3;
    register s32 *call0 asm("r0");
    s32 call1;
    s32 call2;
    register s32 call3 asm("r3");
    register u32 h1 asm("r1");
    register u32 h2 asm("r2");
    u32 h7;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r4;
    u32 temp_r4_10;
    u32 temp_r4_11;
    u32 temp_r4_12;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r4_8;
    u32 temp_r4_9;
    u8 *temp_r2;

    
    switch (arg0) {                                 /* irregular */
    case 0:
        var_r4 = 0x1E;
        yp=(s32 *)&pos[1];
        goto wait10;
dec10:
        var_r4--;
        if (var_r4 == 0) goto done10;
wait10:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec10;
done10:
        sub_08028AAC(1, 0x40, 0xB0, 0x1E);
        var_r4_2 = 0x1E;
        goto wait13;
dec13:
        var_r4_2--;
        if (var_r4_2 == 0) goto done13;
wait13:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec13;
done13:

        goto test16;
yield16:
        sub_080003F0();
test16:
        if (sub_0805F184() != 0) goto yield16;
        goto test19;
yield19:
        sub_080003F0();
test19:
        if (sub_0805EF90() != 0) goto yield19;
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140000U);
        goto test22;
yield22:
        sub_080003F0();
test22:
        if (sub_0805EEFC((void *) temp_r4) == 0) goto yield22;
        goto test25;
yield25:
        sub_080003F0();
test25:
        if (sub_0805F184() != 0) goto yield25;
        goto test28;
yield28:
        sub_080003F0();
test28:
        if (sub_0805EF90() != 0) goto yield28;
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140001U);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        goto test31;
yield31:
        sub_080003F0();
test31:
        if (sub_0805EEFC((void *) temp_r4_2) == 0) goto yield31;
        step=0x22;
        temp_r6 = t47BCamera[64];
        asm("" : "=r"(h1),"=r"(h2),"=r"(h7));temp_r5=t47BCamera[65];asm("" : : "r"(h1),"r"(h2),"r"(h7));
        var_r4_3 = 0;
        asm("" : "+r"(var_r4_3));zeroX=var_r4_3;zeroY=0;
        do {
            call0=(s32 *)&pos[0];call1=temp_r6;call3=zeroX;call2=call3>>16;call3=var_r4_3;sub_080659F4(call0,call1,call2,call3);
            call0=yp;call1=temp_r5;call2=zeroY>>16;call3=var_r4_3;sub_080659F4(call0,call1,call2,call3);
            t47BSetCamera((s16) pos[0], (s16) pos[1]);
            sub_080003F0();
            var_r4_3 += step;
        } while (var_r4_3 <= 0x400);
        temp_r2 = (0x14C * sub_080020F4()) + t47BActors;
        *(u32 *)(temp_r2+0x30) = (s32) (*(u32 *)(temp_r2+0x30) & ~1);
        sub_0800D108();
        goto test36;
yield36:
        sub_080003F0();
test36:
        if (sub_0805F184() != 0) goto yield36;
        goto test39;
yield39:
        sub_080003F0();
test39:
        if (sub_0805EF90() != 0) goto yield39;
        temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140002U);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        goto test42;
yield42:
        sub_080003F0();
test42:
        if (sub_0805EEFC((void *) temp_r4_3) == 0) goto yield42;
        goto test45;
yield45:
        sub_080003F0();
test45:
        if (sub_0805F184() != 0) goto yield45;
        goto test48;
yield48:
        sub_080003F0();
test48:
        if (sub_0805EF90() != 0) goto yield48;
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140003U);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        goto test51;
yield51:
        sub_080003F0();
test51:
        if (sub_0805EEFC((void *) temp_r4_4) == 0) goto yield51;
        goto test54;
yield54:
        sub_080003F0();
test54:
        if (sub_0805F184() != 0) goto yield54;
        goto test57;
yield57:
        sub_080003F0();
test57:
        if (sub_0805EF90() != 0) goto yield57;
        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140004U);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        goto test60;
yield60:
        sub_080003F0();
test60:
        if (sub_0805EEFC((void *) temp_r4_5) == 0) goto yield60;
        goto test63;
yield63:
        sub_080003F0();
test63:
        if (sub_0805F184() != 0) goto yield63;
        goto test66;
yield66:
        sub_080003F0();
test66:
        if (sub_0805EF90() != 0) goto yield66;
        temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140005U);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        goto test69;
yield69:
        sub_080003F0();
test69:
        if (sub_0805EEFC((void *) temp_r4_6) == 0) goto yield69;
        goto test72;
yield72:
        sub_080003F0();
test72:
        if (sub_0805F184() != 0) goto yield72;
        goto test75;
yield75:
        sub_080003F0();
test75:
        if (sub_0805EF90() != 0) goto yield75;
        temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140006U);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        goto test78;
yield78:
        sub_080003F0();
test78:
        if (sub_0805EEFC((void *) temp_r4_7) == 0) goto yield78;
        goto test81;
yield81:
        sub_080003F0();
test81:
        if (sub_0805F184() != 0) goto yield81;
        goto test84;
yield84:
        sub_080003F0();
test84:
        if (sub_0805EF90() != 0) goto yield84;
        temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140007U);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        goto test87;
yield87:
        sub_080003F0();
test87:
        if (sub_0805EEFC((void *) temp_r4_8) == 0) goto yield87;
        goto test90;
yield90:
        sub_080003F0();
test90:
        if (sub_0805F184() != 0) goto yield90;
        goto test93;
yield93:
        sub_080003F0();
test93:
        if (sub_0805EF90() != 0) goto yield93;
        temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140008U);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        goto test96;
yield96:
        sub_080003F0();
test96:
        if (sub_0805EEFC((void *) temp_r4_9) == 0) goto yield96;
        goto test99;
yield99:
        sub_080003F0();
test99:
        if (sub_0805F184() != 0) goto yield99;
        goto test102;
yield102:
        sub_080003F0();
test102:
        if (sub_0805EF90() != 0) goto yield102;
        temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140009U);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        goto test105;
yield105:
        sub_080003F0();
test105:
        if (sub_0805EEFC((void *) temp_r4_10) == 0) goto yield105;
        goto test108;
yield108:
        sub_080003F0();
test108:
        if (sub_0805F184() != 0) goto yield108;
        goto test111;
yield111:
        sub_080003F0();
test111:
        if (sub_0805EF90() != 0) goto yield111;
        temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x14000AU);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        goto test114;
yield114:
        sub_080003F0();
test114:
        if (sub_0805EEFC((void *) temp_r4_11) == 0) goto yield114;
        goto test117;
yield117:
        sub_080003F0();
test117:
        if (sub_0805F184() != 0) goto yield117;
        goto test120;
yield120:
        sub_080003F0();
test120:
        if (sub_0805EF90() != 0) goto yield120;
        temp_r4_12 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x14000BU);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        goto test123;
yield123:
        sub_080003F0();
test123:
        if (sub_0805EEFC((void *) temp_r4_12) == 0) goto yield123;
        return;
    case 2:
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x45U);
        }
        sub_08019EB8(*(u16 *)(t47BPlayers+2), 3);
        sub_0802949C(1, 0);
        return;
    case 3:
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x45U);
        }
        sub_08019EB8(t47BPlayerRows[1].id, 3);
        sub_0802949C(2, 0);
        return;
    }
}
struct T47Task { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u8 *t47State asm("gUnk_03005CF4");
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
/* [ArmObjectSevenParking] Descriptor callback5A3F0,arg7 passed to2A104 with object6 after reveal. */
void sub_080480E8(void)
{
    u32 args[6];
    struct T47Task *task;
    register u32 free asm("r5");
    u32 i;
    void (*callback)(s32);
    s32 state;
    if (sub_0800CC98() == 0) {
        state = sub_0801AB24();
        switch (state) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    callback = sub_0805A3F0;
    task = (struct T47Task *)(t47State + 0xE34);
    i = 0;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    free = sub_08000470((u32)task);
    if (free != 0) goto next;
    args[3] = (u32)callback;
    args[4] = 7;
    task->f8 = 0x3C;
    task->f20 = sub_08001494(0x400);
    task->fC = (u32)sub_0802A104;
    task->f10 = task->f20 + 0x3FC;
    task->f24 = free;
    sub_08000274(task, args, 6);
    sub_080003F0();
    sub_080003F0();
}



struct T47CTask { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern u8 *t47CState asm("gUnk_03005CF4");
extern u8 *t47CPlayers asm("gUnk_030056F4");
extern u8 *t47CItems asm("gUnk_030034E0");
extern u8 t47CActors[] asm("gUnk_03003CE0");
extern s16 t47CCamera[] asm("gUnk_03003170");
extern void t47CCallback(s32) asm("sub_08048570");
extern void sub_0805A004(void);
extern s32 sub_080586B4(s32);
extern u32 t47CMask asm("gUnk_030056FC");
extern void t47CSetCamera(s32,s32) asm("sub_0800BB80");
static inline u32 t47CNorm0(u32 x){register u32 r asm("r0")=x;if(r!=0)r=1;return r;}
static inline u32 t47CTest8(u8 *p){u32 m=8;register u32 r asm("r1")=*(u32 *)(p+0x38);r&=m;if(r!=0)r=1;return r;}
/* [InitializePairedSceneContinuations] First scene+38 bit1 entry sets that bit, counts item1/22 across
 * bag/storage and progressionbit6 to choose a player0 callback argument, optionally starts song0xC4, locks
 * input, pans to(0,-35), restores screen and attempts two callback tasks with args0/1, returning with locks
 * retained. Reentry restores screen, resets active actor state12, and conditionally restarts arg1 plus
 * scene/music callbacks. Pool-full skips admissions; stacks retry; no completion wait. */
void sub_0804819C(void) {
    volatile s32 pos[2];
    void (*cb)(s32);
    register s32 *yp asm("sl");
    s32 step;
    s32 zeroX;
    s32 targetY;
    register u32 hold0 asm("r1");
    register u32 hold1 asm("r2");
    u32 hold2;

    s32 temp_r5;
    s32 temp_r6_2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r1;
    u8 **statebase;
    u8 *initstate;
    register s32 initone asm("r5");
    register u32 off5 asm("r5");
    u32 off1;
    register u32 off2 asm("r2");
    register s32 *call0 asm("r0");
    register s32 call1 asm("r1");
    s32 call2;
    register s32 call3 asm("r3");
    u32 initMask;
    register s32 raw asm("r0");
    u32 code;
    s32 temp_r4;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r1;
    register s32 var_r3_2 asm("r3");
    s32 savedCount;
    register s32 var_r3_3 asm("r3");
    s32 var_r4_2;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r3;
    struct T47CTask *var_r4;
    struct T47CTask *var_r4_3;
    struct T47CTask *var_r4_4;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u8 *var_r0_2;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u8 *temp_r2;
    u8 *var_r1_2;
    u8 *var_r1_3;
    u8 *var_r2;
    register u32 *mask asm("r5");
    register u32 one asm("r6");
    register u32 zero asm("r4");
    register u32 stride asm("r7");

    statebase=&t47CState;initstate=*statebase;
    initMask=2;
    temp_r1 = *(u32 *)(initstate+0x38);
    var_r0 = t47CNorm0(temp_r1&initMask);
    if (var_r0 == 0) {
        *(u32 *)(initstate+0x38) = (s32) (temp_r1 | initMask);
        initone=1;
        if (sub_0800CE30() != 0) {
            var_r0_2 = *statebase + 0x1C4;
        } else {
            var_r0_2 = *statebase + 0x1B8;
        }
        raw=*var_r0_2;temp_r4=(raw>>6)&initone;
        temp_r6 = sub_080020F4();
        var_r3_2 = 0;
        var_r2_2 = 0;
        yp=(s32 *)&pos[1];
        var_r1_2 = t47CItems + 0x150;
        do {
            if ((*(u16 *)var_r1_2 == 1) && (*(u16 *)(var_r1_2+2) == 0x22)) {
                var_r3_2 += 1;
            }
            var_r1_2 += 0x10;
            var_r2_2 += 1;
        } while (var_r2_2 <= 0x18U);
        savedCount=var_r3_2;
        var_r3_3 = 0;
        var_r2_3 = 0;
        var_r1_3 = t47CItems + 0x2E0;
        do {
            if ((*(u16 *)var_r1_3 == 1) && (*(u16 *)(var_r1_3+2) == 0x22)) {
                var_r3_3 += 1;
            }
            var_r1_3 += 0x10;
            var_r2_3 += 1;
        } while (var_r2_3 <= 0x4AU);
        if (temp_r6 == 0) {
            if ((temp_r4 | savedCount | var_r3_3) == 0) {
                sub_08068820((u32)sub_0805A004, NULL, NULL);
            } else {
                sub_08068820((u32)sub_0805A004, (void *)1, NULL);
            }
        }
        if (sub_08002164() == 1) {
            code=0xC4;gUnk_03005CF8 = code;
            if (!(gUnk_030027D0 & 0x20)) {
                sub_08006CB4(0xC4U);
            }
        }
        temp_r2 = (0x14C * sub_080020F4()) + t47CActors;
        *(u32 *)(temp_r2+0x30) = (s32) (*(u32 *)(temp_r2+0x30) | 1);
        sub_0800D0F4();
        step=0x400;
        temp_r6_2 = (s16) t47CCamera[64];
        asm("" : "=r"(hold0),"=r"(hold1),"=r"(hold2));temp_r5=t47CCamera[65];asm("" : : "r"(hold0),"r"(hold1),"r"(hold2));
        var_r4_2 = 0;
        zeroX=0;targetY=0xFFDD0000;
        do {
            call0=(s32 *)&pos[0];call1=temp_r6_2;call3=zeroX;asm("" : "+r"(call3));call2=call3>>16;call3=var_r4_2;sub_080659F4(call0,call1,call2,call3);
            sub_080659F4(yp, temp_r5, targetY >> 0x10, var_r4_2);
            t47CSetCamera((s16)pos[0],(s16)pos[1]);
            sub_080003F0();
            var_r4_2 += step;
        } while (var_r4_2 <= 0x400);
        if (sub_0800CC98() == 0) {
            temp_r0_3 = sub_0801AB24();
            switch (temp_r0_3) {                    /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 1 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 1 */
                sub_0801AB90(6);
                break;
            }
        goto test37;
yield37:
        sub_080003F0();
test37:
        if(sub_0801AAE0()==0) goto yield37;
        }
        cb=t47CCallback;
        raw=(s32)t47CState;off5=0xE34;var_r4_3=(struct T47CTask *)(raw+off5);
        var_r5_2=0;
        goto check0;
next0:
        var_r5_2++;var_r4_3++;
check0:
        if(var_r5_2>29) goto end0;
        if(sub_08000470((u32)var_r4_3)!=0) goto next0;
        goto alloc0;
yield0:
        sub_080003F0();
alloc0:
        temp_r0_4=sub_08001494(0x400);
        var_r4_3->f20=temp_r0_4;
        if(temp_r0_4==0) goto yield0;
        var_r4_3->f8=60;var_r4_3->fC=(u32)cb;stride=0x3FC;var_r4_3->f10=temp_r0_4+stride;var_r4_3->f24=0;
        sub_08000274(var_r4_3,0);
end0:
        cb=t47CCallback;
        raw=(s32)t47CState;off1=0xE34;asm("" : "+r"(off1));var_r4_4=(struct T47CTask *)(raw+off1);
        var_r5_3=0;
        goto check1;
next1:
        var_r5_3++;var_r4_4++;
check1:
        if(var_r5_3>29) goto end1;
        if(sub_08000470((u32)var_r4_4)!=0) goto next1;
        goto alloc1;
yield1:
        sub_080003F0();
alloc1:
        temp_r0_5=sub_08001494(0x400);
        var_r4_4->f20=temp_r0_5;
        if(temp_r0_5==0) goto yield1;
        var_r4_4->f8=60;var_r4_4->fC=(u32)cb;off2=0x3FC;asm("" : "+r"(off2));raw=temp_r0_5+off2;var_r4_4->f10=raw;var_r4_4->f24=0;
        sub_08000274(var_r4_4,1);
end1:
        return;
    } else {
        if (sub_0800CC98() == 0) {
            temp_r0 = sub_0801AB24();
            switch (temp_r0) {                      /* switch 2; irregular */
            case 0:                                 /* switch 2 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 2 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 2 */
                sub_0801AB90(6);
                break;
            }
        goto test66;
yield66:
        sub_080003F0();
test66:
        if(sub_0801AAE0()==0) goto yield66;
        }
        var_r2 = t47CPlayers;
        var_r3 = 0;mask=&t47CMask;one=1;zero=0;
        do {
            if (((one<<var_r3)&*mask) && (*(u16 *)(var_r2+12) == 0xC)) {
                *(u16 *)(var_r2+12) = zero;
            }
            var_r3 += 1;
            stride=0x2E0;var_r2+=stride;
        } while (var_r3 <= 4U);
        sub_08019F04();
        var_r1=t47CTest8(t47CState);
        if (var_r1 == 0) {
            cb=t47CCallback;
        raw=0xE34;asm("" : "+r"(raw));var_r4=(struct T47CTask *)(t47CState+raw);
        var_r5=0;
        goto check2;
next2:
        var_r5++;var_r4++;
check2:
        if(var_r5>29) goto end2;
        if(sub_08000470((u32)var_r4)!=0) goto next2;
        goto alloc2;
yield2:
        sub_080003F0();
alloc2:
        temp_r0_2=sub_08001494(0x400);
        var_r4->f20=temp_r0_2;
        if(temp_r0_2==0) goto yield2;
        var_r4->f8=60;var_r4->fC=(u32)cb;off2=0x3FC;asm("" : "+r"(off2));raw=temp_r0_2+off2;var_r4->f10=raw;var_r4->f24=0;
        sub_08000274(var_r4,1);
end2:
            if (sub_08002164() == 1) {
                sub_08068070((u32) sub_08059954, 7U);
                code=0xA5;gUnk_03005CF8 = code;
                if (!(gUnk_030027D0 & 0x20)) {
                    sub_08006CB4(0xA5U);
                }
            }
        } else if (sub_0800CB9C() == 0) {
            if (!(gUnk_030027D0 & 0x20)) {
                gUnk_03005CF8 = 1;
                sub_08006CB4(1U);
            }
        } else {
            sub_080586B4(0);
        }
        }
}




struct T47DTask { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern u8 *t47DState asm("gUnk_03005CF4");
extern u8 t47DActors[] asm("gUnk_03003CE0");
extern u8 *t47DPlayers asm("gUnk_030056F4");
extern u32 t47DMask asm("gUnk_030056FC");
extern void sub_08048A74(void);
static inline u32 t47DTest(u8 *p){u32 m=8;u32 r=*(u32 *)(p+0x38);r&=m;if(r!=0)r=1;return r;}
static inline u32 t47DTest4(u8 *p){u32 m=4;u32 r=*(u32 *)(p+0x38);r&=m;if(r!=0)r=1;return r;}
/* [CoordinateActorStateRecovery] Case0 starts48A74 task, configures scene rectangle and returns early on flag
 * predicate. Another flag selects five helper tasks then player release and actor state12 reset; alternative
 * queues callback59954(7), cancels saved first task if scheduled, closes UI and starts mode1 helper. Case1
 * polls state gates, queues callbacks, shows14002F and restores player input. Local starts retry allocations,
 * fullpool skip; saved pointer may be unset if first task pool full. */
void sub_08048570(s32 arg0)
{
    struct T47DTask *task;
    struct T47DTask *saved;
    u32 i,mem,dialog;
    u16 timer;
    u32 flag;
    u32 result;
    u8 *actor;
    u32 index;
    u32 scale;
    register u32 offset asm("r2");
    u32 currentFlag;
    u8 *p;
    u32 j;
    register u32 *mask asm("r5");
    register u32 one asm("r6");
    register u32 zero asm("r4");
    register u32 stride asm("r0");
    void (*cb)(void);
    void (*cb2)(void);
    switch(arg0) {
    case 0:
    cb=sub_08048A74;
    task=(struct T47DTask *)(t47DState+0xE34);
    i=0;
    goto check0;
next0:
    i++;task++;
check0:
    if(i>29) goto end0;
    if(sub_08000470((u32)task)!=0) goto next0;
    goto alloc0;
yield0:
    sub_080003F0();
alloc0:
    mem=sub_08001494(0x400);
    task->f20=mem;
    if(mem==0) goto yield0;
    task->f8=60;
    task->fC=(u32)cb;
    task->f10=mem+0x3FC;
    task->f24=0;
    sub_08000274(task,0);
    saved=task;
end0:
    sub_0802A080(120,175,50,20);
    flag=t47DTest(t47DState);
    if(flag!=0) return;
    result=sub_08002164();
    
    if(result==1){
        result=0xA5;
        gUnk_03005CF8=result;
        if(!(gUnk_030027D0&0x20)) sub_08006CB4(0xA5);
    }
    flag=t47DTest4(t47DState);
    if(flag!=1) goto other;
    cb2=sub_08048A74;
    task=(struct T47DTask *)(t47DState+0xE34);
    i=0;
    goto check2;
next2:
    i++;task++;
check2:
    if(i>29) goto end2;
    if(sub_08000470((u32)task)!=0) goto next2;
    goto alloc2;
yield2:
    sub_080003F0();
alloc2:
    mem=sub_08001494(0x400);
    task->f20=mem;
    if(mem==0) goto yield2;
    task->f8=60;
    task->fC=(u32)cb2;
    task->f10=mem+0x3FC;
    task->f24=0;
    sub_08000274(task,2);
end2:
    cb2=sub_08048A74;
    task=(struct T47DTask *)(t47DState+0xE34);
    i=0;
    goto check3;
next3:
    i++;task++;
check3:
    if(i>29) goto end3;
    if(sub_08000470((u32)task)!=0) goto next3;
    goto alloc3;
yield3:
    sub_080003F0();
alloc3:
    mem=sub_08001494(0x400);
    task->f20=mem;
    if(mem==0) goto yield3;
    task->f8=60;
    task->fC=(u32)cb2;
    task->f10=mem+0x3FC;
    task->f24=0;
    sub_08000274(task,3);
end3:
    cb2=sub_08048A74;
    task=(struct T47DTask *)(t47DState+0xE34);
    i=0;
    goto check4;
next4:
    i++;task++;
check4:
    if(i>29) goto end4;
    if(sub_08000470((u32)task)!=0) goto next4;
    goto alloc4;
yield4:
    sub_080003F0();
alloc4:
    mem=sub_08001494(0x400);
    task->f20=mem;
    if(mem==0) goto yield4;
    task->f8=60;
    task->fC=(u32)cb2;
    task->f10=mem+0x3FC;
    task->f24=0;
    sub_08000274(task,4);
end4:
    cb2=sub_08048A74;
    task=(struct T47DTask *)(t47DState+0xE34);
    i=0;
    goto check5;
next5:
    i++;task++;
check5:
    if(i>29) goto end5;
    if(sub_08000470((u32)task)!=0) goto next5;
    goto alloc5;
yield5:
    sub_080003F0();
alloc5:
    mem=sub_08001494(0x400);
    task->f20=mem;
    if(mem==0) goto yield5;
    task->f8=60;
    task->fC=(u32)cb2;
    task->f10=mem+0x3FC;
    task->f24=0;
    sub_08000274(task,5);
end5:
    cb2=sub_08048A74;
    task=(struct T47DTask *)(t47DState+0xE34);
    i=0;
    goto check6;
next6:
    i++;task++;
check6:
    if(i>29) goto end6;
    if(sub_08000470((u32)task)!=0) goto next6;
    goto alloc6;
yield6:
    sub_080003F0();
alloc6:
    mem=sub_08001494(0x400);
    task->f20=mem;
    if(mem==0) goto yield6;
    task->f8=60;
    task->fC=(u32)cb2;
    task->f10=mem+0x3FC;
    task->f24=0;
    sub_08000274(task,6);
end6:
    index=sub_080020F4(); scale=0x14C;offset=index;offset*=scale;actor=t47DActors+offset;
    *(u32 *)(actor+0x30)&=~1;
    sub_0800D108();
    timer=60;
    goto wait65;
dec65:
    timer--;
    if(timer==0) goto done65;
wait65:
    sub_080003F0();
    if(sub_080021A8()==0) goto dec65;
done65:
    p=t47DPlayers; j=0;mask=&t47DMask;one=1;zero=0;
    do {
        if(((one<<j)&*mask) && *(u16 *)(p+12)==12) *(u16 *)(p+12)=zero;
        j++;stride=0x2E0;p+=stride;
    }while(j<=4);
    sub_08019F04();
    return;
other:
    sub_08068070((u32)sub_08059954,7);
    if(saved!=0 && sub_08000470((u32)saved)!=0) sub_080003A8((s32)saved);
    index=sub_080020F4(); scale=0x14C;offset=index;offset*=scale;actor=t47DActors+offset;
    *(u32 *)(actor+0x30)|=1;
    sub_0800D0F4();
    timer=1;
    goto wait77;
dec77:
    timer--;
    if(timer==0) goto done77;
wait77:
    sub_080003F0();
    if(sub_080021A8()==0) goto dec77;
done77:
    sub_0805EFBC();
    do {sub_080003F0();}while(sub_0805F184()!=0);
    cb2=sub_08048A74;
    task=(struct T47DTask *)(t47DState+0xE34);
    i=0;
    goto check1;
next1:
    i++;task++;
check1:
    if(i>29) goto end1;
    if(sub_08000470((u32)task)!=0) goto next1;
    goto alloc1;
yield1:
    sub_080003F0();
alloc1:
    mem=sub_08001494(0x400);
    task->f20=mem;
    if(mem==0) goto yield1;
    task->f8=60;
    task->fC=(u32)cb2;
    task->f10=mem+0x3FC;
    task->f24=0;
    sub_08000274(task,1);
end1:
    return;
    case 1:
start1:
    timer=1;
    goto wait91;
dec91:
    timer--;
    if(timer==0) goto done91;
wait91:
    sub_080003F0();
    if(sub_080021A8()==0) goto dec91;
done91:
    if(!((*(u16 *)(t47DState+4)>>4)&1)) currentFlag=sub_08019C3C();
    else currentFlag=1;
    if(currentFlag!=0) goto start1;
    sub_08068070((u32)sub_08059954,3);
    index=sub_080020F4(); scale=0x14C;offset=index;offset*=scale;actor=t47DActors+offset;
    *(u32 *)(actor+0x30)|=1;
    sub_0800D0F4();
    while(sub_0805F184()!=0)sub_080003F0();
    while(sub_0805EF90()!=0)sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,45,0x14002F);
    while(sub_0805EEFC((void *)dialog)==0)sub_080003F0();
    index=sub_080020F4(); scale=0x14C;offset=index;offset*=scale;actor=t47DActors+offset;
    *(u32 *)(actor+0x30)&=~1;
    sub_0800D108();
    timer=60;
    goto wait107;
dec107:
    timer--;
    if(timer==0) goto done107;
wait107:
    sub_080003F0();
    if(sub_080021A8()==0) goto dec107;
done107:
    sub_08068070((u32)sub_080599B0,7);
    flag=sub_08002164();
    if(flag==1){
        gUnk_03005CF8=flag;
        if(!(gUnk_030027D0&0x20))sub_08006CB4(1);
    }
    return;
    }
}

struct T47ETask { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
struct T47EPlayer { u16 f0,id; u8 pad[0x2DC]; };
extern u8 *t47EState asm("gUnk_03005CF4");
extern struct T47EPlayer *t47EPlayers asm("gUnk_030056F4");
extern u8 t47EActors[] asm("gUnk_03003CE0");
extern s16 t47ECamera[] asm("gUnk_03003170");
extern void sub_080290E4(s32,s32);
extern void sub_08029174(s32,s32);
extern void t47ESetCamera(s32,s32) asm("sub_0800BB80");
void t47EScript(u32 arg0) asm("sub_08048A74");
struct T47EFrame { volatile s32 pos[4]; s32 *volatile yp; };
extern u32 t47EMask asm("gUnk_030056FC");
void t47EScript(u32 arg0) asm("sub_08048A74");
static inline u32 t47ETest10(u8 *p){u32 m=0x10;register u32 r asm("r0")=*(u32 *)(p+0x38);r&=m;if(r!=0)r=1;return r;}
static inline void t47ESet4(u8 *p){register u32 m asm("r1")=4;u32 r=*(u32 *)(p+0x38);*(u32 *)(p+0x38)=r|m;}
/* [RunEnsembleDialogueAndMotion] Selector0 unlocks input, runs sequential resource dialogs0x14000C..0x140023
 * with actor bobs/moves, chooses0x140024/25 or0x140033/34 from scene word38 bit4, continues0x140026..28, sets
 * scene bit2 and interpolates camera back to zero. Selector1 runs0x140029..2E, performs actor poses/bobs,
 * independently attempts selector2..5 tasks from30 controls with retrying0x400 stacks/full-pool skip, restores
 * camera, unlocks and resets active entity state12 before invoking update helper. Selectors2..6 play
 * configured sounds when allowed, set an entity pose3 and face the local player; other selectors return. */
void t47EScript(u32 arg0) {
    struct T47EFrame frame;
    register s32 *stack asm("sp");
    void (*cb)(u32);
    u32 off1;
    register u32 off2 asm("r2");
    register u32 off3 asm("r3");
    register u32 raw asm("r0");
    register s32 *xp asm("sl");
    s32 step;
    register s32 zeroX asm("r8");
    s32 zeroY;
    register s32 *call0 asm("r0");
    s32 call1;
    s32 call2;
    register s32 call3 asm("r3");
    register u32 hold1 asm("r1");
    register u32 hold2 asm("r2");
    u32 hold7;
    u32 handle;
    register u32 waitHandle asm("r4");
    s32 sp0;
    s32 sp4;
    s32 temp_r5_27;
    register s32 temp_r5_34 asm("r5");
    s32 temp_r6;
    register s32 temp_r6_2 asm("r6");
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r4;
    s32 var_r4_8;
    u16 var_r4_6;
    u16 var_r4_7;
    u32 var_r3;
    struct T47ETask *var_r4_2;
    struct T47ETask *var_r4_3;
    struct T47ETask *var_r4_4;
    struct T47ETask *var_r4_5;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u32 temp_r0_4;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *var_r2;
    register u32 *mask asm("r5");
    register u32 one asm("r6");
    u32 zero;
    register u32 stride asm("r0");

    switch (arg0) {
    case 0:
        temp_r2 = (0x14C * sub_080020F4()) + t47EActors;
        *(u32 *)(temp_r2+0x30) = (s32) (*(u32 *)(temp_r2+0x30) & ~1);
        sub_0800D108();
        xp=(s32 *)&frame.pos[1];
        goto test4;
yield4:
        sub_080003F0();
test4:
        if (sub_0805F184() != 0) goto yield4;
        goto test7;
yield7:
        sub_080003F0();
test7:
        if (sub_0805EF90() != 0) goto yield7;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14000C);
        waitHandle=handle;
        goto test10;
yield10:
        sub_080003F0();
test10:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield10;
        goto test13;
yield13:
        sub_080003F0();
test13:
        if (sub_0805F184() != 0) goto yield13;
        goto test16;
yield16:
        sub_080003F0();
test16:
        if (sub_0805EF90() != 0) goto yield16;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14000D);
        waitHandle=handle;
        goto test19;
yield19:
        sub_080003F0();
test19:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield19;
        goto test22;
yield22:
        sub_080003F0();
test22:
        if (sub_0805F184() != 0) goto yield22;
        goto test25;
yield25:
        sub_080003F0();
test25:
        if (sub_0805EF90() != 0) goto yield25;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14000E);
        sub_08028D98(5, 0, -3, 3);
        sub_08028D98(5, 0, 3, 3);
        waitHandle=handle;
        goto test28;
yield28:
        sub_080003F0();
test28:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield28;
        goto test31;
yield31:
        sub_080003F0();
test31:
        if (sub_0805F184() != 0) goto yield31;
        goto test34;
yield34:
        sub_080003F0();
test34:
        if (sub_0805EF90() != 0) goto yield34;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14000F);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test37;
yield37:
        sub_080003F0();
test37:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield37;
        goto test40;
yield40:
        sub_080003F0();
test40:
        if (sub_0805F184() != 0) goto yield40;
        goto test43;
yield43:
        sub_080003F0();
test43:
        if (sub_0805EF90() != 0) goto yield43;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140010);
        sub_08028D98(4, 0, -3, 3);
        sub_08028D98(4, 0, 3, 3);
        waitHandle=handle;
        goto test46;
yield46:
        sub_080003F0();
test46:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield46;
        goto test49;
yield49:
        sub_080003F0();
test49:
        if (sub_0805F184() != 0) goto yield49;
        goto test52;
yield52:
        sub_080003F0();
test52:
        if (sub_0805EF90() != 0) goto yield52;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140011);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test55;
yield55:
        sub_080003F0();
test55:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield55;
        goto test58;
yield58:
        sub_080003F0();
test58:
        if (sub_0805F184() != 0) goto yield58;
        goto test61;
yield61:
        sub_080003F0();
test61:
        if (sub_0805EF90() != 0) goto yield61;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140012);
        sub_08028D98(4, 0, -3, 3);
        sub_08028D98(4, 0, 3, 3);
        waitHandle=handle;
        goto test64;
yield64:
        sub_080003F0();
test64:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield64;
        goto test67;
yield67:
        sub_080003F0();
test67:
        if (sub_0805F184() != 0) goto yield67;
        goto test70;
yield70:
        sub_080003F0();
test70:
        if (sub_0805EF90() != 0) goto yield70;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140013);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test73;
yield73:
        sub_080003F0();
test73:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield73;
        goto test76;
yield76:
        sub_080003F0();
test76:
        if (sub_0805F184() != 0) goto yield76;
        goto test79;
yield79:
        sub_080003F0();
test79:
        if (sub_0805EF90() != 0) goto yield79;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140014);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        waitHandle=handle;
        goto test82;
yield82:
        sub_080003F0();
test82:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield82;
        goto test85;
yield85:
        sub_080003F0();
test85:
        if (sub_0805F184() != 0) goto yield85;
        goto test88;
yield88:
        sub_080003F0();
test88:
        if (sub_0805EF90() != 0) goto yield88;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140015);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test91;
yield91:
        sub_080003F0();
test91:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield91;
        goto test94;
yield94:
        sub_080003F0();
test94:
        if (sub_0805F184() != 0) goto yield94;
        goto test97;
yield97:
        sub_080003F0();
test97:
        if (sub_0805EF90() != 0) goto yield97;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140016);
        sub_08028D98(4, 0, -3, 3);
        sub_08028D98(4, 0, 3, 3);
        waitHandle=handle;
        goto test100;
yield100:
        sub_080003F0();
test100:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield100;
        goto test103;
yield103:
        sub_080003F0();
test103:
        if (sub_0805F184() != 0) goto yield103;
        goto test106;
yield106:
        sub_080003F0();
test106:
        if (sub_0805EF90() != 0) goto yield106;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140017);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test109;
yield109:
        sub_080003F0();
test109:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield109;
        goto test112;
yield112:
        sub_080003F0();
test112:
        if (sub_0805F184() != 0) goto yield112;
        goto test115;
yield115:
        sub_080003F0();
test115:
        if (sub_0805EF90() != 0) goto yield115;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140018);
        sub_08028D98(5, 0, -3, 3);
        sub_08028D98(5, 0, 3, 3);
        waitHandle=handle;
        goto test118;
yield118:
        sub_080003F0();
test118:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield118;
        goto test121;
yield121:
        sub_080003F0();
test121:
        if (sub_0805F184() != 0) goto yield121;
        goto test124;
yield124:
        sub_080003F0();
test124:
        if (sub_0805EF90() != 0) goto yield124;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140019);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test127;
yield127:
        sub_080003F0();
test127:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield127;
        goto test130;
yield130:
        sub_080003F0();
test130:
        if (sub_0805F184() != 0) goto yield130;
        goto test133;
yield133:
        sub_080003F0();
test133:
        if (sub_0805EF90() != 0) goto yield133;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14001A);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        waitHandle=handle;
        goto test136;
yield136:
        sub_080003F0();
test136:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield136;
        goto test139;
yield139:
        sub_080003F0();
test139:
        if (sub_0805F184() != 0) goto yield139;
        goto test142;
yield142:
        sub_080003F0();
test142:
        if (sub_0805EF90() != 0) goto yield142;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14001B);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        waitHandle=handle;
        goto test145;
yield145:
        sub_080003F0();
test145:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield145;
        goto test148;
yield148:
        sub_080003F0();
test148:
        if (sub_0805F184() != 0) goto yield148;
        goto test151;
yield151:
        sub_080003F0();
test151:
        if (sub_0805EF90() != 0) goto yield151;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14001C);
        sub_08028D98(4, 0, -3, 3);
        sub_08028D98(4, 0, 3, 3);
        waitHandle=handle;
        goto test154;
yield154:
        sub_080003F0();
test154:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield154;
        goto test157;
yield157:
        sub_080003F0();
test157:
        if (sub_0805F184() != 0) goto yield157;
        goto test160;
yield160:
        sub_080003F0();
test160:
        if (sub_0805EF90() != 0) goto yield160;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14001D);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test163;
yield163:
        sub_080003F0();
test163:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield163;
        goto test166;
yield166:
        sub_080003F0();
test166:
        if (sub_0805F184() != 0) goto yield166;
        goto test169;
yield169:
        sub_080003F0();
test169:
        if (sub_0805EF90() != 0) goto yield169;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14001E);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        waitHandle=handle;
        goto test172;
yield172:
        sub_080003F0();
test172:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield172;
        goto test175;
yield175:
        sub_080003F0();
test175:
        if (sub_0805F184() != 0) goto yield175;
        goto test178;
yield178:
        sub_080003F0();
test178:
        if (sub_0805EF90() != 0) goto yield178;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14001F);
        sub_08028D98(5, 0, -3, 3);
        sub_08028D98(5, 0, 3, 3);
        waitHandle=handle;
        goto test181;
yield181:
        sub_080003F0();
test181:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield181;
        goto test184;
yield184:
        sub_080003F0();
test184:
        if (sub_0805F184() != 0) goto yield184;
        goto test187;
yield187:
        sub_080003F0();
test187:
        if (sub_0805EF90() != 0) goto yield187;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140020);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test190;
yield190:
        sub_080003F0();
test190:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield190;
        goto test193;
yield193:
        sub_080003F0();
test193:
        if (sub_0805F184() != 0) goto yield193;
        goto test196;
yield196:
        sub_080003F0();
test196:
        if (sub_0805EF90() != 0) goto yield196;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140021);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        waitHandle=handle;
        goto test199;
yield199:
        sub_080003F0();
test199:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield199;
        goto test202;
yield202:
        sub_080003F0();
test202:
        if (sub_0805F184() != 0) goto yield202;
        goto test205;
yield205:
        sub_080003F0();
test205:
        if (sub_0805EF90() != 0) goto yield205;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140022);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test208;
yield208:
        sub_080003F0();
test208:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield208;
        goto test211;
yield211:
        sub_080003F0();
test211:
        if (sub_0805F184() != 0) goto yield211;
        goto test214;
yield214:
        sub_080003F0();
test214:
        if (sub_0805EF90() != 0) goto yield214;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140023);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        sub_080290E4(1, 0);
        sub_08028AAC(1, 0x35, 0x82, 0xA);
        sub_080290E4(1, 6);
        sub_08028AAC(1, 0x57, 0x80, 0xA);
        sub_080290E4(1, 5);
        sub_08028AAC(1, 0x81, 0x6A, 0x14);
        sub_080290E4(1, 4);
        waitHandle=handle;
        goto test217;
yield217:
        sub_080003F0();
test217:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield217;
        var_r0=t47ETest10(t47EState);
        if (var_r0 == 0) {
            goto test223;
yield223:
            sub_080003F0();
test223:
            if (sub_0805F184() != 0) goto yield223;
            goto test226;
yield226:
            sub_080003F0();
test226:
            if (sub_0805EF90() != 0) goto yield226;
            handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140024);
        waitHandle=handle;
            goto test229;
yield229:
            sub_080003F0();
test229:
            if (sub_0805EEFC((void *) waitHandle) == 0) goto yield229;
            goto test232;
yield232:
            sub_080003F0();
test232:
            if (sub_0805F184() != 0) goto yield232;
            goto test235;
yield235:
            sub_080003F0();
test235:
            if (sub_0805EF90() != 0) goto yield235;
            handle=sub_0805DF38(1,15,2,0,45,0x140025);
        } else {
            goto test238;
yield238:
            sub_080003F0();
test238:
            if (sub_0805F184() != 0) goto yield238;
            goto test241;
yield241:
            sub_080003F0();
test241:
            if (sub_0805EF90() != 0) goto yield241;
            handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140033);
        waitHandle=handle;
            goto test244;
yield244:
            sub_080003F0();
test244:
            if (sub_0805EEFC((void *) waitHandle) == 0) goto yield244;
            goto test247;
yield247:
            sub_080003F0();
test247:
            if (sub_0805F184() != 0) goto yield247;
            goto test250;
yield250:
            sub_080003F0();
test250:
            if (sub_0805EF90() != 0) goto yield250;
            handle=sub_0805DF38(1,15,2,0,45,0x140034);
        }

        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        sub_080290E4(1, 1);
        sub_08028AAC(1, 0x57, 0x80, 0x1E);
        sub_080290E4(1, 2);
        sub_08028AAC(1, 0x35, 0x82, 0xF);
        sub_080290E4(1, 4);
        sub_08028AAC(1, 0x38, 0x68, 0xF);
        sub_080290E4(1, 7);
        waitHandle=handle;
        goto test254;
yield254:
        sub_080003F0();
test254:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield254;
        goto test257;
yield257:
        sub_080003F0();
test257:
        if (sub_0805F184() != 0) goto yield257;
        goto test260;
yield260:
        sub_080003F0();
test260:
        if (sub_0805EF90() != 0) goto yield260;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140026);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        waitHandle=handle;
        goto test263;
yield263:
        sub_080003F0();
test263:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield263;
        goto test266;
yield266:
        sub_080003F0();
test266:
        if (sub_0805F184() != 0) goto yield266;
        goto test269;
yield269:
        sub_080003F0();
test269:
        if (sub_0805EF90() != 0) goto yield269;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140027);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test272;
yield272:
        sub_080003F0();
test272:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield272;
        goto test275;
yield275:
        sub_080003F0();
test275:
        if (sub_0805F184() != 0) goto yield275;
        goto test278;
yield278:
        sub_080003F0();
test278:
        if (sub_0805EF90() != 0) goto yield278;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140028);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        sub_08028D98(4, 0, -3, 3);
        sub_08028D98(4, 0, 3, 3);
        sub_08028D98(5, 0, -3, 3);
        sub_08028D98(5, 0, 3, 3);
        waitHandle=handle;
        goto test281;
yield281:
        sub_080003F0();
test281:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield281;
        t47ESet4(t47EState);
        step=0x33;
        temp_r6 = (s16) t47ECamera[64];
        asm("" : "=r"(hold1),"=r"(hold2),"=r"(hold7));temp_r5_27=t47ECamera[65];
        var_r4 = 0;
        zeroX=var_r4;zeroY=0;
        do {
            call0=(s32 *)&frame.pos[0];call1=temp_r6;call3=zeroX;call2=call3>>16;call3=var_r4;sub_080659F4(call0,call1,call2,call3);
            call0=xp;call1=temp_r5_27;call2=zeroY>>16;call3=var_r4;sub_080659F4(call0,call1,call2,call3);
            t47ESetCamera((s16) frame.pos[0], (s16) frame.pos[1]);
            sub_080003F0();
            var_r4 += step;
        } while (var_r4 <= 0x400);
        return;
    case 1:
        xp=(s32 *)&frame.pos[2];call1=(s32)stack;asm("" : "+r"(call1));call1+=20;frame.yp=(s32 *)call1;
        goto test287;
yield287:
        sub_080003F0();
test287:
        if (sub_0805F184() != 0) goto yield287;
        goto test290;
yield290:
        sub_080003F0();
test290:
        if (sub_0805EF90() != 0) goto yield290;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140029);
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x45U);
        }
        sub_08019EB8(t47EPlayers[0].id, 3);
        sub_08029174(1, 0x10);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        waitHandle=handle;
        goto test295;
yield295:
        sub_080003F0();
test295:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield295;
        sub_08029174(1, 0);
        goto test298;
yield298:
        sub_080003F0();
test298:
        if (sub_0805F184() != 0) goto yield298;
        goto test301;
yield301:
        sub_080003F0();
test301:
        if (sub_0805EF90() != 0) goto yield301;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14002A);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test304;
yield304:
        sub_080003F0();
test304:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield304;
        goto test307;
yield307:
        sub_080003F0();
test307:
        if (sub_0805F184() != 0) goto yield307;
        goto test310;
yield310:
        sub_080003F0();
test310:
        if (sub_0805EF90() != 0) goto yield310;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14002B);
        sub_08028D98(1, 0, -3, 3);
        sub_08028D98(1, 0, 3, 3);
        waitHandle=handle;
        goto test313;
yield313:
        sub_080003F0();
test313:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield313;
        cb=t47EScript;
        raw=(u32)t47EState;off2=0xE34;asm("" : "+r"(off2));var_r4_2=(struct T47ETask *)(raw+off2);
        var_r5=0;
        goto check0;
next0:
        var_r5++;var_r4_2++;
check0:
        if(var_r5>29) goto end0;
        if(sub_08000470((u32)var_r4_2)!=0) goto next0;
        goto alloc0;
yield0:
        sub_080003F0();
alloc0:
        temp_r0=sub_08001494(0x400);
        var_r4_2->f20=temp_r0;
        if(temp_r0==0) goto yield0;
        var_r4_2->f8=60;var_r4_2->fC=(u32)cb;off3=0x3FC;asm("" : "+r"(off3));raw=temp_r0+off3;var_r4_2->f10=raw;var_r4_2->f24=0;
        sub_08000274(var_r4_2,2);
end0:
        cb=t47EScript;
        raw=(u32)t47EState;off1=0xE34;var_r4_3=(struct T47ETask *)(raw+off1);
        var_r5_2=0;
        goto check1;
next1:
        var_r5_2++;var_r4_3++;
check1:
        if(var_r5_2>29) goto end1;
        if(sub_08000470((u32)var_r4_3)!=0) goto next1;
        goto alloc1;
yield1:
        sub_080003F0();
alloc1:
        temp_r0_2=sub_08001494(0x400);
        var_r4_3->f20=temp_r0_2;
        if(temp_r0_2==0) goto yield1;
        var_r4_3->f8=60;var_r4_3->fC=(u32)cb;off2=0x3FC;asm("" : "+r"(off2));raw=temp_r0_2+off2;var_r4_3->f10=raw;var_r4_3->f24=0;
        sub_08000274(var_r4_3,3);
end1:
        cb=t47EScript;
        raw=(u32)t47EState;off3=0xE34;asm("" : "+r"(off3));var_r4_4=(struct T47ETask *)(raw+off3);
        var_r5_3=0;
        goto check2;
next2:
        var_r5_3++;var_r4_4++;
check2:
        if(var_r5_3>29) goto end2;
        if(sub_08000470((u32)var_r4_4)!=0) goto next2;
        goto alloc2;
yield2:
        sub_080003F0();
alloc2:
        temp_r0_3=sub_08001494(0x400);
        var_r4_4->f20=temp_r0_3;
        if(temp_r0_3==0) goto yield2;
        var_r4_4->f8=60;var_r4_4->fC=(u32)cb;off2=0x3FC;asm("" : "+r"(off2));raw=temp_r0_3+off2;var_r4_4->f10=raw;var_r4_4->f24=0;
        sub_08000274(var_r4_4,4);
end2:
        cb=t47EScript;
        raw=(u32)t47EState;off3=0xE34;asm("" : "+r"(off3));var_r4_5=(struct T47ETask *)(raw+off3);
        var_r5_4=0;
        goto check3;
next3:
        var_r5_4++;var_r4_5++;
check3:
        if(var_r5_4>29) goto end3;
        if(sub_08000470((u32)var_r4_5)!=0) goto next3;
        goto alloc3;
yield3:
        sub_080003F0();
alloc3:
        temp_r0_4=sub_08001494(0x400);
        var_r4_5->f20=temp_r0_4;
        if(temp_r0_4==0) goto yield3;
        var_r4_5->f8=60;var_r4_5->fC=(u32)cb;off2=0x3FC;asm("" : "+r"(off2));raw=temp_r0_4+off2;var_r4_5->f10=raw;var_r4_5->f24=0;
        sub_08000274(var_r4_5,5);
end3:
        goto test347;
yield347:
        sub_080003F0();
test347:
        if (sub_0805F184() != 0) goto yield347;
        goto test350;
yield350:
        sub_080003F0();
test350:
        if (sub_0805EF90() != 0) goto yield350;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14002C);
        sub_08028D98(5, 0, -3, 3);
        sub_08028D98(5, 0, 3, 3);
        waitHandle=handle;
        goto test353;
yield353:
        sub_080003F0();
test353:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield353;
        goto test356;
yield356:
        sub_080003F0();
test356:
        if (sub_0805F184() != 0) goto yield356;
        goto test359;
yield359:
        sub_080003F0();
test359:
        if (sub_0805EF90() != 0) goto yield359;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14002D);
        sub_08028D98(2, 0, -3, 3);
        sub_08028D98(2, 0, 3, 3);
        waitHandle=handle;
        goto test362;
yield362:
        sub_080003F0();
test362:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield362;
        goto test365;
yield365:
        sub_080003F0();
test365:
        if (sub_0805F184() != 0) goto yield365;
        goto test368;
yield368:
        sub_080003F0();
test368:
        if (sub_0805EF90() != 0) goto yield368;
        handle = sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x14002E);
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        var_r4_6 = 4;
        goto wait371;
dec371:
        var_r4_6--;
        if(var_r4_6==0) goto done371;
wait371:
        sub_080003F0();
        if(sub_080021A8()==0) goto dec371;
done371:
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        var_r4_7 = 4;
        goto wait374;
dec374:
        var_r4_7--;
        if(var_r4_7==0) goto done374;
wait374:
        sub_080003F0();
        if(sub_080021A8()==0) goto dec374;
done374:
        sub_08028D98(3, 0, -3, 3);
        sub_08028D98(3, 0, 3, 3);
        waitHandle=handle;
        goto test377;
yield377:
        sub_080003F0();
test377:
        if (sub_0805EEFC((void *) waitHandle) == 0) goto yield377;
        call3=0x33;asm("" : "+r"(call3));step=call3;
        temp_r6_2 = (s16) t47ECamera[64];
        asm("" : "=r"(hold1),"=r"(hold2),"=r"(hold7));temp_r5_34=t47ECamera[65];
        var_r4_8 = 0;
        asm("" : "+r"(var_r4_8));zeroX=var_r4_8;zeroY=0;asm("" : "+r"(zeroY));
        do {
            call0=xp;call1=temp_r6_2;call3=zeroX;call2=call3>>16;call3=var_r4_8;sub_080659F4(call0,call1,call2,call3);
            call0=frame.yp;call1=temp_r5_34;call2=zeroY>>16;call3=var_r4_8;sub_080659F4(call0,call1,call2,call3);
            t47ESetCamera((s16) frame.pos[2], (s16) frame.pos[3]);
            sub_080003F0();
            var_r4_8 += step;
        } while (var_r4_8 <= 0x400);
        temp_r2_2 = (0x14C * sub_080020F4()) + t47EActors;
        *(u32 *)(temp_r2_2+0x30) = (s32) (*(u32 *)(temp_r2_2+0x30) & ~1);
        sub_0800D108();
        var_r2 = (u8 *)t47EPlayers;
        var_r3 = 0;mask=&t47EMask;one=1;zero=0;
        do {
            if (((one<<var_r3)&*mask) && (*(u16 *)(var_r2+12) == 0xC)) {
                *(u16 *)(var_r2+12) = zero;
            }
            var_r3 += 1;
            stride=0x2E0;var_r2+=stride;
        } while (var_r3 <= 4U);
        sub_08019F04();
        return;
    case 2:
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x45U);
        }
        sub_08019EB8(t47EPlayers[1].id, 3);
        var_r0_3 = 2;
        goto block_398;
    case 3:
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x48U);
        }
        sub_08019EB8(t47EPlayers[2].id, 3);
        var_r0_3 = 3;
        goto block_398;
    case 4:
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x45U);
        }
        sub_08019EB8(t47EPlayers[3].id, 3);
        var_r0_3 = 4;
        goto block_398;
    case 5:
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x45U);
        }
        sub_08019EB8(t47EPlayers[4].id, 3);
        var_r0_3 = 5;
block_398:
        sub_0802949C(var_r0_3,0);
        return;
    case 6:
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x45U);
        }
        sub_08019EB8(t47EPlayers[0].id, 3);
        sub_0802949C(1, 0);
        /* fallthrough */
    default:
        return;
    }
}
struct T48Item { s16 id; u16 kind; u8 pad[12]; };
extern u8 *t48State asm("gUnk_03005CF4");
extern u8 *t48Items asm("gUnk_030034E0");
static inline s32 t48id(struct T48Item *p) { u32 x = (u16)p->id;  return x; }
/* [InitializeAbsentItem42ObjectPlacement] Scene+38 mask32 guards; inventory scans+150 count25/+2E0 count75
 * compare halfwords1,42; OR of counts,playerID,event13 must equal0. */
void sub_08049DC4(void) {
    s32 value; register s32 loaded asm("r0"); s32 other; s32 flag; register s32 count2 asm("r5"); u8 *state; register s32 count asm("r3"); register s32 saved asm("r6"); s32 bits; register s32 off asm("r4"); register s32 off1 asm("r5"); s32 flagmask; register s32 mask asm("r5");
    u32 i; u32 j;
    u8 *selected;
    struct T48Item *p,*q;
    state=t48State;  flagmask=0x20; value = *(s32 *)(state+0x38);
    if (!(value & flagmask)) {
        *(s32 *)(state+0x38) = value | flagmask;
        mask=1; if (sub_0800CE30()) selected = t48State+0x1C4;
        else { loaded=(s32)t48State; off=0x1B8; asm("" : "+r" (off)); selected = (u8 *)loaded+off; }
        loaded=*selected;  flag = (loaded >> 5) & mask; 
        other = sub_080020F4();
        count=0; i=0; loaded=(s32)t48Items;  off1=0x150;  p=(struct T48Item *)((u8 *)loaded+off1);
        do {
            if (t48id(p)==1 && p->kind==0x2A) count++;
            p++; i++;
        } while(i<=24);
        saved=count; count2=0;  j=0; bits=flag|other;  loaded=(s32)t48Items;  off=0x2E0;  q=(struct T48Item *)((u8 *)loaded+off);
        do {
            if (t48id(q)==1 && q->kind==0x2A) count2++;
            q++; j++;
        } while(j<=74);
        if ((bits | saved | count2)==0) sub_08068820(sub_0805A040,0,(void *)1);
    }
    if (sub_0800CC98()==0) {
        switch(sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while(sub_0801AAE0()==0) sub_080003F0();
    }
}

struct T48TileE { u8 pad[0x80]; s16 x,y; };
extern struct T48TileE t48tileE asm("gUnk_03003170");
extern u8 *t48stateE asm("gUnk_03005CF4");
extern void t48bbE(s32,s32) asm("sub_0800BB80");
static inline void t48moveE(s16 step,s16 tx,s16 ty) {
 s32 a,b; register s32 delta asm("r9")=step; s32 x=t48tileE.x,y=t48tileE.y; s32 i;
 i=0;do{sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbE((s16)a,(s16)b);sub_080003F0();i+=delta;asm("" : : "r"(i) : "sl");}while(i<=0x400);
}
static inline void t48moveFirstE(s16 step,s16 tx,s16 ty) {
 s32 a,b; register s32 delta asm("sl")=step; s32 x=t48tileE.x,y=t48tileE.y; s32 i;
 i=0;do{sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbE((s16)a,(s16)b);sub_080003F0();i+=delta;}while(i<=0x400);
}
static inline void t48musicE(u32 track) { register u32 v asm("r1")=track;  gUnk_03005CF8=v; { register u32 bits asm("r1"); u32 flags=gUnk_030027D0;  bits=32;  if(!(flags&bits)) sub_08006CB4(track); } }

/* [PanDialogue48Or49] Locks input and places actor0 at(240+multiplayerOffset,240), restores transition, starts
 * song217, waits20 and pans to(-offset,-108) using interpolation increment17. Scene word+0x38 bit6 selects
 * first-use dialog0x140030 orrepeat0x140031; sets bit6 regardless then waits dialog. Returns camera(0,0)
 * increment34, starts song11, sets scene halfword+4 bit5 and unlocks. */
void sub_08049EBC(void) {
 s32 off; u16 n; s32 v; u32 req; u8 *p; register s32 idx asm("r2"); s32 mask; u8 *gp; register u8 *gp2 asm("r2"); u32 word; u32 req3; register u32 hv asm("r1");
 idx=sub_080020F4()*0x14C;  p=(u8 *)gUnk_03003CE0+idx;
 *(u32 *)(p+0x30)|=1;
 sub_0800D0F4();
 if(sub_08002164()==1) off=0;
 else switch(sub_080020F4()) { case 0: off=-12; break; case 1: off=12; break; case 2: off=-36; break; case 3: off=36; break; }
 sub_08028AAC(0,(u16)(off+240),240,0);
 n=1; goto wait1; dec1: n--; if(n==0) goto end1; wait1: sub_080003F0(); if(sub_080021A8()==0) goto dec1; end1:;
 if(sub_0800CC98()==0) { switch(sub_0801AB24()) { case 0: sub_080576A8(); break; case 1: sub_0801AB50(6); break; case 2: sub_0801AB90(6); break; } while(sub_0801AAE0()==0) sub_080003F0(); }
 t48musicE(217);
 n=20; goto wait2; dec2: n--; if(n==0) goto end2; wait2: sub_080003F0(); if(sub_080021A8()==0) goto dec2; end2:;
 t48moveFirstE(17,-off,-108);
 gp=t48stateE;  mask=64; if(!(*(u32 *)(gp+0x38)&mask)) { while(sub_0805F184()) sub_080003F0(); while(sub_0805EF90()) sub_080003F0(); req3=sub_0805DF38(1,15,2,0,45,0x140030); }
 else { while(sub_0805F184()) sub_080003F0(); while(sub_0805EF90()) sub_080003F0(); req3=sub_0805DF38(1,15,2,0,45,0x140031); }
 
 gp2=t48stateE;  mask=64; *(u32 *)(gp2+0x38)|=mask; req=req3;
 while(sub_0805EEFC((void *)req)==0) sub_080003F0();
 t48moveE(34,0,0);
 t48musicE(11);
 hv=*(u16 *)(t48stateE+4);  word=hv|32;  *(u16 *)(t48stateE+4)=word;
 idx=sub_080020F4()*0x14C;  p=(u8 *)gUnk_03003CE0+idx; *(u32 *)(p+0x30)&=~1;
 sub_0800D108();
}


struct T48TileA {u8 pad[128];s16 x,y;};
struct T48TaskA {u32 f0,f4,f8;void (*fc)(void);u8 *f10;u32 f14,f18,f1c;u8 *f20;u32 f24;};
extern struct T48TileA t48tileA asm("gUnk_03003170");
extern u8 *t48stateA asm("gUnk_03005CF4");
extern u8 *t48objA asm("gUnk_030056F4");
extern void t48bbA(s32,s32) asm("sub_0800BB80");
extern void sub_0804A478(void);
extern void sub_0804A89C(void);
static inline void t48taskA(void (*cb)(void),s32 arg) {
 struct T48TaskA *p=(struct T48TaskA *)(t48stateA+0xE34); u32 i; u8 *mem;
 i=0; goto check;
 next: i++;p++;
 check: if(i>29)return;
 if(sub_08000470((u32)p))goto next;
 while((p->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 p->f8=60;p->fc=cb;p->f10=mem+0x3fc;p->f24=0;sub_08000274((u32)p,arg);
}
static inline void t48moveA(s16 step,s16 tx,s16 ty) {
 s32 a,b; s32 delta=step; s32 x=t48tileA.x,y=t48tileA.y; s32 i;
 for(i=0;i<=0x400;i+=delta){sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbA((s16)a,(s16)b);sub_080003F0();}
}
static inline void t48modeA(void){if(sub_0800CC98()==0){switch(sub_0801AB24()){case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}while(sub_0801AAE0()==0)sub_080003F0();}}
static inline void t48waitA(u16 n){goto check;next:n--;if(n==0)return;check:sub_080003F0();if(sub_080021A8()==0)goto next;}
static inline u32 t48boolA(u8 *p,u32 mask){u32 r=*(u32 *)(p+0x38)&mask;if(r)r=1;return r;}
static inline void t48musicA(u32 track){register u32 v asm("r1")=track;gUnk_03005CF8=v;if(!(gUnk_030027D0&32))sub_08006CB4(track);}
/* [StartCameraItem23Sequence] Tests scene word+0x38 bit0. First branch locks input, sets bit0, pans(0,-60)
 * increment0x400, attempts sub_0804A478 task, waits2, restores transition and starts song196; leaves lock for
 * continuation. Repeat branch restores transition, runs sub_0802A080, attempts sub_0804A89C selectors5/6,
 * waits30, resets state12 to0 for active entity slots0..4 and calls sub_08019F04. Task pool30 full skips
 * startup,0x400 stack allocations retry. */
void sub_0804A188(void){
 u32 bit;u8 *player;u8 *base;register u32 one asm("r4");register s32 *flags asm("r5"); u8 *p; u32 i; u32 shifted; register u32 stride asm("r0");
 base=t48stateA;one=1;bit=t48boolA(base,one); asm("" : "+r"(bit));
 if(!bit){
 player=(u8 *)gUnk_03003CE0+0x14c*sub_080020F4();*(u32 *)(player+0x30)|=one;sub_0800D0F4();*(u32 *)(t48stateA+0x38)|=one;
 t48moveA(0x400,0,-60);t48taskA(sub_0804A478,0);t48waitA(2);t48modeA();t48musicA(196);
return;
}

 t48modeA();sub_0802A080(140,130,200,100);t48taskA(sub_0804A89C,5);t48taskA(sub_0804A89C,6);t48waitA(30);
 p=t48objA;i=0;flags=&gUnk_030056FC;do{shifted=1<<i;if((*flags&shifted)&&*(u16 *)(p+12)==12)*(u16 *)(p+12)=0;i++;stride=0x2E0;p+=stride;}while(i<=4);sub_08019F04();return;

}

struct T48TileK {u8 pad[128];s16 x,y;};
struct T48TaskK {u32 f0,f4,f8;void (*fc)(void);u8 *f10;u32 f14,f18,f1c;u8 *f20;u32 f24;};
extern struct T48TileK t48tileK asm("gUnk_03003170");
extern u8 *t48stateK asm("gUnk_03005CF4");
extern u8 *t48objK asm("gUnk_030056F4");
extern void t48bbK(s32,s32) asm("sub_0800BB80");
extern void sub_0804A478(void);
extern void sub_0804A89C(void);
static inline void t48taskK(void (*cb)(void),s32 arg) {
 struct T48TaskK *p=(struct T48TaskK *)(t48stateK+0xE34); u32 i; u8 *mem;
 i=0; goto check;
 next: i++;p++;
 check: if(i>29)return;
 if(sub_08000470((u32)p))goto next;
 while((p->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 p->f8=60;p->fc=cb;p->f10=mem+0x3fc;p->f24=0;sub_08000274((u32)p,arg);
}
static inline void t48moveK(s16 step,s16 tx,s16 ty) {
 s32 a,b; s32 delta=step; s32 x=t48tileK.x,y=t48tileK.y; register s32 i asm("r4");
 i=0;do{sub_080659F4(&a,x,tx,i);sub_080659F4(&b,y,ty,i);t48bbK((s16)a,(s16)b);sub_080003F0();i+=delta;}while(i<=0x400);
}
static inline void t48waitK(u16 n){goto check;next:n--;if(n==0)return;check:sub_080003F0();if(sub_080021A8()==0)goto next;}
extern void t48actorK(s32) asm("sub_0804A89C");
/* [OrchestrateItem23ActorTasks] Runs actor sequence selector0 synchronously, pans camera(0,-30) increment34,
 * then attempts four selector1..4 tasks in separate30-slot searches with retry allocation. Runs sub_0802A080,
 * conditionally cancels saved tasks, closes dialog, restores camera increment102, attempts selectors5/6,
 * waits30, starts tracked song2 when not linked or stops/clears the tracked song in the link branch, resets
 * active entity state12 and calls sub_08019F04. Saved task pointers are unspecified if full-pool searches
 * fail; no local input unlock, expected asynchronous selector1 continuation. */
void sub_0804A478(void){
 struct T48TaskK *t1,*t2,*t3,*t4;
 u8 *p;u32 i;register s32 *flags asm("r5");u32 shifted;register u32 stride asm("r0");
 t48actorK(0);t48moveK(34,0,-30);
 {register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check1;next1:j++;task++;check1:if(j>29)goto end1;
 if(sub_08000470((u32)task))goto next1;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,1);t1=task;
 end1:;}
{register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check2;next2:j++;task++;check2:if(j>29)goto end2;
 if(sub_08000470((u32)task))goto next2;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,2);t2=task;
 end2:;}
{register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check3;next3:j++;task++;check3:if(j>29)goto end3;
 if(sub_08000470((u32)task))goto next3;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,3);t3=task;
 end3:;}
{register void (*cb)() asm("r6")=sub_0804A89C;struct T48TaskK *task;u32 j;u8 *mem;task=(struct T48TaskK *)(t48stateK+0xE34);
 j=0;goto check4;next4:j++;task++;check4:if(j>29)goto end4;
 if(sub_08000470((u32)task))goto next4;
 while((task->f20=mem=sub_08001494(0x400))==0)sub_080003F0();
 task->f8=60;task->fc=cb;task->f10=mem+0x3fc;task->f24=0;sub_08000274((u32)task,4);t4=task;
 end4:;}

 sub_0802A080(140,130,200,100);
 if(t1&&sub_08000470((u32)t1))sub_080003A8((u32)t1);
 if(t2&&sub_08000470((u32)t2))sub_080003A8((u32)t2);
 if(t3&&sub_08000470((u32)t3))sub_080003A8((u32)t3);
 if(t4&&sub_08000470((u32)t4))sub_080003A8((u32)t4);
 t48waitK(1);sub_0805EFBC();do{sub_080003F0();}while(sub_0805F184());t48moveK(102,0,0);
 t48taskK(sub_0804A89C,5);t48taskK(sub_0804A89C,6);t48waitK(30);
 if(sub_0800CB9C()==0){if(!(gUnk_030027D0&32)){gUnk_03005CF8=2;sub_08006CB4(2);}}else sub_080586B4(0);
 p=t48objK;i=0;flags=&gUnk_030056FC;do{shifted=1<<i;if((*flags&shifted)&&*(u16 *)(p+12)==12)*(u16 *)(p+12)=0;i++;stride=0x2E0;p+=stride;}while(i<=4);sub_08019F04();
}

struct T48SlotB {s32 id;u8 pad[0x32];u16 unk36;u8 tail[0x38];};
struct T48ItemB {u16 unk0,unk2;u8 pad[12];};
struct T48ReqB {u16 unk0,unk2;u8 pad[12];};
struct T48PlayerB {u8 pad[0x30];u32 unk30;u8 tail[0x118];};
extern u8 *t48stateB asm("gUnk_03005CF4");
extern u8 *t48itemsB asm("gUnk_030034E0");
extern u8 *t48objB asm("gUnk_030056F4");
extern struct T48PlayerB t48playersB[] asm("gUnk_03003CE0");
static inline void t48waitB(u16 n){goto check;next:n--;if(n==0)return;check:sub_080003F0();if(sub_080021A8()==0)goto next;}
static inline struct T48SlotB *t48findB(s32 id){struct T48SlotB *p=(struct T48SlotB *)(t48stateB+0x7A4);u32 i;for(i=0;i<=14;i++,p++)if(p->id==id)return p;sub_080003F0();return 0;}
static inline struct T48SlotB *t48findLastB(s32 id){struct T48SlotB *p;u8 *base=t48stateB;register u32 off asm("r4");u32 i;off=0x7A4;p=(struct T48SlotB *)(base+off);for(i=0;i<=14;i++,p++)if(p->id==id)return p;sub_080003F0();return 0;}
static inline u32 t48idB(struct T48ItemB *p){return p->unk0;}
static inline s32 t48countB(u32 offset,u32 max){s32 count;u32 i;struct T48ItemB *p;u8 *base;u32 off;count=0;i=0;{u8 **slot=&t48itemsB;base=*slot;}off=offset;p=(struct T48ItemB *)(base+off);do{if(t48idB(p)==1&&p->unk2==35)count++;p++;i++;}while(i<=max);return count;}
static inline s32 t48countSecondB(u32 offset,u32 max){s32 count;u32 i;struct T48ItemB *p;u8 *base;u32 off;count=0;i=0;{register u8 **slot asm("r0")=&t48itemsB;base=*slot;}off=offset;p=(struct T48ItemB *)(base+off);do{if(t48idB(p)==1&&p->unk2==35)count++;p++;i++;}while(i<=max);return count;}
static inline s32 t48bitB(s32 value,u32 unused){s32 bit=value>>2;register s32 mask asm("r0")=1;bit&=mask;return bit;}
static inline s32 t48byteB(u8 *p){register s32 v asm("r0")=*p;asm("" : "+r"(v));return v;}
static inline void t48initB(struct T48ReqB *p,u32 id,u32 kind){register u32 a asm("r1")=id;u32 b=kind;struct T48ReqB *out;asm("" : "+r"(a),"+r"(b));out=p;out->unk0=a;out->unk2=b;}
static inline void t48clearB(u8 *dst){u32 i=0;register u8 *p asm("r2")=dst;do{p[i]=0;i++;}while(i<=11);}
extern void t48implB(u32) asm("sub_0804A89C");
/* [RunItem23SceneSequence] Selector0 creates resources0x3004B/0x7004B and stages dialogs0x140035..37 with
 * moves and state4 removals. Selector1 unlocks input then shows0x140038 and starts0x140039 without waiting.
 * Selectors2/3/4 wait500 then move actors1/2/6 through timed paths; selector2 host counts category1/id35
 * across bag/storage and progression bit before retrying category1/id35-or1 field spawn at(0x9300,0x8800).
 * Selector4 removes field items by tag4 and flushes requests. Selectors5/6 set corresponding entity pose3 and
 * face local player. Other selectors do nothing; queued spawns can wait indefinitely. */
void t48implB(u32 arg0) {
    struct T48ReqB sp8;
    struct T48SlotB *var_r1;
    struct T48SlotB *var_r1_2;
    s32 temp_r5;
    register s32 temp_r6 asm("r6");
    s32 var_r0_2;
    u32 one; register struct T48ReqB *out asm("r1"); register u32 off6 asm("r4");

    u8 *obj;
    s32 var_r3;
    s32 var_r3_2;
    u16 var_r4;
    u16 var_r4_2;
    u16 var_r4_3;
    u16 var_r4_4;
    u16 var_r4_5;
    u16 var_r4_6;
    u16 var_r4_7;
    u16 var_r4_8;
    u16 var_r4_9;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 var_r1_5;
    u32 var_r1_6;
    u32 var_r2;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r2_4;
    u8 *var_r0;
    struct T48PlayerB *temp_r2;
    struct T48ItemB *var_r1_3;
    struct T48ItemB *var_r1_4;

    switch (arg0) {                                 /* irregular */
    case 0:
        temp_r5 = sub_080289C0(0x3004B, 0x60, 0x130);
        temp_r6 = sub_080289C0(0x7004B, 0x38, 0x118);
        t48waitB(30);
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140035U);
        sub_08028D98(temp_r5, 0, -3, 3);
        sub_08028D98(temp_r5, 0, 3, 3);
        while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140036U);
        sub_08028D98(temp_r6, 0, -3, 3);
        sub_08028D98(temp_r6, 0, 3, 3);
        while (sub_0805EEFC((void *) temp_r4_2) == 0) sub_080003F0();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140037U);
        sub_08028D98(temp_r5, 0, -3, 3);
        sub_08028D98(temp_r5, 0, 3, 3);
        while (sub_0805EEFC((void *) temp_r4_3) == 0) sub_080003F0();
        sub_0802939C(temp_r5, 8);
        sub_080290E4(temp_r5, 4);
        sub_08028AAC(temp_r5, 0x60, 0xCC, 0x28);
        var_r1 = t48findB(temp_r5);
        if (var_r1 != NULL) {
            var_r1->unk36 = 4;
        }
        sub_0802939C(temp_r6, 8);
        sub_080290E4(temp_r6, 5);
        sub_08028AAC(temp_r6, 0x60, 0x104, 0x14);
        sub_080290E4(temp_r6, 4);
        sub_08028AAC(temp_r6, 0x60, 0xD2, 0x14);
        var_r1_2 = t48findLastB(temp_r6);
        if (var_r1_2 == NULL) {
            return;
        }
        var_r1_2->unk36 = 4;
        return;
    case 1:
        temp_r2 = &t48playersB[sub_080020F4()];
        temp_r2->unk30 = (s32) (temp_r2->unk30 & ~1);
        sub_0800D108();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140038U);
        while (sub_0805EEFC((void *) temp_r4_4) == 0) sub_080003F0();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140039U);
        return;
    case 2:
                t48waitB(0x1F4);
        sub_0802939C(1, 8);
        sub_08028D98(1, 0x12, -0xC, 0xB4);
        sub_08029174(1, 0);
                t48waitB(0x28);
        sub_080290E4(1, 2);
        if (sub_080020F4() == 0) { u8 *pad;
            {s32 count;u32 i;struct T48ItemB *p;u8 **slot;u8 *base;u32 off;count=0;i=0;pad=sp8.pad;slot=&t48itemsB;base=*slot;off=0x150;p=(struct T48ItemB *)(base+off);do{if(t48idB(p)==1&&p->unk2==35)count++;p++;i++;}while(i<=24);var_r3=count;}var_r3_2=t48countSecondB(0x2E0,74);
            if (sub_0800CE30() != 0) {
                var_r0 = t48stateB+0x1C5;
            } else {
                var_r0 = t48stateB+0x1B9;
            }
            if ((var_r3 + var_r3_2 + t48bitB(t48byteB(var_r0),1)) == 0) {
                t48initB(&sp8,1,35);
                t48clearB(pad);
                while(sub_08067B9C(0x9300U, 0x8800U, &sp8) == 0)sub_080003F0();
            } else {
                one=1;out=&sp8;out->unk0=one;out->unk2=one;
                t48clearB(pad);
                while(sub_08067B9C(0x9300U, 0x8800U, &sp8) == 0)sub_080003F0();
            }
        }
                t48waitB(0x28);
        sub_080290E4(1, 3);
                t48waitB(0x6E);
        sub_0802939C(1, 8);
        sub_08028D98(1, -0x12, 0xC, 0xB4);
        var_r0_2 = 1;
        goto block_108;
    case 3:
                t48waitB(0x1F4);
        sub_0802939C(2, 8);
        sub_08028D98(2, 0x12, -0xC, 0xB4);
        sub_08029174(2, 0);
                t48waitB(0xBE);
        sub_0802939C(2, 8);
        sub_08028D98(2, -0x12, 0xC, 0xB4);
        var_r0_2 = 2;
block_108:
        sub_08029174(var_r0_2,0);return;
    case 4:
                t48waitB(0x1F4);
        sub_08028D98(6, 0x12, -0xC, 0xB4);
                t48waitB(0xBE);
        sub_08028D98(6, -0x12, 0xC, 0xB4);
        sub_08028AAC(6, 0x90, 0x88, 0);
        sub_0805D37C(0x9300, 0x8800, 4);
        sub_080687A8();
        return;
    case 5:
        sub_08019EB8(*(u16 *)(t48objB+2), 3);
        sub_0802949C(1, 0);
        return;
    case 6:
        obj=t48objB;off6=0x2E0;sub_08019EB8(*(u16 *)(obj+off6+2), 3);
        sub_0802949C(2, 0);
        return;
    }
}

struct T49TaskAE48 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
extern u8 *t49_gsAE48 asm("gUnk_03005CF4");
extern void t49_cbAE48(void) asm("sub_080567D4");
static inline void t49_startAE48(void *callback, u32 arg)
{
    struct T49TaskAE48 *task = (struct T49TaskAE48 *)(t49_gsAE48 + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
/* [InitializeInventoryGateTriggers0And1] Two startAE48 calls pass0/1 before resetting1B5/1C1. Helper3597
 * scans30 task slots and retries0x400 allocation. */
void sub_0804AE48(void)
{
    s32 zero;
    t49_startAE48(t49_cbAE48, 0);
    t49_startAE48(t49_cbAE48, 1);
    zero = sub_0800CE30();
    if (zero != 0) t49_gsAE48[0x1C1] = 0;
    else t49_gsAE48[0x1B5] = zero;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
struct T49TaskAF80 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };

struct T49ReqAF80 { u32 a, b, c; void *callback; u32 arg, unused; };
extern u8 *t49_gsAF80 asm("gUnk_03005CF4");
extern void sub_0804B054(s32);

static inline u32 t49_hasAF80(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline void t49_startAF80(void *cb, u32 value, u32 mode)
{
    struct T49ReqAF80 req;
    struct T49TaskAF80 *task;
    u32 i;
    register u32 zero asm("r5");

        task = (struct T49TaskAF80 *)(t49_gsAF80 + 0xE34);

        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i > 29) return;
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            req.callback = cb;
            req.arg = value;
            task->flags = 60;
            task->memory = sub_08001494(0x400);
            task->callback = (u32)sub_0802A104;
            task->stack = task->memory + 0x3FC;
            task->arg = zero;
            sub_08000274(task, &req, mode);
            sub_080003F0();
            sub_080003F0();
}
/* [InitializeObjectEightPlacementEvent3] flags8 test selects t49_startAF80(4B054,0,7)
 * versus28AAC(8,408,344,0). */
void sub_0804AF80(void)
{
    if (t49_hasAF80(t49_gsAF80, 8) == 0) {
        t49_startAF80(sub_0804B054, 0, 7);
    } else {
        sub_08028AAC(8, 0x198, 0x158, 0);
    }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
extern u8 *t49_gsB054 asm("gUnk_03005CF4");
extern u32 t49_spawnB054(void *, s32, s32) asm("sub_08068820");
static inline void t49_flagB054(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
static inline void t49_effectB054(s32 x, s32 y)
{ sub_08073E2C(x, y, 41, 1); }
/* [HandleObjectEightPlacementEvent3] Flag8 is set BEFORE effects; effect center y159hex differs by1 from
 * object y158hex. Mode0 alias invokes68820. */
void sub_0804B054(s32 arg0)
{
    u16 timer;
    switch (arg0) {
    case 0:
        t49_spawnB054(sub_0804B054, 1, 0);
        break;
    case 1:
        t49_flagB054(t49_gsB054, 8);
        t49_effectB054(0x19800, 0x15900);
        timer = 4;
        goto wait;
next:
        if (--timer == 0) goto done;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto next;
done:
        t49_effectB054(0x19000, 0x15900);
        t49_effectB054(0x1A000, 0x15900);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(0x17B);
        sub_08028AAC(8, 0x198, 0x158, 0);
        break;
    }
}
struct T49EntityB100 { u8 pad[12]; u16 state; u8 padE[0x22]; u32 x, y; void *callback; u32 arg; u8 tail[0x2A0]; };
extern struct T49EntityB100 *t49_entitiesB100 asm("gUnk_030056F4");
extern u8 *t49_gsB100 asm("gUnk_03005CF4");
extern void t49_cbB100(void) asm("sub_0804B32C");
static inline u32 t49_testB100(s32 *ptr, u32 mask)
{ return *ptr & mask; }
static inline void t49_waitMaskB100(s16 mask)
{
    if ((gUnk_030056FC & mask) == 0) {
        do { sub_080003F0(); } while ((gUnk_030056FC & mask) == 0);
    }
}
static inline void t49_bindB100(void *callback, u32 arg, s16 index)
{
    struct T49EntityB100 *p;
    u32 i;
    s32 slot = index;
    u32 offset;
    register struct T49EntityB100 **table asm("r1");
    struct T49EntityB100 *entity;
    s32 *bits;
    u32 one;
    t49_waitMaskB100(arg);
    table = &t49_entitiesB100;
    offset = slot * 0x2E0;
    p = *table;
    entity = (struct T49EntityB100 *)((u8 *)p + offset);
    entity->callback = callback;
    entity->arg = arg;
    entity->x = 0;
    entity->y = 0;
    i = 0;
    bits = &gUnk_030056FC;
    one = 1;
    do {
        if (t49_testB100(bits, one << i) != 0 && p->state == 12) p->state = 0;
        i++;
        p++;
    } while (i <= 4);
    sub_08019F04();
}
static inline void t49_transitionB100(void)
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
static inline void t49_setFlagB100(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
static inline u8 *t49_offsetB100(u8 *ptr, u32 offset)
{ return ptr + offset; }
static inline u8 *t49_selectB100(void)
{
    if (sub_0800CE30() != 0) return t49_offsetB100(t49_gsB100, 0x1C5);
    return t49_offsetB100(t49_gsB100, 0x1B9);
}

static inline u32 t49_hasB100(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline s8 t49_extractB100(u16 value)
{ return ((s16)value / 4) & 1; }

static inline void t49_lockB100(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockB100(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
/* [InitializeDialogue62Actors] Reads progression gate; binds callback for actor2 when clear, otherwise moves
 * actors1 and2 to(9999,9999). When scene flag16 absent, gate clear and sub_0800CCCC zero, locks input,
 * restores transition, shows0x14003E, sets scene flag16 and unlocks; other branch only restores transition. */
void sub_0804B100(void)
{
    u8 *selected;
    register s32 bit asm("r5");
    s32 raw;
    s32 alternate;
    u32 dialog;
    selected = t49_selectB100();
    raw = *selected;
    bit = t49_extractB100(raw);
    if (bit == 0) t49_bindB100(t49_cbB100, 2, 1);
    else {
        sub_08028AAC(1, 9999, 9999, 0);
        sub_08028AAC(2, 9999, 9999, 0);
    }
    alternate = sub_0800CCCC();
    if (t49_hasB100(t49_gsB100, 16) == 0 && bit == 0 && alternate == 0) {
        t49_lockB100();
        sub_0800D0F4();
        t49_transitionB100();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003E);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        t49_setFlagB100(t49_gsB100, 16);
        t49_unlockB100();
        sub_0800D108();
    } else t49_transitionB100();
}
struct T49TaskB32C { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49EntryB32C { u32 id, kind; u8 pad[0x2E]; u16 duration; u8 tail[0x38]; };
extern u8 *t49_gsB32C asm("gUnk_03005CF4");
extern void t49_cbB32C(void) asm("sub_0805A054");
static inline u32 t49_claimB32C(u8 *base, u32 mask)
{
    u32 old = *(u32 *)(base + 0x38);
    if (old & mask) return 1;
    *(u32 *)(base + 0x38) = old | mask;
    return 0;
}
static inline void t49_startB32C(void *callback, u32 arg)
{
    struct T49TaskB32C *task = (struct T49TaskB32C *)(t49_gsB32C + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next: i++; task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
static inline void t49_waitB32C(u16 timer)
{
    goto wait;
next:
    if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}
static inline void t49_effectB32C(s32 x, s32 y)
{ sub_08073E2C(x, y, 41, 1); }
static inline void t49_lockB32C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockB32C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline struct T49EntryB32C *t49_findB32C(u32 id)
{
    struct T49EntryB32C *p = (struct T49EntryB32C *)(t49_gsB32C + 0x7A4);
    u32 i;
    for (i = 0; i <= 14; i++, p++) {
        if (p->id == id) return p;
    }
    sub_080003F0();
    return 0;
}
static inline u8 *t49_selectB32C(void)
{
    if (sub_0800CE30() != 0) return t49_gsB32C + 0x1C5;
    return t49_gsB32C + 0x1B9;
}
/* [RunActorReplacementEffects] If scene gate clear and first claim of state mask0x20, sets player flag1, hides
 * actors2/1, starts helper tasks and emits animation41 effects, creates kind15 and runs message14003F plus
 * downward motion, then marks object and restores player input. Already-claimed/gated path skips sequence.
 * Both paths set mode-selected byte mask0x4. Helper starts retry allocation or skip fullpool. */
void sub_0804B32C(void)
{
    u32 actor, dialog;
    struct T49EntryB32C *entry;
    u8 *selected;
    if (sub_0800CCCC() != 0) goto finish;
    if (t49_claimB32C(t49_gsB32C, 32) != 0) goto finish;
    t49_lockB32C();
    sub_0800D0F4();
    sub_0801A388(2);
    sub_0801A388(1);
    sub_08028AAC(2, 120, 80, 10);
    sub_08028AAC(2, 9999, 9999, 0);
    t49_startB32C(t49_cbB32C, 2);
    t49_waitB32C(30);
    t49_effectB32C(0x7800, 0x5000);
    t49_waitB32C(2);
    t49_effectB32C(0x7000, 0x5000);
    t49_effectB32C(0x7C00, 0x4800);
    t49_waitB32C(2);
    t49_effectB32C(0x8000, 0x5000);
    t49_effectB32C(0x7400, 0x4800);
    t49_waitB32C(8);
    sub_08028AAC(1, 9999, 9999, 0);
    t49_startB32C(t49_cbB32C, 1);
    actor = sub_080289C0(15, 120, 80);
    sub_080290E4(actor, 0);
    sub_0802939C(actor, 20);
    sub_08028AAC(actor, 120, 80, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003F);
    while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
    sub_0802939C(actor, 16);
    sub_08028D98(actor, 0, 120, 100);
    entry = t49_findB32C(actor);
    if (entry != 0) entry->duration = 4;
    t49_unlockB32C();
    sub_0800D108();
finish:
    selected = t49_selectB32C();
    {
        register u32 value asm("r1") = *selected;
        register u32 mask asm("r0") = 4;
        *selected = mask | value;
    }
}
extern u8 *t49_gsB61C asm("gUnk_03005CF4");
extern void t49_BB80B61C(s32, s32) asm("sub_0800BB80");
static inline void t49_lockB61C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockB61C(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_moveFirstB61C(s16 step, s16 tx, s16 ty)
{
    volatile s32 a;
    s32 b;
    register s32 delta asm("sl") = step;
    register s32 x asm("r8") = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 i;
    register s32 *outB asm("r6");
    i = 0;
    outB = &b;
    for (; i <= 0x400; i += delta) {
        sub_080659F4(&a, x, tx, i);
        sub_080659F4(outB, y, ty, i);
        t49_BB80B61C((s16)a, (s16)b);
        sub_080003F0();
    }
}
static inline void t49_moveSecondB61C(s16 step, s16 tx, s16 ty)
{
    s32 a, b;
    s32 delta = step;
    s32 x = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 i;
    for (i = 0; i <= 0x400; i += delta) {
        sub_080659F4(&a, x, tx, i);
        sub_080659F4(&b, y, ty, i);
        t49_BB80B61C((s16)a, (s16)b);
        sub_080003F0();
    }
}
static inline void t49_waitB61C(u16 timer)
{
    goto wait;
next: if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}
static inline void t49_transitionB61C(void)
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
static inline void t49_musicB61C(u32 track)
{
    gUnk_03005CF8 = track;
    if ((gUnk_030027D0 & 32) == 0) sub_08006CB4(track);
}
static inline u32 t49_hasB61C(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline void t49_flagB61C(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
/* [RunOffsetCameraDialogue] Sets player flag1, positions local player using playercount/index offsets and
 * camera toward(-offset,-300), waits transition and music217, shows14003B or14003D selected by state mask0x40
 * and sets it, returns camera, tracks music11, sets state halfword+4 bit32 and restores player input. Player
 * indices outside0..3 can leave offset unset. */
void sub_0804B61C(void)
{
    s32 offset;
    s32 tx;
    register u32 dialog asm("r4");
    register u32 newDialog asm("r3");
    t49_lockB61C();
    sub_0800D0F4();
    if (sub_08002164() == 1) offset = 0;
    else {
        switch (sub_080020F4()) {
        case 0: offset = -12; break;
        case 1: offset = 12; break;
        case 2: offset = -36; break;
        case 3: offset = 36; break;
        }
    }
    sub_08028AAC(0, (u16)(offset + 120), 400, 0);
    tx = -offset;
    t49_moveFirstB61C(512, tx, -300);
    t49_waitB61C(30);
    t49_transitionB61C();
    t49_musicB61C(217);
    t49_waitB61C(20);
    if (t49_hasB61C(t49_gsB61C, 64) == 0) {
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        newDialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003B);
    } else {
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        newDialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003D);
    }
    t49_flagB61C(t49_gsB61C, 64);
    dialog = newDialog;
    while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
    t49_moveSecondB61C(17, 0, 0);
    t49_musicB61C(11);
    {
        u16 *ptr = (u16 *)(t49_gsB61C + 4);
        register u32 value asm("r1") = *ptr;
        register u32 mask asm("r0") = 32;
        *ptr = mask | value;
    }
    t49_unlockB61C();
    sub_0800D108();
}
extern void t49_BB80B8EC(s32, s32) asm("sub_0800BB80");
static inline void t49_moveB8EC(s16 step, s16 tx, s16 ty)
{
    volatile s32 a;
    s32 b;

    register s32 delta asm("sl") = step;
    s32 x = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 *outB = (s32 *)&b;
    s32 i;
    for (i = 0; i <= 0x400; i += delta) {
        sub_080659F4((s32 *)&a, x, tx, i);
        sub_080659F4(outB, y, ty, i);
        t49_BB80B8EC((s16)a, (s16)b);
        sub_080003F0();
    }
}
/* [InterpolateCameraOffsetAfterDelay] Calls inline moveB8EC(2,target,-300); helper4043 reads signed16 offsets
 * and includes final weight1024. */
void sub_0804B8EC(s32 arg0)
{
    register s32 target asm("r6") = arg0;
    u16 timer = 100;
    goto wait;
next:
    if (--timer == 0) goto done;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
done:
    t49_moveB8EC(2, target, -300);
}





struct T49TaskB984 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49ReqB984 { s32 x, y; u16 w, h; void *callback; u32 arg, unused; };
extern u8 *t49_gsB984 asm("gUnk_03005CF4");
extern void t49_taskB984(void) asm("sub_0805A874");
void sub_0804BEF8(u32 arg0);
extern void t49_cbB984(void) asm("sub_0805A088");
struct T49PacketB984 { u16 type, id; u8 args[12]; };
static inline u32 t49_extractB984(s32 value,u32 mask) { return (value>>6)&mask; }
static inline void t49_startB984(void *callback, u32 arg)
{
    struct T49TaskB984 *task = (struct T49TaskB984 *)(t49_gsB984 + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
extern void t49_BB80B984(s32,s32) asm("sub_0800BB80");
static inline void t49_moveB984(s16 tx,s16 ty)
{
    s32 a;
    s32 b;
    s32 x=(s16)gUnk_03003170.f80;
    s32 y=(s16)gUnk_03003170.f82;
    s32 i;
    s32 *outA;
    s32 *outB;
    i=0;
    outA=(s32 *)&a;outB=&b;
    for(;i<=0x400;i+=0x400) {
        sub_080659F4(outA,x,tx,i);
        sub_080659F4(outB,y,ty,i);
        t49_BB80B984((s16)a,(s16)b);
        sub_080003F0();
    }
}
/* [InitializeFlaggedObjectNineteen] Mode-selected byte mask0x40 hides selector6 and skips creation. Otherwise
 * creates kind19 at flag-dependent coordinates, positions selector6, and either starts rectangle callback with
 * unchecked0x400 allocation or conditionally queues item descriptor3:0x23/0x91 until accepted and starts
 * helper. Sets state mask0x1 for packet branch. Ends gated transition/idle wait; full taskpool skips start. */
void sub_0804B984(void)
{
    union { struct T49PacketB984 packet; struct T49ReqB984 req; } data;
    u32 oldFlag;
    u32 flag2;
    u32 bit1;
    u8 *selected;
    register u32 bit asm("r4")=1;
    register u8 **base asm("r0");
    u32 selectedBit;
    u32 state;
    u8 **savedBase;
    u32 actor;
    u32 j;
    if (sub_0800CE30()) { u32 offset=0x1C4; base=&t49_gsB984; selected=*base+offset; }
    else { u32 offset=0x1B8; base=&t49_gsB984; selected=*base+offset; }
    selectedBit=t49_extractB984(*selected,bit);
    savedBase=base;
    { u8 *game=*savedBase;
    flag2=2;
    state=*(u32 *)(game+0x38); }
    flag2 &= state;
    if(flag2!=0)flag2=1;
    bit1=1;
    bit1 &= state;
    if(bit1!=0)bit1=1;
    oldFlag=bit1;
    if (selectedBit) { u32 pos=9999; sub_08028AAC(6,pos,pos,0); }
    else if (flag2) {
        actor=sub_080289C0(19,184,187);
        sub_08028AAC(6,184,202,0);
        {
    void *callback=sub_0804BEF8;
    struct T49TaskB984 *task = (struct T49TaskB984 *)(*savedBase + 0xE34);
    u32 i = 0, zero;
    goto check;
next: i++; task++;
check:
    if (i > 29) goto footer;
    zero = sub_08000470((u32)task);
    if (zero != 0) goto next;
    data.req.x = 0xB700;
    data.req.y = 0xD200;
    data.req.w = 20;
    data.req.h = 5;
    data.req.callback = callback;
    data.req.arg = actor;
    task->flags = 60;
    task->memory = sub_08001494(0x400);
    task->callback = (u32)t49_taskB984;
    task->stack = task->memory + 0x3FC;
    task->arg = zero;
    sub_08000274(task, &data.req, 1);
    sub_080003F0();
    sub_080003F0();
        }
    } else {
        t49_moveB984(0,-40);
        actor=sub_080289C0(19,160,133);
        sub_08028AAC(6,184,202,0);
        { u32 old=oldFlag;
        if (!old) {
            u32 alternate=sub_0800CE30();
            if(alternate) {
                register u32 id asm("r2");
                struct T49PacketB984 *packet;
                alternate=3;
                id=0x23;
                packet=&data.packet;
                packet->type=alternate;packet->id=id;
                for(j=0;j<=11;j++)data.packet.args[j]=0;
                while(!sub_08067B9C(0x2100,0x6F00,&data.packet))sub_080003F0();
            } else {
                register u32 id asm("r2");
                struct T49PacketB984 *packet;
                alternate=3;
                id=0x91;
                packet=&data.packet;
                packet->type=alternate;packet->id=id;
                for(j=0;j<=11;j++)data.packet.args[j]=0;
                while(!sub_08067B9C(0x2100,0x6F00,&data.packet))sub_080003F0();
            }
            { u8 *game=t49_gsB984; u32 mask=1; *(u32 *)(game+0x38)|=mask; }
        }
        }
        t49_startB984(t49_cbB984,actor);
    }
footer:
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}

struct T49TaskBC38 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49ReqBC38 { s32 x, y; u16 w, h; void *callback; u32 arg, unused; };
extern u8 *t49_gsBC38 asm("gUnk_03005CF4");
extern void t49_taskBC38(void) asm("sub_0805A874");
void sub_0804BEF8(u32 arg0);
struct T49EntryBC38 { u32 id, kind; u8 pad[0x3A]; u16 state; u8 tail[0x2C]; };
struct T49EntityBC38 { u16 f0,id; u8 pad[0x2DC]; };
extern struct T49EntityBC38 *t49_entitiesBC38 asm("gUnk_030056F4");
static inline void t49_lockBC38(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockBC38(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_waitBC38(u16 timer)
{
    goto wait;
next: if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}

static inline void t49_spawnBC38(void *callback, u32 arg, s32 x, s32 y, u16 w, u16 h)
{
    register u32 savedArg asm("r9")=arg;
    void *savedCallback=callback;
    struct T49ReqBC38 req;
    struct T49TaskBC38 *task = (struct T49TaskBC38 *)(t49_gsBC38 + 0xE34);
    u32 i = 0, zero;
    goto check;
next: i++; task++;
check:
    if (i > 29) return;
    zero = sub_08000470((u32)task);
    if (zero != 0) goto next;
    req.x = x;
    req.y = y;
    req.w = w;
    req.h = h;
    req.callback = savedCallback;
    req.arg = savedArg;
    task->flags = 60;
    task->memory = sub_08001494(0x400);
    task->callback = (u32)t49_taskBC38;
    task->stack = task->memory + 0x3FC;
    task->arg = zero;
    sub_08000274(task, &req, 1);
    sub_080003F0();
    sub_080003F0();
}
static inline struct T49EntryBC38 *t49_findBC38(u32 actor)
{
    struct T49EntryBC38 *p=(struct T49EntryBC38 *)(t49_gsBC38+0x7A4);
    u32 i=0;
    do {
        if(p->id==actor)return p;
        i++;p++;
    }while(i<=14);
    sub_080003F0();return 0;
}
static inline void t49_stateBC38(u32 actor)
{
    register u32 current asm("r5")=actor;
    register u32 savedActor asm("r2")=current;
    u16 state;
    struct T49EntryBC38 *p;
    state=3;
    if(current>0x100000) {
        p=t49_findBC38(savedActor);
        if(p)p->state=state;
    } else if(current) {
        u32 index=current-1;
        if(index<=4) {
            struct T49EntityBC38 **table=&t49_entitiesBC38;
            register u32 offset asm("r0")=index*0x2E0;
            struct T49EntityBC38 *entity=*table;
            entity=(struct T49EntityBC38 *)((u8 *)entity+offset);
            sub_08019EB8(entity->id,3);
        }
    } else {
        u32 index=sub_080020F4();
        u32 stride=0x14C;
        u8 *player;
        u8 *players;
        u32 offset;
        index*=stride;
        players=(u8 *)gUnk_03003CE0;
        index+=(u32)players;
        player=(u8 *)index;
        offset=0x11E;
        player+=offset;
        *(u16 *)player=state;
    }
}
void t49_sceneBC38(u32 arg0) asm("sub_0804BC38");
/* [StageActorDialogueSpatialMonitor] Returns if scene word38 bit1 set; otherwise sets it immediately and
 * proceeds only when query0x0800CCCC is zero and current area4. Locks input and repeatedly searches15 active
 * actor records for resource19 with one signal wait per attempt. Starts song196 when allowed, sets selected
 * actor pose3, moves it to(184,187), shows resource0x140043, then unlocks and starts song3 or stops/clears
 * tracked song for link mode. Attempts30-slot spatial monitor callback0x0804BEF8 with original argument and
 * rectangle center(0xB700,0xC800), extents20/14. */
void t49_sceneBC38(u32 arg0)
{
    register u32 savedArg asm("r9")=arg0;
    u8 **address=&t49_gsBC38;
    register u8 **savedAddress asm("r8");
    u8 *game=*address;
    u32 mask=2;
    u32 flags;
    s32 gate;
    u16 level;
    s32 attempts;
    s32 nextAttempt;
    register u32 actor asm("r5");
    u32 active;
    u32 one;
    register struct T49EntryBC38 *p asm("r1");
    u32 i;
    u32 dialog;
    flags=*(u32 *)(game+0x38);
    if(flags&mask)return;
    *(u32 *)(game+0x38)=flags|mask;
    gate=sub_0800CCCC();
    level=gUnk_03003170.f90;
    if(gate!=0)return;
    if(level!=4)return;
    t49_lockBC38();
    sub_0800D0F4();
    savedAddress=address;
    one=1;
    do {
        register u8 **tableAddress asm("r1")=savedAddress;
        u8 *snapshot=*tableAddress;
        p=(struct T49EntryBC38 *)(snapshot+0x7A4);
        i=0;
        nextAttempt=attempts+1;
        active=*(u32 *)(snapshot+0x54);
        do {
            if(((one<<i)&active) && p->kind==19) { actor=p->id;goto found; }
            i++;p++;
        }while(i<=14);
        actor=0;
found:
        t49_waitBC38(1);
        attempts=nextAttempt;
    }while(actor==0 && nextAttempt<=599);
    { u32 song=196; gUnk_03005CF8=song; }
    if(!(gUnk_030027D0&32))sub_08006CB4(196);
    t49_stateBC38(actor);
    t49_waitBC38(30);
    sub_0802939C(actor,8);
    sub_08028AAC(actor,184,187,40);
    sub_0802939C(actor,0);
    while(sub_0805F184()!=0)sub_080003F0();
    while(sub_0805EF90()!=0)sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,45,0x140043);
    while(sub_0805EEFC((void *)dialog)==0)sub_080003F0();
    t49_unlockBC38();
    sub_0800D108();
    if(sub_0800CB9C()==0) {
        if(!(gUnk_030027D0&32)) { gUnk_03005CF8=3;sub_08006CB4(3); }
    } else sub_080586B4(0);
    t49_spawnBC38(sub_0804BEF8,savedArg,0xB700,0xC800,20,14);
}

struct T49TaskBEF8 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
struct T49ReqBEF8 { s32 x, y; u16 w, h; void *callback; u32 arg, unused; };
extern u8 *t49_gsBEF8 asm("gUnk_03005CF4");
extern u8 *t49_itemsBEF8 asm("gUnk_030034E0");
extern void t49_taskBEF8(void) asm("sub_0805A874");
extern void t49_confirmBEF8(void) asm("sub_0804C150");
extern u32 t49_scheduleBEF8(void *, u32) asm("sub_08068070");
void sub_0804BEF8(u32 arg0);
static inline u32 t49_flagBEF8(u16 mask)
{
    register u32 bit asm("r4") = mask;
    u8 *base;
    u32 offset;
    s32 value;
    if (sub_0800CE30() != 0) { base = t49_gsBEF8; offset = 0x1C4; }
    else { base = t49_gsBEF8; offset = 0x1B8; }
    base += offset;
    value = *base;
    return (value >> 6) & bit;
}
static inline void t49_lockBEF8(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockBEF8(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_spawnBEF8(void *callback, u32 arg, s32 x, s32 y, u16 w, u16 h)
{
    struct T49ReqBEF8 req;
    struct T49TaskBEF8 *task = (struct T49TaskBEF8 *)(t49_gsBEF8 + 0xE34);
    u32 i = 0, zero;
    goto check;
next: i++; task++;
check:
    if (i > 29) return;
    zero = sub_08000470((u32)task);
    if (zero != 0) goto next;
    req.x = x;
    req.y = y;
    req.w = w;
    req.h = h;
    req.callback = callback;
    req.arg = arg;
    task->flags = 60;
    task->memory = sub_08001494(0x400);
    task->callback = (u32)t49_taskBEF8;
    task->stack = task->memory + 0x3FC;
    task->arg = zero;
    sub_08000274(task, &req, 1);
    sub_080003F0();
    sub_080003F0();
}
static inline void t49_confirmScheduleBEF8(u32 player)
{ t49_scheduleBEF8(t49_confirmBEF8, player); }
/* [AskItem22Dialogue69] Returns immediately when progression byte +0x1B8/+0x1C4 bit6 is set. Otherwise locks
 * input, counts category1/id0x22 across25 item records starting+0x150 stride16. If present asks0x140045;
 * response exactly1 queues player-dependent confirmation callback; other responses rearm spatial trigger. If
 * absent shows0x140044 and rearms. Rearming uses30 task slots and unchecked0x400 allocation. Always unlocks
 * after handled branch; does not remove items itself. */
void sub_0804BEF8(u32 arg0)
{
    u32 count;
    u32 i;
    u16 *p;
    u32 dialog;
    if (t49_flagBEF8(1) != 0) return;
    t49_lockBEF8();
    sub_0800D0F4();
    count = 0;
    i = 0;
    p = (u16 *)(t49_itemsBEF8 + 0x150);
    do {
        if (p[0] == 1 && p[1] == 0x22) count++;
        p += 8;
        i++;
    } while (i <= 24);
    if (count != 0) {
        while (sub_0805F184() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -2, 0x140045);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        if (sub_0805EF14((u8 *)dialog) == 1) {
            t49_confirmScheduleBEF8(sub_080020F4());
        } else {
            t49_spawnBEF8(sub_0804BEF8, arg0, 0xB700, 0xC800, 20, 14);
        }
    } else {
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x140044);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        t49_spawnBEF8(sub_0804BEF8, arg0, 0xB700, 0xC800, 20, 14);
    }
    t49_unlockBEF8();
    sub_0800D108();
}
struct T49EntryC150 { u32 id, kind; u8 pad[0x2E]; u16 duration; u8 tail[0x38]; };
extern u8 *t49_gsC150 asm("gUnk_03005CF4");
extern void t49_cbC150(void) asm("sub_0805A0EC");
extern u32 t49_scheduleC150(void *, u32) asm("sub_08068070");
extern void t49_BB80C150(s32, s32) asm("sub_0800BB80");


static inline u8 t49_boolC150(u16 mask, u8 *base)
{
    u32 value = *(u32 *)(base + 0x38) & mask;
    if (value != 0) value = 1;
    return value;
}
static inline void t49_lockC150(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t49_unlockC150(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
static inline void t49_waitC150(u16 timer)
{
    goto wait;
next: if (--timer == 0) return;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
}

static inline struct T49EntryC150 *t49_findC150(u32 id)
{
    struct T49EntryC150 *p = (struct T49EntryC150 *)(t49_gsC150 + 0x7A4);
    u32 i;
    for (i = 0; i <= 14; i++, p++) if (p->id == id) return p;
    sub_080003F0();
    return 0;
}
static inline void t49_moveC150(s16 step, s16 tx, s16 ty)
{
    s32 a, b;
    register s32 delta asm("sl") = step;
    register s32 x asm("r6") = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 i;
    for (i = 0; i <= 0x400; i += delta) {
        sub_080659F4(&a, x, tx, i);
        sub_080659F4(&b, y, ty, i);
        t49_BB80C150((s16)a, (s16)b);
        sub_080003F0();
    }
}
static inline void t49_flagC150(u32 mask, u8 *ptr)
{
    u8 *base = ptr;
    register u32 value asm("r1") = *(u32 *)(base + 0x38);
    value |= mask;
    *(u32 *)(base + 0x38) = value;
}
static inline void t49_schedulePlayerC150(u32 player)
{ u32 id = player; t49_scheduleC150(t49_cbC150, id); }
static inline u32 t49_gateC150(s32 alternate, u16 level)
{
    s32 savedAlternate = alternate;
    register u32 savedLevel asm("r1") = level;
    register u32 first asm("r0") = 0;
    register u32 second asm("r2");
    if (savedAlternate == 0) first = 1;
    second = 0;
    if (savedLevel == 4) second = 1;
    return first & second;
}
/* [MarkProgression6SceneExit] Sets progression byte+0x1B8/+0x1C4 bit6 immediately. Returns if scene word+0x38
 * bit2 already set; otherwise player0 queues callback with passed argument and sets scene bit2. Only when
 * sub_0800CCCC()==0 and mapArea f90==4, locks input, hides actor6, closes dialog, shows0x140046, finds active
 * actor resource19 among15 (defaults handle0), moves it through fixed path and marks state4, restores camera
 * increment34 and unlocks. Nonmatching map branch leaves only flags/callback request changed; missing actor
 * handle0 directs movement to local player. */
void sub_0804C150(u32 arg0)
{
    u8 *selected;
    register u8 **gsAddress asm("r3");
    u8 **savedAddress;
    register u32 savedArg asm("r6") = arg0;
    u16 mask;
    s32 alternate;
    u32 level;
    u8 *game;
    u32 dialog, actor;
    u32 actorIndex, actorMask;
    register u32 actorOne asm("r4");
    struct T49EntryC150 *p;
    if (sub_0800CE30() != 0) {
        u32 offset = 0x1C4;
        gsAddress = &t49_gsC150;
        selected = *gsAddress;
        selected += offset;
        goto selectionDone;
actorFound:
        actor = p->id;
        goto actorReady;
    } else {
        u32 offset = 0x1B8;
        gsAddress = &t49_gsC150;
        selected = *gsAddress;
        selected += offset;
    }
selectionDone:
    {
        register u32 value asm("r2") = *selected;
        register u32 byteMask asm("r0") = 64;
        *selected = byteMask | value;
    }
    savedAddress = gsAddress;
    game = *savedAddress;
    if (t49_boolC150(mask = 4, game) != 0) return;
    if (sub_080020F4() == 0) t49_schedulePlayerC150(savedArg);
    t49_flagC150(mask, *savedAddress);
    alternate = sub_0800CCCC();
    level = gUnk_03003170.f90;
    if (t49_gateC150(alternate, level)) {
        t49_lockC150();
        sub_0800D0F4();
        sub_08028AAC(6, 9999, 9999, 0);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(35);
        t49_waitC150(30);
        sub_0805EFBC();
        do { sub_080003F0(); } while (sub_0805F184() != 0);
        t49_waitC150(4);
        t49_lockC150();
        sub_0800D0F4();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x140046);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        p = (struct T49EntryC150 *)(t49_gsC150 + 0x7A4);
        actorIndex = 0;
        actorOne = 1;
        actorMask = *(u32 *)(t49_gsC150 + 0x54);
        for (; actorIndex <= 14; actorIndex++, p++) {
            if ((actorMask & (actorOne << actorIndex)) != 0 && p->kind == 19) goto actorFound;
        }
        actor = 0;
actorReady:
        sub_0802939C(actor, 8);
        sub_08028AAC(actor, 184, 224, 20);
        sub_080290E4(actor, 2);
        sub_08028AAC(actor, 151, 224, 20);
        sub_080290E4(actor, 0);
        sub_08028AAC(actor, 151, 299, 40);
        p = t49_findC150(actor);
        if (p != 0) p->duration = 4;
        t49_moveC150(34, 0, 0);
        t49_unlockC150();
        sub_0800D108();
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0805A138(s32);
extern void sub_0804C4E8(s32);
struct Task50C4 {u32 f0,f4,f8,fC;u8 *f10;u32 f14,f18,f1C;u8 *f20;u32 f24;};
struct Args50C4 {u32 a,b,c;void (*callback)(s32);void *data;u32 f;};
/* [InitializePersistentEvent10Placement] 1B8/1C4 bit2 gates2A104 descriptor4C4E8,arg0,index6; no else-position
 * branch. */
void sub_0804C408(void){
    struct Args50C4 args;
    struct Task50C4 *task;
    u32 i,callback; register u32 mask asm("r4"); u32 offset; s32 raw,flags;
    register u32 zero asm("r5");u32 data;
    s32 r; register u8 *mem asm("r0"); register u32 stackOffset asm("r2");
    u8 *state; u8 *ptr; register u8 **addr asm("r0");
    mask=1;
    if(sub_0800CE30()){addr=(u8 **)&gUnk_03005CF4; state=*addr;offset=0x1C4;}
    else{addr=(u8 **)&gUnk_03005CF4; state=*addr;offset=0x1B8;}
    ptr=state+offset;
    raw=*ptr; flags=raw >>2;flags &=mask;
    if(!flags){
    callback=(u32)sub_0804C4E8;
    task=(struct Task50C4 *)(*addr+0xE34);
    i=0; goto check;
next:
    i++;task++;
check:
    if(i<=29){
        zero=sub_08000470((u32)task);
        if(zero)goto next;
        args.callback=(void (*)(s32))callback;
        data=0;args.data=(void *)data;
        task->f8=0x3C;
        mem=sub_08001494(0x400);task->f20=mem;
        task->fC=(u32)sub_0802A104;
        if(i)stackOffset=0x3FC;else stackOffset=0x3FC;
        task->f10=mem+stackOffset;
        task->f24=zero;
        sub_08000274(task,&args,6);
        sub_080003F0();sub_080003F0();
    }
    }
    if(sub_0800CC98()==0){
        r=sub_0801AB24();
        switch(r){case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
        while(!sub_0801AAE0())sub_080003F0();
    }
}
/* [HandlePersistentEvent10Placement] Mode1 sets1B8/1C4 bit2 after movement; mode0 calls68820 with
 * mode1/guard0. */
void sub_0804C4E8(s32 arg0) {
    s32 var_r0;
    s32 x;register s32 y asm("r1"); register u32 raw asm("r2");register u32 byteMask asm("r0");
    u16 var_r4;
    u8 *temp_r1;register u8 *state asm("r1");

    switch (arg0) {                                 /* irregular */
    case 0:
        sub_08068820(sub_0804C4E8, (void *)1, NULL);
        return;
    case 1:
        x=0x18800;y=0xA000;sub_08073E2C(x,y,0x29,1);
        for(var_r4=4;var_r4;var_r4--){sub_080003F0();if(sub_080021A8())break;}
        x=0x18000;y=0xA000;sub_08073E2C(x,y,0x29,1);
        x=0x19000;y=0xA000;sub_08073E2C(x,y,0x29,1);
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x17BU);
        }
        sub_08028AAC(7, 0x188, 0xA0, 0);
        if (sub_0800CE30() != 0) {
            state=gUnk_03005CF4; var_r0 = 0x1C4;
        } else {
            state=gUnk_03005CF4; var_r0 = 0x1B8;
        }
        temp_r1 = state + var_r0;
        raw=*temp_r1;byteMask=4;*temp_r1=byteMask|raw;
        return;
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0805A138(s32);
extern void sub_0804C4E8(s32);
struct Task50C5 {u32 f0,f4,f8,fC;u8 *f10;u32 f14,f18,f1C;u8 *f20;u32 f24;};
struct Args50C5 {u32 a,b,c;void (*callback)(s32);void *data;u32 f;};
/* [InitializeObjectSevenParkingEvent3] flags8 test and2A104 descriptor5A138,arg0,index6 establish
 * initialization versus restored state. */
void sub_0804C5A8(void){
    struct Args50C5 args;
    struct Task50C5 *task;
    u32 i,callback,mask,flags,offset;
    register u32 zero asm("r5");u32 data;
    s32 r;
    u8 *state,*ptr;
    state=gUnk_03005CF4;mask=8;flags=*(u32 *)(state+0x38);
    if(!(flags&mask)){
    callback=(u32)sub_0805A138;
    task=(struct Task50C5 *)(state+0xE34);
    i=0; goto check;
next:
    i++;task++;
check:
    if(i<=29){
        zero=sub_08000470((u32)task);
        if(zero)goto next;
        args.callback=(void (*)(s32))callback;
        data=0;args.data=(void *)data;
        task->f8=0x3C;
        task->f20=sub_08001494(0x400);
        task->fC=(u32)sub_0802A104;
        task->f10=task->f20+0x3FC;
        task->f24=zero;
        sub_08000274(task,&args,6);
        sub_080003F0();sub_080003F0();
    }
    } else sub_08028AAC(7,0x270F,0x270F,0);
    if(sub_0800CC98()==0){
        r=sub_0801AB24();
        switch(r){case 0:sub_080576A8();break;case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;}
        while(!sub_0801AAE0())sub_080003F0();
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void cameraMove50C6(s16,s16) asm("sub_0800BB80");
union Fixed50C6 { s32 whole; struct { u16 lo; s16 hi; } part; };
struct Flag50C6 { u32 pad; u16 flags; };
/* [RunRepeatCameraDialogue] Sets player flag1, positions by playercount/index offset at y240, transitions and
 * tracks song217. Pans toward(-offset,-116), chooses message140040/041 by state mask0x10 and sets it, restores
 * camera, tracks song11, sets statehalfword+4 bit32 and restores player input. No dialog-abort branch; invalid
 * player index may leave offset unset. */
void sub_0804C67C(void) {
    s32 out[4];
    s32 *px2, *py2;
    s32 startX,startY,startX2,startY2;
    s32 t,step,step2; s32 offset;
    union Fixed50C6 targetX,targetY,targetX2,targetY2;
    u16 timer;
    u32 handle;
    s32 message, status, status2;
    s32 *statusptr, *statusptr2;
    struct Player *player,*player2;
    u32 *word,mask;
    u32 *word2,mask2;
    s32 r;
    player = &gUnk_03003CE0[sub_080020F4()];
    player->flags |= 1;
    sub_0800D0F4();
    if(sub_08002164()==1)offset=0;
    else {
        switch(sub_080020F4()){
        case 0:offset=-12;break;case 1:offset=12;break;
        case 2:offset=-36;break;case 3:offset=36;break;
        }
    }
    sub_08028AAC(0,(u16)(offset+0xF0),0xF0,0);
    timer = 1;
    for(;timer;timer--) { sub_080003F0(); if(sub_080021A8())break; }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    status = 0xD9;
    statusptr = &gUnk_03005CF8;
    *statusptr = status;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(0xD9);
    offset=-offset;
    for(timer=20;timer;timer--) { sub_080003F0(); if(sub_080021A8())break; }
    step = 0x11;
    startX = (s16)gUnk_03003170.f80;
    startY = (s16)gUnk_03003170.f82;
    targetY.whole = 0xFF8C0000;
    for(t=0;t<=0x400;t+=step) {
        sub_080659F4(&out[0],startX,(s16)offset,t);
        sub_080659F4(&out[1],startY,targetY.part.hi,t);
        cameraMove50C6((s16)out[0],(s16)out[1]);
        sub_080003F0();
    }
    word = (u32 *)(gUnk_03005CF4 + 0x38);
    mask = 0x10;
    if (!(*word & mask)) {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x140040);
    } else {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x140041);
    }
    word2 = (u32 *)(gUnk_03005CF4 + 0x38);
    mask2 = 0x10;
    *word2 = mask2 | *word2;
    t = handle;
    while(!sub_0805EEFC((void *)t))sub_080003F0();
    step2 = 0x22;
    startX2 = (s16)gUnk_03003170.f80;
    startY2 = (s16)gUnk_03003170.f82;
    targetX2.whole = 0;
    targetY2.whole = 0;
    for(t=0;t<=0x400;t+=step2) {
        sub_080659F4(&out[2],startX2,targetX2.part.hi,t);
        sub_080659F4(&out[3],startY2,targetY2.part.hi,t);
        cameraMove50C6((s16)out[2],(s16)out[3]);
        sub_080003F0();
    }
    status2 = 0xB;
    statusptr2 = &gUnk_03005CF8;
    *statusptr2 = status2;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(0xB);
    ((struct Flag50C6 *)gUnk_03005CF4)->flags |= 32;
    player2 = &gUnk_03003CE0[sub_080020F4()];
    player2->flags &= ~1;
    sub_0800D108();
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0805664C(s32);
struct Task50C9 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart50C9(void *,u32) asm("sub_08000274");
/* [StartSceneTasks0To5] Restores transition when permitted, then independently attempts six sub_0805664C tasks
 * with arguments0..5. Each searches30 slots, retries0x400 stack allocation until nonzero, initializes control
 * fields and starts task; a full pool skips that argument. No readiness/completion wait. */
void sub_0804C948(void) {
    struct Task50C9 *task;
    u32 i,mem;
    s32 callback;
    s32 r;
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,0);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,1);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,2);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,3);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,4);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task50C9 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50C9(task,5);
        break;
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0802A080(s32,s32,s32,s32);
extern void sub_0804D020(void);
extern void sub_0804D330(s32);
extern void cameraMove50CB(s16,s16) asm("sub_0800BB80");
struct Task50CB {u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24;};
extern void taskStart50CB(void *,u32) asm("sub_08000274");
union Fixed50CB {s32 whole;struct{u16 lo;s16 hi;}part;};
static inline u8 test50CB(u32 value,u32 mask){u32 result=value&mask;if(result)result=1;return result;}
/* [InitializeFieldItemDemonstrationScene] Tests scene+0x38 bits0/2. First entry sets bit0, locks input, pans
 * camera(0,-160), restores transition, attempts sub_0804D020 task and starts song196, leaving input locked for
 * continuation. Repeat bit0-set/bit2-clear invokes sub_0802A080 and attempts demonstration selectors1..5;
 * bit2-set skips them. Repeat branches reset state12 for active entity slots0..4 and call sub_08019F04.30 task
 * slots full skip starts; stack allocations retry indefinitely. */
void sub_0804CBBC(void){
    s32 outY,outX;
    u8 *state,*entry;
    u32 flags,bit1,one,zero,idx;u32 bit4;
    s32 r,bitTemp,*entryFlags;
    struct Player *player;
    struct Task50CB *task;
    s32 callback,status,*statusptr;
    u32 i,mem;
    s32 startX,startY,t,step;
    union Fixed50CB targetX,targetY;
    state=gUnk_03005CF4;bit4=4;flags=*(u32 *)(state+0x38);
    bit4 &=flags;if(bit4)bit4=1;
    one=1;bit1=test50CB(flags,one);
    if(!bit1){
        *(u32 *)(state+0x38)=flags|one;
        player=&gUnk_03003CE0[sub_080020F4()];player->flags |=one;
        sub_0800D0F4();
        step=0x400;
        startX=(s16)gUnk_03003170.f80;startY=(s16)gUnk_03003170.f82;
        targetX.whole=0;targetY.whole=0xFF600000;
        for(t=0;t<=0x400;t+=step){
            sub_080659F4(&outX,startX,targetX.part.hi,t);
            sub_080659F4(&outY,startY,targetY.part.hi,t);
            cameraMove50CB((s16)outX,(s16)outY);sub_080003F0();
        }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    callback = (s32)sub_0804D020;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,0);
        break;
    }
        status=0xC4;statusptr=&gUnk_03005CF8;*statusptr=status;
        if(!(gUnk_030027D0&0x20))sub_08006CB4(0xC4);
    }else if(!bit4){
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    sub_0802A080(0xE8,0x8C,0x96,0x6E);
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,1);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,2);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,3);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,4);
        break;
    }
    callback = (s32)sub_0804D330;
    task = (struct Task50CB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50CB(task,5);
        break;
    }
    entry=gUnk_030056F4;idx=0;entryFlags=&gUnk_030056FC;callback=1;zero=0;
clearFirst:
    if((*entryFlags & (bitTemp=callback<<idx)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=zero;
    idx++;entry+=0x2E0;
    if(idx<=4)goto clearFirst;
    sub_08019F04();
    }else{
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    entry=gUnk_030056F4;idx=0;entryFlags=&gUnk_030056FC;callback=1;zero=0;
clearLast:
    if((*entryFlags & (bitTemp=callback<<idx)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=zero;
    idx++;entry+=0x2E0;
    if(idx<=4)goto clearLast;
    sub_08019F04();
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0804D330(s32);
struct Task50D0 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart50D0(void *,u32) asm("sub_08000274");
extern void sub_0802A080(s32,s32,s32,s32);
extern s32 sub_080586B4(s32);
/* [OrchestrateFieldItemDemonstration] Attempts selector0 demonstration task, invokes sub_0802A080, sets
 * scene+0x38 bit2, cancels saved task if scheduled, starts song4 when not linked or stops/clears the tracked
 * song in the link branch, closes dialog, attempts selectors1..5 and waits30. Resets state12 for active entity
 * slots0..4 and calls sub_08019F04.30-slot pool searches can skip tasks;0x400 allocation retries; saved first
 * task pointer is unspecified after full-pool failure. */
void sub_0804D020(void) {
    struct Task50D0 *task;
    u32 i,mem;
    s32 callback,callback2;
    s32 r;
    u32 held,mask;
    u8 *state,*entry;
    u32 *word;
    u16 timer;
    u32 idx,one,zero;
    s32 bitTemp,*entryFlags;
    callback = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    i=0; goto checkFirst;
nextFirst: i++;task++;
checkFirst: if(i<=29){
        if (sub_08000470((u32)task)) goto nextFirst;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,0);
        held=(u32)task;
    }
    sub_0802A080(0xE8,0x8C,0x96,0x6E);
    state=gUnk_03005CF4;mask=4;*(u32 *)(state+0x38)=mask | *(u32 *)(state+0x38);
    if(held && sub_08000470(held))sub_080003A8(held);
    if(!sub_0800CB9C()){
        if(!(gUnk_030027D0&0x20)){gUnk_03005CF8=4;sub_08006CB4(4);}
    }else sub_080586B4(0);
    for(timer=1;timer;timer--){sub_080003F0();if(sub_080021A8())break;}
    sub_0805EFBC();
    do{sub_080003F0();}while(sub_0805F184());
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,1);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,2);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,3);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,4);
        break;
    }
    callback2 = (s32)sub_0804D330;
    task = (struct Task50D0 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback2;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D0(task,5);
        break;
    }
    for(timer=30;timer;timer--){sub_080003F0();if(sub_080021A8())break;}
    entry=gUnk_030056F4;idx=0;entryFlags=&gUnk_030056FC;held=1;zero=0;
entryLoop:
    if((*entryFlags & (bitTemp=held<<idx)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=zero;
    idx++;entry+=0x2E0;
    if(idx<=4)goto entryLoop;
    sub_08019F04();
}
